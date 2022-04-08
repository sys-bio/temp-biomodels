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
% Model name = Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis
%
% isDescribedBy http://identifiers.org/pubmed/29351477
% is http://identifiers.org/biomodels.db/MODEL2103050001
% is http://identifiers.org/biomodels.db/BIOMD0000001005
%


function main()
%Initial conditions vector
	x0=zeros(41,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
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
	x0(17) = 1.0;
	x0(18) = 1.0;
	x0(19) = 1.0;
	x0(20) = 1.0;
	x0(21) = 1.0;
	x0(22) = 1.0;
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
	x0(36) = 1.0;
	x0(37) = 1.0;
	x0(38) = 1.0;
	x0(39) = 1.0;
	x0(40) = 1.0;
	x0(41) = 1.0;


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

% Compartment: id = HPA, name = HPA, constant
	compartment_HPA=1.0;
% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Parameter:   id =  L, name = Light
% Parameter:   id =  Feed, name = Feed
% assignmentRule: variable = L
	global_par_L=piecewise(1, (piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) >= 6) && (piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) <= 18), 0);
% assignmentRule: variable = Feed
	global_par_Feed=piecewise(1, (piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) >= 6) && (piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) <= 18), 0);

% Reaction: id = CRH_Production, name = CRH Production	% Local Parameter:   id =  KP1, name = KP1
	reaction_CRH_Production_KP1=1.0577;
	% Local Parameter:   id =  kp1, name = kp1
	reaction_CRH_Production_kp1=0.7965;

	reaction_CRH_Production=compartment_HPA*CRH_Production_1(x(41), reaction_CRH_Production_KP1, reaction_CRH_Production_kp1);

% Reaction: id = ACTH_Production, name = ACTH Production	% Local Parameter:   id =  KP1, name = KP1
	reaction_ACTH_Production_KP1=1.0577;
	% Local Parameter:   id =  kfp, name = kfp
	reaction_ACTH_Production_kfp=0.15;
	% Local Parameter:   id =  kp2, name = kp2
	reaction_ACTH_Production_kp2=0.6875;

	reaction_ACTH_Production=compartment_HPA*ACTH_Production__1__1(x(1), x(41), reaction_ACTH_Production_KP1, x(27), reaction_ACTH_Production_kfp, reaction_ACTH_Production_kp2);

% Reaction: id = ACTH_Degradation, name = ACTH Degradation	% Local Parameter:   id =  Kd2, name = Kd2
	reaction_ACTH_Degradation_Kd2=0.3069;
	% Local Parameter:   id =  Vd2, name = Vd2
	reaction_ACTH_Degradation_Vd2=0.5129;

	reaction_ACTH_Degradation=compartment_HPA*ACTH_Degradation_1(x(2), reaction_ACTH_Degradation_Kd2, reaction_ACTH_Degradation_Vd2);

% Reaction: id = F_HPA__Production, name = F(HPA) Production	% Local Parameter:   id =  kfp, name = kfp
	reaction_F_HPA__Production_kfp=0.15;
	% Local Parameter:   id =  kn, name = kn
	reaction_F_HPA__Production_kn=1.2;
	% Local Parameter:   id =  kp3, name = kp3
	reaction_F_HPA__Production_kp3=1.0302;

	reaction_F_HPA__Production=FHPA_Production__1__1(x(2), x(15), x(27), reaction_F_HPA__Production_kfp, reaction_F_HPA__Production_kn, reaction_F_HPA__Production_kp3);

% Reaction: id = F_HPA__Degradation, name = F(HPA) Degradation	% Local Parameter:   id =  Kd3, name = Kd3
	reaction_F_HPA__Degradation_Kd3=0.4695;
	% Local Parameter:   id =  Vd3, name = Vd3
	reaction_F_HPA__Degradation_Vd3=0.3618;

	reaction_F_HPA__Degradation=compartment_HPA*FHPA_Degradation_1(x(3), reaction_F_HPA__Degradation_Kd3, reaction_F_HPA__Degradation_Vd3);

% Reaction: id = F__Cell, name = F (Cell)	% Local Parameter:   id =  tau, name = tau
	reaction_F__Cell_tau=0.25;

	reaction_F__Cell=F_Cell__1__1(x(4), x(3), reaction_F__Cell_tau);

% Reaction: id = PER_CRY_mRNA_Production_1, name = PER/CRY mRNA Production 1	% Local Parameter:   id =  c, name = c
	reaction_PER_CRY_mRNA_Production_1_c=0.1;
	% Local Parameter:   id =  k1b, name = k1b
	reaction_PER_CRY_mRNA_Production_1_k1b=1.0;
	% Local Parameter:   id =  k1i, name = k1i
	reaction_PER_CRY_mRNA_Production_1_k1i=0.56;
	% Local Parameter:   id =  kf, name = kf
	reaction_PER_CRY_mRNA_Production_1_kf=0.12;
	% Local Parameter:   id =  p, name = p
	reaction_PER_CRY_mRNA_Production_1_p=8.0;
	% Local Parameter:   id =  v1b, name = v1b
	reaction_PER_CRY_mRNA_Production_1_v1b=9.0;

	reaction_PER_CRY_mRNA_Production_1=PER_CRY_mRNA_Production_1__1__1(x(34), reaction_PER_CRY_mRNA_Production_1_c, reaction_PER_CRY_mRNA_Production_1_k1b, reaction_PER_CRY_mRNA_Production_1_k1i, reaction_PER_CRY_mRNA_Production_1_kf, reaction_PER_CRY_mRNA_Production_1_p, reaction_PER_CRY_mRNA_Production_1_v1b, x(7), x(11));

% Reaction: id = PER_CRY_mRNA_Production_2, name = PER/CRY mRNA Production 2	% Local Parameter:   id =  kc, name = kc
	reaction_PER_CRY_mRNA_Production_2_kc=9.0E-6;

	reaction_PER_CRY_mRNA_Production_2=PER_CRY_mRNA_Production_2__1__1(x(33), reaction_PER_CRY_mRNA_Production_2_kc, x(11));

% Reaction: id = PER_CRY_mRNA_Degradation, name = PER/CRY mRNA Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PER_CRY_mRNA_Degradation_k1=0.12;

	reaction_PER_CRY_mRNA_Degradation=compartment_Cell*reaction_PER_CRY_mRNA_Degradation_k1*x(5);

% Reaction: id = PER_CRY_Cell_Translation, name = PER/CRY Cell Translation	% Local Parameter:   id =  k2b, name = k2b
	reaction_PER_CRY_Cell_Translation_k2b=0.3;
	% Local Parameter:   id =  q, name = q
	reaction_PER_CRY_Cell_Translation_q=2.0;

	reaction_PER_CRY_Cell_Translation=compartment_Cell*PER_CRY_Protein_Translation_1(reaction_PER_CRY_Cell_Translation_k2b, reaction_PER_CRY_Cell_Translation_q, x(5));

% Reaction: id = PER_CRY_Cell_Degradation, name = PER/CRY Cell Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PER_CRY_Cell_Degradation_k1=0.05;

	reaction_PER_CRY_Cell_Degradation=compartment_Cell*reaction_PER_CRY_Cell_Degradation_k1*x(6);

% Reaction: id = PER_CRY__Cell_to_Nucleus, name = PER/CRY (Cell to Nucleus)	% Local Parameter:   id =  k1, name = k1
	reaction_PER_CRY__Cell_to_Nucleus_k1=0.24;

	reaction_PER_CRY__Cell_to_Nucleus=reaction_PER_CRY__Cell_to_Nucleus_k1*x(6);

% Reaction: id = PER_CRY__Nucleus_to_Cytoplasm, name = PER/CRY (Nucleus to Cytoplasm)	% Local Parameter:   id =  k1, name = k1
	reaction_PER_CRY__Nucleus_to_Cytoplasm_k1=0.02;

	reaction_PER_CRY__Nucleus_to_Cytoplasm=reaction_PER_CRY__Nucleus_to_Cytoplasm_k1*x(7);

% Reaction: id = PER_CRY_Nucleus_Degradation, name = PER/CRY Nucleus Degradation	% Local Parameter:   id =  k3d, name = k3d
	reaction_PER_CRY_Nucleus_Degradation_k3d=0.02;

	reaction_PER_CRY_Nucleus_Degradation=PER_CRY_Nuclear_degradation_1(x(16), reaction_PER_CRY_Nucleus_Degradation_k3d, x(7));

% Reaction: id = Bmal_mRNA_Production, name = Bmal mRNA Production	% Local Parameter:   id =  k4b, name = k4b
	reaction_Bmal_mRNA_Production_k4b=2.16;
	% Local Parameter:   id =  kg13, name = kg13
	reaction_Bmal_mRNA_Production_kg13=0.3;
	% Local Parameter:   id =  r, name = r
	reaction_Bmal_mRNA_Production_r=3.0;
	% Local Parameter:   id =  v4b, name = v4b
	reaction_Bmal_mRNA_Production_v4b=0.72;

	reaction_Bmal_mRNA_Production=Bmal_mRNA_Transcription_1(x(24), reaction_Bmal_mRNA_Production_k4b, reaction_Bmal_mRNA_Production_kg13, reaction_Bmal_mRNA_Production_r, reaction_Bmal_mRNA_Production_v4b, x(7));

% Reaction: id = Bmal_mRNA_Degradation, name = Bmal mRNA Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_mRNA_Degradation_k1=0.75;

	reaction_Bmal_mRNA_Degradation=compartment_Cell*reaction_Bmal_mRNA_Degradation_k1*x(8);

% Reaction: id = Bmal_Protein_Translation, name = Bmal Protein Translation	% Local Parameter:   id =  k5b, name = k5b
	reaction_Bmal_Protein_Translation_k5b=0.24;

	reaction_Bmal_Protein_Translation=compartment_Cell*Bmal_Protein_Translation_0(reaction_Bmal_Protein_Translation_k5b, x(8));

% Reaction: id = Bmal_Translocation, name = Bmal Translocation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Translocation_k1=0.45;
	% Local Parameter:   id =  k2, name = k2
	reaction_Bmal_Translocation_k2=0.06;

	reaction_Bmal_Translocation=reaction_Bmal_Translocation_k1*x(9)-reaction_Bmal_Translocation_k2*x(10);

% Reaction: id = Bmal_Clock_Association, name = Bmal Clock Association	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Clock_Association_k1=1.0;

	reaction_Bmal_Clock_Association=compartment_Nucleus*reaction_Bmal_Clock_Association_k1*x(10);

% Reaction: id = Bmal_Clock_Dissociation, name = Bmal Clock Dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Clock_Dissociation_k1=0.1;

	reaction_Bmal_Clock_Dissociation=compartment_Nucleus*reaction_Bmal_Clock_Dissociation_k1*x(11);

% Reaction: id = Bmal_Cell_Degradation, name = Bmal Cell Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Cell_Degradation_k1=0.06;

	reaction_Bmal_Cell_Degradation=compartment_Cell*reaction_Bmal_Cell_Degradation_k1*x(9);

% Reaction: id = Bmal_Nucleus_Degradation, name = Bmal Nucleus Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Nucleus_Degradation_k1=0.12;

	reaction_Bmal_Nucleus_Degradation=compartment_Nucleus*reaction_Bmal_Nucleus_Degradation_k1*x(10);

% Reaction: id = Bmal_Clock_Degradation, name = Bmal Clock Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Clock_Degradation_k1=0.5;

	reaction_Bmal_Clock_Degradation=compartment_Nucleus*reaction_Bmal_Clock_Degradation_k1*x(11);

% Reaction: id = CRH_Degradation, name = CRH Degradation	% Local Parameter:   id =  Kd1, name = Kd1
	reaction_CRH_Degradation_Kd1=1.9627;
	% Local Parameter:   id =  Vd1, name = Vd1
	reaction_CRH_Degradation_Vd1=0.5084;

	reaction_CRH_Degradation=compartment_HPA*CRH_Degradation_1(x(1), reaction_CRH_Degradation_Kd1, global_par_L, reaction_CRH_Degradation_Vd1);

% Reaction: id = NAD_Production, name = NAD Production	% Local Parameter:   id =  KM1, name = KM1
	reaction_NAD_Production_KM1=2.0;
	% Local Parameter:   id =  km1, name = km1
	reaction_NAD_Production_km1=5.0;
	% Local Parameter:   id =  nad, name = nad
	reaction_NAD_Production_nad=1.0;

	reaction_NAD_Production=compartment_Cell*NAD_Production_1_1(reaction_NAD_Production_KM1, x(12), reaction_NAD_Production_km1, reaction_NAD_Production_nad);

% Reaction: id = NMN_to_NAD, name = NMN to NAD	% Local Parameter:   id =  KM2, name = KM2
	reaction_NMN_to_NAD_KM2=1.0;
	% Local Parameter:   id =  km2, name = km2
	reaction_NMN_to_NAD_km2=40.0;

	reaction_NMN_to_NAD=compartment_Cell*NMN_to_NAD_1(reaction_NMN_to_NAD_KM2, x(13), reaction_NMN_to_NAD_km2);

% Reaction: id = NAD_Inhibition, name = NAD Inhibition	% Local Parameter:   id =  KM3, name = KM3
	reaction_NAD_Inhibition_KM3=1.0;
	% Local Parameter:   id =  km3, name = km3
	reaction_NAD_Inhibition_km3=5.0;

	reaction_NAD_Inhibition=NAD_degradation_1(reaction_NAD_Inhibition_KM3, x(12), x(20), reaction_NAD_Inhibition_km3);

% Reaction: id = NAD_to_NAM, name = NAD to NAM	% Local Parameter:   id =  KM4, name = KM4
	reaction_NAD_to_NAM_KM4=20.0;
	% Local Parameter:   id =  km4, name = km4
	reaction_NAD_to_NAM_km4=20.0;

	reaction_NAD_to_NAM=compartment_Cell*NAD_to_NAM_1(reaction_NAD_to_NAM_KM4, x(12), reaction_NAD_to_NAM_km4);

% Reaction: id = NAM_to_NMN, name = NAM to NMN	% Local Parameter:   id =  KM5, name = KM5
	reaction_NAM_to_NMN_KM5=5.0;
	% Local Parameter:   id =  km5, name = km5
	reaction_NAM_to_NMN_km5=40.0;

	reaction_NAM_to_NMN=compartment_Cell*NAM_to_NMN_1(reaction_NAM_to_NMN_KM5, x(14), x(18), reaction_NAM_to_NMN_km5);

% Reaction: id = EntF_Production, name = EntF Production	% Local Parameter:   id =  KM11, name = KM11
	reaction_EntF_Production_KM11=2.0;
	% Local Parameter:   id =  km11, name = km11
	reaction_EntF_Production_km11=5.0;

	reaction_EntF_Production=compartment_Cell*EntF_Production_1(reaction_EntF_Production_KM11, x(12), reaction_EntF_Production_km11);

% Reaction: id = EntF_Degradation, name = EntF Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_EntF_Degradation_k1=1.0;

	reaction_EntF_Degradation=compartment_Cell*reaction_EntF_Degradation_k1*x(15);

% Reaction: id = SIRT1_Prod, name = SIRT1 Prod	% Local Parameter:   id =  KM6, name = KM6
	reaction_SIRT1_Prod_KM6=1.0;
	% Local Parameter:   id =  km6, name = km6
	reaction_SIRT1_Prod_km6=5.0;
	% Local Parameter:   id =  sirt, name = sirt
	reaction_SIRT1_Prod_sirt=5.0;

	reaction_SIRT1_Prod=compartment_Cell*SIRT1_Production_1(reaction_SIRT1_Prod_KM6, x(12), x(16), reaction_SIRT1_Prod_km6, reaction_SIRT1_Prod_sirt);

% Reaction: id = SIRT1_Degradation, name = SIRT1 Degradation	% Local Parameter:   id =  KM7, name = KM7
	reaction_SIRT1_Degradation_KM7=1.0;
	% Local Parameter:   id =  km7, name = km7
	reaction_SIRT1_Degradation_km7=2.0;

	reaction_SIRT1_Degradation=compartment_Cell*SIRT1_Inhibition_1(reaction_SIRT1_Degradation_KM7, x(16), reaction_SIRT1_Degradation_km7);

% Reaction: id = Bmal_Clock___Sirt1_Association, name = Bmal/Clock - Sirt1 Association	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Clock___Sirt1_Association_k1=10.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_Bmal_Clock___Sirt1_Association_k2=20.0;

	reaction_Bmal_Clock___Sirt1_Association=reaction_Bmal_Clock___Sirt1_Association_k1*x(11)*x(16)-reaction_Bmal_Clock___Sirt1_Association_k2*x(17);

% Reaction: id = Bmal_Clock___Sirt1_Degradation, name = Bmal/Clock - Sirt1 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bmal_Clock___Sirt1_Degradation_k1=0.1;

	reaction_Bmal_Clock___Sirt1_Degradation=compartment_Nucleus*reaction_Bmal_Clock___Sirt1_Degradation_k1*x(17);

% Reaction: id = NAMPT_Production, name = NAMPT Production	% Local Parameter:   id =  km10a, name = km10a
	reaction_NAMPT_Production_km10a=2.0;

	reaction_NAMPT_Production=NAMPT_Production_0(reaction_NAMPT_Production_km10a, x(17));

% Reaction: id = NAMPT_Degradation, name = NAMPT Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_NAMPT_Degradation_k1=2.0;

	reaction_NAMPT_Degradation=compartment_Cell*reaction_NAMPT_Degradation_k1*x(18);

% Reaction: id = Feed_2, name = Feed 2	% Local Parameter:   id =  Tf, name = Tf
	reaction_Feed_2_Tf=3.0;

	reaction_Feed_2=compartment_HPA*Feed2_1(global_par_Feed, reaction_Feed_2_Tf, x(19));

% Reaction: id = Feed_3, name = Feed 3	% Local Parameter:   id =  Tf, name = Tf
	reaction_Feed_3_Tf=3.0;

	reaction_Feed_3=compartment_HPA*Feed3_1(reaction_Feed_3_Tf, x(19), x(20));

% Reaction: id = PGC1a_mRNA_Production, name = PGC1a mRNA Production	% Local Parameter:   id =  kg1, name = kg1
	reaction_PGC1a_mRNA_Production_kg1=0.002;

	reaction_PGC1a_mRNA_Production=compartment_Cell*PGC1a___mRNA_Production_1(x(25), reaction_PGC1a_mRNA_Production_kg1);

% Reaction: id = PGC1a_mRNA_Degradation, name = PGC1a mRNA Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PGC1a_mRNA_Degradation_k1=0.2;

	reaction_PGC1a_mRNA_Degradation=compartment_Cell*reaction_PGC1a_mRNA_Degradation_k1*x(21);

% Reaction: id = PGC1a_Protein_Degraadation, name = PGC1a Protein Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PGC1a_Protein_Degraadation_k1=3.0;

	reaction_PGC1a_Protein_Degraadation=compartment_Cell*reaction_PGC1a_Protein_Degraadation_k1*x(22);

% Reaction: id = PGC1a_Cell_to_Nucleus, name = PGC1a Cell to Nucleus	% Local Parameter:   id =  k1, name = k1
	reaction_PGC1a_Cell_to_Nucleus_k1=2.0;

	reaction_PGC1a_Cell_to_Nucleus=reaction_PGC1a_Cell_to_Nucleus_k1*x(22);

% Reaction: id = PGC1a_Nucleus_to_Cell, name = PGC1a Nucleus to Cell	% Local Parameter:   id =  k1, name = k1
	reaction_PGC1a_Nucleus_to_Cell_k1=0.2;

	reaction_PGC1a_Nucleus_to_Cell=reaction_PGC1a_Nucleus_to_Cell_k1*x(23);

% Reaction: id = PGC1aNactive_to_PGC1aN, name = PGC1aNactive to PGC1aN	% Local Parameter:   id =  k1, name = k1
	reaction_PGC1aNactive_to_PGC1aN_k1=0.5;

	reaction_PGC1aNactive_to_PGC1aN=compartment_Nucleus*reaction_PGC1aNactive_to_PGC1aN_k1*x(24);

% Reaction: id = PGC1aN_to_PGC1aNactive, name = PGC1aN to PGC1aNactive	% Local Parameter:   id =  kg5, name = kg5
	reaction_PGC1aN_to_PGC1aNactive_kg5=0.1;

	reaction_PGC1aN_to_PGC1aNactive=PGC1aN_to_PGC1aNactive_1(x(24), x(16), reaction_PGC1aN_to_PGC1aNactive_kg5);

% Reaction: id = PGCNactive_Degradation, name = PGCNactive Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PGCNactive_Degradation_k1=0.8;

	reaction_PGCNactive_Degradation=compartment_Nucleus*reaction_PGCNactive_Degradation_k1*x(24);

% Reaction: id = FOXO1_Production, name = FOXO1 Production	% Local Parameter:   id =  kg9, name = kg9
	reaction_FOXO1_Production_kg9=3.0;

	reaction_FOXO1_Production=FOXO1_Production_1(x(24), reaction_FOXO1_Production_kg9);

% Reaction: id = FOXO1_Degradation, name = FOXO1 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_FOXO1_Degradation_k1=5.0;

	reaction_FOXO1_Degradation=compartment_Cell*reaction_FOXO1_Degradation_k1*x(25);

% Reaction: id = Pck1_G6pc_Degradation, name = Pck1/G6pc Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Pck1_G6pc_Degradation_k1=3.0;

	reaction_Pck1_G6pc_Degradation=compartment_Cell*reaction_Pck1_G6pc_Degradation_k1*x(26);

% Reaction: id = PGC1a_Translation, name = PGC1a Translation	% Local Parameter:   id =  k5b, name = k5b
	reaction_PGC1a_Translation_k5b=3.0;

	reaction_PGC1a_Translation=compartment_Cell*Bmal_Protein_Translation_1(x(21), reaction_PGC1a_Translation_k5b);

% Reaction: id = PGC1aNactivation, name = PGC1aNactivation	% Local Parameter:   id =  kg5, name = kg5
	reaction_PGC1aNactivation_kg5=0.1;

	reaction_PGC1aNactivation=PGC1aNact_to_PGC1aN_1(x(23), x(16), reaction_PGC1aNactivation_kg5);

% Reaction: id = Phpa_0, name = Phpa	% Local Parameter:   id =  Tf, name = Tf
	reaction_Phpa_0_Tf=0.25;

	reaction_Phpa_0=Phpa_Production_1(x(34), x(27), reaction_Phpa_0_Tf);

% Reaction: id = MR_Production, name = MR Production	% Local Parameter:   id =  KMR, name = KMR
	reaction_MR_Production_KMR=0.21;
	% Local Parameter:   id =  Kfmr, name = Kfmr
	reaction_MR_Production_Kfmr=0.5;
	% Local Parameter:   id =  MRt, name = MRt
	reaction_MR_Production_MRt=1.45;
	% Local Parameter:   id =  kfmr, name = kfmr
	reaction_MR_Production_kfmr=1.011;
	% Local Parameter:   id =  kmr, name = kmr
	reaction_MR_Production_kmr=0.34;

	reaction_MR_Production=compartment_Cell*MR_Production_1(x(4), reaction_MR_Production_KMR, reaction_MR_Production_Kfmr, x(28), reaction_MR_Production_MRt, reaction_MR_Production_kfmr, reaction_MR_Production_kmr);

% Reaction: id = GR_Production, name = GR Production	% Local Parameter:   id =  GRt, name = GRt
	reaction_GR_Production_GRt=1.81;
	% Local Parameter:   id =  KGR, name = KGR
	reaction_GR_Production_KGR=0.74;
	% Local Parameter:   id =  Kfgr, name = Kfgr
	reaction_GR_Production_Kfgr=30.0;
	% Local Parameter:   id =  kfgr, name = kfgr
	reaction_GR_Production_kfgr=15.0;
	% Local Parameter:   id =  kgr, name = kgr
	reaction_GR_Production_kgr=1.18;

	reaction_GR_Production=compartment_Cell*GR_Production_1(x(4), x(29), reaction_GR_Production_GRt, reaction_GR_Production_KGR, reaction_GR_Production_Kfgr, reaction_GR_Production_kfgr, reaction_GR_Production_kgr);

% Reaction: id = MR_Degradation, name = MR Degradation	% Local Parameter:   id =  KMRdeg, name = KMRdeg
	reaction_MR_Degradation_KMRdeg=1.65;
	% Local Parameter:   id =  kmrgeg, name = kmrgeg
	reaction_MR_Degradation_kmrgeg=0.7;

	reaction_MR_Degradation=compartment_Cell*MR_Degradation_1(reaction_MR_Degradation_KMRdeg, x(28), reaction_MR_Degradation_kmrgeg);

% Reaction: id = GR_Degradation, name = GR Degradation	% Local Parameter:   id =  KGRdeg, name = KGRdeg
	reaction_GR_Degradation_KGRdeg=1.05;
	% Local Parameter:   id =  kgrgeg, name = kgrgeg
	reaction_GR_Degradation_kgrgeg=1.52;

	reaction_GR_Degradation=compartment_Cell*GR_Degradation_1(x(29), reaction_GR_Degradation_KGRdeg, reaction_GR_Degradation_kgrgeg);

% Reaction: id = F_MR_Binding, name = F-MR Binding	% Local Parameter:   id =  kb, name = kb
	reaction_F_MR_Binding_kb=3.29;

	reaction_F_MR_Binding=compartment_Cell*Rate_Law_for_F_MR_Binding_1(x(4), x(28), reaction_F_MR_Binding_kb);

% Reaction: id = F_GR_Binding, name = F-GR Binding	% Local Parameter:   id =  kb, name = kb
	reaction_F_GR_Binding_kb=3.29;

	reaction_F_GR_Binding=compartment_Cell*Rate_Law_for_F_MR_Binding_2(x(4), x(29), reaction_F_GR_Binding_kb);

% Reaction: id = FMR_Translocation, name = FMR Translocation	% Local Parameter:   id =  k1, name = k1
	reaction_FMR_Translocation_k1=1.0;

	reaction_FMR_Translocation=reaction_FMR_Translocation_k1*x(31);

% Reaction: id = FGR_Translocation, name = FGR Translocation	% Local Parameter:   id =  k1, name = k1
	reaction_FGR_Translocation_k1=1.0;

	reaction_FGR_Translocation=reaction_FGR_Translocation_k1*x(30);

% Reaction: id = FMRN_Recycling, name = FMRN Recycling	% Local Parameter:   id =  k1, name = k1
	reaction_FMRN_Recycling_k1=1.0;

	reaction_FMRN_Recycling=reaction_FMRN_Recycling_k1*x(32);

% Reaction: id = FGRN_Recycling, name = FGRN Recycling	% Local Parameter:   id =  k1, name = k1
	reaction_FGRN_Recycling_k1=1.0;

	reaction_FGRN_Recycling=reaction_FGRN_Recycling_k1*x(33);

% Reaction: id = P_cyt_mRNA_Production, name = P cyt mRNA Production	% Local Parameter:   id =  Kfr, name = Kfr
	reaction_P_cyt_mRNA_Production_Kfr=0.5;
	% Local Parameter:   id =  Kpc, name = Kpc
	reaction_P_cyt_mRNA_Production_Kpc=25.0;
	% Local Parameter:   id =  kfr, name = kfr
	reaction_P_cyt_mRNA_Production_kfr=0.8;
	% Local Parameter:   id =  kmrnap, name = kmrnap
	reaction_P_cyt_mRNA_Production_kmrnap=0.61;
	% Local Parameter:   id =  kpc, name = kpc
	reaction_P_cyt_mRNA_Production_kpc=0.3;

	reaction_P_cyt_mRNA_Production=P_cytokine_mRNA_Production_1(x(33), reaction_P_cyt_mRNA_Production_Kfr, reaction_P_cyt_mRNA_Production_Kpc, x(38), reaction_P_cyt_mRNA_Production_kfr, reaction_P_cyt_mRNA_Production_kmrnap, reaction_P_cyt_mRNA_Production_kpc, x(10));

% Reaction: id = P_cyt_mRNA_Degradation, name = P cyt mRNA Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_P_cyt_mRNA_Degradation_k1=0.19;

	reaction_P_cyt_mRNA_Degradation=compartment_Cell*reaction_P_cyt_mRNA_Degradation_k1*x(35);

% Reaction: id = P_cyt_Translation, name = P cyt Translation	% Local Parameter:   id =  k5b, name = k5b
	reaction_P_cyt_Translation_k5b=0.29;

	reaction_P_cyt_Translation=compartment_Cell*Bmal_Protein_Translation_2(reaction_P_cyt_Translation_k5b, x(35));

% Reaction: id = P_cyt_Degradation, name = P cyt Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_P_cyt_Degradation_k1=1.06;

	reaction_P_cyt_Degradation=compartment_Cell*reaction_P_cyt_Degradation_k1*x(34);

% Reaction: id = P_cyt_Receptor_mRNA_Production, name = P cyt Receptor mRNA Production	% Local Parameter:   id =  Kfr, name = Kfr
	reaction_P_cyt_Receptor_mRNA_Production_Kfr=0.5;
	% Local Parameter:   id =  kfr, name = kfr
	reaction_P_cyt_Receptor_mRNA_Production_kfr=0.8;
	% Local Parameter:   id =  kmrnaRp, name = kmrnaRp
	reaction_P_cyt_Receptor_mRNA_Production_kmrnaRp=0.61;

	reaction_P_cyt_Receptor_mRNA_Production=P_Receptor_production_1(x(32), reaction_P_cyt_Receptor_mRNA_Production_Kfr, reaction_P_cyt_Receptor_mRNA_Production_kfr, reaction_P_cyt_Receptor_mRNA_Production_kmrnaRp);

% Reaction: id = P_cyt_Receptor_mRNA_Degradation, name = P cyt Receptor mRNA Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_P_cyt_Receptor_mRNA_Degradation_k1=0.19;

	reaction_P_cyt_Receptor_mRNA_Degradation=compartment_Cell*reaction_P_cyt_Receptor_mRNA_Degradation_k1*x(36);

% Reaction: id = P_cyt_Receptor_Translation, name = P cyt Receptor Translation	% Local Parameter:   id =  k5b, name = k5b
	reaction_P_cyt_Receptor_Translation_k5b=1.11;

	reaction_P_cyt_Receptor_Translation=compartment_Cell*Bmal_Protein_Translation_3(reaction_P_cyt_Receptor_Translation_k5b, x(36));

% Reaction: id = P_cyt_Receptor_Degradation, name = P cyt Receptor Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_P_cyt_Receptor_Degradation_k1=0.26;

	reaction_P_cyt_Receptor_Degradation=compartment_Cell*reaction_P_cyt_Receptor_Degradation_k1*x(37);

% Reaction: id = P_R_Binding, name = P-R Binding	% Local Parameter:   id =  kb, name = kb
	reaction_P_R_Binding_kb=0.14;

	reaction_P_R_Binding=compartment_Cell*Rate_Law_for_F_MR_Binding_3(x(34), x(37), reaction_P_R_Binding_kb);

% Reaction: id = GR_Degradation_copy, name = GR Degradation_copy	% Local Parameter:   id =  KGRdeg, name = KGRdeg
	reaction_GR_Degradation_copy_KGRdeg=1.05;
	% Local Parameter:   id =  kgrgeg, name = kgrgeg
	reaction_GR_Degradation_copy_kgrgeg=1.52;

	reaction_GR_Degradation_copy=compartment_HPA*GR_Degradation_2(x(39), reaction_GR_Degradation_copy_KGRdeg, reaction_GR_Degradation_copy_kgrgeg);

% Reaction: id = GR_Production_copy, name = GR Production_copy	% Local Parameter:   id =  GRt, name = GRt
	reaction_GR_Production_copy_GRt=1.81;
	% Local Parameter:   id =  KGR, name = KGR
	reaction_GR_Production_copy_KGR=0.74;
	% Local Parameter:   id =  Kfgr, name = Kfgr
	reaction_GR_Production_copy_Kfgr=30.0;
	% Local Parameter:   id =  kfgr, name = kfgr
	reaction_GR_Production_copy_kfgr=15.0;
	% Local Parameter:   id =  kgr, name = kgr
	reaction_GR_Production_copy_kgr=1.18;

	reaction_GR_Production_copy=compartment_HPA*GR_Production_2(x(3), x(39), reaction_GR_Production_copy_GRt, reaction_GR_Production_copy_KGR, reaction_GR_Production_copy_Kfgr, reaction_GR_Production_copy_kfgr, reaction_GR_Production_copy_kgr);

% Reaction: id = F_GR_Binding_copy, name = F-GR Binding_copy	% Local Parameter:   id =  kb, name = kb
	reaction_F_GR_Binding_copy_kb=3.29;

	reaction_F_GR_Binding_copy=compartment_HPA*Rate_Law_for_F_MR_Binding_4(x(3), x(39), reaction_F_GR_Binding_copy_kb);

% Reaction: id = FGR_Translocation_copy, name = FGR Translocation_copy	% Local Parameter:   id =  k1, name = k1
	reaction_FGR_Translocation_copy_k1=1.0;

	reaction_FGR_Translocation_copy=compartment_HPA*reaction_FGR_Translocation_copy_k1*x(40);

% Reaction: id = FGRN_Recycling_copy, name = FGRN Recycling_copy	% Local Parameter:   id =  k1, name = k1
	reaction_FGRN_Recycling_copy_k1=1.0;

	reaction_FGRN_Recycling_copy=compartment_HPA*reaction_FGRN_Recycling_copy_k1*x(41);

% Reaction: id = PR_Degradation, name = PR Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_PR_Degradation_k1=1.3;

	reaction_PR_Degradation=compartment_Cell*reaction_PR_Degradation_k1*x(38);

% Reaction: id = PckG6p_Production, name = PckG6p Production	% Local Parameter:   id =  kg11, name = kg11
	reaction_PckG6p_Production_kg11=70.0;
	% Local Parameter:   id =  kg7, name = kg7
	reaction_PckG6p_Production_kg7=1.0;
	% Local Parameter:   id =  s, name = s
	reaction_PckG6p_Production_s=8.0;

	reaction_PckG6p_Production=PckG6P_Production_1(x(33), x(25), reaction_PckG6p_Production_kg11, reaction_PckG6p_Production_kg7, reaction_PckG6p_Production_s, x(7));

	xdot=zeros(41,1);
	
% Species:   id = CRH, name = CRH, affected by kineticLaw
	xdot(1) = (1/(compartment_HPA))*(( 1.0 * reaction_CRH_Production) + (-1.0 * reaction_CRH_Degradation));
	
% Species:   id = ACTH, name = ACTH, affected by kineticLaw
	xdot(2) = (1/(compartment_HPA))*(( 1.0 * reaction_ACTH_Production) + (-1.0 * reaction_ACTH_Degradation));
	
% Species:   id = F_HPA, name = F, affected by kineticLaw
	xdot(3) = (1/(compartment_HPA))*(( 1.0 * reaction_F_HPA__Production) + (-1.0 * reaction_F_HPA__Degradation));
	
% Species:   id = F_Cell, name = F, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_F__Cell));
	
% Species:   id = y1, name = PER/CRY_mRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_PER_CRY_mRNA_Production_1) + ( 1.0 * reaction_PER_CRY_mRNA_Production_2) + (-1.0 * reaction_PER_CRY_mRNA_Degradation));
	
% Species:   id = y2, name = PER/CRY_mRNA_cytoplasm, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_PER_CRY_Cell_Translation) + (-1.0 * reaction_PER_CRY_Cell_Degradation) + (-1.0 * reaction_PER_CRY__Cell_to_Nucleus) + ( 1.0 * reaction_PER_CRY__Nucleus_to_Cytoplasm));
	
% Species:   id = y3, name = PER/CRY_mRNA_nucleus, affected by kineticLaw
	xdot(7) = (1/(compartment_Nucleus))*(( 1.0 * reaction_PER_CRY__Cell_to_Nucleus) + (-1.0 * reaction_PER_CRY__Nucleus_to_Cytoplasm) + (-1.0 * reaction_PER_CRY_Nucleus_Degradation));
	
% Species:   id = y4, name = BMAL1_mRNA, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_Bmal_mRNA_Production) + (-1.0 * reaction_Bmal_mRNA_Degradation));
	
% Species:   id = y5, name = BMAL1_mRNA_cytoplasm, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_Bmal_Protein_Translation) + (-1.0 * reaction_Bmal_Translocation) + (-1.0 * reaction_Bmal_Cell_Degradation));
	
% Species:   id = y6, name = BMAL1_mRNA_nucleus, affected by kineticLaw
	xdot(10) = (1/(compartment_Nucleus))*(( 1.0 * reaction_Bmal_Translocation) + (-1.0 * reaction_Bmal_Clock_Association) + ( 1.0 * reaction_Bmal_Clock_Dissociation) + (-1.0 * reaction_Bmal_Nucleus_Degradation));
	
% Species:   id = y7, name = BMAL1/CLOCK_complex, affected by kineticLaw
	xdot(11) = (1/(compartment_Nucleus))*(( 1.0 * reaction_Bmal_Clock_Association) + (-1.0 * reaction_Bmal_Clock_Dissociation) + (-1.0 * reaction_Bmal_Clock_Degradation) + (-1.0 * reaction_Bmal_Clock___Sirt1_Association));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*(( 1.0 * reaction_NAD_Production) + ( 1.0 * reaction_NMN_to_NAD) + (-1.0 * reaction_NAD_Inhibition) + (-1.0 * reaction_NAD_to_NAM));
	
% Species:   id = NMN, name = NMN, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*((-1.0 * reaction_NMN_to_NAD) + ( 1.0 * reaction_NAM_to_NMN));
	
% Species:   id = NAM, name = NAM, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*(( 1.0 * reaction_NAD_to_NAM) + (-1.0 * reaction_NAM_to_NMN));
	
% Species:   id = EntF, name = EntF, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*(( 1.0 * reaction_EntF_Production) + (-1.0 * reaction_EntF_Degradation));
	
% Species:   id = SIRT1, name = SIRT1, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*(( 1.0 * reaction_SIRT1_Prod) + (-1.0 * reaction_SIRT1_Degradation) + (-1.0 * reaction_Bmal_Clock___Sirt1_Association));
	
% Species:   id = y8, name = BMAL1/CLOCK/SIRT1_complex, affected by kineticLaw
	xdot(17) = (1/(compartment_Nucleus))*(( 1.0 * reaction_Bmal_Clock___Sirt1_Association) + (-1.0 * reaction_Bmal_Clock___Sirt1_Degradation));
	
% Species:   id = NAMPT, name = NAMPT, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*(( 1.0 * reaction_NAMPT_Production) + (-1.0 * reaction_NAMPT_Degradation));
	
% Species:   id = feed2, name = feed2, affected by kineticLaw
	xdot(19) = (1/(compartment_HPA))*(( 1.0 * reaction_Feed_2));
	
% Species:   id = feed3, name = feed3, affected by kineticLaw
	xdot(20) = (1/(compartment_HPA))*(( 1.0 * reaction_Feed_3));
	
% Species:   id = PGC1amRNA, name = PGC1amRNA, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*(( 1.0 * reaction_PGC1a_mRNA_Production) + (-1.0 * reaction_PGC1a_mRNA_Degradation));
	
% Species:   id = PGC1a, name = PGC1a, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*((-1.0 * reaction_PGC1a_Protein_Degraadation) + (-1.0 * reaction_PGC1a_Cell_to_Nucleus) + ( 1.0 * reaction_PGC1a_Nucleus_to_Cell) + ( 1.0 * reaction_PGC1a_Translation));
	
% Species:   id = PGC1aN, name = PGC1aN, affected by kineticLaw
	xdot(23) = (1/(compartment_Nucleus))*(( 1.0 * reaction_PGC1a_Cell_to_Nucleus) + (-1.0 * reaction_PGC1a_Nucleus_to_Cell) + ( 1.0 * reaction_PGC1aNactive_to_PGC1aN) + (-1.0 * reaction_PGC1aN_to_PGC1aNactive));
	
% Species:   id = PGC1aNact, name = PGC1aNact, affected by kineticLaw
	xdot(24) = (1/(compartment_Nucleus))*((-1.0 * reaction_PGC1aNactive_to_PGC1aN) + (-1.0 * reaction_PGCNactive_Degradation) + ( 1.0 * reaction_PGC1aNactivation));
	
% Species:   id = FOXO1, name = FOXO1, affected by kineticLaw
	xdot(25) = (1/(compartment_Cell))*(( 1.0 * reaction_FOXO1_Production) + (-1.0 * reaction_FOXO1_Degradation));
	
% Species:   id = PckG6p, name = PckG6p, affected by kineticLaw
	xdot(26) = (1/(compartment_Cell))*((-1.0 * reaction_Pck1_G6pc_Degradation) + ( 1.0 * reaction_PckG6p_Production));
	
% Species:   id = Phpa, name = Phpa, affected by kineticLaw
	xdot(27) = (1/(compartment_HPA))*(( 1.0 * reaction_Phpa_0));
	
% Species:   id = MR, name = MR, affected by kineticLaw
	xdot(28) = (1/(compartment_Cell))*(( 1.0 * reaction_MR_Production) + (-1.0 * reaction_MR_Degradation) + (-1.0 * reaction_F_MR_Binding) + ( 1.0 * reaction_FMRN_Recycling));
	
% Species:   id = GR_Cell, name = GR, affected by kineticLaw
	xdot(29) = (1/(compartment_Cell))*(( 1.0 * reaction_GR_Production) + (-1.0 * reaction_GR_Degradation) + (-1.0 * reaction_F_GR_Binding) + ( 1.0 * reaction_FGRN_Recycling));
	
% Species:   id = FGR_Cell, name = FGR, affected by kineticLaw
	xdot(30) = (1/(compartment_Cell))*(( 1.0 * reaction_F_GR_Binding) + (-1.0 * reaction_FGR_Translocation));
	
% Species:   id = FMR, name = FMR, affected by kineticLaw
	xdot(31) = (1/(compartment_Cell))*(( 1.0 * reaction_F_MR_Binding) + (-1.0 * reaction_FMR_Translocation));
	
% Species:   id = FMRN, name = FMRN, affected by kineticLaw
	xdot(32) = (1/(compartment_Nucleus))*(( 1.0 * reaction_FMR_Translocation) + (-1.0 * reaction_FMRN_Recycling));
	
% Species:   id = FGRN_Cell, name = FGRN, affected by kineticLaw
	xdot(33) = (1/(compartment_Nucleus))*(( 1.0 * reaction_FGR_Translocation) + (-1.0 * reaction_FGRN_Recycling));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(34) = (1/(compartment_Cell))*(( 1.0 * reaction_P_cyt_Translation) + (-1.0 * reaction_P_cyt_Degradation));
	
% Species:   id = mRNAP, name = mRNAP, affected by kineticLaw
	xdot(35) = (1/(compartment_Cell))*(( 1.0 * reaction_P_cyt_mRNA_Production) + (-1.0 * reaction_P_cyt_mRNA_Degradation));
	
% Species:   id = mRNARP, name = mRNARP, affected by kineticLaw
	xdot(36) = (1/(compartment_Cell))*(( 1.0 * reaction_P_cyt_Receptor_mRNA_Production) + (-1.0 * reaction_P_cyt_Receptor_mRNA_Degradation));
	
% Species:   id = Rp, name = Rp, affected by kineticLaw
	xdot(37) = (1/(compartment_Cell))*(( 1.0 * reaction_P_cyt_Receptor_Translation) + (-1.0 * reaction_P_cyt_Receptor_Degradation) + (-1.0 * reaction_P_R_Binding));
	
% Species:   id = PR, name = PR, affected by kineticLaw
	xdot(38) = (1/(compartment_Cell))*(( 1.0 * reaction_P_R_Binding) + (-1.0 * reaction_PR_Degradation));
	
% Species:   id = GR_HPA, name = GR, affected by kineticLaw
	xdot(39) = (1/(compartment_HPA))*((-1.0 * reaction_GR_Degradation_copy) + ( 1.0 * reaction_GR_Production_copy) + (-1.0 * reaction_F_GR_Binding_copy) + ( 1.0 * reaction_FGRN_Recycling_copy));
	
% Species:   id = FGR_HPA, name = FGR, affected by kineticLaw
	xdot(40) = (1/(compartment_HPA))*(( 1.0 * reaction_F_GR_Binding_copy) + (-1.0 * reaction_FGR_Translocation_copy));
	
% Species:   id = FGRN_HPA, name = FGRN, affected by kineticLaw
	xdot(41) = (1/(compartment_HPA))*(( 1.0 * reaction_FGR_Translocation_copy) + (-1.0 * reaction_FGRN_Recycling_copy));
end

function z=NAMPT_Production_0(km10a,y8), z=(km10a*y8);end

function z=Bmal_Protein_Translation_0(k5b,y4), z=(k5b*y4);end

function z=ACTH_Production__1__1(CRH,FGRN_HPA,KP1,Phpa,kfp,kp2), z=(kp2*CRH*(1+kfp*Phpa)/(KP1+FGRN_HPA));end

function z=FHPA_Production__1__1(ACTH,EntF,Phpa,kfp,kn,kp3), z=(kp3*ACTH*kn*(1+EntF/(1+EntF))*(1+kfp*Phpa));end

function z=ACTH_Degradation_1(ACTH,Kd2,Vd2), z=(Vd2*ACTH/(Kd2+ACTH));end

function z=FHPA_Degradation_1(F_HPA,Kd3,Vd3), z=(Vd3*F_HPA/(Kd3+F_HPA));end

function z=F_Cell__1__1(F_Cell,F_HPA,tau), z=(1/tau*(F_HPA-F_Cell));end

function z=CRH_Production_1(FGRN_HPA,KP1,kp1), z=(kp1/(KP1+FGRN_HPA));end

function z=PER_CRY_mRNA_Production_1__1__1(P,c,k1b,k1i,kf,p,v1b,y3,y7), z=(v1b*(y7+c)/(k1b*(1+(y3/k1i)^p))*(1+kf*P));end

function z=MR_Degradation_1(KMRdeg,MR,kmrgeg), z=(kmrgeg*MR/(KMRdeg+MR));end

function z=PGC1a___mRNA_Production_1(FOXO1,kg1), z=(kg1*(1+FOXO1));end

function z=FOXO1_Production_1(PGC1aNact,kg9), z=(kg9*PGC1aNact);end

function z=PER_CRY_Nuclear_degradation_1(SIRT1,k3d,y3), z=(k3d*y3*(1+SIRT1));end

function z=Bmal_mRNA_Transcription_1(PGC1aNact,k4b,kg13,r,v4b,y3), z=(v4b*y3^r/(k4b^r+y3^r)*(1+kg13*PGC1aNact));end

function z=PER_CRY_mRNA_Production_2__1__1(FGRN_Cell,kc,y7), z=(kc*FGRN_Cell/y7);end

function z=PER_CRY_Protein_Translation_1(k2b,q,y1), z=(k2b*y1^q);end

function z=NAD_to_NAM_1(KM4,NAD,km4), z=(km4*NAD/(KM4+NAD));end

function z=NMN_to_NAD_1(KM2,NMN,km2), z=(km2*NMN/(KM2+NMN));end

function z=SIRT1_Inhibition_1(KM7,SIRT1,km7), z=(km7*SIRT1/(KM7+SIRT1));end

function z=Bmal_Protein_Translation_1(PGC1amRNA,k5b), z=(k5b*PGC1amRNA);end

function z=MR_Production_1(F_Cell,KMR,Kfmr,MR,MRt,kfmr,kmr), z=(kmr*(1+kfmr*F_Cell/(Kfmr+F_Cell))*(MRt-MR)/(KMR+MRt-MR));end

function z=GR_Degradation_2(GR_HPA,KGRdeg,kgrgeg), z=(kgrgeg*GR_HPA/(KGRdeg+GR_HPA));end

function z=Feed2_1(Feed,Tf,feed2), z=(1/Tf*(Feed-feed2));end

function z=EntF_Production_1(KM11,NAD,km11), z=(km11*NAD/(KM11+NAD));end

function z=Feed3_1(Tf,feed2,feed3), z=(1/Tf*(feed2-feed3));end

function z=NAD_degradation_1(KM3,NAD,feed3,km3), z=(km3*feed3*NAD/(KM3+NAD));end

function z=SIRT1_Production_1(KM6,NAD,SIRT1,km6,sirt), z=(km6*NAD*(sirt-SIRT1)/(KM6+sirt-SIRT1));end

function z=PGC1aN_to_PGC1aNactive_1(PGC1aNact,SIRT1,kg5), z=(kg5*PGC1aNact*SIRT1);end

function z=PGC1aNact_to_PGC1aN_1(PGC1aN,SIRT1,kg5), z=(kg5*PGC1aN*(1+SIRT1));end

function z=NAD_Production_1_1(KM1,NAD,km1,nad), z=(km1*(nad-NAD)/(KM1+nad-NAD));end

function z=NAM_to_NMN_1(KM5,NAM,NAMPT,km5), z=(km5*NAMPT*NAM/(KM5+NAM));end

function z=Phpa_Production_1(P,Phpa,Tf), z=(1/Tf*(P-Phpa));end

function z=CRH_Degradation_1(CRH,Kd1,L,Vd1), z=(Vd1*CRH*(1+L/(1+L))/(Kd1+CRH));end

function z=GR_Production_1(F_Cell,GR_Cell,GRt,KGR,Kfgr,kfgr,kgr), z=(kgr*(1+kfgr*F_Cell/(Kfgr+F_Cell))*(GRt-GR_Cell)/(KGR+GRt-GR_Cell));end

function z=Rate_Law_for_F_MR_Binding_1(F_Cell,MR,kb), z=(kb*MR*F_Cell);end

function z=P_cytokine_mRNA_Production_1(FGRN_Cell,Kfr,Kpc,PR,kfr,kmrnap,kpc,y6), z=(kmrnap*(1-kfr*FGRN_Cell/(Kfr+FGRN_Cell))*(1-kpc*y6/(Kpc+y6))*(1+PR));end

function z=Bmal_Protein_Translation_3(k5b,mRNARP), z=(k5b*mRNARP);end

function z=GR_Production_2(F_HPA,GR_HPA,GRt,KGR,Kfgr,kfgr,kgr), z=(kgr*(1+kfgr*F_HPA/(Kfgr+F_HPA))*(GRt-GR_HPA)/(KGR+GRt-GR_HPA));end

function z=Rate_Law_for_F_MR_Binding_3(P,Rp,kb), z=(kb*Rp*P);end

function z=PckG6P_Production_1(FGRN_Cell,FOXO1,kg11,kg7,s,y3), z=(kg11*FOXO1*FGRN_Cell*1/(1+(y3/kg7)^s));end

function z=GR_Degradation_1(GR_Cell,KGRdeg,kgrgeg), z=(kgrgeg*GR_Cell/(KGRdeg+GR_Cell));end

function z=Bmal_Protein_Translation_2(k5b,mRNAP), z=(k5b*mRNAP);end

function z=P_Receptor_production_1(FMRN,Kfr,kfr,kmrnaRp), z=(kmrnaRp*(1-kfr*FMRN/(Kfr+FMRN)));end

function z=Rate_Law_for_F_MR_Binding_2(F_Cell,GR_Cell,kb), z=(kb*GR_Cell*F_Cell);end

function z=Rate_Law_for_F_MR_Binding_4(F_HPA,GR_HPA,kb), z=(kb*GR_HPA*F_HPA);end

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


