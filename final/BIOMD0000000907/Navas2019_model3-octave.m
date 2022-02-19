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
% Model name = HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3
%
% isDescribedBy http://identifiers.org/pubmed/30923191
% is http://identifiers.org/biomodels.db/MODEL2001030001
% is http://identifiers.org/biomodels.db/BIOMD0000000907
%


function main()
%Initial conditions vector
	x0=zeros(34,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 9.99999999999923;
	x0(4) = 0.0;
	x0(5) = 2.22472108942362E-4;
	x0(6) = 1.0;
	x0(7) = 0.0;
	x0(8) = 9.99999995282768;
	x0(9) = 0.0;
	x0(10) = 1.00694981176419E-5;
	x0(11) = 0.156263696143872;
	x0(12) = 0.00105018218209192;
	x0(13) = 0.0;
	x0(14) = 2.67747019439286;
	x0(15) = 0.0119987114529515;
	x0(16) = 0.00429916212534625;
	x0(17) = 0.136209619192415;
	x0(18) = 0.00138421239514132;
	x0(19) = 0.0;
	x0(20) = 0.133371763481678;
	x0(21) = 0.00128923431498053;
	x0(22) = 0.00273944420552178;
	x0(23) = 0.0;
	x0(24) = 3.41854951892791;
	x0(25) = 0.40762526043637;
	x0(26) = 0.241624144113638;
	x0(27) = 0.0125245862006138;
	x0(28) = 0.0325584179841191;
	x0(29) = 0.0140018638192642;
	x0(30) = 0.54269846683442;
	x0(31) = 0.406274357698408;
	x0(32) = 0.110951783861926;
	x0(33) = 0.20474669864908;
	x0(34) = 0.221898367427758;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  a1_X10_0, name = a1_X10_0
	global_par_a1_X10_0=1.04880466121365E-5;
% Parameter:   id =  a1_X11_0, name = a1_X11_0
	global_par_a1_X11_0=0.106711200647841;
% Parameter:   id =  a1_X2_0, name = a1_X2_0
	global_par_a1_X2_0=0.0014976539751451;
% Parameter:   id =  a1_X8_0, name = a1_X8_0
	global_par_a1_X8_0=0.584037889511307;
% Parameter:   id =  a2_X10_0, name = a2_X10_0
	global_par_a2_X10_0=0.196797907822297;
% Parameter:   id =  a2_X11_0, name = a2_X11_0
	global_par_a2_X11_0=1.00000017501247E-5;
% Parameter:   id =  a2_X8_0, name = a2_X8_0
	global_par_a2_X8_0=0.210752496177883;
% Parameter:   id =  a2_X9_0, name = a2_X9_0
	global_par_a2_X9_0=0.0216220006084923;
% Parameter:   id =  a_X10_1, name = a_X10_1
	global_par_a_X10_1=1.00000000000206E-5;
% Parameter:   id =  a_X10_2, name = a_X10_2
	global_par_a_X10_2=9.99999999991509;
% Parameter:   id =  a_X12_0, name = a_X12_0
	global_par_a_X12_0=0.198339568602839;
% Parameter:   id =  a_X4_0, name = a_X4_0
	global_par_a_X4_0=1.11095303548777E-4;
% Parameter:   id =  a_X5_0, name = a_X5_0
	global_par_a_X5_0=9.99999969718096;
% Parameter:   id =  a_X6_Y2, name = a_X6_Y2
	global_par_a_X6_Y2=1.00000114154884E-5;
% Parameter:   id =  b_X10_1, name = b_X10_1
	global_par_b_X10_1=0.00263737900398121;
% Parameter:   id =  b_X10_2, name = b_X10_2
	global_par_b_X10_2=0.011959597261903;
% Parameter:   id =  b_X11_1, name = b_X11_1
	global_par_b_X11_1=0.182804161260864;
% Parameter:   id =  b_X11_2, name = b_X11_2
	global_par_b_X11_2=0.224858434757367;
% Parameter:   id =  b_X12_1, name = b_X12_1
	global_par_b_X12_1=0.0102134541960737;
% Parameter:   id =  b_X2_2, name = b_X2_2
	global_par_b_X2_2=0.106214679132925;
% Parameter:   id =  b_X4_1, name = b_X4_1
	global_par_b_X4_1=1.08358100911056E-5;
% Parameter:   id =  b_X5_1, name = b_X5_1
	global_par_b_X5_1=0.077833118821602;
% Parameter:   id =  b_X8_1, name = b_X8_1
	global_par_b_X8_1=0.0462909157235242;
% Parameter:   id =  b_X8_2, name = b_X8_2
	global_par_b_X8_2=0.0100376101872374;
% Parameter:   id =  b_X9_2, name = b_X9_2
	global_par_b_X9_2=0.0369559223359753;
% Parameter:   id =  init_X10_0_MCF7_Wm, name = init_X10_0_MCF7_Wm
	global_par_init_X10_0_MCF7_Wm=0.00429916212534625;
% Parameter:   id =  init_X10_1_MCF7_Wm, name = init_X10_1_MCF7_Wm
	global_par_init_X10_1_MCF7_Wm=0.136209619192415;
% Parameter:   id =  init_X10_2_MCF7_Wm, name = init_X10_2_MCF7_Wm
	global_par_init_X10_2_MCF7_Wm=0.00138421239514132;
% Parameter:   id =  init_X11_0_MCF7_Wm, name = init_X11_0_MCF7_Wm
	global_par_init_X11_0_MCF7_Wm=0.133371763481678;
% Parameter:   id =  init_X11_1_MCF7_Wm, name = init_X11_1_MCF7_Wm
	global_par_init_X11_1_MCF7_Wm=0.00128923431498053;
% Parameter:   id =  init_X11_2_MCF7_Wm, name = init_X11_2_MCF7_Wm
	global_par_init_X11_2_MCF7_Wm=0.00273944420552178;
% Parameter:   id =  init_X12_0_MCF7_Wm, name = init_X12_0_MCF7_Wm
	global_par_init_X12_0_MCF7_Wm=3.41854951892791;
% Parameter:   id =  init_X12_1_MCF7_Wm, name = init_X12_1_MCF7_Wm
	global_par_init_X12_1_MCF7_Wm=0.40762526043637;
% Parameter:   id =  init_X2_0_MCF7_Wm, name = init_X2_0_MCF7_Wm
	global_par_init_X2_0_MCF7_Wm=9.99999999999923;
% Parameter:   id =  init_X2_2_MCF7_Wm, name = init_X2_2_MCF7_Wm
	global_par_init_X2_2_MCF7_Wm=2.22472108942362E-4;
% Parameter:   id =  init_X5_0_MCF7_Wm, name = init_X5_0_MCF7_Wm
	global_par_init_X5_0_MCF7_Wm=9.99999995282768;
% Parameter:   id =  init_X8_0_MCF7_Wm, name = init_X8_0_MCF7_Wm
	global_par_init_X8_0_MCF7_Wm=1.00694981176419E-5;
% Parameter:   id =  init_X8_1_MCF7_Ars, name = init_X8_1_MCF7_Ars
	global_par_init_X8_1_MCF7_Ars=0.156263696377428;
% Parameter:   id =  init_X8_1_MCF7_WmFr, name = init_X8_1_MCF7_WmFr
	global_par_init_X8_1_MCF7_WmFr=0.999999998505372;
% Parameter:   id =  init_X8_2_MCF7_Ars, name = init_X8_2_MCF7_Ars
	global_par_init_X8_2_MCF7_Ars=0.0583424217689063;
% Parameter:   id =  init_X8_2_MCF7_WmFr, name = init_X8_2_MCF7_WmFr
	global_par_init_X8_2_MCF7_WmFr=0.0180003186403828;
% Parameter:   id =  init_X9_0_MCF7_Wm, name = init_X9_0_MCF7_Wm
	global_par_init_X9_0_MCF7_Wm=2.67747019439286;
% Parameter:   id =  init_X9_2_MCF7_Wm, name = init_X9_2_MCF7_Wm
	global_par_init_X9_2_MCF7_Wm=0.0119987114529515;
% Parameter:   id =  k_stress_1, name = k_stress_1
	global_par_k_stress_1=9.99999999995476;
% Parameter:   id =  k_stress_2, name = k_stress_2
	global_par_k_stress_2=0.00999999977724154;
% Parameter:   id =  Y1, name = Y1
	global_par_Y1=0.0;
% Parameter:   id =  Y2, name = Y2
	global_par_Y2=1.0;
% Parameter:   id =  Y3, name = Y3
	global_par_Y3=1.0;
% Parameter:   id =  Y4, name = Y4
	global_par_Y4=1.0;
% Parameter:   id =  Y5, name = Y5
	global_par_Y5=0.0;
% Parameter:   id =  scale_Akt_pT308, name = scale_Akt_pT308
	global_par_scale_Akt_pT308=1.54625898449999;
% Parameter:   id =  scale_Akt_pT473, name = scale_Akt_pT473
	global_par_scale_Akt_pT473=11.9261080736157;
% Parameter:   id =  scale_TSC1_TSC2_pT1462, name = scale_TSC1_TSC2_pT1462
	global_par_scale_TSC1_TSC2_pT1462=2.71349287061239;
% Parameter:   id =  scale_PRAS40_pT246, name = scale_PRAS40_pT246
	global_par_scale_PRAS40_pT246=10.1154012696402;
% Parameter:   id =  scale_PRAS40_pS183, name = scale_PRAS40_pS183
	global_par_scale_PRAS40_pS183=3.98428884870299;
% Parameter:   id =  scale_fourEBP1_pT37_46, name = scale_fourEBP1_pT37_46
	global_par_scale_fourEBP1_pT37_46=0.996685919963556;
% Parameter:   id =  scale_p70_S6K_pT389, name = scale_p70_S6K_pT389
	global_par_scale_p70_S6K_pT389=86.0602161862265;
% Parameter:   id =  scale_p70_S6K_pT229, name = scale_p70_S6K_pT229
	global_par_scale_p70_S6K_pT229=74.7402331598434;
% Parameter:   id =  scale_IRS1_pS636_639, name = scale_IRS1_pS636-639
	global_par_scale_IRS1_pS636_639=997.421063173575;
% Parameter:   id =  ModelValue_109, name = Initial for scale_Akt_pT308
	global_par_ModelValue_109=1.54625898449999;
% Parameter:   id =  ModelValue_110, name = Initial for scale_Akt_pT473
	global_par_ModelValue_110=11.9261080736157;
% Parameter:   id =  ModelValue_117, name = Initial for scale_IRS1_pS636-639
	global_par_ModelValue_117=997.421063173575;
% Parameter:   id =  ModelValue_113, name = Initial for scale_PRAS40_pS183
	global_par_ModelValue_113=3.98428884870299;
% Parameter:   id =  ModelValue_112, name = Initial for scale_PRAS40_pT246
	global_par_ModelValue_112=10.1154012696402;
% Parameter:   id =  ModelValue_111, name = Initial for scale_TSC1_TSC2_pT1462
	global_par_ModelValue_111=2.71349287061239;
% Parameter:   id =  ModelValue_114, name = Initial for scale_fourEBP1_pT37_46
	global_par_ModelValue_114=0.996685919963556;
% Parameter:   id =  ModelValue_116, name = Initial for scale_p70_S6K_pT229
	global_par_ModelValue_116=74.7402331598434;
% Parameter:   id =  ModelValue_115, name = Initial for scale_p70_S6K_pT389
	global_par_ModelValue_115=86.0602161862265;
% assignmentRule: variable = TSC1_TSC2_pT1462_obs
	x(28)=global_par_ModelValue_111*x(15);
% assignmentRule: variable = Akt_pS473_obs
	x(27)=global_par_ModelValue_110*x(12)+global_par_ModelValue_110*x(13);
% assignmentRule: variable = Akt_pT308_obs
	x(26)=global_par_ModelValue_109*x(11)+global_par_ModelValue_109*x(13);
% assignmentRule: variable = IRS1_pS636_639_obs
	x(34)=global_par_ModelValue_117*x(5);
% assignmentRule: variable = p70_S6K_pT229_obs
	x(33)=global_par_ModelValue_116*x(22)+global_par_ModelValue_116*x(23);
% assignmentRule: variable = p70_S6K_pT389_obs
	x(32)=global_par_ModelValue_115*x(21)+global_par_ModelValue_115*x(23);
% assignmentRule: variable = fourEBP1_pT37_46_obs
	x(31)=global_par_ModelValue_114*x(25);
% assignmentRule: variable = PRAS40_pT246_obs
	x(29)=global_par_ModelValue_112*x(18)+global_par_ModelValue_112*x(19);
% assignmentRule: variable = PRAS40_pS183_obs
	x(30)=global_par_ModelValue_113*x(17)+global_par_ModelValue_113*x(19);

% Reaction: id = reaction1, name = reaction1
	reaction_reaction1=compartment_default*Function_for_reaction1_0(x(1), x(2), global_par_Y1, compartment_default);

% Reaction: id = reaction2, name = reaction2
	reaction_reaction2=compartment_default*Function_for_reaction2_0(x(1), x(2), global_par_Y1, compartment_default);

% Reaction: id = reaction3, name = reaction3
	reaction_reaction3=compartment_default*Function_for_reaction3_0(x(21), x(23), x(2), x(3), x(5), global_par_a1_X2_0, global_par_b_X2_2, compartment_default);

% Reaction: id = reaction4, name = reaction4
	reaction_reaction4=compartment_default*Function_for_reaction4_0(x(21), x(23), x(2), x(3), x(4), compartment_default);

% Reaction: id = reaction5, name = reaction5
	reaction_reaction5=compartment_default*Function_for_reaction5_0(x(21), x(23), x(3), x(4), x(5), global_par_a1_X2_0, global_par_b_X2_2, compartment_default);

% Reaction: id = reaction6, name = reaction6
	reaction_reaction6=compartment_default*Function_for_reaction6_0(x(4), x(6), x(7), global_par_Y3, global_par_Y4, global_par_a_X4_0, global_par_b_X4_1, compartment_default, global_par_k_stress_1);

% Reaction: id = reaction7, name = reaction7
	reaction_reaction7=compartment_default*Function_for_reaction7_0(x(4), x(6), x(7), global_par_Y3, global_par_Y4, global_par_a_X4_0, global_par_b_X4_1, compartment_default, global_par_k_stress_1);

% Reaction: id = reaction8, name = reaction8
	reaction_reaction8=compartment_default*Function_for_reaction8_0(x(7), x(8), x(9), global_par_a_X5_0, global_par_b_X5_1, compartment_default);

% Reaction: id = reaction9, name = reaction9
	reaction_reaction9=compartment_default*Function_for_reaction9_0(x(7), x(8), x(9), global_par_a_X5_0, global_par_b_X5_1, compartment_default);

% Reaction: id = reaction10, name = reaction10
	reaction_reaction10=compartment_default*Function_for_reaction10_0(x(7), x(9), x(10), x(11), x(12), global_par_Y3, global_par_Y5, global_par_a1_X8_0, global_par_a2_X8_0, global_par_b_X8_1, global_par_b_X8_2, compartment_default, global_par_k_stress_2);

% Reaction: id = reaction11, name = reaction11
	reaction_reaction11=compartment_default*Function_for_reaction11_0(x(7), x(9), x(10), x(11), x(13), global_par_Y5, global_par_a1_X8_0, global_par_b_X8_1, global_par_b_X8_2, compartment_default);

% Reaction: id = reaction12, name = reaction12
	reaction_reaction12=compartment_default*Function_for_reaction12_0(x(7), x(9), x(10), x(12), x(13), global_par_Y3, global_par_Y5, global_par_a2_X8_0, global_par_b_X8_1, global_par_b_X8_2, compartment_default, global_par_k_stress_2);

% Reaction: id = reaction13, name = reaction13
	reaction_reaction13=compartment_default*Function_for_reaction13_0(x(7), x(9), x(11), x(12), x(13), global_par_Y5, global_par_a1_X8_0, global_par_a2_X8_0, global_par_b_X8_1, global_par_b_X8_2, compartment_default);

% Reaction: id = reaction14, name = reaction14
	reaction_reaction14=compartment_default*Function_for_reaction14_0(x(11), x(13), x(14), x(15), global_par_a2_X9_0, global_par_b_X9_2, compartment_default);

% Reaction: id = reaction15, name = reaction15
	reaction_reaction15=compartment_default*Function_for_reaction15_0(x(11), x(13), x(14), x(15), global_par_a2_X9_0, global_par_b_X9_2, compartment_default);

% Reaction: id = reaction16, name = reaction16
	reaction_reaction16=compartment_default*Function_for_reaction16_1_0(x(16), x(17), x(18), x(19), x(11), x(13), x(14), x(15), global_par_Y2, global_par_a1_X10_0, global_par_a2_X10_0, global_par_a_X6_Y2, global_par_b_X10_1, global_par_b_X10_2, compartment_default);

% Reaction: id = reaction17, name = reaction17
	reaction_reaction17=compartment_default*Function_for_reaction17_1_0(x(16), x(17), x(18), x(19), x(11), x(13), x(14), x(15), global_par_Y2, global_par_a1_X10_0, global_par_a_X10_1, global_par_a_X6_Y2, global_par_b_X10_1, global_par_b_X10_2, compartment_default);

% Reaction: id = reaction18, name = reaction18
	reaction_reaction18=compartment_default*Function_for_reaction18_1_0(x(16), x(17), x(18), x(19), x(11), x(13), x(14), x(15), global_par_Y2, global_par_a2_X10_0, global_par_a_X10_2, global_par_a_X6_Y2, global_par_b_X10_1, global_par_b_X10_2, compartment_default);

% Reaction: id = reaction19, name = reaction19
	reaction_reaction19=compartment_default*Function_for_reaction19_1_0(x(16), x(17), x(18), x(19), x(11), x(13), x(14), x(15), global_par_Y2, global_par_a_X10_1, global_par_a_X10_2, global_par_a_X6_Y2, global_par_b_X10_1, global_par_b_X10_2, compartment_default);

% Reaction: id = reaction20, name = reaction20
	reaction_reaction20=compartment_default*Function_for_reaction20_1_0(x(16), x(17), x(18), x(19), x(20), x(21), x(22), x(8), x(14), x(15), global_par_Y2, global_par_a1_X11_0, global_par_a2_X11_0, global_par_a_X6_Y2, global_par_b_X11_1, global_par_b_X11_2, compartment_default);

% Reaction: id = reaction21, name = reaction21
	reaction_reaction21=compartment_default*Function_for_reaction21_1_0(x(16), x(17), x(18), x(19), x(20), x(21), x(23), x(8), x(14), x(15), global_par_Y2, global_par_a1_X11_0, global_par_a_X6_Y2, global_par_b_X11_1, global_par_b_X11_2, compartment_default);

% Reaction: id = reaction22, name = reaction22
	reaction_reaction22=compartment_default*Function_for_reaction22_1_0(x(16), x(17), x(18), x(19), x(20), x(22), x(23), x(8), x(14), x(15), global_par_Y2, global_par_a2_X11_0, global_par_a_X6_Y2, global_par_b_X11_1, global_par_b_X11_2, compartment_default);

% Reaction: id = reaction23, name = reaction23
	reaction_reaction23=compartment_default*Function_for_reaction23_1_0(x(16), x(17), x(18), x(19), x(21), x(22), x(23), x(8), x(14), x(15), global_par_Y2, global_par_a1_X11_0, global_par_a2_X11_0, global_par_a_X6_Y2, global_par_b_X11_1, global_par_b_X11_2, compartment_default);

% Reaction: id = reaction24, name = reaction24
	reaction_reaction24=compartment_default*Function_for_reaction24_1_0(x(16), x(17), x(18), x(19), x(24), x(25), x(14), x(15), global_par_Y2, global_par_a_X12_0, global_par_a_X6_Y2, global_par_b_X12_1, compartment_default);

% Reaction: id = reaction25, name = reaction25
	reaction_reaction25=compartment_default*Function_for_reaction25_1_0(x(16), x(17), x(18), x(19), x(24), x(25), x(14), x(15), global_par_Y2, global_par_a_X12_0, global_par_a_X6_Y2, global_par_b_X12_1, compartment_default);

	xdot=zeros(34,1);
	
% Species:   id = X1_0, name = X1_0, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_reaction1));
	
% Species:   id = X1_1, name = X1_1, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_reaction2));
	
% Species:   id = X2_0, name = X2_0, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_reaction3));
	
% Species:   id = X2_1, name = X2_1, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_reaction4));
	
% Species:   id = X2_2, name = X2_2, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_reaction5));
	
% Species:   id = X4_0, name = X4_0, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_reaction6));
	
% Species:   id = X4_1, name = X4_1, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_reaction7));
	
% Species:   id = X5_0, name = X5_0, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_reaction8));
	
% Species:   id = X5_1, name = X5_1, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_reaction9));
	
% Species:   id = X8_0, name = X8_0, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_reaction10));
	
% Species:   id = X8_1, name = X8_1, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_reaction11));
	
% Species:   id = X8_2, name = X8_2, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_reaction12));
	
% Species:   id = X8_3, name = X8_3, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_reaction13));
	
% Species:   id = X9_0, name = X9_0, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_reaction14));
	
% Species:   id = X9_2, name = X9_2, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_reaction15));
	
% Species:   id = X10_0, name = X10_0, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_reaction16));
	
% Species:   id = X10_1, name = X10_1, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_reaction17));
	
% Species:   id = X10_2, name = X10_2, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*(( 1.0 * reaction_reaction18));
	
% Species:   id = X10_3, name = X10_3, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*(( 1.0 * reaction_reaction19));
	
% Species:   id = X11_0, name = X11_0, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_reaction20));
	
% Species:   id = X11_1, name = X11_1, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_reaction21));
	
% Species:   id = X11_2, name = X11_2, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_reaction22));
	
% Species:   id = X11_3, name = X11_3, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_reaction23));
	
% Species:   id = X12_0, name = X12_0, affected by kineticLaw
	xdot(24) = (1/(compartment_default))*(( 1.0 * reaction_reaction24));
	
% Species:   id = X12_1, name = X12_1, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*(( 1.0 * reaction_reaction25));
	
% Species:   id = Akt_pT308_obs, name = Akt_pT308_obs, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = Akt_pS473_obs, name = Akt_pS473_obs, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = TSC1_TSC2_pT1462_obs, name = TSC1_TSC2_pT1462_obs, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = PRAS40_pT246_obs, name = PRAS40_pT246_obs, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = PRAS40_pS183_obs, name = PRAS40_pS183_obs, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = fourEBP1_pT37_46_obs, name = fourEBP1_pT37_46_obs, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = p70_S6K_pT389_obs, name = p70_S6K_pT389_obs, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = p70_S6K_pT229_obs, name = p70_S6K_pT229_obs, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = IRS1_pS636_639_obs, name = IRS1_pS636-639_obs, involved in a rule 	xdot(34) = x(34);
end

function z=Function_for_reaction2_0(X1_0,X1_1,Y1,default), z=((X1_0*Y1-X1_1)/default);end

function z=Function_for_reaction3_0(X11_1,X11_3,X1_1,X2_0,X2_2,a1_X2_0,b_X2_2,default), z=((X2_2*b_X2_2-X1_1*X2_0-X2_0*a1_X2_0*(X11_1+X11_3))/default);end

function z=Function_for_reaction1_0(X1_0,X1_1,Y1,default), z=((X1_1-X1_0*Y1)/default);end

function z=Function_for_reaction6_0(X2_1,X4_0,X4_1,Y3,Y4,a_X4_0,b_X4_1,default,k_stress_1), z=((X4_1*b_X4_1+X4_0*(X2_1*a_X4_0+Y3*k_stress_1)*(Y4-1))/default);end

function z=Function_for_reaction5_0(X11_1,X11_3,X2_0,X2_1,X2_2,a1_X2_0,b_X2_2,default), z=((X2_1*(X11_1+X11_3)-X2_2*b_X2_2+X2_0*a1_X2_0*(X11_1+X11_3))/default);end

function z=Function_for_reaction10_0(X4_1,X5_1,X8_0,X8_1,X8_2,Y3,Y5,a1_X8_0,a2_X8_0,b_X8_1,b_X8_2,default,k_stress_2), z=((X8_1*b_X8_1+X8_2*b_X8_2+X8_0*(0.83*Y5-1)*(X4_1*a2_X8_0+Y3*k_stress_2)+X5_1*X8_0*a1_X8_0*(0.83*Y5-1))/default);end

function z=Function_for_reaction9_0(X4_1,X5_0,X5_1,a_X5_0,b_X5_1,default), z=((X4_1*X5_0*a_X5_0-X5_1*b_X5_1)/default);end

function z=Function_for_reaction7_0(X2_1,X4_0,X4_1,Y3,Y4,a_X4_0,b_X4_1,default,k_stress_1), z=(((-X4_1)*b_X4_1-X4_0*(X2_1*a_X4_0+Y3*k_stress_1)*(Y4-1))/default);end

function z=Function_for_reaction4_0(X11_1,X11_3,X1_1,X2_0,X2_1,default), z=((X1_1*X2_0-X2_1*(X11_1+X11_3))/default);end

function z=Function_for_reaction8_0(X4_1,X5_0,X5_1,a_X5_0,b_X5_1,default), z=((X5_1*b_X5_1-X4_1*X5_0*a_X5_0)/default);end

function z=Function_for_reaction13_0(X4_1,X5_1,X8_1,X8_2,X8_3,Y5,a1_X8_0,a2_X8_0,b_X8_1,b_X8_2,default), z=(((-X8_3)*b_X8_1-X8_3*b_X8_2-2*X4_1*X8_1*a1_X8_0*(0.83*Y5-1)-2*X5_1*X8_2*a2_X8_0*(0.83*Y5-1))/default);end

function z=Function_for_reaction11_0(X4_1,X5_1,X8_0,X8_1,X8_3,Y5,a1_X8_0,b_X8_1,b_X8_2,default), z=((X8_3*b_X8_2-X8_1*b_X8_1+2*X4_1*X8_1*a1_X8_0*(0.83*Y5-1)-X5_1*X8_0*a1_X8_0*(0.83*Y5-1))/default);end

function z=Function_for_reaction12_0(X4_1,X5_1,X8_0,X8_2,X8_3,Y3,Y5,a2_X8_0,b_X8_1,b_X8_2,default,k_stress_2), z=((X8_3*b_X8_1-X8_2*b_X8_2-X8_0*(0.83*Y5-1)*(X4_1*a2_X8_0+Y3*k_stress_2)+2*X5_1*X8_2*a2_X8_0*(0.83*Y5-1))/default);end

function z=Function_for_reaction14_0(X8_1,X8_3,X9_0,X9_2,a2_X9_0,b_X9_2,default), z=((X9_2*b_X9_2-X9_0*a2_X9_0*(X8_1+X8_3))/default);end

function z=Function_for_reaction15_0(X8_1,X8_3,X9_0,X9_2,a2_X9_0,b_X9_2,default), z=((X9_0*a2_X9_0*(X8_1+X8_3)-X9_2*b_X9_2)/default);end

function z=Function_for_reaction21_1_0(X10_0,X10_1,X10_2,X10_3,X11_0,X11_1,X11_3,X5_0,X9_0,X9_2,Y2,a1_X11_0,a_X6_Y2,b_X11_1,b_X11_2,default), z=((X11_3*b_X11_2-X11_1*b_X11_1+X11_0*(Y2*a_X6_Y2+a1_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-2*X11_1*X5_0*a1_X11_0)/default);end

function z=Function_for_reaction16_1_0(X10_0,X10_1,X10_2,X10_3,X8_1,X8_3,X9_0,X9_2,Y2,a1_X10_0,a2_X10_0,a_X6_Y2,b_X10_1,b_X10_2,default), z=((X10_1*b_X10_1+X10_2*b_X10_2-X10_0*(Y2*a_X6_Y2+a1_X10_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_0*a2_X10_0*(X8_1+X8_3))/default);end

function z=Function_for_reaction17_1_0(X10_0,X10_1,X10_2,X10_3,X8_1,X8_3,X9_0,X9_2,Y2,a1_X10_0,a_X10_1,a_X6_Y2,b_X10_1,b_X10_2,default), z=((X10_3*b_X10_2-X10_1*b_X10_1+X10_0*(Y2*a_X6_Y2+a1_X10_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_1*a_X10_1*(X8_1+X8_3))/default);end

function z=Function_for_reaction22_1_0(X10_0,X10_1,X10_2,X10_3,X11_0,X11_2,X11_3,X5_0,X9_0,X9_2,Y2,a2_X11_0,a_X6_Y2,b_X11_1,b_X11_2,default), z=((X11_3*b_X11_1-X11_2*b_X11_2-X11_2*(Y2*a_X6_Y2+2*a2_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))+X11_0*X5_0*a2_X11_0)/default);end

function z=Function_for_reaction23_1_0(X10_0,X10_1,X10_2,X10_3,X11_1,X11_2,X11_3,X5_0,X9_0,X9_2,Y2,a1_X11_0,a2_X11_0,a_X6_Y2,b_X11_1,b_X11_2,default), z=((X11_2*(Y2*a_X6_Y2+2*a2_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X11_3*b_X11_2-X11_3*b_X11_1+2*X11_1*X5_0*a1_X11_0)/default);end

function z=Function_for_reaction24_1_0(X10_0,X10_1,X10_2,X10_3,X12_0,X12_1,X9_0,X9_2,Y2,a_X12_0,a_X6_Y2,b_X12_1,default), z=((X12_1*b_X12_1-X12_0*(Y2*a_X6_Y2+a_X12_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1)))/default);end

function z=Function_for_reaction18_1_0(X10_0,X10_1,X10_2,X10_3,X8_1,X8_3,X9_0,X9_2,Y2,a2_X10_0,a_X10_2,a_X6_Y2,b_X10_1,b_X10_2,default), z=((X10_3*b_X10_1-X10_2*b_X10_2-X10_2*(Y2*a_X6_Y2+a_X10_2*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))+X10_0*a2_X10_0*(X8_1+X8_3))/default);end

function z=Function_for_reaction25_1_0(X10_0,X10_1,X10_2,X10_3,X12_0,X12_1,X9_0,X9_2,Y2,a_X12_0,a_X6_Y2,b_X12_1,default), z=((X12_0*(Y2*a_X6_Y2+a_X12_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X12_1*b_X12_1)/default);end

function z=Function_for_reaction19_1_0(X10_0,X10_1,X10_2,X10_3,X8_1,X8_3,X9_0,X9_2,Y2,a_X10_1,a_X10_2,a_X6_Y2,b_X10_1,b_X10_2,default), z=((X10_2*(Y2*a_X6_Y2+a_X10_2*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_3*b_X10_2-X10_3*b_X10_1+X10_1*a_X10_1*(X8_1+X8_3))/default);end

function z=Function_for_reaction20_1_0(X10_0,X10_1,X10_2,X10_3,X11_0,X11_1,X11_2,X5_0,X9_0,X9_2,Y2,a1_X11_0,a2_X11_0,a_X6_Y2,b_X11_1,b_X11_2,default), z=((X11_1*b_X11_1+X11_2*b_X11_2-X11_0*(Y2*a_X6_Y2+a1_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X11_0*X5_0*a2_X11_0)/default);end

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


