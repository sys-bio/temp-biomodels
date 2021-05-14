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
% Model name = Kolodkin2013 - Nuclear receptor-mediated cortisol signalling network
%
% is http://identifiers.org/biomodels.db/MODEL1506290000
% is http://identifiers.org/biomodels.db/BIOMD0000000576
% isDescribedBy http://identifiers.org/pubmed/23653204
%


function main()
%Initial conditions vector
	x0=zeros(34,1);
	x0(1) = 0.780000231844494;
	x0(2) = 0.00700000208065571;
	x0(3) = 99.9000296939294;
	x0(4) = 0.500000148618265;
	x0(5) = 8.00000237789224E-4;
	x0(6) = 47.2400140414537;
	x0(7) = 1.14000033884965;
	x0(8) = 0.829760246634984;
	x0(9) = 104.000030912599;
	x0(10) = 0.0750000222927398;
	x0(11) = 0.100000029723653;
	x0(12) = 0.330000098088055;
	x0(13) = 2.40000071336767E-4;
	x0(14) = 0.0500000148618265;
	x0(15) = 32.3600096185741;
	x0(16) = 0.0100000029723653;
	x0(17) = 0.0200000059447306;
	x0(18) = 0.81000024076159;
	x0(19) = 0.46202810387596;
	x0(20) = 100.000029723653;
	x0(21) = 0.00100000029723653;
	x0(22) = 2.40000071336767E-5;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 550.000163480092;
	x0(32) = 0.0;
	x0(33) = 60000.0178341918;
	x0(34) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = blood, name = blood, constant
	compartment_blood=5.0;
% Parameter:   id =  GeneProteinBinding_diff_limited, name = GeneProteinBinding_diff_limited
	global_par_GeneProteinBinding_diff_limited=60.0;
% Parameter:   id =  cypGene_PXRprotein, name = cypGene_PXRprotein
	global_par_cypGene_PXRprotein=1.0;
% Parameter:   id =  cypMrna_synt, name = cypMrna_synt
	global_par_cypMrna_synt=0.05;
% Parameter:   id =  PXRGene_GRprotein, name = PXRGene_GRprotein
	global_par_PXRGene_GRprotein=200.0;
% Parameter:   id =  TATGene_GRprotein, name = TATGene_GRprotein
	global_par_TATGene_GRprotein=300.0;
% Parameter:   id =  GRGene_GRprotein, name = GRGene_GRprotein
	global_par_GRGene_GRprotein=60.0;
% Parameter:   id =  grMrna_synt, name = grMrna_synt
	global_par_grMrna_synt=1.2E-6;
% Parameter:   id =  tatMrna_synt, name = tatMrna_synt
	global_par_tatMrna_synt=0.005;
% Parameter:   id =  pxrMrna_synt, name = pxrMrna_synt
	global_par_pxrMrna_synt=1.1E-4;
% Parameter:   id =  GRprotein, name = GRprotein
% Parameter:   id =  PXRprotein, name = PXRprotein
% assignmentRule: variable = GRprotein
	global_par_GRprotein=x(6)+x(12)+x(14)+x(15)+x(17)+x(24)+x(27)+x(28)+x(29);
% assignmentRule: variable = PXRprotein
	global_par_PXRprotein=x(3)+x(13)+x(16)+x(21)+x(22)+x(25)+x(26);

% Reaction: id = re1, name = re1	% Local Parameter:   id =  Ka, name = Ka
	reaction_re1_Ka=0.00321;

	reaction_re1=compartment_default*mRNA(const_species_s28, x(8), reaction_re1_Ka);

% Reaction: id = re2, name = re2	% Local Parameter:   id =  k1, name = k1
	reaction_re2_k1=0.04;

	reaction_re2=compartment_default*reaction_re2_k1*x(10);

% Reaction: id = re3, name = re3	% Local Parameter:   id =  Ka, name = Ka
	reaction_re3_Ka=2.5;

	reaction_re3=compartment_default*ptotein(reaction_re3_Ka, const_species_s36, x(10));

% Reaction: id = re4, name = re4	% Local Parameter:   id =  k1, name = k1
	reaction_re4_k1=0.0015;

	reaction_re4=compartment_default*reaction_re4_k1*x(9);

% Reaction: id = re5, name = re5	% Local Parameter:   id =  Ka, name = Ka
	reaction_re5_Ka=5.52E-5;

	reaction_re5=compartment_default*mRNA(const_species_s28, x(1), reaction_re5_Ka);

% Reaction: id = re6, name = re6	% Local Parameter:   id =  k1, name = k1
	reaction_re6_k1=0.006;

	reaction_re6=compartment_default*reaction_re6_k1*x(2);

% Reaction: id = re7, name = re7	% Local Parameter:   id =  Ka, name = Ka
	reaction_re7_Ka=10.0;

	reaction_re7=compartment_default*ptotein(reaction_re7_Ka, const_species_s36, x(2));

% Reaction: id = re8, name = re8	% Local Parameter:   id =  k1, name = k1
	reaction_re8_k1=0.003;

	reaction_re8=compartment_default*reaction_re8_k1*x(3);

% Reaction: id = re9, name = re9	% Local Parameter:   id =  Ka, name = Ka
	reaction_re9_Ka=3.2E-6;

	reaction_re9=compartment_default*mRNA(const_species_s28, x(4), reaction_re9_Ka);

% Reaction: id = re10, name = re10	% Local Parameter:   id =  k1, name = k1
	reaction_re10_k1=0.003;

	reaction_re10=compartment_default*reaction_re10_k1*x(5);

% Reaction: id = re11, name = re11	% Local Parameter:   id =  Ka, name = Ka
	reaction_re11_Ka=19.98;

	reaction_re11=compartment_default*ptotein(reaction_re11_Ka, const_species_s36, x(5));

% Reaction: id = re12, name = re12	% Local Parameter:   id =  k1, name = k1
	reaction_re12_k1=0.001;

	reaction_re12=compartment_default*reaction_re12_k1*x(6);

% Reaction: id = re13, name = re13	% Local Parameter:   id =  Ka, name = Ka
	reaction_re13_Ka=8.55E-4;

	reaction_re13=compartment_default*mRNA(const_species_s28, x(18), reaction_re13_Ka);

% Reaction: id = re14, name = re14	% Local Parameter:   id =  k1, name = k1
	reaction_re14_k1=0.064;

	reaction_re14=compartment_default*reaction_re14_k1*x(11);

% Reaction: id = re15, name = re15	% Local Parameter:   id =  k1, name = k1
	reaction_re15_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re15_k2=600.0;

	reaction_re15=compartment_default*(reaction_re15_k1*x(7)*x(6)-reaction_re15_k2*x(15));

% Reaction: id = re16, name = re16	% Local Parameter:   id =  k1, name = k1
	reaction_re16_k1=0.001;

	reaction_re16=compartment_default*reaction_re16_k1*x(15);

% Reaction: id = re17, name = re17	% Local Parameter:   id =  k1, name = k1
	reaction_re17_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re17_k2=600000.0;

	reaction_re17=compartment_default*(reaction_re17_k1*x(3)*x(7)-reaction_re17_k2*x(16));

% Reaction: id = re18, name = re18	% Local Parameter:   id =  k1, name = k1
	reaction_re18_k1=0.0015;

	reaction_re18=compartment_default*reaction_re18_k1*x(16);

% Reaction: id = re19, name = re19	% Local Parameter:   id =  Vm, name = Vm
	reaction_re19_Vm=0.083;
	% Local Parameter:   id =  Kms1, name = Kms1
	reaction_re19_Kms1=15000.0;
	% Local Parameter:   id =  Kms2, name = Kms2
	reaction_re19_Kms2=15000.0;
	% Local Parameter:   id =  Kms3, name = Kms3
	reaction_re19_Kms3=23000.0;

	reaction_re19=compartment_default*LigandDegrOld(x(9), reaction_re19_Vm, x(7), reaction_re19_Kms1, x(20), reaction_re19_Kms2, x(23), reaction_re19_Kms3);

% Reaction: id = re20, name = re20
	reaction_re20=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(8)*x(16)-global_par_cypGene_PXRprotein*x(13));

% Reaction: id = re21, name = re21
	reaction_re21=compartment_default*mRNA(const_species_s28, x(13), global_par_cypMrna_synt);

% Reaction: id = re22, name = re22
	reaction_re22=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(1)*x(15)-global_par_PXRGene_GRprotein*x(14));

% Reaction: id = re23, name = re23
	reaction_re23=compartment_default*mRNA(const_species_s28, x(14), global_par_pxrMrna_synt);

% Reaction: id = re24, name = re24
	reaction_re24=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(4)*x(15)-global_par_GRGene_GRprotein*x(12));

% Reaction: id = re25, name = re25
	reaction_re25=compartment_default*mRNA(const_species_s28, x(12), global_par_grMrna_synt);

% Reaction: id = re26, name = re26
	reaction_re26=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(18)*x(15)-global_par_TATGene_GRprotein*x(17));

% Reaction: id = re27, name = re27
	reaction_re27=compartment_default*mRNA(const_species_s28, x(17), global_par_tatMrna_synt);

% Reaction: id = re42, name = re42	% Local Parameter:   id =  k1, name = k1
	reaction_re42_k1=0.016;
	% Local Parameter:   id =  k2, name = k2
	reaction_re42_k2=0.016;

	reaction_re42=compartment_default*(reaction_re42_k1*const_species_Cortisone-reaction_re42_k2*x(7));

% Reaction: id = re44, name = re44	% Local Parameter:   id =  k1, name = k1
	reaction_re44_k1=0.012;

	reaction_re44=compartment_default*reaction_re44_k1*x(19);

% Reaction: id = re43, name = re43	% Local Parameter:   id =  Ka, name = Ka
	reaction_re43_Ka=0.5;

	reaction_re43=compartment_default*ptotein(reaction_re43_Ka, const_species_s36, x(11));

% Reaction: id = cortisolTransport, name = cortisolTransport	% Local Parameter:   id =  k1, name = k1
	reaction_cortisolTransport_k1=1000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_cortisolTransport_k2=1000.0;

	reaction_cortisolTransport=reaction_cortisolTransport_k1*x(30)-reaction_cortisolTransport_k2*x(7);

% Reaction: id = L2_PXR_binding, name = L2_PXR_binding	% Local Parameter:   id =  k1, name = k1
	reaction_L2_PXR_binding_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_L2_PXR_binding_k2=600000.0;

	reaction_L2_PXR_binding=compartment_default*(reaction_L2_PXR_binding_k1*x(3)*x(20)-reaction_L2_PXR_binding_k2*x(21));

% Reaction: id = L2_PXR_deg, name = L2_PXR_deg	% Local Parameter:   id =  k1, name = k1
	reaction_L2_PXR_deg_k1=0.0015;

	reaction_L2_PXR_deg=compartment_default*reaction_L2_PXR_deg_k1*x(21);

% Reaction: id = CYPmRNA_synt_PXR_L2, name = CYPmRNA_synt_PXR_L2
	reaction_CYPmRNA_synt_PXR_L2=compartment_default*mRNA(const_species_s28, x(22), global_par_cypMrna_synt);

% Reaction: id = CYPmRNA_PXR_L2_binding, name = CYPmRNA_PXR_L2_binding
	reaction_CYPmRNA_PXR_L2_binding=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(8)*x(21)-global_par_cypGene_PXRprotein*x(22));

% Reaction: id = re28, name = re28	% Local Parameter:   id =  k1, name = k1
	reaction_re28_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re28_k2=60.0;

	reaction_re28=compartment_default*(reaction_re28_k1*x(6)*x(23)-reaction_re28_k2*x(24));

% Reaction: id = re29, name = re29	% Local Parameter:   id =  k1, name = k1
	reaction_re29_k1=0.001;

	reaction_re29=compartment_default*reaction_re29_k1*x(24);

% Reaction: id = re30, name = re30	% Local Parameter:   id =  k1, name = k1
	reaction_re30_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re30_k2=60000.0;

	reaction_re30=compartment_default*(reaction_re30_k1*x(3)*x(23)-reaction_re30_k2*x(25));

% Reaction: id = re31, name = re31	% Local Parameter:   id =  k1, name = k1
	reaction_re31_k1=0.0015;

	reaction_re31=compartment_default*reaction_re31_k1*x(25);

% Reaction: id = re32, name = re32	% Local Parameter:   id =  Vm, name = Vm
	reaction_re32_Vm=0.00425;
	% Local Parameter:   id =  Kms1, name = Kms1
	reaction_re32_Kms1=23000.0;
	% Local Parameter:   id =  Kms2, name = Kms2
	reaction_re32_Kms2=15000.0;
	% Local Parameter:   id =  Kms3, name = Kms3
	reaction_re32_Kms3=15000.0;

	reaction_re32=compartment_default*LigandDegrOld(x(9), reaction_re32_Vm, x(23), reaction_re32_Kms1, x(20), reaction_re32_Kms2, x(7), reaction_re32_Kms3);

% Reaction: id = re33, name = re33
	reaction_re33=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(8)*x(25)-global_par_cypGene_PXRprotein*x(26));

% Reaction: id = re34, name = re34
	reaction_re34=compartment_default*mRNA(const_species_s28, x(26), global_par_cypMrna_synt);

% Reaction: id = re35, name = re35
	reaction_re35=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(24)*x(1)-global_par_PXRGene_GRprotein*x(27));

% Reaction: id = re36, name = re36
	reaction_re36=compartment_default*mRNA(const_species_s28, x(27), global_par_pxrMrna_synt);

% Reaction: id = re37, name = re37
	reaction_re37=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(24)*x(4)-global_par_GRGene_GRprotein*x(28));

% Reaction: id = re38, name = re38
	reaction_re38=compartment_default*mRNA(const_species_s28, x(28), global_par_grMrna_synt);

% Reaction: id = re39, name = re39
	reaction_re39=compartment_default*(global_par_GeneProteinBinding_diff_limited*x(24)*x(18)-global_par_TATGene_GRprotein*x(29));

% Reaction: id = re40, name = re40
	reaction_re40=compartment_default*mRNA(const_species_s28, x(29), global_par_tatMrna_synt);

% Reaction: id = re41, name = re41	% Local Parameter:   id =  k1, name = k1
	reaction_re41_k1=100.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_re41_k2=100.0;

	reaction_re41=reaction_re41_k1*const_species_DEXout-reaction_re41_k2*x(23);

% Reaction: id = Cortisol_CBG, name = Cortisol_CBG	% Local Parameter:   id =  k1, name = k1
	reaction_Cortisol_CBG_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_Cortisol_CBG_k2=270.0;

	reaction_Cortisol_CBG=compartment_blood*(reaction_Cortisol_CBG_k1*x(30)*x(31)-reaction_Cortisol_CBG_k2*x(32));

% Reaction: id = Cort_Alb, name = Cort_Alb	% Local Parameter:   id =  k1, name = k1
	reaction_Cort_Alb_k1=60.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_Cort_Alb_k2=900000.0;

	reaction_Cort_Alb=compartment_blood*(reaction_Cort_Alb_k1*x(33)*x(30)-reaction_Cort_Alb_k2*x(34));

% Reaction: id = cort_distribution, name = cort_distribution	% Local Parameter:   id =  k1, name = k1
	reaction_cort_distribution_k1=1000.0;

	reaction_cort_distribution=compartment_blood*reaction_cort_distribution_k1*const_species_CortAdded;

% Species:   id = s28, name = S_RNA, constant	const_species_s28=1.00000029723653;

% Species:   id = s36, name = S_PROT, constant	const_species_s36=1.00000029723653;

% Species:   id = s30, name = P, constant	const_species_s30=0.0;

% Species:   id = s10, name = Cort_degr, constant	const_species_s10=0.0;

% Species:   id = Cortisone, name = Cortisone, constant	const_species_Cortisone=24.0000071336767;

% Species:   id = DEX_degr, name = DEX_degr, constant	const_species_DEX_degr=0.0;

% Species:   id = DEXout, name = DEXout, constant	const_species_DEXout=0.0;

% Species:   id = CortAdded, name = CortAdded, constant	const_species_CortAdded=0.0;

	xdot=zeros(34,1);
	
% Species:   id = s46, name = PXR_GENE, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re22) + (-1.0 * reaction_re35));
	
% Species:   id = s32, name = PXR_RNA, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re6) + ( 1.0 * reaction_re23) + ( 1.0 * reaction_re36));
	
% Species:   id = s42, name = PXR_PROT, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re17) + (-1.0 * reaction_L2_PXR_binding) + (-1.0 * reaction_re30));
	
% Species:   id = s40, name = GR_GENE, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re24) + (-1.0 * reaction_re37));
	
% Species:   id = s33, name = GR_RNA, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re25) + ( 1.0 * reaction_re38));
	
% Species:   id = s39, name = GR_PROT, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re12) + (-1.0 * reaction_re15) + (-1.0 * reaction_re28));
	
% Species:   id = s114, name = Cort, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + ( 1.0 * reaction_re18) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re42) + ( 1.0 * reaction_cortisolTransport));
	
% Species:   id = s155, name = CYP_GENE, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re20) + (-1.0 * reaction_CYPmRNA_PXR_L2_binding) + (-1.0 * reaction_re33));
	
% Species:   id = s172, name = CYP_PROT, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re3) + (-1.0 * reaction_re4));
	
% Species:   id = s173, name = CYP_RNA, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + ( 1.0 * reaction_re21) + ( 1.0 * reaction_CYPmRNA_synt_PXR_L2) + ( 1.0 * reaction_re34));
	
% Species:   id = s185, name = TAT_RNA, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re13) + (-1.0 * reaction_re14) + ( 1.0 * reaction_re27) + ( 1.0 * reaction_re40));
	
% Species:   id = s84, name = GRgene_GRprot_Cort, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re24));
	
% Species:   id = s165, name = CYPgene_PXRprot_Cort, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re20));
	
% Species:   id = s109, name = PXRgene_GRprot_Cort, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re22));
	
% Species:   id = s87, name = GRprot_Cort, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re16) + (-1.0 * reaction_re22) + (-1.0 * reaction_re24) + (-1.0 * reaction_re26));
	
% Species:   id = s119, name = PXRprot_Cort, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re17) + (-1.0 * reaction_re18) + (-1.0 * reaction_re20));
	
% Species:   id = s183, name = TATgene_GRprot_Cort, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_re26));
	
% Species:   id = s178, name = TAT_GENE, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*((-1.0 * reaction_re26) + (-1.0 * reaction_re39));
	
% Species:   id = TAT_PROT, name = TAT_PROT, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_re44) + ( 1.0 * reaction_re43));
	
% Species:   id = Ligand2, name = Ligand2, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*((-1.0 * reaction_L2_PXR_binding) + ( 1.0 * reaction_L2_PXR_deg));
	
% Species:   id = PXRprot_Ligand2, name = PXRprot_Ligand2, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_L2_PXR_binding) + (-1.0 * reaction_L2_PXR_deg) + (-1.0 * reaction_CYPmRNA_PXR_L2_binding));
	
% Species:   id = CYPgene_PXRprot_Ligand2, name = CYPgene_PXRprot_Ligand2, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_CYPmRNA_PXR_L2_binding));
	
% Species:   id = DEX, name = DEX, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*((-1.0 * reaction_re28) + ( 1.0 * reaction_re29) + (-1.0 * reaction_re30) + ( 1.0 * reaction_re31) + (-1.0 * reaction_re32) + ( 1.0 * reaction_re41));
	
% Species:   id = GRprot_DEX, name = GRprot_DEX, affected by kineticLaw
	xdot(24) = (1/(compartment_default))*(( 1.0 * reaction_re28) + (-1.0 * reaction_re29) + (-1.0 * reaction_re35) + (-1.0 * reaction_re37) + (-1.0 * reaction_re39));
	
% Species:   id = PXRprot_DEX, name = PXRprot_DEX, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*(( 1.0 * reaction_re30) + (-1.0 * reaction_re31) + (-1.0 * reaction_re33));
	
% Species:   id = CYPgene_PXRprot_DEX, name = CYPgene_PXRprot_DEX, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_re33));
	
% Species:   id = PXRgene_GRprot_DEX, name = PXRgene_GRprot_DEX, affected by kineticLaw
	xdot(27) = (1/(compartment_default))*(( 1.0 * reaction_re35));
	
% Species:   id = GRgene_GRprot_DEX, name = GRgene_GRprot_DEX, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*(( 1.0 * reaction_re37));
	
% Species:   id = TATgene_GRprot_DEX, name = TATgene_GRprot_DEX, affected by kineticLaw
	xdot(29) = (1/(compartment_default))*(( 1.0 * reaction_re39));
	
% Species:   id = s2, name = CortOUT, affected by kineticLaw
	xdot(30) = (1/(compartment_blood))*((-1.0 * reaction_cortisolTransport) + (-1.0 * reaction_Cortisol_CBG) + (-1.0 * reaction_Cort_Alb) + ( 1.0 * reaction_cort_distribution));
	
% Species:   id = CBG, name = CBG, affected by kineticLaw
	xdot(31) = (1/(compartment_blood))*((-1.0 * reaction_Cortisol_CBG));
	
% Species:   id = CBG_CortOUT, name = CBG_CortOUT, affected by kineticLaw
	xdot(32) = (1/(compartment_blood))*(( 1.0 * reaction_Cortisol_CBG));
	
% Species:   id = Alb, name = Alb, affected by kineticLaw
	xdot(33) = (1/(compartment_blood))*((-1.0 * reaction_Cort_Alb));
	
% Species:   id = Alb_CortOUT, name = Alb_CortOUT, affected by kineticLaw
	xdot(34) = (1/(compartment_blood))*(( 1.0 * reaction_Cort_Alb));
end

function z=mRNA(S_RNA,Activator,Ka), z=(Ka*S_RNA*Activator);end

function z=ptotein(Ka,S_PROT,Activator), z=(Ka*S_PROT*Activator);end

function z=LigandDegrOld(Act,Vm,S1,Kms1,S2,Kms2,S3,Kms3), z=(Act*Vm*S1/Kms1/(1+S1/Kms1+S2/Kms2+S3/Kms3));end

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


