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
% Model name = Albert2005_Glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL1511155915
% is http://identifiers.org/biomodels.db/BIOMD0000000211
% isDescribedBy http://identifiers.org/pubmed/15955817
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1101100000
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000071
% isDerivedFrom http://identifiers.org/pubmed/10329645
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 10.0;
	x0(2) = 1.31652277625;
	x0(3) = 0.341738611875;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 2.24173861188;
	x0(7) = 0.0;
	x0(8) = 2.23134594788;
	x0(9) = 2.76865405212;
	x0(10) = 0.0;
	x0(11) = 0.240501857508;
	x0(12) = 1.51899628498;
	x0(13) = 4.24050185751;
	x0(14) = 0.5;
	x0(15) = 0.5;
	x0(16) = 10.0;
	x0(17) = 8.47911460193;
	x0(18) = 2.5;
	x0(19) = 2.0;
	x0(20) = 2.0;
	x0(21) = 0.5;
	x0(22) = 10.5208853981;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = compartment_1, name = cytosol, constant
	compartment_compartment_1=1.0;
% Compartment: id = compartment_2, name = glycosome, constant
	compartment_compartment_2=1.0;
% Compartment: id = compartment_3, name = extracellular, constant
	compartment_compartment_3=1.0;
% Parameter:   id =  RaHXK, name = RaHXK
	global_par_RaHXK=1.0;
% Parameter:   id =  RaPFK, name = RaPFK
	global_par_RaPFK=1.0;
% Parameter:   id =  RaPYK, name = RaPYK
	global_par_RaPYK=1.0;
% Parameter:   id =  RaPGAM, name = RaPGAM
	global_par_RaPGAM=1.0;
% Parameter:   id =  RaENO, name = RaENO
	global_par_RaENO=1.0;

% Reaction: id = vGT, name = glucose transport	% Local Parameter:   id =  Vmax_v1, name = Vmax_v1
	reaction_vGT_Vmax_v1=108.9;
	% Local Parameter:   id =  KGlc, name = KGlc
	reaction_vGT_KGlc=1.0;
	% Local Parameter:   id =  Alpha_v1, name = Alpha_v1
	reaction_vGT_Alpha_v1=0.75;

	reaction_vGT=function_10(reaction_vGT_Vmax_v1, const_species_species_25, x(10), reaction_vGT_KGlc, reaction_vGT_Alpha_v1);

% Reaction: id = vHK, name = hexokinase	% Local Parameter:   id =  Vmax_v2, name = Vmax_v2
	reaction_vHK_Vmax_v2=1929.0;
	% Local Parameter:   id =  KGlcInt_v2, name = KGlcInt_v2
	reaction_vHK_KGlcInt_v2=0.1;
	% Local Parameter:   id =  KATPg_v2, name = KATPg_v2
	reaction_vHK_KATPg_v2=0.116;
	% Local Parameter:   id =  KADPg_v2, name = KADPg_v2
	reaction_vHK_KADPg_v2=0.126;
	% Local Parameter:   id =  KGlc6P_v2, name = KGlc6P_v2
	reaction_vHK_KGlc6P_v2=12.0;

	reaction_vHK=global_par_RaHXK*compartment_compartment_2*function_11(reaction_vHK_Vmax_v2, x(10), reaction_vHK_KGlcInt_v2, x(11), reaction_vHK_KATPg_v2, x(12), reaction_vHK_KADPg_v2, x(14), reaction_vHK_KGlc6P_v2);

% Reaction: id = vPGI, name = phosphoglycerate isomerase	% Local Parameter:   id =  Kms, name = Kms
	reaction_vPGI_Kms=0.4;
	% Local Parameter:   id =  Kmp, name = Kmp
	reaction_vPGI_Kmp=0.12;
	% Local Parameter:   id =  Vf, name = Vf
	reaction_vPGI_Vf=1305.0;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_vPGI_Vr=1305.0;

	reaction_vPGI=compartment_compartment_2*function_12(x(14), x(15), reaction_vPGI_Kms, reaction_vPGI_Kmp, reaction_vPGI_Vf, reaction_vPGI_Vr);

% Reaction: id = vPFK, name = phophofructokinase	% Local Parameter:   id =  Vmax_v4, name = Vmax_v4
	reaction_vPFK_Vmax_v4=1708.0;
	% Local Parameter:   id =  Ki1Fru16BP_v4, name = Ki1Fru16BP_v4
	reaction_vPFK_Ki1Fru16BP_v4=15.8;
	% Local Parameter:   id =  KFru6P_v4, name = KFru6P_v4
	reaction_vPFK_KFru6P_v4=0.82;
	% Local Parameter:   id =  KATPg_v4, name = KATPg_v4
	reaction_vPFK_KATPg_v4=0.026;
	% Local Parameter:   id =  Ki2Fru16BP_v4, name = Ki2Fru16BP_v4
	reaction_vPFK_Ki2Fru16BP_v4=10.7;

	reaction_vPFK=global_par_RaPFK*compartment_compartment_2*function_13(reaction_vPFK_Vmax_v4, reaction_vPFK_Ki1Fru16BP_v4, x(16), x(15), reaction_vPFK_KFru6P_v4, x(11), reaction_vPFK_KATPg_v4, reaction_vPFK_Ki2Fru16BP_v4);

% Reaction: id = vALD, name = aldolase	% Local Parameter:   id =  Vmax_v5, name = Vmax_v5
	reaction_vALD_Vmax_v5=560.0;
	% Local Parameter:   id =  Keq_v5, name = Keq_v5
	reaction_vALD_Keq_v5=0.069;
	% Local Parameter:   id =  r_v5, name = r_v5
	reaction_vALD_r_v5=1.19;
	% Local Parameter:   id =  KGAP_v5, name = KGAP_v5
	reaction_vALD_KGAP_v5=0.067;
	% Local Parameter:   id =  KGAPi_v5, name = KGAPi_v5
	reaction_vALD_KGAPi_v5=0.098;

	reaction_vALD=compartment_compartment_2*function_14(reaction_vALD_Vmax_v5, x(16), x(18), x(17), reaction_vALD_Keq_v5, x(11), x(12), x(13), reaction_vALD_r_v5, reaction_vALD_KGAP_v5, reaction_vALD_KGAPi_v5);

% Reaction: id = vTPI, name = triosephosphate isomerase	% Local Parameter:   id =  Kms, name = Kms
	reaction_vTPI_Kms=1.2;
	% Local Parameter:   id =  Kmp, name = Kmp
	reaction_vTPI_Kmp=0.25;
	% Local Parameter:   id =  Vf, name = Vf
	reaction_vTPI_Vf=999.3;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_vTPI_Vr=5696.01;

	reaction_vTPI=compartment_compartment_2*function_12(x(17), x(18), reaction_vTPI_Kms, reaction_vTPI_Kmp, reaction_vTPI_Vf, reaction_vTPI_Vr);

% Reaction: id = vGAPDH, name = glyceraldehyde3phosphatedehydrogenase	% Local Parameter:   id =  Vmax_v7, name = Vmax_v7
	reaction_vGAPDH_Vmax_v7=720.9;
	% Local Parameter:   id =  KGAP_v7, name = KGAP_v7
	reaction_vGAPDH_KGAP_v7=0.15;
	% Local Parameter:   id =  KNAD_v7, name = KNAD_v7
	reaction_vGAPDH_KNAD_v7=0.45;
	% Local Parameter:   id =  r_v7, name = r_v7
	reaction_vGAPDH_r_v7=0.67;
	% Local Parameter:   id =  KBPGA13_v7, name = KBPGA13_v7
	reaction_vGAPDH_KBPGA13_v7=0.1;
	% Local Parameter:   id =  KNADH_v7, name = KNADH_v7
	reaction_vGAPDH_KNADH_v7=0.02;

	reaction_vGAPDH=compartment_compartment_2*function_15(reaction_vGAPDH_Vmax_v7, x(18), reaction_vGAPDH_KGAP_v7, x(19), reaction_vGAPDH_KNAD_v7, reaction_vGAPDH_r_v7, x(21), reaction_vGAPDH_KBPGA13_v7, x(20), reaction_vGAPDH_KNADH_v7);

% Reaction: id = vGPDH, name = glycerol3phosphatedehydrogenase	% Local Parameter:   id =  Vmax_v8, name = Vmax_v8
	reaction_vGPDH_Vmax_v8=465.0;
	% Local Parameter:   id =  KDHAPg_v8, name = KDHAPg_v8
	reaction_vGPDH_KDHAPg_v8=0.1;
	% Local Parameter:   id =  KNADH_v8, name = KNADH_v8
	reaction_vGPDH_KNADH_v8=0.01;
	% Local Parameter:   id =  r_v8, name = r_v8
	reaction_vGPDH_r_v8=0.28;
	% Local Parameter:   id =  KNAD_v8, name = KNAD_v8
	reaction_vGPDH_KNAD_v8=0.4;
	% Local Parameter:   id =  KGly3Pg_v8, name = KGly3Pg_v8
	reaction_vGPDH_KGly3Pg_v8=2.0;

	reaction_vGPDH=compartment_compartment_2*function_16(reaction_vGPDH_Vmax_v8, x(17), reaction_vGPDH_KDHAPg_v8, x(20), reaction_vGPDH_KNADH_v8, reaction_vGPDH_r_v8, x(19), reaction_vGPDH_KNAD_v8, x(22), reaction_vGPDH_KGly3Pg_v8);

% Reaction: id = vGPO, name = glycerol3phosphate oxidase	% Local Parameter:   id =  Km, name = Km
	reaction_vGPO_Km=1.7;
	% Local Parameter:   id =  V, name = V
	reaction_vGPO_V=368.0;

	reaction_vGPO=compartment_compartment_1*function_17(x(9), reaction_vGPO_Km, reaction_vGPO_V);

% Reaction: id = vPT, name = pyruvate transport	% Local Parameter:   id =  Km, name = Km
	reaction_vPT_Km=1.96;
	% Local Parameter:   id =  V, name = V
	reaction_vPT_V=200.0;

	reaction_vPT=function_17(x(1), reaction_vPT_Km, reaction_vPT_V);

% Reaction: id = vPGK, name = phosphoglycerate kinase	% Local Parameter:   id =  Vmax_v11, name = Vmax_v11
	reaction_vPGK_Vmax_v11=2862.0;
	% Local Parameter:   id =  KBPGA13_v11, name = KBPGA13_v11
	reaction_vPGK_KBPGA13_v11=0.003;
	% Local Parameter:   id =  KADPg_v11, name = KADPg_v11
	reaction_vPGK_KADPg_v11=0.1;
	% Local Parameter:   id =  r_v11, name = r_v11
	reaction_vPGK_r_v11=0.47;
	% Local Parameter:   id =  KPGA3_v11, name = KPGA3_v11
	reaction_vPGK_KPGA3_v11=1.62;
	% Local Parameter:   id =  KATPg_v11, name = KATPg_v11
	reaction_vPGK_KATPg_v11=0.29;

	reaction_vPGK=compartment_compartment_2*function_18(reaction_vPGK_Vmax_v11, x(21), reaction_vPGK_KBPGA13_v11, x(12), reaction_vPGK_KADPg_v11, reaction_vPGK_r_v11, x(23), reaction_vPGK_KPGA3_v11, x(11), reaction_vPGK_KATPg_v11);

% Reaction: id = vPK, name = pyruvate kinase	% Local Parameter:   id =  Vmax_v12, name = Vmax_v12
	reaction_vPK_Vmax_v12=1020.0;
	% Local Parameter:   id =  PK_n, name = PK_n
	reaction_vPK_PK_n=2.5;
	% Local Parameter:   id =  KADP_v12, name = KADP_v12
	reaction_vPK_KADP_v12=0.114;

	reaction_vPK=global_par_RaPYK*compartment_compartment_1*function_19(reaction_vPK_Vmax_v12, x(4), reaction_vPK_PK_n, x(2), reaction_vPK_KADP_v12, x(3));

% Reaction: id = vAU, name = atp utilisation	% Local Parameter:   id =  k, name = k
	reaction_vAU_k=50.0;

	reaction_vAU=compartment_compartment_1*function_20(reaction_vAU_k, x(3), x(2));

% Reaction: id = vGK, name = glycerol kinase	% Local Parameter:   id =  Vmax_v14, name = Vmax_v14
	reaction_vGK_Vmax_v14=200.0;
	% Local Parameter:   id =  KGly3Pg_v14, name = KGly3Pg_v14
	reaction_vGK_KGly3Pg_v14=3.83;
	% Local Parameter:   id =  KADPg_v14, name = KADPg_v14
	reaction_vGK_KADPg_v14=0.56;
	% Local Parameter:   id =  r_v14, name = r_v14
	reaction_vGK_r_v14=60.86;
	% Local Parameter:   id =  KGlycerol_v14, name = KGlycerol_v14
	reaction_vGK_KGlycerol_v14=0.44;
	% Local Parameter:   id =  KATPg_v14, name = KATPg_v14
	reaction_vGK_KATPg_v14=0.24;

	reaction_vGK=compartment_compartment_2*function_21(reaction_vGK_Vmax_v14, x(22), reaction_vGK_KGly3Pg_v14, x(12), reaction_vGK_KADPg_v14, reaction_vGK_r_v14, x(24), reaction_vGK_KGlycerol_v14, x(11), reaction_vGK_KATPg_v14);

% Reaction: id = vPGM, name = phosphoglycerate mutase	% Local Parameter:   id =  Kms, name = Kms
	reaction_vPGM_Kms=0.27;
	% Local Parameter:   id =  Kmp, name = Kmp
	reaction_vPGM_Kmp=0.11;
	% Local Parameter:   id =  Vf, name = Vf
	reaction_vPGM_Vf=225.0;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_vPGM_Vr=495.0;

	reaction_vPGM=global_par_RaPGAM*compartment_compartment_1*function_12(x(7), x(5), reaction_vPGM_Kms, reaction_vPGM_Kmp, reaction_vPGM_Vf, reaction_vPGM_Vr);

% Reaction: id = vENO, name = enolase	% Local Parameter:   id =  Kms, name = Kms
	reaction_vENO_Kms=0.054;
	% Local Parameter:   id =  Kmp, name = Kmp
	reaction_vENO_Kmp=0.24;
	% Local Parameter:   id =  Vf, name = Vf
	reaction_vENO_Vf=598.0;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_vENO_Vr=394.68;

	reaction_vENO=global_par_RaENO*compartment_compartment_1*function_12(x(5), x(4), reaction_vENO_Kms, reaction_vENO_Kmp, reaction_vENO_Vf, reaction_vENO_Vr);

% Reaction: id = vAKc, name = adenylate kinase cytosol	% Local Parameter:   id =  k, name = k
	reaction_vAKc_k=1000000.0;
	% Local Parameter:   id =  keqak, name = keqak
	reaction_vAKc_keqak=0.442;

	reaction_vAKc=compartment_compartment_1*function_22(reaction_vAKc_k, x(3), x(6), reaction_vAKc_keqak, x(2));

% Reaction: id = vAKg, name = adenylate kinase glycosome	% Local Parameter:   id =  k, name = k
	reaction_vAKg_k=1000000.0;
	% Local Parameter:   id =  keqak, name = keqak
	reaction_vAKg_keqak=0.442;

	reaction_vAKg=compartment_compartment_2*function_22(reaction_vAKg_k, x(11), x(13), reaction_vAKg_keqak, x(12));

% Reaction: id = vPGT, name = 3phosphoglycerate transport	% Local Parameter:   id =  k1, name = k1
	reaction_vPGT_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_vPGT_k2=1000000.0;

	reaction_vPGT=reaction_vPGT_k1*x(23)-reaction_vPGT_k2*x(7);

% Reaction: id = vANTI, name = gly3p dhap antiporter	% Local Parameter:   id =  k1, name = k1
	reaction_vANTI_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_vANTI_k2=1000000.0;

	reaction_vANTI=reaction_vANTI_k1*x(22)*x(8)-reaction_vANTI_k2*x(9)*x(17);

% Reaction: id = vGlyT, name = glycerol transport	% Local Parameter:   id =  k1, name = k1
	reaction_vGlyT_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_vGlyT_k2=1000000.0;

	reaction_vGlyT=reaction_vGlyT_k1*x(24)-reaction_vGlyT_k2*const_species_species_27;

% Species:   id = species_25, name = glucose external, constant	const_species_species_25=5.0;

% Species:   id = species_26, name = pyruvate external, constant	const_species_species_26=0.0;

% Species:   id = species_27, name = glycerol external, constant	const_species_species_27=0.0;

	xdot=zeros(24,1);
	
% Species:   id = species_1, name = pyruvate, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_vPT) + ( 1.0 * reaction_vPK));
	
% Species:   id = species_2, name = adpc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_vPK) + ( 1.0 * reaction_vAU) + ( 2.0 * reaction_vAKc));
	
% Species:   id = species_3, name = atpc, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_vPK) + (-1.0 * reaction_vAU) + (-1.0 * reaction_vAKc));
	
% Species:   id = species_4, name = phosphoenolpyruvate, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_vPK) + ( 1.0 * reaction_vENO));
	
% Species:   id = species_5, name = 2phosphoglycerate, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_vPGM) + (-1.0 * reaction_vENO));
	
% Species:   id = species_6, name = ampc, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_vAKc));
	
% Species:   id = species_7, name = 3phosphoglycerate cytosol, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_vPGM) + ( 1.0 * reaction_vPGT));
	
% Species:   id = species_8, name = dihydroxyacetonephosphate cytosol, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_vGPO) + (-1.0 * reaction_vANTI));
	
% Species:   id = species_9, name = glycerol3phosphate cytosol, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*((-1.0 * reaction_vGPO) + ( 1.0 * reaction_vANTI));
	
% Species:   id = species_10, name = glucose, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vGT) + (-1.0 * reaction_vHK));
	
% Species:   id = species_11, name = atpg, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_2))*((-1.0 * reaction_vHK) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vGK) + (-1.0 * reaction_vAKg));
	
% Species:   id = species_12, name = adpg, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vHK) + ( 1.0 * reaction_vPFK) + (-1.0 * reaction_vPGK) + (-1.0 * reaction_vGK) + ( 2.0 * reaction_vAKg));
	
% Species:   id = species_13, name = ampg, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_2))*((-1.0 * reaction_vAKg));
	
% Species:   id = species_14, name = glucose6phosphate, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vHK) + (-1.0 * reaction_vPGI));
	
% Species:   id = species_15, name = fructose6phosphate, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK));
	
% Species:   id = species_16, name = fructose16bisphosphate, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = species_17, name = dihydroxyacetonephosphate, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vTPI) + (-1.0 * reaction_vGPDH) + ( 1.0 * reaction_vANTI));
	
% Species:   id = species_18, name = glyceraldehyde3phosphate, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vALD) + ( 1.0 * reaction_vTPI) + (-1.0 * reaction_vGAPDH));
	
% Species:   id = species_19, name = nad, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_2))*((-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vGPDH));
	
% Species:   id = species_20, name = nadh, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vGPDH));
	
% Species:   id = species_21, name = bisphosphoglycerate, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vPGK));
	
% Species:   id = species_22, name = glycerol3phosphate, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vGPDH) + (-1.0 * reaction_vGK) + (-1.0 * reaction_vANTI));
	
% Species:   id = species_23, name = 3phosphoglycerate, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vPGK) + (-1.0 * reaction_vPGT));
	
% Species:   id = species_24, name = glycerol, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_2))*(( 1.0 * reaction_vGK) + (-1.0 * reaction_vGlyT));
end

function z=function_17(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_12(substrate,product,Kms,Kmp,Vf,Vr), z=((Vf*substrate/Kms-Vr*product/Kmp)/(1+substrate/Kms+product/Kmp));end

function z=function_15(Vmax_v7,GAP,KGAP_v7,NAD,KNAD_v7,r_v7,BPGA13,KBPGA13_v7,NADH,KNADH_v7), z=(Vmax_v7*(GAP/KGAP_v7*NAD/KNAD_v7-r_v7*BPGA13/KBPGA13_v7*NADH/KNADH_v7)/((1+GAP/KGAP_v7+BPGA13/KBPGA13_v7)*(1+NAD/KNAD_v7+NADH/KNADH_v7)));end

function z=function_20(k,atpc,adpc), z=(k*atpc/adpc);end

function z=function_19(Vmax_v12,PEP,PK_n,ADPc,KADP_v12,ATPc), z=(Vmax_v12*(PEP/(0.34*(1+ATPc/0.57+ADPc/0.64)))^PK_n*ADPc/KADP_v12/((1+(PEP/(0.34*(1+ATPc/0.57+ADPc/0.64)))^PK_n)*(1+ADPc/KADP_v12)));end

function z=function_16(Vmax_v8,DHAPg,KDHAPg_v8,NADH,KNADH_v8,r_v8,NAD,KNAD_v8,Gly3Pg,KGly3Pg_v8), z=(Vmax_v8*(DHAPg/KDHAPg_v8*NADH/KNADH_v8-r_v8*NAD/KNAD_v8*Gly3Pg/KGly3Pg_v8)/((1+DHAPg/KDHAPg_v8+Gly3Pg/KGly3Pg_v8)*(1+NADH/KNADH_v8+NAD/KNAD_v8)));end

function z=function_18(Vmax_v11,BPGA13,KBPGA13_v11,ADPg,KADPg_v11,r_v11,PGA3,KPGA3_v11,ATPg,KATPg_v11), z=(Vmax_v11*(BPGA13/KBPGA13_v11*ADPg/KADPg_v11-r_v11*PGA3/KPGA3_v11*ATPg/KATPg_v11)/((1+BPGA13/KBPGA13_v11+PGA3/KPGA3_v11)*(1+ADPg/KADPg_v11+ATPg/KATPg_v11)));end

function z=function_13(Vmax_v4,Ki1Fru16BP_v4,Fru16BP,Fru6P,KFru6P_v4,ATPg,KATPg_v4,Ki2Fru16BP_v4), z=(Vmax_v4*Ki1Fru16BP_v4/(Ki1Fru16BP_v4+Fru16BP)*Fru6P/KFru6P_v4*ATPg/KATPg_v4/((1+Fru6P/KFru6P_v4+Fru16BP/Ki2Fru16BP_v4)*(1+ATPg/KATPg_v4)));end

function z=function_21(Vmax_v14,Gly3Pg,KGly3Pg_v14,ADPg,KADPg_v14,r_v14,Glycerol,KGlycerol_v14,ATPg,KATPg_v14), z=(Vmax_v14*(Gly3Pg/KGly3Pg_v14*ADPg/KADPg_v14-r_v14*Glycerol/KGlycerol_v14*ATPg/KATPg_v14)/((1+Gly3Pg/KGly3Pg_v14+Glycerol/KGlycerol_v14)*(1+ADPg/KADPg_v14+ATPg/KATPg_v14)));end

function z=function_11(Vmax_v2,GlucoseInt,KGlcInt_v2,ATPg,KATPg_v2,ADPg,KADPg_v2,Glc6P,KGlc6P_v2), z=(Vmax_v2*GlucoseInt/KGlcInt_v2*ATPg/KATPg_v2/((1+ATPg/KATPg_v2+ADPg/KADPg_v2)*(1+GlucoseInt/KGlcInt_v2+Glc6P/KGlc6P_v2)));end

function z=function_14(Vmax_v5,Fru16BP,GAP,DHAPg,Keq_v5,ATPg,ADPg,AMPg,r_v5,KGAP_v5,KGAPi_v5), z=(Vmax_v5*(Fru16BP-GAP*DHAPg/Keq_v5)/(0.009*(1+ATPg/0.68+ADPg/1.51+AMPg/3.65)+Fru16BP+GAP*0.015*(1+ATPg/0.68+ADPg/1.51+AMPg/3.65)/Keq_v5*1/r_v5+DHAPg*KGAP_v5/Keq_v5*1/r_v5+Fru16BP*GAP/KGAPi_v5+GAP*DHAPg/Keq_v5*1/r_v5));end

function z=function_22(k,atp,amp,keqak,adp), z=(k*(atp*amp-keqak*adp*adp));end

function z=function_10(Vmax_v1,GlucoseExt,GlucoseInt,KGlc,Alpha_v1), z=(Vmax_v1*(GlucoseExt-GlucoseInt)/(KGlc+GlucoseExt+GlucoseInt+Alpha_v1*GlucoseExt*GlucoseInt/KGlc));end

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


