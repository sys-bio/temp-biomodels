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
% Model name = Nag2011_ChloroplasticStarchDegradation
%
% is http://identifiers.org/biomodels.db/MODEL1106030000
% is http://identifiers.org/biomodels.db/BIOMD0000000353
% isDescribedBy http://identifiers.org/pubmed/21682905
% isDerivedFrom http://identifiers.org/pubmed/18581371
%


function main()
%Initial conditions vector
	x0=zeros(29,1);
	x0(29) = 0.0;
	x0(1) = 0.1;
	x0(2) = 0;
	x0(3) = 1000.0;
	x0(4) = 0.0;
	x0(5) = 10.0;
	x0(6) = 10.0;
	x0(7) = 100.0;
	x0(8) = 1000.0;
	x0(9) = 10.0;
	x0(10) = 10.0;
	x0(11) = 10000.0;
	x0(12) = 10000.0;
	x0(13) = 10000.0;
	x0(14) = 10000.0;
	x0(15) = 10000.0;
	x0(16) = 1000.0;
	x0(17) = 10000.0;
	x0(18) = 10000.0;
	x0(19) = 10000.0;
	x0(20) = 10000.0;
	x0(21) = 0.00783;
	x0(22) = 0.0118;
	x0(23) = 2.0;
	x0(24) = 2.0;
	x0(25) = 2.0;
	x0(26) = 10.0;
	x0(27) = 2.0;
	x0(28) = 20.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=3.534E-12;
% Compartment: id = Cytosol, name = Cytosol
% Warning compartment Cytosol has no rule and is not constant
% Compartment: id = Chloroplast, name = Chloroplast
% Warning compartment Chloroplast has no rule and is not constant
% Compartment: id = ChloroplastOuterMembrane, name = Chloroplast Outer Membrane, constant
	compartment_ChloroplastOuterMembrane=1000.0;
% Compartment: id = ChloroplastIntermembraneSpace, name = Chloroplast Intermembrane Space, constant
	compartment_ChloroplastIntermembraneSpace=1.0;
% Compartment: id = ChloroplastInnerMembrane, name = Chloroplast Inner Membrane, constant
	compartment_ChloroplastInnerMembrane=1000.0;
% Compartment: id = ChloroplastStroma, name = Chloroplast Stroma, constant
	compartment_ChloroplastStroma=1.0;
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
% assignmentRule: variable = R00299CY_krev
	global_par_R00299CY_krev=global_par_R00299CY_kfor*global_par_R00299CY_MgADP_Ki*global_par_R00299CY_G6P_KM/(global_par_R00299CY_Keq*global_par_R00299CY_Glc_Ki*global_par_R00299CY_MgATP_KM);
% assignmentRule: variable = cpd_C00369_CS
	x(2)=x(3)*global_par_C00369_MW/global_par_N_Glc_Starch;
% rateRule: variable = cpd_C00369db_CS
x(4) = x(29);

% Reaction: id = rn_R02112CS_G2, name = Maltose formation from Starch
	reaction_rn_R02112CS_G2=compartment_ChloroplastStroma*global_par_R02112CS_Gn_kcat*x(21)*(global_par_f_G2*(global_par_f_bamylase*x(2)+x(4))-(x(6)*global_par_C00208_MW)^2/global_par_R02112CS_Keq)/(global_par_conv_gm_umole*(global_par_f_G2*(global_par_f_bamylase*x(2)+x(4))+global_par_R02112CS_Gn_KM*(1+(x(6)*global_par_C00208_MW)^2/global_par_R02112CS_G2C_KM)));

% Reaction: id = rn_R02112CS_G3, name = Maltotriose formation from Starch
	reaction_rn_R02112CS_G3=compartment_ChloroplastStroma*global_par_R02112CS_Gn_kcat*x(21)*global_par_f_G3*(global_par_f_bamylase*x(2)+x(4))/(global_par_conv_gm_umole*(global_par_f_G3*(global_par_f_bamylase*x(2)+x(4))+global_par_R02112CS_Gn_KM));

% Reaction: id = rn_R02112CS_G5, name = Maltopentaose degradation
	reaction_rn_R02112CS_G5=compartment_ChloroplastStroma*global_par_R02112CS_G5_kcat*x(21)*x(8)*global_par_G00343_MW/(global_par_conv_gm_umole*(x(8)*global_par_G00343_MW+global_par_R02112CS_G5_KM));

% Reaction: id = tr_TC_2_A_84_1_2, name = Maltose exporter
	reaction_tr_TC_2_A_84_1_2=compartment_ChloroplastStroma*global_par_TC_2_A_84_1_2_kcat*x(27)*x(6)/(global_par_TC_2_A_84_1_2_KM+x(6));

% Reaction: id = tr_TC_2_A_1_1_17, name = Plastidic Glucose transporter
	reaction_tr_TC_2_A_1_1_17=compartment_ChloroplastStroma*global_par_TC_2_A_1_1_17_kcat*x(28)*x(9)/(global_par_TC_2_A_1_1_17_KM+x(9));

% Reaction: id = rn_R00299CY, name = Hexokinase
	reaction_rn_R00299CY=x(26)*compartment_Cytosol*(global_par_R00299CY_kfor*x(13)*x(10)/(global_par_R00299CY_Glc_Ki*global_par_R00299CY_MgATP_KM)-global_par_R00299CY_krev*x(20)*x(14)/(global_par_R00299CY_MgADP_Ki*global_par_R00299CY_G6P_KM))/(1+x(13)/global_par_R00299CY_MgATP_Ki+x(10)/global_par_R00299CY_Glc_Ki*(1+x(20)/global_par_R00299CY_G6P_Kip+x(17)/global_par_R00299CY_G16P_Kip+x(18)/global_par_R00299CY_BPG_Kip+x(16)/global_par_R00299CY_GSH_Kip)+x(13)*x(10)/(global_par_R00299CY_Glc_Ki*global_par_R00299CY_MgATP_KM)+x(20)/global_par_R00299CY_G6P_Ki+x(14)/global_par_R00299CY_MgADP_Ki+x(20)*x(14)/(global_par_R00299CY_MgADP_Ki*global_par_R00299CY_G6P_KM));

% Reaction: id = rn_R06050CY, name = Cytosolic glucan phosphorylase
	reaction_rn_R06050CY=compartment_Cytosol*global_par_R06050CY_kcat*x(25)*(x(12)*x(15)-x(19)*x(11)/global_par_R06050CY_Keq)/(global_par_R06050CY_GlcAG_Ki*global_par_R06050CY_Pi_KM+global_par_R06050CY_Pi_KM*x(12)+global_par_R06050CY_GlcAG_KM*x(15)+x(12)*x(15)+global_par_R06050CY_GlcAG_Ki*global_par_R06050CY_Pi_KM/(global_par_R06050CY_G1P_Ki*global_par_R06050CY_AG_KM)*(global_par_R06050CY_AG_KM*x(19)+global_par_R06050CY_G1P_KM*x(11)+x(19)*x(11)));

% Reaction: id = rn_AT2G40840CY, name = DPE2
	reaction_rn_AT2G40840CY=compartment_Cytosol*global_par_AT2G40840CY_kcat*x(24)*(x(5)*x(11)-x(10)*x(12)/global_par_AT2G40840CY_Keq)/(global_par_AT2G40840CY_AG_KM*x(5)+global_par_AT2G40840CY_G2_KM*x(11)+x(5)*x(11)+global_par_AT2G40840CY_G2_KM*global_par_AT2G40840CY_AG_Ki/(global_par_AT2G40840CY_Glc_KM*global_par_AT2G40840CY_GlcAG_Ki)*(global_par_AT2G40840CY_GlcAG_KM*x(10)*(1+x(5)/global_par_AT2G40840CY_G2_Ki)+global_par_AT2G40840CY_Glc_KM*x(12)*(1+x(11)/global_par_AT2G40840CY_AG_Ki)+x(10)*x(12)));

% Reaction: id = rn_R05196CS, name = DPE1
	reaction_rn_R05196CS=compartment_ChloroplastStroma*global_par_R05196CS_kcat*x(23)*(x(7)^2-x(9)*x(8)/global_par_R05196CS_Keq)/(global_par_R05196CS_G3_KM*x(7)+x(7)^2+global_par_R05196CS_G3_KM*global_par_R05196CS_G3_Ki/(global_par_R05196CS_Glc_KM*global_par_R05196CS_G5_Ki)*(global_par_R05196CS_G5_KM*x(9)*(1+x(7)/global_par_R05196CS_G3_Ki)+global_par_R05196CS_Glc_KM*x(8)*(1+x(7)/global_par_R05196CS_G3_Ki)+x(9)*x(8)));

	xdot=zeros(29,1);
	% rateRule: variable = cpd_C00369db_CS
	xdot(29) = x(22)*global_par_ec_3_2_1_68_CS_kcat*(1-1/(1+exp(-100*(x(4)/(x(2)*(1-global_par_f_bamylase))-0.3)))+1/(1+exp(-100*(x(4)/(x(2)*(1-global_par_f_bamylase))-0.3)))*(1-1.429*(x(4)/(x(2)*(1-global_par_f_bamylase))-0.3)));
	
% Species:   id = cpd_C00080_CY, name = H+
%WARNING speciesID: cpd_C00080_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = cpd_C00369_CS, name = Starch, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = cpd_C00369Glc_CS, name = Starch Glucosyl unit
%WARNING speciesID: cpd_C00369Glc_CS, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = cpd_C00369db_CS, name = Starch exposed to Beta Amylase due to action of Isoamylase (Starch DB), defined in a rule 	xdot(4) = x(4);
	
% Species:   id = cpd_C00208_CY, name = Maltose, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*(( 1.0 * reaction_tr_TC_2_A_84_1_2) + (-1.0 * reaction_rn_AT2G40840CY));
	
% Species:   id = cpd_C00208_CS, name = Maltose, affected by kineticLaw
	xdot(6) = (1/(compartment_ChloroplastStroma))*(( 2923.98 * reaction_rn_R02112CS_G2) + ( 2923.98 * reaction_rn_R02112CS_G5) + (-1.0 * reaction_tr_TC_2_A_84_1_2));
	
% Species:   id = cpd_C01835_CS, name = Maltotriose, affected by kineticLaw
	xdot(7) = (1/(compartment_ChloroplastStroma))*(( 1984.13 * reaction_rn_R02112CS_G3) + ( 1984.13 * reaction_rn_R02112CS_G5) + (-2.0 * reaction_rn_R05196CS));
	
% Species:   id = cpd_G00343_CS, name = Maltopentaose, affected by kineticLaw
	xdot(8) = (1/(compartment_ChloroplastStroma))*((-1207.73 * reaction_rn_R02112CS_G5) + ( 1.0 * reaction_rn_R05196CS));
	
% Species:   id = cpd_C00031_CS, name = (D)-Glucose, affected by kineticLaw
	xdot(9) = (1/(compartment_ChloroplastStroma))*((-1.0 * reaction_tr_TC_2_A_1_1_17) + ( 1.0 * reaction_rn_R05196CS));
	
% Species:   id = cpd_C00031_CY, name = (D)-Glucose, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytosol))*(( 1.0 * reaction_tr_TC_2_A_1_1_17) + (-1.0 * reaction_rn_R00299CY) + ( 1.0 * reaction_rn_AT2G40840CY));
	
% Species:   id = cpd_C00569_CY, name = Arabinogalactan (AG), affected by kineticLaw
	xdot(11) = (1/(compartment_Cytosol))*(( 1.0 * reaction_rn_R06050CY) + (-1.0 * reaction_rn_AT2G40840CY));
	
% Species:   id = cpd_C00569Glc_CY, name = Glucosyl Arabinogalactan (GlcAG), affected by kineticLaw
	xdot(12) = (1/(compartment_Cytosol))*((-1.0 * reaction_rn_R06050CY) + ( 1.0 * reaction_rn_AT2G40840CY));
	
% Species:   id = cpd_C00002tot_CY, name = ATP pool
%WARNING speciesID: cpd_C00002tot_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = cpd_C00008tot_CY, name = ADP pool
%WARNING speciesID: cpd_C00008tot_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = cpd_C00009tot_CY, name = Orthophosphate(HPi) pool
%WARNING speciesID: cpd_C00009tot_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = cpd_C00051_CY, name = Glutathione (reduced)
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = cpd_C00660tot_CY, name = (D)-Glucose-1,6-bisphosphate pool
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = cpd_C03339tot_CY, name = 2,3-Bisphosphoglycerate pool
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = cpd_C00103tot_CY, name = G1P pool
%WARNING speciesID: cpd_C00103tot_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = cpd_C00092tot_CY, name = G6P pool
%WARNING speciesID: cpd_C00092tot_CY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = ec_3_2_1_2_CS, name = Beta amylase
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = ec_3_2_1_68_CS, name = Isoamylase
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
	
% Species:   id = ec_2_4_1_25_CS, name = Disproportionating enzyme 1(DPE1)
% Warning species is not changed by either rules or reactions
	xdot(23) = ;
	
% Species:   id = ec_2_4_1_25_CY, name = Disproportionating enzyme 2(DPE2)
% Warning species is not changed by either rules or reactions
	xdot(24) = ;
	
% Species:   id = ec_2_4_1_1_CY, name = Cytosolic Glucan phosphorylase
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = ec_2_7_1_1_CY, name = Hexokinase
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
	
% Species:   id = tc_2_A_84_1_2_CIMS, name = Maltose exporter (MEX)
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = tc_2_A_1_1_17_CIMS, name = Glucose transporter (pGlcT)
% Warning species is not changed by either rules or reactions
	xdot(28) = ;
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


