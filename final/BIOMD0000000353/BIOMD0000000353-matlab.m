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
% Model name = Nag2011_ChloroplasticStarchDegradation
%
% is http://identifiers.org/biomodels.db/MODEL1106030000
% is http://identifiers.org/biomodels.db/BIOMD0000000353
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(22) = 0.0;
	x0(1) = 5.72393521295741E-14;
	x0(2) = 0.0;
	x0(3) = 1.579698E-11;
	x0(4) = 3.534E-12;
	x0(5) = 3.534E-11;
	x0(6) = 3.534E-10;
	x0(7) = 3.534E-12;
	x0(8) = 1.579698E-11;
	x0(9) = 1.579698E-8;
	x0(10) = 1.579698E-8;
	x0(11) = 1.579698E-9;
	x0(12) = 1.579698E-8;
	x0(13) = 1.579698E-8;
	x0(14) = 2.767122E-15;
	x0(15) = 4.17012E-15;
	x0(16) = 7.068E-13;
	x0(17) = 3.159396E-12;
	x0(18) = 3.159396E-12;
	x0(19) = 1.579698E-11;
	x0(20) = 1.4136E-14;
	x0(21) = 1.4136E-13;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=3.534E-12;
% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.579698E-12;
% Compartment: id = Chloroplast, name = Chloroplast, constant
	compartment_Chloroplast=7.068E-13;
% Compartment: id = ChloroplastOuterMembrane, name = Chloroplast Outer Membrane, constant
	compartment_ChloroplastOuterMembrane=1000.0;
% Compartment: id = ChloroplastIntermembraneSpace, name = Chloroplast Intermembrane Space, constant
	compartment_ChloroplastIntermembraneSpace=7.068E-15;
% Compartment: id = ChloroplastInnerMembrane, name = Chloroplast Inner Membrane, constant
	compartment_ChloroplastInnerMembrane=1000.0;
% Compartment: id = ChloroplastStroma, name = Chloroplast Stroma, constant
	compartment_ChloroplastStroma=3.534E-13;
% Parameter:   id =  C00369_MW, name = Starch Mol. Wt.
	global_par_C00369_MW=0.27;
% Parameter:   id =  N_Glc_Starch, name = Number of Glucosyl units in a Starch molecule
	global_par_N_Glc_Starch=1667.0;
% Parameter:   id =  f_bamylase, name = Fraction of Starch amenable to degradation by Beta Amylase only
	global_par_f_bamylase=0.582;
% Parameter:   id =  f_G2, name = Fraction of starch degraded to Maltose
	global_par_f_G2=0.87;
% Parameter:   id =  f_G3, name = Fraction of starch degraded to Maltotriose
	global_par_f_G3=0.13;
% Parameter:   id =  conv_gm_umole, name = Unit conversion factor to meet SBML standards
	global_par_conv_gm_umole=1.0;
% Parameter:   id =  ec_3_2_1_2_MW, name = Beta amylase molecular weight
	global_par_ec_3_2_1_2_MW=0.206;
% Parameter:   id =  G00343_MW, name = Maltopentaose Mol. Wt.
	global_par_G00343_MW=8.28E-4;
% Parameter:   id =  C01835_MW, name = Maltotriose Mol. Wt.
	global_par_C01835_MW=5.04E-4;
% Parameter:   id =  C00208_MW, name = Maltose Mol. Wt.
	global_par_C00208_MW=3.42E-4;
% Parameter:   id =  R05196CS_kcat, name = DPE1 kcat
	global_par_R05196CS_kcat=50.0;
% Parameter:   id =  R05196CS_Keq, name = DPE1 Keq
	global_par_R05196CS_Keq=1.0;
% Parameter:   id =  R05196CS_G3_KM, name = DPE1 G3 KM
	global_par_R05196CS_G3_KM=3300.0;
% Parameter:   id =  R05196CS_Glc_KM, name = DPE1 Glc KM
	global_par_R05196CS_Glc_KM=11700.0;
% Parameter:   id =  R05196CS_G5_KM, name = DPE1 G5 KM
	global_par_R05196CS_G5_KM=210.0;
% Parameter:   id =  R05196CS_G3_Ki, name = DPE1 G3 Ki
	global_par_R05196CS_G3_Ki=746.42;
% Parameter:   id =  R05196CS_Glc_Ki, name = DPE1 Glc Ki
	global_par_R05196CS_Glc_Ki=5571.429;
% Parameter:   id =  R05196CS_G5_Ki, name = DPE1 G5 Ki
	global_par_R05196CS_G5_Ki=100.0;
% Parameter:   id =  AT2G40840CY_kcat, name = DPE2 kcat
	global_par_AT2G40840CY_kcat=50.0;
% Parameter:   id =  AT2G40840CY_Keq, name = DPE2 Keq
	global_par_AT2G40840CY_Keq=1.0;
% Parameter:   id =  AT2G40840CY_Glc_KM, name = DPE2 Glc KM
	global_par_AT2G40840CY_Glc_KM=11700.0;
% Parameter:   id =  AT2G40840CY_G2_KM, name = DPE2 Maltose KM
	global_par_AT2G40840CY_G2_KM=4600.0;
% Parameter:   id =  AT2G40840CY_AG_KM, name = DPE2 AG KM
	global_par_AT2G40840CY_AG_KM=1100.0;
% Parameter:   id =  AT2G40840CY_GlcAG_KM, name = DPE2 GlcAG KM
	global_par_AT2G40840CY_GlcAG_KM=1100.0;
% Parameter:   id =  AT2G40840CY_Glc_Ki, name = DPE2 Glc Ki
	global_par_AT2G40840CY_Glc_Ki=5571.429;
% Parameter:   id =  AT2G40840CY_G2_Ki, name = DPE2 Maltose Ki
	global_par_AT2G40840CY_G2_Ki=2190.476;
% Parameter:   id =  AT2G40840CY_AG_Ki, name = DPE2 AG Ki
	global_par_AT2G40840CY_AG_Ki=1000.0;
% Parameter:   id =  AT2G40840CY_GlcAG_Ki, name = DPE2 GlcAG Ki
	global_par_AT2G40840CY_GlcAG_Ki=1000.0;
% Parameter:   id =  R06050CY_kcat, name = Cytosolic glucan phosphorylase kcat
	global_par_R06050CY_kcat=50.0;
% Parameter:   id =  R06050CY_GlcAG_KM, name = Cytosolic glucan phosphorylase Glucosyl Arabinogalactan KM
	global_par_R06050CY_GlcAG_KM=2100.0;
% Parameter:   id =  R06050CY_GlcAG_Ki, name = Cytosolic glucan phosphorylase Glucosyl Arabinogalactan Ki
	global_par_R06050CY_GlcAG_Ki=3800.0;
% Parameter:   id =  R06050CY_AG_KM, name = Cytosolic glucan phosphorylase Arabinogalactan KM
	global_par_R06050CY_AG_KM=3800.0;
% Parameter:   id =  R06050CY_Pi_KM, name = Cytosolic glucan phosphorylase Pi KM
	global_par_R06050CY_Pi_KM=5900.0;
% Parameter:   id =  R06050CY_G1P_KM, name = Cytosolic glucan phosphorylase G1P KM
	global_par_R06050CY_G1P_KM=2000.0;
% Parameter:   id =  R06050CY_G1P_Ki, name = Cytosolic glucan phosphorylase G1P Ki
	global_par_R06050CY_G1P_Ki=3100.0;
% Parameter:   id =  R06050CY_Keq, name = Cytosolic glucan phosphorylase Keq
	global_par_R06050CY_Keq=6.15E-4;
% Parameter:   id =  TC_2_A_84_1_2_kcat, name = Maltose exporter (MEX) kcat
	global_par_TC_2_A_84_1_2_kcat=5.963;
% Parameter:   id =  TC_2_A_84_1_2_KM, name = Maltose exporter (MEX) KM
	global_par_TC_2_A_84_1_2_KM=4000.0;
% Parameter:   id =  TC_2_A_1_1_17_kcat, name = Glucose transporter (pGlcT) kcat
	global_par_TC_2_A_1_1_17_kcat=240.278;
% Parameter:   id =  TC_2_A_1_1_17_KM, name = Glucose transporter (pGlcT) KM
	global_par_TC_2_A_1_1_17_KM=19300.0;
% Parameter:   id =  R02112CS_Gn_KM, name = Beta Amylase KM for Starch
	global_par_R02112CS_Gn_KM=0.5;
% Parameter:   id =  R02112CS_G5_KM, name = Beta Amylase KM for Maltopentaose
	global_par_R02112CS_G5_KM=1.46;
% Parameter:   id =  R02112CS_G2C_KM, name = Beta Amylase KM for Maltose condensation
	global_par_R02112CS_G2C_KM=4.19;
% Parameter:   id =  R02112CS_Keq, name = Keq for Maltotetraose degradation
	global_par_R02112CS_Keq=18800.0;
% Parameter:   id =  R02112CS_Gn_kcat, name = kcat_betaamylase_Starch
	global_par_R02112CS_Gn_kcat=0.073;
% Parameter:   id =  R02112CS_G5_kcat, name = kcat_betaamylase_Maltopentaose
	global_par_R02112CS_G5_kcat=0.0913;
% Parameter:   id =  ec_3_2_1_68_CS_kcat, name = Isoamylase kcat
	global_par_ec_3_2_1_68_CS_kcat=0.0198;
% Parameter:   id =  R00299CY_kfor, name = Hexokinase kcat,forward
	global_par_R00299CY_kfor=180.0;
% Parameter:   id =  R00299CY_krev, name = Hexokinase kcat,reverse
% Parameter:   id =  R00299CY_Keq, name = Hexokinase Keq
	global_par_R00299CY_Keq=155.0;
% Parameter:   id =  R00299CY_MgATP_KM, name = Hexokinase KM(MgATP)
	global_par_R00299CY_MgATP_KM=1000.0;
% Parameter:   id =  R00299CY_MgATP_Ki, name = Hexokinase Ki(MgATP)
	global_par_R00299CY_MgATP_Ki=1000.0;
% Parameter:   id =  R00299CY_Glc_KM, name = Hexokinase KM(glucose)
	global_par_R00299CY_Glc_KM=47.0;
% Parameter:   id =  R00299CY_Glc_Ki, name = Hexokinase Ki(glucose)
	global_par_R00299CY_Glc_Ki=47.0;
% Parameter:   id =  R00299CY_G6P_KM, name = Hexokinase KM(G6P)
	global_par_R00299CY_G6P_KM=47.0;
% Parameter:   id =  R00299CY_G6P_Ki, name = Hexokinase Ki(G6P)
	global_par_R00299CY_G6P_Ki=47.0;
% Parameter:   id =  R00299CY_MgADP_KM, name = Hexokinase KM(MgADP)
	global_par_R00299CY_MgADP_KM=1000.0;
% Parameter:   id =  R00299CY_MgADP_Ki, name = Hexokinase Ki(MgADP)
	global_par_R00299CY_MgADP_Ki=1000.0;
% Parameter:   id =  R00299CY_G6P_Kip, name = Hexokinase Ki(G6P),2
	global_par_R00299CY_G6P_Kip=10.0;
% Parameter:   id =  R00299CY_BPG_Kip, name = Hexokinase Ki(2,3-bisphosphoglycerate)
	global_par_R00299CY_BPG_Kip=4000.0;
% Parameter:   id =  R00299CY_G16P_Kip, name = Hexokinase Ki(glucose 1,6-bisphosphate
	global_par_R00299CY_G16P_Kip=30.0;
% Parameter:   id =  R00299CY_GSH_Kip, name = Hexokinase Ki(glutathione)
	global_par_R00299CY_GSH_Kip=3000.0;
% assignmentRule: variable = cpd_C00369_CS
	x(1)=const_species_cpd_C00369Glc_CS/compartment_ChloroplastStroma*global_par_C00369_MW/global_par_N_Glc_Starch*compartment_ChloroplastStroma;
% assignmentRule: variable = R00299CY_krev
	global_par_R00299CY_krev=global_par_R00299CY_kfor*global_par_R00299CY_MgADP_Ki*global_par_R00299CY_G6P_KM/(global_par_R00299CY_Keq*global_par_R00299CY_Glc_Ki*global_par_R00299CY_MgATP_KM);
% rateRule: variable = cpd_C00369db_CS
x(2) = x(22);

% Reaction: id = rn_R02112CS_G2, name = Maltose formation from Starch
	reaction_rn_R02112CS_G2=compartment_ChloroplastStroma*Function_for_Maltose_formation_from_Starch(global_par_C00208_MW, global_par_R02112CS_G2C_KM, global_par_R02112CS_Gn_KM, global_par_R02112CS_Gn_kcat, global_par_R02112CS_Keq, global_par_conv_gm_umole, x(4)/compartment_ChloroplastStroma, x(1)/compartment_ChloroplastStroma, x(2)/compartment_ChloroplastStroma, x(14)/compartment_ChloroplastStroma, global_par_f_G2, global_par_f_bamylase);

% Reaction: id = rn_R02112CS_G3, name = Maltotriose formation from Starch
	reaction_rn_R02112CS_G3=compartment_ChloroplastStroma*Function_for_Maltotriose_formation_from_Starch(global_par_R02112CS_Gn_KM, global_par_R02112CS_Gn_kcat, global_par_conv_gm_umole, x(1)/compartment_ChloroplastStroma, x(2)/compartment_ChloroplastStroma, x(14)/compartment_ChloroplastStroma, global_par_f_G3, global_par_f_bamylase);

% Reaction: id = rn_R02112CS_G5, name = Maltopentaose degradation
	reaction_rn_R02112CS_G5=compartment_ChloroplastStroma*Function_for_Maltopentaose_degradation(global_par_G00343_MW, global_par_R02112CS_G5_KM, global_par_R02112CS_G5_kcat, global_par_conv_gm_umole, x(6)/compartment_ChloroplastStroma, x(14)/compartment_ChloroplastStroma);

% Reaction: id = tr_TC_2_A_84_1_2, name = Maltose exporter
	reaction_tr_TC_2_A_84_1_2=Function_for_Maltose_exporter(compartment_ChloroplastStroma, global_par_TC_2_A_84_1_2_KM, global_par_TC_2_A_84_1_2_kcat, x(4)/compartment_ChloroplastStroma, x(20)/compartment_ChloroplastIntermembraneSpace);

% Reaction: id = tr_TC_2_A_1_1_17, name = Plastidic Glucose transporter
	reaction_tr_TC_2_A_1_1_17=Function_for_Plastidic_Glucose_transporter(compartment_ChloroplastStroma, global_par_TC_2_A_1_1_17_KM, global_par_TC_2_A_1_1_17_kcat, x(7)/compartment_ChloroplastStroma, x(21)/compartment_ChloroplastIntermembraneSpace);

% Reaction: id = rn_R00299CY, name = Hexokinase
	reaction_rn_R00299CY=compartment_Cytosol*Function_for_Hexokinase(global_par_R00299CY_BPG_Kip, global_par_R00299CY_G16P_Kip, global_par_R00299CY_G6P_KM, global_par_R00299CY_G6P_Ki, global_par_R00299CY_G6P_Kip, global_par_R00299CY_GSH_Kip, global_par_R00299CY_Glc_Ki, global_par_R00299CY_MgADP_Ki, global_par_R00299CY_MgATP_KM, global_par_R00299CY_MgATP_Ki, global_par_R00299CY_kfor, global_par_R00299CY_krev, const_species_cpd_C00002tot_CY/compartment_Cytosol, const_species_cpd_C00008tot_CY/compartment_Cytosol, x(8)/compartment_Cytosol, x(11)/compartment_Cytosol, const_species_cpd_C00092tot_CY/compartment_Cytosol, x(12)/compartment_Cytosol, x(13)/compartment_Cytosol, x(19)/compartment_Cytosol);

% Reaction: id = rn_R06050CY, name = Cytosolic glucan phosphorylase
	reaction_rn_R06050CY=compartment_Cytosol*Function_for_Cytosolic_glucan_phosphorylase(global_par_R06050CY_AG_KM, global_par_R06050CY_G1P_KM, global_par_R06050CY_G1P_Ki, global_par_R06050CY_GlcAG_KM, global_par_R06050CY_GlcAG_Ki, global_par_R06050CY_Keq, global_par_R06050CY_Pi_KM, global_par_R06050CY_kcat, const_species_cpd_C00009tot_CY/compartment_Cytosol, const_species_cpd_C00103tot_CY/compartment_Cytosol, x(10)/compartment_Cytosol, x(9)/compartment_Cytosol, x(18)/compartment_Cytosol);

% Reaction: id = rn_AT2G40840CY, name = DPE2
	reaction_rn_AT2G40840CY=compartment_Cytosol*Function_for_DPE2(global_par_AT2G40840CY_AG_KM, global_par_AT2G40840CY_AG_Ki, global_par_AT2G40840CY_G2_KM, global_par_AT2G40840CY_G2_Ki, global_par_AT2G40840CY_GlcAG_KM, global_par_AT2G40840CY_GlcAG_Ki, global_par_AT2G40840CY_Glc_KM, global_par_AT2G40840CY_Keq, global_par_AT2G40840CY_kcat, x(8)/compartment_Cytosol, x(3)/compartment_Cytosol, x(10)/compartment_Cytosol, x(9)/compartment_Cytosol, x(17)/compartment_Cytosol);

% Reaction: id = rn_R05196CS, name = DPE1
	reaction_rn_R05196CS=compartment_ChloroplastStroma*Function_for_DPE1(global_par_R05196CS_G3_KM, global_par_R05196CS_G3_Ki, global_par_R05196CS_G5_KM, global_par_R05196CS_G5_Ki, global_par_R05196CS_Glc_KM, global_par_R05196CS_Keq, global_par_R05196CS_kcat, x(7)/compartment_ChloroplastStroma, x(5)/compartment_ChloroplastStroma, x(6)/compartment_ChloroplastStroma, x(16)/compartment_ChloroplastStroma);

% Species:   id = cpd_C00080_CY, name = H+, constant	const_species_cpd_C00080_CY=1.579698E-13;

% Species:   id = cpd_C00369Glc_CS, name = Starch Glucosyl unit, constant	const_species_cpd_C00369Glc_CS=3.534E-10;

% Species:   id = cpd_C00002tot_CY, name = ATP pool, constant	const_species_cpd_C00002tot_CY=1.579698E-8;

% Species:   id = cpd_C00008tot_CY, name = ADP pool, constant	const_species_cpd_C00008tot_CY=1.579698E-8;

% Species:   id = cpd_C00009tot_CY, name = Orthophosphate(HPi) pool, constant	const_species_cpd_C00009tot_CY=1.579698E-8;

% Species:   id = cpd_C00103tot_CY, name = G1P pool, constant	const_species_cpd_C00103tot_CY=1.579698E-8;

% Species:   id = cpd_C00092tot_CY, name = G6P pool, constant	const_species_cpd_C00092tot_CY=1.579698E-8;

	xdot=zeros(22,1);
	% rateRule: variable = cpd_C00369db_CS
	xdot(22) = x(15)/compartment_ChloroplastStroma*global_par_ec_3_2_1_68_CS_kcat*(1-1/(1+exp((-100)*(x(2)/compartment_ChloroplastStroma/(x(1)/compartment_ChloroplastStroma*(1-global_par_f_bamylase))-0.3)))+1/(1+exp((-100)*(x(2)/compartment_ChloroplastStroma/(x(1)/compartment_ChloroplastStroma*(1-global_par_f_bamylase))-0.3)))*(1-1.429*(x(2)/compartment_ChloroplastStroma/(x(1)/compartment_ChloroplastStroma*(1-global_par_f_bamylase))-0.3)))*compartment_ChloroplastStroma;
	
% Species:   id = cpd_C00369_CS, name = Starch, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = cpd_C00369db_CS, name = Starch exposed to Beta Amylase due to action of Isoamylase (Starch DB), involved in a rule 	xdot(2) = x(2);
	
% Species:   id = cpd_C00208_CY, name = Maltose, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_tr_TC_2_A_84_1_2) + (-1.0 * reaction_rn_AT2G40840CY);
	
% Species:   id = cpd_C00208_CS, name = Maltose, affected by kineticLaw
	xdot(4) = ( 2923.98 * reaction_rn_R02112CS_G2) + ( 2923.98 * reaction_rn_R02112CS_G5) + (-1.0 * reaction_tr_TC_2_A_84_1_2);
	
% Species:   id = cpd_C01835_CS, name = Maltotriose, affected by kineticLaw
	xdot(5) = ( 1984.13 * reaction_rn_R02112CS_G3) + ( 1984.13 * reaction_rn_R02112CS_G5) + (-2.0 * reaction_rn_R05196CS);
	
% Species:   id = cpd_G00343_CS, name = Maltopentaose, affected by kineticLaw
	xdot(6) = (-1207.73 * reaction_rn_R02112CS_G5) + ( 1.0 * reaction_rn_R05196CS);
	
% Species:   id = cpd_C00031_CS, name = (D)-Glucose, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_tr_TC_2_A_1_1_17) + ( 1.0 * reaction_rn_R05196CS);
	
% Species:   id = cpd_C00031_CY, name = (D)-Glucose, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_tr_TC_2_A_1_1_17) + (-1.0 * reaction_rn_R00299CY) + ( 1.0 * reaction_rn_AT2G40840CY);
	
% Species:   id = cpd_C00569_CY, name = Arabinogalactan (AG), affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_rn_R06050CY) + (-1.0 * reaction_rn_AT2G40840CY);
	
% Species:   id = cpd_C00569Glc_CY, name = Glucosyl Arabinogalactan (GlcAG), affected by kineticLaw
	xdot(10) = (-1.0 * reaction_rn_R06050CY) + ( 1.0 * reaction_rn_AT2G40840CY);
	
% Species:   id = cpd_C00051_CY, name = Glutathione (reduced)
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = cpd_C00660tot_CY, name = (D)-Glucose-1,6-bisphosphate pool
% Warning species is not changed by either rules or reactions
	xdot(12) = ;
	
% Species:   id = cpd_C03339tot_CY, name = 2,3-Bisphosphoglycerate pool
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = ec_3_2_1_2_CS, name = Beta amylase
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = ec_3_2_1_68_CS, name = Isoamylase
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = ec_2_4_1_25_CS, name = Disproportionating enzyme 1(DPE1)
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = ec_2_4_1_25_CY, name = Disproportionating enzyme 2(DPE2)
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = ec_2_4_1_1_CY, name = Cytosolic Glucan phosphorylase
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = ec_2_7_1_1_CY, name = Hexokinase
% Warning species is not changed by either rules or reactions
	xdot(19) = ;
	
% Species:   id = tc_2_A_84_1_2_CIMS, name = Maltose exporter (MEX)
% Warning species is not changed by either rules or reactions
	xdot(20) = ;
	
% Species:   id = tc_2_A_1_1_17_CIMS, name = Glucose transporter (pGlcT)
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
end

function z=Function_for_Maltose_formation_from_Starch(C00208_MW,R02112CS_G2C_KM,R02112CS_Gn_KM,R02112CS_Gn_kcat,R02112CS_Keq,conv_gm_umole,cpd_C00208_CS,cpd_C00369_CS,cpd_C00369db_CS,ec_3_2_1_2_CS,f_G2,f_bamylase), z=(R02112CS_Gn_kcat*ec_3_2_1_2_CS*(f_G2*(f_bamylase*cpd_C00369_CS+cpd_C00369db_CS)-(cpd_C00208_CS*C00208_MW)^2/R02112CS_Keq)/(conv_gm_umole*(f_G2*(f_bamylase*cpd_C00369_CS+cpd_C00369db_CS)+R02112CS_Gn_KM*(1+(cpd_C00208_CS*C00208_MW)^2/R02112CS_G2C_KM))));end

function z=Function_for_Maltopentaose_degradation(G00343_MW,R02112CS_G5_KM,R02112CS_G5_kcat,conv_gm_umole,cpd_G00343_CS,ec_3_2_1_2_CS), z=(R02112CS_G5_kcat*ec_3_2_1_2_CS*cpd_G00343_CS*G00343_MW/(conv_gm_umole*(cpd_G00343_CS*G00343_MW+R02112CS_G5_KM)));end

function z=Function_for_Plastidic_Glucose_transporter(ChloroplastStroma,TC_2_A_1_1_17_KM,TC_2_A_1_1_17_kcat,cpd_C00031_CS,tc_2_A_1_1_17_CIMS), z=(ChloroplastStroma*TC_2_A_1_1_17_kcat*tc_2_A_1_1_17_CIMS*cpd_C00031_CS/(TC_2_A_1_1_17_KM+cpd_C00031_CS));end

function z=Function_for_Cytosolic_glucan_phosphorylase(R06050CY_AG_KM,R06050CY_G1P_KM,R06050CY_G1P_Ki,R06050CY_GlcAG_KM,R06050CY_GlcAG_Ki,R06050CY_Keq,R06050CY_Pi_KM,R06050CY_kcat,cpd_C00009tot_CY,cpd_C00103tot_CY,cpd_C00569Glc_CY,cpd_C00569_CY,ec_2_4_1_1_CY), z=(R06050CY_kcat*ec_2_4_1_1_CY*(cpd_C00569Glc_CY*cpd_C00009tot_CY-cpd_C00103tot_CY*cpd_C00569_CY/R06050CY_Keq)/(R06050CY_GlcAG_Ki*R06050CY_Pi_KM+R06050CY_Pi_KM*cpd_C00569Glc_CY+R06050CY_GlcAG_KM*cpd_C00009tot_CY+cpd_C00569Glc_CY*cpd_C00009tot_CY+R06050CY_GlcAG_Ki*R06050CY_Pi_KM/(R06050CY_G1P_Ki*R06050CY_AG_KM)*(R06050CY_AG_KM*cpd_C00103tot_CY+R06050CY_G1P_KM*cpd_C00569_CY+cpd_C00103tot_CY*cpd_C00569_CY)));end

function z=Function_for_Maltose_exporter(ChloroplastStroma,TC_2_A_84_1_2_KM,TC_2_A_84_1_2_kcat,cpd_C00208_CS,tc_2_A_84_1_2_CIMS), z=(ChloroplastStroma*TC_2_A_84_1_2_kcat*tc_2_A_84_1_2_CIMS*cpd_C00208_CS/(TC_2_A_84_1_2_KM+cpd_C00208_CS));end

function z=Function_for_Hexokinase(R00299CY_BPG_Kip,R00299CY_G16P_Kip,R00299CY_G6P_KM,R00299CY_G6P_Ki,R00299CY_G6P_Kip,R00299CY_GSH_Kip,R00299CY_Glc_Ki,R00299CY_MgADP_Ki,R00299CY_MgATP_KM,R00299CY_MgATP_Ki,R00299CY_kfor,R00299CY_krev,cpd_C00002tot_CY,cpd_C00008tot_CY,cpd_C00031_CY,cpd_C00051_CY,cpd_C00092tot_CY,cpd_C00660tot_CY,cpd_C03339tot_CY,ec_2_7_1_1_CY), z=(ec_2_7_1_1_CY*(R00299CY_kfor*cpd_C00002tot_CY*cpd_C00031_CY/(R00299CY_Glc_Ki*R00299CY_MgATP_KM)-R00299CY_krev*cpd_C00092tot_CY*cpd_C00008tot_CY/(R00299CY_MgADP_Ki*R00299CY_G6P_KM))/(1+cpd_C00002tot_CY/R00299CY_MgATP_Ki+cpd_C00031_CY/R00299CY_Glc_Ki*(1+cpd_C00092tot_CY/R00299CY_G6P_Kip+cpd_C00660tot_CY/R00299CY_G16P_Kip+cpd_C03339tot_CY/R00299CY_BPG_Kip+cpd_C00051_CY/R00299CY_GSH_Kip)+cpd_C00002tot_CY*cpd_C00031_CY/(R00299CY_Glc_Ki*R00299CY_MgATP_KM)+cpd_C00092tot_CY/R00299CY_G6P_Ki+cpd_C00008tot_CY/R00299CY_MgADP_Ki+cpd_C00092tot_CY*cpd_C00008tot_CY/(R00299CY_MgADP_Ki*R00299CY_G6P_KM)));end

function z=Function_for_DPE1(R05196CS_G3_KM,R05196CS_G3_Ki,R05196CS_G5_KM,R05196CS_G5_Ki,R05196CS_Glc_KM,R05196CS_Keq,R05196CS_kcat,cpd_C00031_CS,cpd_C01835_CS,cpd_G00343_CS,ec_2_4_1_25_CS), z=(R05196CS_kcat*ec_2_4_1_25_CS*(cpd_C01835_CS^2-cpd_C00031_CS*cpd_G00343_CS/R05196CS_Keq)/(R05196CS_G3_KM*cpd_C01835_CS+cpd_C01835_CS^2+R05196CS_G3_KM*R05196CS_G3_Ki/(R05196CS_Glc_KM*R05196CS_G5_Ki)*(R05196CS_G5_KM*cpd_C00031_CS*(1+cpd_C01835_CS/R05196CS_G3_Ki)+R05196CS_Glc_KM*cpd_G00343_CS*(1+cpd_C01835_CS/R05196CS_G3_Ki)+cpd_C00031_CS*cpd_G00343_CS)));end

function z=Function_for_Maltotriose_formation_from_Starch(R02112CS_Gn_KM,R02112CS_Gn_kcat,conv_gm_umole,cpd_C00369_CS,cpd_C00369db_CS,ec_3_2_1_2_CS,f_G3,f_bamylase), z=(R02112CS_Gn_kcat*ec_3_2_1_2_CS*f_G3*(f_bamylase*cpd_C00369_CS+cpd_C00369db_CS)/(conv_gm_umole*(f_G3*(f_bamylase*cpd_C00369_CS+cpd_C00369db_CS)+R02112CS_Gn_KM)));end

function z=Function_for_DPE2(AT2G40840CY_AG_KM,AT2G40840CY_AG_Ki,AT2G40840CY_G2_KM,AT2G40840CY_G2_Ki,AT2G40840CY_GlcAG_KM,AT2G40840CY_GlcAG_Ki,AT2G40840CY_Glc_KM,AT2G40840CY_Keq,AT2G40840CY_kcat,cpd_C00031_CY,cpd_C00208_CY,cpd_C00569Glc_CY,cpd_C00569_CY,ec_2_4_1_25_CY), z=(AT2G40840CY_kcat*ec_2_4_1_25_CY*(cpd_C00208_CY*cpd_C00569_CY-cpd_C00031_CY*cpd_C00569Glc_CY/AT2G40840CY_Keq)/(AT2G40840CY_AG_KM*cpd_C00208_CY+AT2G40840CY_G2_KM*cpd_C00569_CY+cpd_C00208_CY*cpd_C00569_CY+AT2G40840CY_G2_KM*AT2G40840CY_AG_Ki/(AT2G40840CY_Glc_KM*AT2G40840CY_GlcAG_Ki)*(AT2G40840CY_GlcAG_KM*cpd_C00031_CY*(1+cpd_C00208_CY/AT2G40840CY_G2_Ki)+AT2G40840CY_Glc_KM*cpd_C00569Glc_CY*(1+cpd_C00569_CY/AT2G40840CY_AG_Ki)+cpd_C00031_CY*cpd_C00569Glc_CY)));end

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


