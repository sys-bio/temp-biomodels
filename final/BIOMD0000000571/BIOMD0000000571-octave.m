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
% Model name = Nishio2008 - Design of the phosphotransferase system for enhanced glucose uptake in E. coli.
%
% is http://identifiers.org/biomodels.db/MODEL1501300000
% is http://identifiers.org/biomodels.db/BIOMD0000000571
% isDescribedBy http://identifiers.org/pubmed/18197177
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000051
%


function main()
%Initial conditions vector
	x0=zeros(59,1);
	x0(1) = 5.4207E-6;
	x0(2) = 7.4368E-11;
	x0(3) = 1.9047E-10;
	x0(4) = 3.1103E-11;
	x0(5) = 3.6756E-9;
	x0(6) = 1.2021E-10;
	x0(7) = 1.2021E-10;
	x0(8) = 1.2021E-10;
	x0(9) = 1.2021E-10;
	x0(10) = 1.2021E-10;
	x0(11) = 1.2021E-10;
	x0(12) = 1.2021E-10;
	x0(13) = 1.2021E-10;
	x0(14) = 5.5172E-10;
	x0(15) = 2.4267E-10;
	x0(16) = 2.4282E-10;
	x0(17) = 2.1885E-10;
	x0(18) = 2.1885E-10;
	x0(19) = 2.1885E-10;
	x0(20) = 2.1885E-10;
	x0(21) = 1.0214E-7;
	x0(22) = 1.6863E-10;
	x0(23) = 5.2529E-11;
	x0(24) = 2.119E-10;
	x0(25) = 3.7544E-9;
	x0(26) = 1.2279E-10;
	x0(27) = 1.2279E-10;
	x0(28) = 1.2279E-10;
	x0(29) = 1.2279E-10;
	x0(30) = 1.2279E-10;
	x0(31) = 1.2279E-10;
	x0(32) = 1.2279E-10;
	x0(33) = 1.2279E-10;
	x0(34) = 2.4149E-11;
	x0(35) = 2.4149E-11;
	x0(36) = 2.4149E-11;
	x0(37) = 2.4149E-11;
	x0(38) = 3.2535E-13;
	x0(39) = 1.8086E-13;
	x0(40) = 4.2844E-5;
	x0(41) = 1.6546E-7;
	x0(42) = 1.4934E-6;
	x0(43) = 7.0094E-6;
	x0(44) = 7.3371E-9;
	x0(45) = 1.3643E-8;
	x0(46) = 5.0254E-8;
	x0(47) = 4.5559E-7;
	x0(48) = 1.1411E-7;
	x0(49) = 1.0038E-8;
	x0(50) = 9.3861E-7;
	x0(51) = 1.5101E-9;
	x0(52) = 7.1055E-6;
	x0(53) = 9.623E-5;
	x0(54) = 7.5867E-7;
	x0(55) = 1.1793E-5;
	x0(56) = 2.4319E-7;
	x0(57) = 8.6098E-7;
	x0(58) = 4.7107E-7;
	x0(59) = 0.2;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=1.0;
% Parameter:   id =  fast, name = fast
	global_par_fast=1.0E9;
% Parameter:   id =  TCRPsite_cyaA, name = TCRPsite_cyaA
% Parameter:   id =  TCRPsiteI_crp, name = TCRPsiteI_crp
% Parameter:   id =  TCRPsiteII_crp, name = TCRPsiteII_crp
% Parameter:   id =  TCRPsite_ptsGp1, name = TCRPsite_ptsGp1
% Parameter:   id =  TMlcsite_ptsGp1, name = TMlcsite_ptsGp1
% Parameter:   id =  TCRPsite_ptsGp2, name = TCRPsite_ptsGp2
% Parameter:   id =  TMlcsite_ptsGp2, name = TMlcsite_ptsGp2
% Parameter:   id =  TCRPsite_ptsHp0, name = TCRPsite_ptsHp0
% Parameter:   id =  TMlcsite_ptsHp0, name = TMlcsite_ptsHp0
% Parameter:   id =  TCRPsite_ptsHp1, name = TCRPsite_ptsHp1
% Parameter:   id =  TCRPsite_ptsIp0, name = TCRPsite_ptsIp0
% Parameter:   id =  TMlcsite_ptsIp0, name = TMlcsite_ptsIp0
% Parameter:   id =  TCRPsite_ptsIp1, name = TCRPsite_ptsIp1
% Parameter:   id =  TCRPsite_mlcp1, name = TCRPsite_mlcp1
% Parameter:   id =  TMlcsite_mlcp1, name = TMlcsite_mlcp1
% Parameter:   id =  TCRPsite_mlcp2, name = TCRPsite_mlcp2
% Parameter:   id =  TMlcsite_mlcp2, name = TMlcsite_mlcp2
% assignmentRule: variable = TCRPsite_cyaA
	global_par_TCRPsite_cyaA=x(4)+x(24);
% assignmentRule: variable = TCRPsiteI_crp
	global_par_TCRPsiteI_crp=x(2)+x(22);
% assignmentRule: variable = TCRPsiteII_crp
	global_par_TCRPsiteII_crp=x(3)+x(23);
% assignmentRule: variable = TCRPsite_ptsGp1
	global_par_TCRPsite_ptsGp1=x(6)+x(26);
% assignmentRule: variable = TMlcsite_ptsGp1
	global_par_TMlcsite_ptsGp1=x(17)+x(34);
% assignmentRule: variable = TCRPsite_ptsGp2
	global_par_TCRPsite_ptsGp2=x(7)+x(27);
% assignmentRule: variable = TMlcsite_ptsGp2
	global_par_TMlcsite_ptsGp2=x(18)+x(35);
% assignmentRule: variable = TCRPsite_ptsHp0
	global_par_TCRPsite_ptsHp0=x(8)+x(28);
% assignmentRule: variable = TMlcsite_ptsHp0
	global_par_TMlcsite_ptsHp0=x(19)+x(37);
% assignmentRule: variable = TCRPsite_ptsHp1
	global_par_TCRPsite_ptsHp1=x(9)+x(29);
% assignmentRule: variable = TCRPsite_ptsIp0
	global_par_TCRPsite_ptsIp0=x(10)+x(30);
% assignmentRule: variable = TMlcsite_ptsIp0
	global_par_TMlcsite_ptsIp0=x(20)+x(36);
% assignmentRule: variable = TCRPsite_ptsIp1
	global_par_TCRPsite_ptsIp1=x(11)+x(31);
% assignmentRule: variable = TCRPsite_mlcp1
	global_par_TCRPsite_mlcp1=x(12)+x(32);
% assignmentRule: variable = TMlcsite_mlcp1
	global_par_TMlcsite_mlcp1=x(15)+x(38);
% assignmentRule: variable = TCRPsite_mlcp2
	global_par_TCRPsite_mlcp2=x(13)+x(33);
% assignmentRule: variable = TMlcsite_mlcp2
	global_par_TMlcsite_mlcp2=x(16)+x(39);

% Reaction: id = binding_CRP_cAMP	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_Kb=40000.0;
	% Local Parameter:   id =  one_per_M, name = one_per_M
	reaction_binding_CRP_cAMP_one_per_M=1.0;

	reaction_binding_CRP_cAMP=compartment_cyt*global_par_fast*reaction_binding_CRP_cAMP_one_per_M*(reaction_binding_CRP_cAMP_Kb^2*(x(1)*x(58))^2-x(21)^2);

% Reaction: id = binding_CRP_cAMP_CRPsite_cyaA	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_cyaA_Kb=6.67E7;

	reaction_binding_CRP_cAMP_CRPsite_cyaA=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_cyaA_Kb*x(21)*x(4)-x(24));

% Reaction: id = binding_CRP_cAMP_CRPsiteI_crp	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsiteI_crp_Kb=2.22E7;

	reaction_binding_CRP_cAMP_CRPsiteI_crp=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsiteI_crp_Kb*x(21)*x(2)-x(22));

% Reaction: id = binding_CRP_cAMP_CRPsiteII_crp	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsiteII_crp_Kb=2700000.0;

	reaction_binding_CRP_cAMP_CRPsiteII_crp=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsiteII_crp_Kb*x(21)*x(3)-x(23));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsGp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsGp1_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsGp1=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsGp1_Kb*x(21)*x(6)-x(26));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsGp2	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsGp2_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsGp2=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsGp2_Kb*x(21)*x(7)-x(27));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsHp0	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsHp0_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsHp0=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsHp0_Kb*x(21)*x(8)-x(28));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsHp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsHp1_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsHp1=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsHp1_Kb*x(21)*x(9)-x(29));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsIp0	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsIp0_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsIp0=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsIp0_Kb*x(21)*x(10)-x(30));

% Reaction: id = binding_CRP_cAMP_CRPsite_ptsIp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_ptsIp1_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_ptsIp1=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_ptsIp1_Kb*x(21)*x(11)-x(31));

% Reaction: id = binding_CRP_cAMP_CRPsite_mlcp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_mlcp1_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_mlcp1=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_mlcp1_Kb*x(21)*x(12)-x(32));

% Reaction: id = binding_CRP_cAMP_CRPsite_mlcp2	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_mlcp2_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_mlcp2=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_mlcp2_Kb*x(21)*x(13)-x(33));

% Reaction: id = binding_CRP_cAMP_CRPsite_genome	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_CRP_cAMP_CRPsite_genome_Kb=1.0E7;

	reaction_binding_CRP_cAMP_CRPsite_genome=compartment_cyt*global_par_fast*(reaction_binding_CRP_cAMP_CRPsite_genome_Kb*x(21)*x(5)-x(25));

% Reaction: id = binding_Mlc_Mlcsite_ptsGp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_ptsGp1_Kb=2.0E8;

	reaction_binding_Mlc_Mlcsite_ptsGp1=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_ptsGp1_Kb*x(14)*x(17)-x(34));

% Reaction: id = binding_Mlc_Mlcsite_ptsGp2	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_ptsGp2_Kb=2.0E8;

	reaction_binding_Mlc_Mlcsite_ptsGp2=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_ptsGp2_Kb*x(14)*x(18)-x(35));

% Reaction: id = binding_Mlc_Mlcsite_ptsHp0	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_ptsHp0_Kb=2.0E8;

	reaction_binding_Mlc_Mlcsite_ptsHp0=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_ptsHp0_Kb*x(14)*x(19)-x(37));

% Reaction: id = binding_Mlc_Mlcsite_ptsIp0	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_ptsIp0_Kb=2.0E8;

	reaction_binding_Mlc_Mlcsite_ptsIp0=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_ptsIp0_Kb*x(14)*x(20)-x(36));

% Reaction: id = binding_Mlc_Mlcsite_mlcp1	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_mlcp1_Kb=2430000.0;

	reaction_binding_Mlc_Mlcsite_mlcp1=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_mlcp1_Kb*x(14)*x(15)-x(38));

% Reaction: id = binding_Mlc_Mlcsite_mlcp2	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_Mlc_Mlcsite_mlcp2_Kb=1350000.0;

	reaction_binding_Mlc_Mlcsite_mlcp2=compartment_cyt*global_par_fast*(reaction_binding_Mlc_Mlcsite_mlcp2_Kb*x(14)*x(16)-x(39));

% Reaction: id = binding_IICB_Mlc	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_IICB_Mlc_Kb=7000000.0;

	reaction_binding_IICB_Mlc=compartment_cyt*global_par_fast*(reaction_binding_IICB_Mlc_Kb*x(40)*x(14)-x(41));

% Reaction: id = binding_IIA_P_CYA	% Local Parameter:   id =  Kb, name = Kb
	reaction_binding_IIA_P_CYA_Kb=1.0E8;

	reaction_binding_IIA_P_CYA=compartment_cyt*global_par_fast*(reaction_binding_IIA_P_CYA_Kb*x(42)*x(43)^2-x(44));

% Reaction: id = transcription_CRP_cAMP_CRPsite_cyaA_cyaA	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_cyaA_cyaA_km=45.26;

	reaction_transcription_CRP_cAMP_CRPsite_cyaA_cyaA=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_cyaA_cyaA_km*(1-x(24)/global_par_TCRPsite_cyaA)*const_species_cyaA;

% Reaction: id = transcription_cyaA_basal	% Local Parameter:   id =  km, name = km
	reaction_transcription_cyaA_basal_km=1.281;

	reaction_transcription_cyaA_basal=compartment_cyt*reaction_transcription_cyaA_basal_km*const_species_cyaA_basal;

% Reaction: id = transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp_km=20.0;
	% Local Parameter:   id =  RelativeactivityatTCRPsiteII_crp, name = RelativeactivityatTCRPsiteII_crp
	reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp_RelativeactivityatTCRPsiteII_crp=5.0;

	reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp_km*(1+reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp_RelativeactivityatTCRPsiteII_crp*x(23)/global_par_TCRPsiteII_crp-x(22)/global_par_TCRPsiteI_crp)*const_species_crp;

% Reaction: id = transcription_crp_basal	% Local Parameter:   id =  km, name = km
	reaction_transcription_crp_basal_km=1.00886;

	reaction_transcription_crp_basal=compartment_cyt*reaction_transcription_crp_basal_km*const_species_crp_basal;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1_km=892.0;

	reaction_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1_km*x(26)/global_par_TCRPsite_ptsGp1*(1-x(34)/global_par_TMlcsite_ptsGp1)*const_species_ptsGp1;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2_km=2.0;

	reaction_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2_km*x(27)/global_par_TCRPsite_ptsGp2*(1-x(35)/global_par_TMlcsite_ptsGp2)*const_species_ptsGp2;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0_km=71.8;

	reaction_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0_km*x(28)/global_par_TCRPsite_ptsHp0*(1-x(37)/global_par_TMlcsite_ptsHp0)*const_species_ptsHp0;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1_km=17.95;

	reaction_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1_km*x(29)/global_par_TCRPsite_ptsHp1*const_species_ptsHp1;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0_km=6.244;

	reaction_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0_km*x(30)/global_par_TCRPsite_ptsIp0*(1-x(36)/global_par_TMlcsite_ptsIp0)*const_species_ptsIp0;

% Reaction: id = transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1_km=0.892;

	reaction_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1_km*x(31)/global_par_TCRPsite_ptsIp1*const_species_ptsIp1;

% Reaction: id = transcription_crr	% Local Parameter:   id =  km, name = km
	reaction_transcription_crr_km=334.5;

	reaction_transcription_crr=compartment_cyt*reaction_transcription_crr_km*const_species_crr;

% Reaction: id = transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1_km=1.875;

	reaction_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1_km*(1-x(32)/global_par_TCRPsite_mlcp1)*(1-x(38)/global_par_TMlcsite_mlcp1)*const_species_mlcp1;

% Reaction: id = transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2	% Local Parameter:   id =  km, name = km
	reaction_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2_km=1.875;

	reaction_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2=compartment_cyt*reaction_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2_km*x(33)/global_par_TCRPsite_mlcp2*(1-x(39)/global_par_TMlcsite_mlcp2)*const_species_mlcp2;

% Reaction: id = decomposition_mRNA_cyaA	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_cyaA_kmd=0.126;

	reaction_decomposition_mRNA_cyaA=compartment_cyt*reaction_decomposition_mRNA_cyaA_kmd*x(45);

% Reaction: id = decomposition_mRNA_crp	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_crp_kmd=0.139;

	reaction_decomposition_mRNA_crp=compartment_cyt*reaction_decomposition_mRNA_crp_kmd*x(46);

% Reaction: id = decomposition_mRNA_ptsG	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_ptsG_kmd=0.217;

	reaction_decomposition_mRNA_ptsG=compartment_cyt*reaction_decomposition_mRNA_ptsG_kmd*x(47);

% Reaction: id = decomposition_mRNA_ptsH	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_ptsH_kmd=0.0889;

	reaction_decomposition_mRNA_ptsH=compartment_cyt*reaction_decomposition_mRNA_ptsH_kmd*x(48);

% Reaction: id = decomposition_mRNA_ptsI	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_ptsI_kmd=0.0797;

	reaction_decomposition_mRNA_ptsI=compartment_cyt*reaction_decomposition_mRNA_ptsI_kmd*x(49);

% Reaction: id = decomposition_mRNA_crr	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_crr_kmd=0.0866;

	reaction_decomposition_mRNA_crr=compartment_cyt*reaction_decomposition_mRNA_crr_kmd*x(50);

% Reaction: id = decomposition_mRNA_mlc	% Local Parameter:   id =  kmd, name = kmd
	reaction_decomposition_mRNA_mlc_kmd=0.3014;

	reaction_decomposition_mRNA_mlc=compartment_cyt*reaction_decomposition_mRNA_mlc_kmd*x(51);

% Reaction: id = translation_mRNA_cyaA	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_cyaA_kp=11.0;

	reaction_translation_mRNA_cyaA=compartment_cyt*reaction_translation_mRNA_cyaA_kp*x(45);

% Reaction: id = translation_mRNA_crp	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_crp_kp=11.0;

	reaction_translation_mRNA_crp=compartment_cyt*reaction_translation_mRNA_crp_kp*x(46);

% Reaction: id = translation_mRNA_ptsG	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_ptsG_kp=11.0;

	reaction_translation_mRNA_ptsG=compartment_cyt*reaction_translation_mRNA_ptsG_kp*x(47);

% Reaction: id = translation_mRNA_ptsH	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_ptsH_kp=11.0;

	reaction_translation_mRNA_ptsH=compartment_cyt*reaction_translation_mRNA_ptsH_kp*x(48);

% Reaction: id = translation_mRNA_ptsI	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_ptsI_kp=11.0;

	reaction_translation_mRNA_ptsI=compartment_cyt*reaction_translation_mRNA_ptsI_kp*x(49);

% Reaction: id = translation_mRNA_crr	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mRNA_crr_kp=11.0;

	reaction_translation_mRNA_crr=compartment_cyt*reaction_translation_mRNA_crr_kp*x(50);

% Reaction: id = translation_mlc	% Local Parameter:   id =  kp, name = kp
	reaction_translation_mlc_kp=11.0;

	reaction_translation_mlc=compartment_cyt*reaction_translation_mlc_kp*x(51);

% Reaction: id = decomposition_CYA	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CYA_kpd=0.1;

	reaction_decomposition_CYA=compartment_cyt*reaction_decomposition_CYA_kpd*x(42);

% Reaction: id = decomposition_CRP	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_kpd=0.1;

	reaction_decomposition_CRP=compartment_cyt*reaction_decomposition_CRP_kpd*x(1);

% Reaction: id = decomposition_Mlc	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_kpd=0.1;

	reaction_decomposition_Mlc=compartment_cyt*reaction_decomposition_Mlc_kpd*x(14);

% Reaction: id = decomposition_cAMP	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_cAMP_kpd=400.0;

	reaction_decomposition_cAMP=compartment_cyt*reaction_decomposition_cAMP_kpd*x(58);

% Reaction: id = decomposition_CRP_cAMP	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_kpd=0.1;

	reaction_decomposition_CRP_cAMP=compartment_cyt*reaction_decomposition_CRP_cAMP_kpd*x(21);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_cyaA	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_cyaA_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_cyaA=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_cyaA_kpd*x(24);

% Reaction: id = decomposition_CRP_cAMP_CRPsiteI_crp	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsiteI_crp_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsiteI_crp=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsiteI_crp_kpd*x(22);

% Reaction: id = decomposition_CRP_cAMP_CRPsiteII_crp	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsiteII_crp_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsiteII_crp=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsiteII_crp_kpd*x(23);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsGp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsGp1_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsGp1=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsGp1_kpd*x(26);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsGp2	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsGp2_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsGp2=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsGp2_kpd*x(27);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsHp0	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsHp0_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsHp0=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsHp0_kpd*x(28);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsHp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsHp1_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsHp1=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsHp1_kpd*x(29);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsIp0	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsIp0_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsIp0=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsIp0_kpd*x(30);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_ptsIp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_ptsIp1_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_ptsIp1=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_ptsIp1_kpd*x(31);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_mlcp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_mlcp1_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_mlcp1=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_mlcp1_kpd*x(32);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_mlcp2	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_mlcp2_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_mlcp2=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_mlcp2_kpd*x(33);

% Reaction: id = decomposition_CRP_cAMP_CRPsite_genome	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_CRP_cAMP_CRPsite_genome_kpd=0.1;

	reaction_decomposition_CRP_cAMP_CRPsite_genome=compartment_cyt*reaction_decomposition_CRP_cAMP_CRPsite_genome_kpd*x(25);

% Reaction: id = decomposition_Mlc_Mlcsite_ptsGp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_ptsGp1_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_ptsGp1=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_ptsGp1_kpd*x(34);

% Reaction: id = decomposition_Mlc_Mlcsite_ptsGp2	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_ptsGp2_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_ptsGp2=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_ptsGp2_kpd*x(35);

% Reaction: id = decomposition_Mlc_Mlcsite_ptsHp0	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_ptsHp0_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_ptsHp0=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_ptsHp0_kpd*x(37);

% Reaction: id = decomposition_Mlc_Mlcsite_ptsIp0	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_ptsIp0_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_ptsIp0=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_ptsIp0_kpd*x(36);

% Reaction: id = decomposition_Mlc_Mlcsite_mlcp1	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_mlcp1_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_mlcp1=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_mlcp1_kpd*x(38);

% Reaction: id = decomposition_Mlc_Mlcsite_mlcp2	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_Mlc_Mlcsite_mlcp2_kpd=0.1;

	reaction_decomposition_Mlc_Mlcsite_mlcp2=compartment_cyt*reaction_decomposition_Mlc_Mlcsite_mlcp2_kpd*x(39);

% Reaction: id = decomposition_IICB_Mlc	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_IICB_Mlc_kpd=0.1;

	reaction_decomposition_IICB_Mlc=compartment_cyt*reaction_decomposition_IICB_Mlc_kpd*x(41);

% Reaction: id = decomposition_EI_P	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_EI_P_kpd=0.1;

	reaction_decomposition_EI_P=compartment_cyt*reaction_decomposition_EI_P_kpd*x(56);

% Reaction: id = decomposition_EI	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_EI_kpd=0.1;

	reaction_decomposition_EI=compartment_cyt*reaction_decomposition_EI_kpd*x(57);

% Reaction: id = decomposition_HPr_P	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_HPr_P_kpd=0.1;

	reaction_decomposition_HPr_P=compartment_cyt*reaction_decomposition_HPr_P_kpd*x(54);

% Reaction: id = decomposition_HPr	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_HPr_kpd=0.1;

	reaction_decomposition_HPr=compartment_cyt*reaction_decomposition_HPr_kpd*x(55);

% Reaction: id = decomposition_IIA_P	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_IIA_P_kpd=0.1;

	reaction_decomposition_IIA_P=compartment_cyt*reaction_decomposition_IIA_P_kpd*x(43);

% Reaction: id = decomposition_IIA	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_IIA_kpd=0.1;

	reaction_decomposition_IIA=compartment_cyt*reaction_decomposition_IIA_kpd*x(53);

% Reaction: id = decomposition_IICB_P	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_IICB_P_kpd=0.1;

	reaction_decomposition_IICB_P=compartment_cyt*reaction_decomposition_IICB_P_kpd*x(52);

% Reaction: id = decomposition_IICB	% Local Parameter:   id =  kpd, name = kpd
	reaction_decomposition_IICB_kpd=0.1;

	reaction_decomposition_IICB=compartment_cyt*reaction_decomposition_IICB_kpd*x(40);

% Reaction: id = PTS2for	% Local Parameter:   id =  kx, name = kx
	reaction_PTS2for_kx=1.2E10;

	reaction_PTS2for=compartment_cyt*reaction_PTS2for_kx*x(55)*x(56);

% Reaction: id = PTS2rev	% Local Parameter:   id =  kx, name = kx
	reaction_PTS2rev_kx=4.8E8;

	reaction_PTS2rev=compartment_cyt*reaction_PTS2rev_kx*x(57)*x(54);

% Reaction: id = PTS3for	% Local Parameter:   id =  kx, name = kx
	reaction_PTS3for_kx=3.66E9;

	reaction_PTS3for=compartment_cyt*reaction_PTS3for_kx*x(53)*x(54);

% Reaction: id = PTS3rev	% Local Parameter:   id =  kx, name = kx
	reaction_PTS3rev_kx=2.82E9;

	reaction_PTS3rev=compartment_cyt*reaction_PTS3rev_kx*x(55)*x(43);

% Reaction: id = PTS4for	% Local Parameter:   id =  kx, name = kx
	reaction_PTS4for_kx=6.6E8;

	reaction_PTS4for=compartment_cyt*reaction_PTS4for_kx*x(40)*x(43);

% Reaction: id = PTS4rev	% Local Parameter:   id =  kx, name = kx
	reaction_PTS4rev_kx=2.4E8;

	reaction_PTS4rev=compartment_cyt*reaction_PTS4rev_kx*x(53)*x(52);

% Reaction: id = reaction_CYA_ATP	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_CYA_ATP_Kmich=0.001;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_CYA_ATP_Q=100.0;

	reaction_reaction_CYA_ATP=compartment_cyt*reaction_reaction_CYA_ATP_Q*x(42)*const_species_ATP/(reaction_reaction_CYA_ATP_Kmich+const_species_ATP);

% Reaction: id = reaction_IIA_P_CYA_ATP	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_IIA_P_CYA_ATP_Kmich=0.001;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_IIA_P_CYA_ATP_Q=9000.0;

	reaction_reaction_IIA_P_CYA_ATP=compartment_cyt*reaction_reaction_IIA_P_CYA_ATP_Q*x(44)*const_species_ATP/(reaction_reaction_IIA_P_CYA_ATP_Kmich+const_species_ATP);

% Reaction: id = reaction_EI_PEP	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_EI_PEP_Kmich=3.0E-4;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_EI_PEP_Q=108000.0;

	reaction_reaction_EI_PEP=compartment_cyt*2*reaction_reaction_EI_PEP_Q*x(57)*const_species_PEP^2/(reaction_reaction_EI_PEP_Kmich^2+const_species_PEP^2);

% Reaction: id = reaction_EIP_Pyr	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_EIP_Pyr_Kmich=0.002;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_EIP_Pyr_Q=480000.0;

	reaction_reaction_EIP_Pyr=compartment_cyt*2*reaction_reaction_EIP_Pyr_Q*x(56)*const_species_Pyr^2/(reaction_reaction_EIP_Pyr_Kmich^2+const_species_Pyr^2);

% Reaction: id = reaction_IICB_P_Glucose	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_IICB_P_Glucose_Kmich=2.0E-5;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_IICB_P_Glucose_Q=4800.0;

	reaction_reaction_IICB_P_Glucose=compartment_cyt*reaction_reaction_IICB_P_Glucose_Q*x(52)*x(59)/(reaction_reaction_IICB_P_Glucose_Kmich+x(59));

% Reaction: id = reaction_IICB_Glc6P	% Local Parameter:   id =  Kmich, name = Kmich
	reaction_reaction_IICB_Glc6P_Kmich=9.61;
	% Local Parameter:   id =  Q, name = Q
	reaction_reaction_IICB_Glc6P_Q=389.0;

	reaction_reaction_IICB_Glc6P=compartment_cyt*reaction_reaction_IICB_Glc6P_Q*x(40)*const_species_Glc6P/(reaction_reaction_IICB_Glc6P_Kmich+const_species_Glc6P);

% Species:   id = cyaA, name = cyaA, constant	const_species_cyaA=2.43E-10;

% Species:   id = cyaA_basal, name = cyaA_basal, constant	const_species_cyaA_basal=2.43E-10;

% Species:   id = crp, name = crp, constant	const_species_crp=2.43E-10;

% Species:   id = crp_basal, name = crp_basal, constant	const_species_crp_basal=2.43E-10;

% Species:   id = ptsGp1, name = ptsGp1, constant	const_species_ptsGp1=2.43E-10;

% Species:   id = ptsGp2, name = ptsGp2, constant	const_species_ptsGp2=2.43E-10;

% Species:   id = ptsHp0, name = ptsHp0, constant	const_species_ptsHp0=2.43E-10;

% Species:   id = ptsHp1, name = ptsHp1, constant	const_species_ptsHp1=2.43E-10;

% Species:   id = ptsIp0, name = ptsIp0, constant	const_species_ptsIp0=2.43E-10;

% Species:   id = ptsIp1, name = ptsIp1, constant	const_species_ptsIp1=2.43E-10;

% Species:   id = crr, name = crr, constant	const_species_crr=2.43E-10;

% Species:   id = mlcp1, name = mlcp1, constant	const_species_mlcp1=2.43E-10;

% Species:   id = mlcp2, name = mlcp2, constant	const_species_mlcp2=2.43E-10;

% Species:   id = Pyr, name = Pyr, constant	const_species_Pyr=0.00267;

% Species:   id = PEP, name = PEP, constant	const_species_PEP=0.00267;

% Species:   id = Glc6P, name = Glc6P, constant	const_species_Glc6P=0.00148;

% Species:   id = ATP, name = ATP, constant	const_species_ATP=0.0069942;

%Event: id=
	event_=T >= 500;

	if(event_) 
		x(59)=2E-9;
	end

	xdot=zeros(59,1);
	
% Species:   id = CRP, name = CRP, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP) + ( 1.0 * reaction_translation_mRNA_crp) + (-1.0 * reaction_decomposition_CRP));
	
% Species:   id = CRPsiteI_crp, name = CRPsiteI_crp, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsiteI_crp) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsiteI_crp));
	
% Species:   id = CRPsiteII_crp, name = CRPsiteII_crp, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsiteII_crp) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsiteII_crp));
	
% Species:   id = CRPsite_cyaA, name = CRPsite_cyaA, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_cyaA) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_cyaA));
	
% Species:   id = CRPsite_genome, name = CRPsite_genome, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_genome) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_genome));
	
% Species:   id = CRPsite_ptsGp1, name = CRPsite_ptsGp1, affected by kineticLaw
	xdot(6) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp1) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsGp1));
	
% Species:   id = CRPsite_ptsGp2, name = CRPsite_ptsGp2, affected by kineticLaw
	xdot(7) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp2) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsGp2));
	
% Species:   id = CRPsite_ptsHp0, name = CRPsite_ptsHp0, affected by kineticLaw
	xdot(8) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp0) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsHp0));
	
% Species:   id = CRPsite_ptsHp1, name = CRPsite_ptsHp1, affected by kineticLaw
	xdot(9) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp1) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsHp1));
	
% Species:   id = CRPsite_ptsIp0, name = CRPsite_ptsIp0, affected by kineticLaw
	xdot(10) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp0) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsIp0));
	
% Species:   id = CRPsite_ptsIp1, name = CRPsite_ptsIp1, affected by kineticLaw
	xdot(11) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp1) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsIp1));
	
% Species:   id = CRPsite_mlcp1, name = CRPsite_mlcp1, affected by kineticLaw
	xdot(12) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp1) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_mlcp1));
	
% Species:   id = CRPsite_mlcp2, name = CRPsite_mlcp2, affected by kineticLaw
	xdot(13) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp2) + ( 1.0 * reaction_decomposition_CRP_cAMP_CRPsite_mlcp2));
	
% Species:   id = Mlc, name = Mlc, affected by kineticLaw
	xdot(14) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_ptsGp1) + (-1.0 * reaction_binding_Mlc_Mlcsite_ptsGp2) + (-1.0 * reaction_binding_Mlc_Mlcsite_ptsHp0) + (-1.0 * reaction_binding_Mlc_Mlcsite_ptsIp0) + (-1.0 * reaction_binding_Mlc_Mlcsite_mlcp1) + (-1.0 * reaction_binding_Mlc_Mlcsite_mlcp2) + (-1.0 * reaction_binding_IICB_Mlc) + ( 1.0 * reaction_translation_mlc) + (-1.0 * reaction_decomposition_Mlc));
	
% Species:   id = Mlcsite_mlcp1, name = Mlcsite_mlcp1, affected by kineticLaw
	xdot(15) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_mlcp1) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_mlcp1));
	
% Species:   id = Mlcsite_mlcp2, name = Mlcsite_mlcp2, affected by kineticLaw
	xdot(16) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_mlcp2) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_mlcp2));
	
% Species:   id = Mlcsite_ptsGp1, name = Mlcsite_ptsGp1, affected by kineticLaw
	xdot(17) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_ptsGp1) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_ptsGp1));
	
% Species:   id = Mlcsite_ptsGp2, name = Mlcsite_ptsGp2, affected by kineticLaw
	xdot(18) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_ptsGp2) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_ptsGp2));
	
% Species:   id = Mlcsite_ptsHp0, name = Mlcsite_ptsHp0, affected by kineticLaw
	xdot(19) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_ptsHp0) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_ptsHp0));
	
% Species:   id = Mlcsite_ptsIp0, name = Mlcsite_ptsIp0, affected by kineticLaw
	xdot(20) = (1/(compartment_cyt))*((-1.0 * reaction_binding_Mlc_Mlcsite_ptsIp0) + ( 1.0 * reaction_decomposition_Mlc_Mlcsite_ptsIp0));
	
% Species:   id = CRP_cAMP, name = CRP_cAMP, affected by kineticLaw
	xdot(21) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_cyaA) + (-1.0 * reaction_binding_CRP_cAMP_CRPsiteI_crp) + (-1.0 * reaction_binding_CRP_cAMP_CRPsiteII_crp) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp1) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp2) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp0) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp1) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp0) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp1) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp1) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp2) + (-1.0 * reaction_binding_CRP_cAMP_CRPsite_genome) + (-1.0 * reaction_decomposition_CRP_cAMP));
	
% Species:   id = CRP_cAMP_CRPsiteI_crp, name = CRP_cAMP_CRPsiteI_crp, affected by kineticLaw
	xdot(22) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsiteI_crp) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsiteI_crp));
	
% Species:   id = CRP_cAMP_CRPsiteII_crp, name = CRP_cAMP_CRPsiteII_crp, affected by kineticLaw
	xdot(23) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsiteII_crp) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsiteII_crp));
	
% Species:   id = CRP_cAMP_CRPsite_cyaA, name = CRP_cAMP_CRPsite_cyaA, affected by kineticLaw
	xdot(24) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_cyaA) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_cyaA));
	
% Species:   id = CRP_cAMP_CRPsite_genome, name = CRP_cAMP_CRPsite_genome, affected by kineticLaw
	xdot(25) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_genome) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_genome));
	
% Species:   id = CRP_cAMP_CRPsite_ptsGp1, name = CRP_cAMP_CRPsite_ptsGp1, affected by kineticLaw
	xdot(26) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp1) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsGp1));
	
% Species:   id = CRP_cAMP_CRPsite_ptsGp2, name = CRP_cAMP_CRPsite_ptsGp2, affected by kineticLaw
	xdot(27) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsGp2) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsGp2));
	
% Species:   id = CRP_cAMP_CRPsite_ptsHp0, name = CRP_cAMP_CRPsite_ptsHp0, affected by kineticLaw
	xdot(28) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp0) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsHp0));
	
% Species:   id = CRP_cAMP_CRPsite_ptsHp1, name = CRP_cAMP_CRPsite_ptsHp1, affected by kineticLaw
	xdot(29) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsHp1) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsHp1));
	
% Species:   id = CRP_cAMP_CRPsite_ptsIp0, name = CRP_cAMP_CRPsite_ptsIp0, affected by kineticLaw
	xdot(30) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp0) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsIp0));
	
% Species:   id = CRP_cAMP_CRPsite_ptsIp1, name = CRP_cAMP_CRPsite_ptsIp1, affected by kineticLaw
	xdot(31) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_ptsIp1) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_ptsIp1));
	
% Species:   id = CRP_cAMP_CRPsite_mlcp1, name = CRP_cAMP_CRPsite_mlcp1, affected by kineticLaw
	xdot(32) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp1) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_mlcp1));
	
% Species:   id = CRP_cAMP_CRPsite_mlcp2, name = CRP_cAMP_CRPsite_mlcp2, affected by kineticLaw
	xdot(33) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_CRP_cAMP_CRPsite_mlcp2) + (-1.0 * reaction_decomposition_CRP_cAMP_CRPsite_mlcp2));
	
% Species:   id = Mlc_Mlcsite_ptsGp1, name = Mlc_Mlcsite_ptsGp1, affected by kineticLaw
	xdot(34) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_ptsGp1) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_ptsGp1));
	
% Species:   id = Mlc_Mlcsite_ptsGp2, name = Mlc_Mlcsite_ptsGp2, affected by kineticLaw
	xdot(35) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_ptsGp2) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_ptsGp2));
	
% Species:   id = Mlc_Mlcsite_ptsIp0, name = Mlc_Mlcsite_ptsIp0, affected by kineticLaw
	xdot(36) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_ptsIp0) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_ptsIp0));
	
% Species:   id = Mlc_Mlcsite_ptsHp0, name = Mlc_Mlcsite_ptsHp0, affected by kineticLaw
	xdot(37) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_ptsHp0) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_ptsHp0));
	
% Species:   id = Mlc_Mlcsite_mlcp1, name = Mlc_Mlcsite_mlcp1, affected by kineticLaw
	xdot(38) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_mlcp1) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_mlcp1));
	
% Species:   id = Mlc_Mlcsite_mlcp2, name = Mlc_Mlcsite_mlcp2, affected by kineticLaw
	xdot(39) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_Mlc_Mlcsite_mlcp2) + (-1.0 * reaction_decomposition_Mlc_Mlcsite_mlcp2));
	
% Species:   id = IICB, name = IICB, affected by kineticLaw
	xdot(40) = (1/(compartment_cyt))*((-1.0 * reaction_binding_IICB_Mlc) + ( 1.0 * reaction_translation_mRNA_ptsG) + (-1.0 * reaction_decomposition_IICB) + (-1.0 * reaction_PTS4for) + ( 1.0 * reaction_PTS4rev) + ( 1.0 * reaction_reaction_IICB_P_Glucose) + (-1.0 * reaction_reaction_IICB_Glc6P));
	
% Species:   id = IICB_Mlc, name = IICB_Mlc, affected by kineticLaw
	xdot(41) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_IICB_Mlc) + (-1.0 * reaction_decomposition_IICB_Mlc));
	
% Species:   id = CYA, name = CYA, affected by kineticLaw
	xdot(42) = (1/(compartment_cyt))*((-1.0 * reaction_binding_IIA_P_CYA) + ( 1.0 * reaction_translation_mRNA_cyaA) + (-1.0 * reaction_decomposition_CYA));
	
% Species:   id = IIA_P, name = IIA_P, affected by kineticLaw
	xdot(43) = (1/(compartment_cyt))*((-1.0 * reaction_binding_IIA_P_CYA) + (-1.0 * reaction_decomposition_IIA_P) + ( 1.0 * reaction_PTS3for) + (-1.0 * reaction_PTS3rev) + (-1.0 * reaction_PTS4for) + ( 1.0 * reaction_PTS4rev));
	
% Species:   id = IIA_P_CYA, name = IIA_P_CYA, affected by kineticLaw
	xdot(44) = (1/(compartment_cyt))*(( 1.0 * reaction_binding_IIA_P_CYA));
	
% Species:   id = mRNA_cyaA, name = mRNA_cyaA, affected by kineticLaw
	xdot(45) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_cyaA_cyaA) + ( 1.0 * reaction_transcription_cyaA_basal) + (-1.0 * reaction_decomposition_mRNA_cyaA));
	
% Species:   id = mRNA_crp, name = mRNA_crp, affected by kineticLaw
	xdot(46) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsiteI_crp_CRP_cAMP_CRPsiteII_crp_crp) + ( 1.0 * reaction_transcription_crp_basal) + (-1.0 * reaction_decomposition_mRNA_crp));
	
% Species:   id = mRNA_ptsG, name = mRNA_ptsG, affected by kineticLaw
	xdot(47) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsGp1_Mlc_Mlcsite_ptsGp1_ptsGp1) + ( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsGp2_Mlc_Mlcsite_ptsGp2_ptsGp2) + (-1.0 * reaction_decomposition_mRNA_ptsG));
	
% Species:   id = mRNA_ptsH, name = mRNA_ptsH, affected by kineticLaw
	xdot(48) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsHp0_Mlc_Mlcsite_ptsHp0_ptsHp0) + ( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsHp1_ptsHp1) + (-1.0 * reaction_decomposition_mRNA_ptsH));
	
% Species:   id = mRNA_ptsI, name = mRNA_ptsI, affected by kineticLaw
	xdot(49) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsIp0_Mlc_Mlcsite_ptsIp0_ptsIp0) + ( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_ptsIp1_ptsIp1) + (-1.0 * reaction_decomposition_mRNA_ptsI));
	
% Species:   id = mRNA_crr, name = mRNA_crr, affected by kineticLaw
	xdot(50) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_crr) + (-1.0 * reaction_decomposition_mRNA_crr));
	
% Species:   id = mRNA_mlc, name = mRNA_mlc, affected by kineticLaw
	xdot(51) = (1/(compartment_cyt))*(( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_mlcp1_Mlc_Mlcsite_mlcp1_mlcp1) + ( 1.0 * reaction_transcription_CRP_cAMP_CRPsite_mlcp2_Mlc_Mlcsite_mlcp2_mlcp2) + (-1.0 * reaction_decomposition_mRNA_mlc));
	
% Species:   id = IICB_P, name = IICB_P, affected by kineticLaw
	xdot(52) = (1/(compartment_cyt))*((-1.0 * reaction_decomposition_IICB_P) + ( 1.0 * reaction_PTS4for) + (-1.0 * reaction_PTS4rev) + (-1.0 * reaction_reaction_IICB_P_Glucose) + ( 1.0 * reaction_reaction_IICB_Glc6P));
	
% Species:   id = IIA, name = IIA, affected by kineticLaw
	xdot(53) = (1/(compartment_cyt))*(( 1.0 * reaction_translation_mRNA_crr) + (-1.0 * reaction_decomposition_IIA) + (-1.0 * reaction_PTS3for) + ( 1.0 * reaction_PTS3rev) + ( 1.0 * reaction_PTS4for) + (-1.0 * reaction_PTS4rev));
	
% Species:   id = HPr_P, name = HPr_P, affected by kineticLaw
	xdot(54) = (1/(compartment_cyt))*((-1.0 * reaction_decomposition_HPr_P) + ( 1.0 * reaction_PTS2for) + (-1.0 * reaction_PTS2rev) + (-1.0 * reaction_PTS3for) + ( 1.0 * reaction_PTS3rev));
	
% Species:   id = HPr, name = HPr, affected by kineticLaw
	xdot(55) = (1/(compartment_cyt))*(( 1.0 * reaction_translation_mRNA_ptsH) + (-1.0 * reaction_decomposition_HPr) + (-1.0 * reaction_PTS2for) + ( 1.0 * reaction_PTS2rev) + ( 1.0 * reaction_PTS3for) + (-1.0 * reaction_PTS3rev));
	
% Species:   id = EI_P, name = EI_P, affected by kineticLaw
	xdot(56) = (1/(compartment_cyt))*((-1.0 * reaction_decomposition_EI_P) + (-1.0 * reaction_PTS2for) + ( 1.0 * reaction_PTS2rev) + ( 1.0 * reaction_reaction_EI_PEP) + (-1.0 * reaction_reaction_EIP_Pyr));
	
% Species:   id = EI, name = EI, affected by kineticLaw
	xdot(57) = (1/(compartment_cyt))*(( 1.0 * reaction_translation_mRNA_ptsI) + (-1.0 * reaction_decomposition_EI) + ( 1.0 * reaction_PTS2for) + (-1.0 * reaction_PTS2rev) + (-1.0 * reaction_reaction_EI_PEP) + ( 1.0 * reaction_reaction_EIP_Pyr));
	
% Species:   id = cAMP, name = cAMP, affected by kineticLaw
	xdot(58) = (1/(compartment_cyt))*((-1.0 * reaction_binding_CRP_cAMP) + (-1.0 * reaction_decomposition_cAMP) + ( 1.0 * reaction_reaction_CYA_ATP) + ( 1.0 * reaction_reaction_IIA_P_CYA_ATP));
	
% Species:   id = Glucose, name = Glucose	xdot(59) = ;
end

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


