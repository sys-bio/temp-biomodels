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
% Model name = Wegner2012_TGFbetaSignalling_FeedbackLoops
%
% is http://identifiers.org/biomodels.db/MODEL1202090000
% is http://identifiers.org/biomodels.db/BIOMD0000000410
% isDescribedBy http://identifiers.org/pubmed/22284904
%


function main()
%Initial conditions vector
	x0=zeros(53,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
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
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0999999951844375;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;


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

% Compartment: id = _1, name = cytoplasm, constant
	compartment__1=1.0;
% Compartment: id = _3, name = nucleus, constant
	compartment__3=1.0;
% Parameter:   id =  parameter_1, name = TGFbeta
	global_par_parameter_1=0.01;
% Parameter:   id =  parameter_2, name = allSnoN
% Parameter:   id =  parameter_3, name = allSmad7
% Parameter:   id =  parameter_4, name = allSmurf2
% Parameter:   id =  parameter_5, name = allSmad2
% Parameter:   id =  parameter_6, name = allSmad4
% Parameter:   id =  parameter_7, name = allPSmad3
% Parameter:   id =  parameter_8, name = allSmad3
% Parameter:   id =  parameter_9, name = allSmad4cyt
% Parameter:   id =  parameter_10, name = allSmad4nuc
% assignmentRule: variable = parameter_3
	global_par_parameter_3=x(11)+x(12)+x(13)+x(36)+x(37);
% assignmentRule: variable = parameter_2
	global_par_parameter_2=x(15)+x(31)+x(38)+x(38);
% assignmentRule: variable = parameter_4
	global_par_parameter_4=x(12)+x(14)+x(33)+x(37);
% assignmentRule: variable = parameter_5
	global_par_parameter_5=x(5)+x(7)+x(8)+x(10)+x(30)+x(32)+x(34)+x(35)+x(41);
% assignmentRule: variable = parameter_6
	global_par_parameter_6=x(9)+x(10)+x(19)+x(29)+x(30)+x(40)+x(32)+x(38)+x(41)+x(43)+x(49)+x(48)+x(45);
% assignmentRule: variable = parameter_7
	global_par_parameter_7=x(17)+x(19)+x(40)+x(42)+x(43)+x(48);
% assignmentRule: variable = parameter_8
	global_par_parameter_8=x(16)+x(17)+x(18)+x(19)+x(21)+x(39)+x(40)+x(42)+x(43)+x(48)+x(49);
% assignmentRule: variable = parameter_9
	global_par_parameter_9=x(9)+x(10)+x(19);
% assignmentRule: variable = parameter_10
	global_par_parameter_10=x(24)+x(29)+x(30)+x(32)+x(40)+x(38)+x(40)+x(41)+x(43)+x(45)+x(48)+x(48)+x(49);

% Reaction: id = _29, name = Smad_dissoc3	% Local Parameter:   id =  k1, name = k1
	reaction__29_k1=0.0492;

	reaction__29=compartment__3*reaction__29_k1*x(49);

% Reaction: id = _31, name = Smad2_dephosphNuc	% Local Parameter:   id =  Km, name = Km
	reaction__31_Km=40.0;
	% Local Parameter:   id =  V, name = V
	reaction__31_V=2.34;

	reaction__31=compartment__3*function_1(x(30), reaction__31_Km, reaction__31_V);

% Reaction: id = _33, name = Smad_inhibComp2SnoN	% Local Parameter:   id =  k1, name = k1
	reaction__33_k1=1.6;
	% Local Parameter:   id =  k2, name = k2
	reaction__33_k2=1.6;

	reaction__33=compartment__3*(reaction__33_k1*x(30)*x(31)^2-reaction__33_k2*x(32));

% Reaction: id = _35, name = SnoN_degrad2	% Local Parameter:   id =  k1, name = k1
	reaction__35_k1=0.232;

	reaction__35=reaction__35_k1*x(33)^3*x(26);

% Reaction: id = _37, name = Smad_compNuc2	% Local Parameter:   id =  k1, name = k1
	reaction__37_k1=255.068;

	reaction__37=compartment__3*reaction__37_k1*x(29)*x(34)^2;

% Reaction: id = _39, name = Smad2_dephosphNuc2	% Local Parameter:   id =  Km, name = Km
	reaction__39_Km=0.53;
	% Local Parameter:   id =  V, name = V
	reaction__39_V=3.51;

	reaction__39=compartment__3*function_1(x(34), reaction__39_Km, reaction__39_V);

% Reaction: id = _41, name = Smad2_degrad	% Local Parameter:   id =  k1, name = k1
	reaction__41_k1=0.2;

	reaction__41=compartment__3*reaction__41_k1*x(35)*x(33);

% Reaction: id = _43, name = Smad7-Smurf2	% Local Parameter:   id =  k1, name = k1
	reaction__43_k1=2.9;
	% Local Parameter:   id =  k2, name = k2
	reaction__43_k2=0.2;

	reaction__43=compartment__3*(reaction__43_k1*x(33)*x(36)-reaction__43_k2*x(37));

% Reaction: id = _77, name = Rec_comp1	% Local Parameter:   id =  k, name = k
	reaction__77_k=9.45;

	reaction__77=compartment__1*function_2(global_par_parameter_1, reaction__77_k, x(1), x(1));

% Reaction: id = _86, name = Rec_comp2	% Local Parameter:   id =  k1, name = k1
	reaction__86_k1=0.03333;
	% Local Parameter:   id =  k2, name = k2
	reaction__86_k2=0.03333;

	reaction__86=compartment__1*(reaction__86_k1*x(2)*x(3)^2-reaction__86_k2*x(4));

% Reaction: id = _103, name = SARA-comp2	% Local Parameter:   id =  k1, name = k1
	reaction__103_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction__103_k2=0.1;

	reaction__103=compartment__1*(reaction__103_k1*x(6)*x(5)-reaction__103_k2*x(7));

% Reaction: id = _125, name = Smad2_phosph	% Local Parameter:   id =  k, name = k
	reaction__125_k=1000.0;
	% Local Parameter:   id =  km, name = km
	reaction__125_km=0.0318;

	reaction__125=compartment__1*function_3(reaction__125_k, x(4), x(5), reaction__125_km);

% Reaction: id = _132, name = Smad2_phosphSARA	% Local Parameter:   id =  k, name = k
	reaction__132_k=3.51;
	% Local Parameter:   id =  km, name = km
	reaction__132_km=0.53;

	reaction__132=compartment__1*function_3(reaction__132_k, x(4), x(7), reaction__132_km);

% Reaction: id = _139, name = Smad2-P_transp	% Local Parameter:   id =  k1, name = k1
	reaction__139_k1=16.6;

	reaction__139=reaction__139_k1*x(8);

% Reaction: id = _149, name = Smad_compCyt2	% Local Parameter:   id =  k1, name = k1
	reaction__149_k1=1000.0;

	reaction__149=compartment__1*reaction__149_k1*x(9)*x(8)^2;

% Reaction: id = _156, name = Smad4_transp	% Local Parameter:   id =  k1, name = k1
	reaction__156_k1=0.156;
	% Local Parameter:   id =  k2, name = k2
	reaction__156_k2=0.156;

	reaction__156=reaction__156_k1*x(9)-reaction__156_k2*x(29);

% Reaction: id = _164, name = Smad_compTransp2	% Local Parameter:   id =  k1, name = k1
	reaction__164_k1=0.16;

	reaction__164=reaction__164_k1*x(10);

% Reaction: id = _172, name = Smad7_transp	% Local Parameter:   id =  k1, name = k1
	reaction__172_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction__172_k2=0.01;

	reaction__172=reaction__172_k1*x(36)-reaction__172_k2*x(11);

% Reaction: id = _178, name = Smad7-Smurf2_transp	% Local Parameter:   id =  k1, name = k1
	reaction__178_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction__178_k2=0.01;

	reaction__178=reaction__178_k1*x(37)-reaction__178_k2*x(12);

% Reaction: id = _192, name = Rec_degrad1	% Local Parameter:   id =  k1, name = k1
	reaction__192_k1=1900.0;

	reaction__192=compartment__1*reaction__192_k1*x(12)*x(4);

% Reaction: id = _194, name = Rec_inhib	% Local Parameter:   id =  k1, name = k1
	reaction__194_k1=8.69;
	% Local Parameter:   id =  k2, name = k2
	reaction__194_k2=0.01;

	reaction__194=compartment__1*(reaction__194_k1*x(11)*x(4)-reaction__194_k2*x(13));

% Reaction: id = reaction_2, name = fluxSara	% Local Parameter:   id =  k, name = k
	reaction_reaction_2_k=1.0E-4;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.031;

	reaction_reaction_2=compartment__1*function_5(reaction_reaction_2_k, reaction_reaction_2_k1, x(52));

% Reaction: id = reaction_3, name = fluxSmad7	% Local Parameter:   id =  k, name = k
	reaction_reaction_3_k=1.0E-4;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.1;

	reaction_reaction_3=compartment__1*function_6(reaction_reaction_3_k, reaction_reaction_3_k1, x(52), x(38), x(45));

% Reaction: id = reaction_4, name = fluxSmurf2	% Local Parameter:   id =  k, name = k
	reaction_reaction_4_k=2.28E-4;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.0285;

	reaction_reaction_4=compartment__1*function_5(reaction_reaction_4_k, reaction_reaction_4_k1, x(52));

% Reaction: id = reaction_5, name = fluxSnoN	% Local Parameter:   id =  k, name = k
	reaction_reaction_5_k=2.0E-5;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=5.5E-4;

	reaction_reaction_5=compartment__1*function_5(reaction_reaction_5_k, reaction_reaction_5_k1, x(52));

% Reaction: id = reaction_7, name = Smad4-SnoN	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_7_k2=0.05288;

	reaction_reaction_7=compartment__3*(reaction_reaction_7_k1*x(29)*x(31)-reaction_reaction_7_k2*x(38));

% Reaction: id = reaction_8, name = Smad2_transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.156;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_8_k2=0.336;

	reaction_reaction_8=reaction_reaction_8_k1*x(5)-reaction_reaction_8_k2*x(35);

% Reaction: id = reaction_9, name = Rec_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.027778;

	reaction_reaction_9=compartment__1*reaction_reaction_9_k1*x(4);

% Reaction: id = reaction_10, name = RecI_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.027778;

	reaction_reaction_10=compartment__1*reaction_reaction_10_k1*x(3);

% Reaction: id = reaction_11, name = RecII_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.027778;

	reaction_reaction_11=compartment__1*reaction_reaction_11_k1*x(1);

% Reaction: id = reaction_12, name = Rec_recycl	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.03333;

	reaction_reaction_12=compartment__1*reaction_reaction_12_k1*x(2);

% Reaction: id = reaction_15, name = Smad4_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.1266;

	reaction_reaction_15=compartment__1*reaction_reaction_15_k1*x(9);

% Reaction: id = reaction_16, name = SARA_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.065;

	reaction_reaction_16=compartment__1*reaction_reaction_16_k1*x(6);

% Reaction: id = reaction_17, name = Smad2_dephospCyt	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_17_Km=3.51;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_17_V=0.53;

	reaction_reaction_17=compartment__1*function_1(x(8), reaction_reaction_17_Km, reaction_reaction_17_V);

% Reaction: id = reaction_18, name = SnoN_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.232;

	reaction_reaction_18=compartment__1*reaction_reaction_18_k1*x(15);

% Reaction: id = reaction_19, name = Smurf2_transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=0.2333;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=1.8056;

	reaction_reaction_19=reaction_reaction_19_k1*x(33)-reaction_reaction_19_k2*x(14);

% Reaction: id = reaction_20, name = Smad2_cyt_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.2;

	reaction_reaction_20=compartment__1*reaction_reaction_20_k1*x(5);

% Reaction: id = reaction_21, name = SnoN_trans	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_21_k2=0.2;

	reaction_reaction_21=reaction_reaction_21_k1*x(15)-reaction_reaction_21_k2*x(31);

% Reaction: id = reaction_23, name = Smad3_cyt_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=0.2;

	reaction_reaction_23=compartment__1*reaction_reaction_23_k1*x(16);

% Reaction: id = reaction_24, name = Smad3_dephospCyt	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_24_Km=3.51;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_24_V=0.53;

	reaction_reaction_24=compartment__1*function_1(x(17), reaction_reaction_24_Km, reaction_reaction_24_V);

% Reaction: id = reaction_25, name = Smad3_dephospNuc	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_25_Km=40.0;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_25_V=2.34;

	reaction_reaction_25=compartment__3*function_1(x(40), reaction_reaction_25_Km, reaction_reaction_25_V);

% Reaction: id = reaction_26, name = Smad3_dephospNuc2	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_26_Km=0.53;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_26_V=3.51;

	reaction_reaction_26=compartment__3*function_1(x(42), reaction_reaction_26_Km, reaction_reaction_26_V);

% Reaction: id = reaction_27, name = Smad3_phosph	% Local Parameter:   id =  k, name = k
	reaction_reaction_27_k=1000.0;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_27_km=0.0318;

	reaction_reaction_27=compartment__1*function_3(reaction_reaction_27_k, x(4), x(16), reaction_reaction_27_km);

% Reaction: id = reaction_28, name = Smad3_phosphSARA	% Local Parameter:   id =  k, name = k
	reaction_reaction_28_k=3.51;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_28_km=0.53;

	reaction_reaction_28=compartment__1*function_3(reaction_reaction_28_k, x(4), x(18), reaction_reaction_28_km);

% Reaction: id = reaction_29, name = Smad3_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=0.2;

	reaction_reaction_29=compartment__3*reaction_reaction_29_k1*x(39);

% Reaction: id = reaction_30, name = Smad3_transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_30_k1=0.156;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_30_k2=0.336;

	reaction_reaction_30=reaction_reaction_30_k1*x(16)-reaction_reaction_30_k2*x(39);

% Reaction: id = reaction_31, name = SARA-comp3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_31_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_31_k2=0.1;

	reaction_reaction_31=compartment__1*(reaction_reaction_31_k1*x(6)*x(16)-reaction_reaction_31_k2*x(18));

% Reaction: id = reaction_32, name = Smad_dissoc2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_32_k1=0.0492;

	reaction_reaction_32=compartment__3*reaction_reaction_32_k1*x(41);

% Reaction: id = reaction_33, name = Smad3-P-transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_33_k1=16.6;

	reaction_reaction_33=reaction_reaction_33_k1*x(17);

% Reaction: id = reaction_34, name = Smad_compCyt3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_34_k1=1000.0;

	reaction_reaction_34=compartment__1*reaction_reaction_34_k1*x(9)*x(17)^2;

% Reaction: id = reaction_35, name = Smad_compNuc3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_35_k1=255.068;

	reaction_reaction_35=compartment__3*reaction_reaction_35_k1*x(29)*x(42)^2;

% Reaction: id = reaction_36, name = Smad_inhibComp3SnoN	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_36_k1=1.6;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_36_k2=1.6;

	reaction_reaction_36=compartment__3*(reaction_reaction_36_k1*x(40)*x(31)^2-reaction_reaction_36_k2*x(43));

% Reaction: id = reaction_37, name = Smad_compTransp3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_37_k1=0.16;

	reaction_reaction_37=reaction_reaction_37_k1*x(19);

% Reaction: id = reaction_38, name = SnoN_degrad3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_38_k1=0.232;

	reaction_reaction_38=reaction_reaction_38_k1*x(27);

% Reaction: id = reaction_39, name = Smad7_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_39_k1=0.1;

	reaction_reaction_39=compartment__1*function_7(reaction_reaction_39_k1, x(11), x(28));

% Reaction: id = reaction_40, name = Ski_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_40_k1=0.232;

	reaction_reaction_40=compartment__1*reaction_reaction_40_k1*x(20);

% Reaction: id = reaction_41, name = Ski_trans	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_41_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_41_k2=0.2;

	reaction_reaction_41=reaction_reaction_41_k1*x(20)-reaction_reaction_41_k2*x(44);

% Reaction: id = reaction_42, name = fluxSki	% Local Parameter:   id =  k, name = k
	reaction_reaction_42_k=2.0E-5;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_42_k1=5.5E-4;

	reaction_reaction_42=compartment__1*function_5(reaction_reaction_42_k, reaction_reaction_42_k1, x(52));

% Reaction: id = reaction_43, name = Smurf2_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_43_k1=0.05;

	reaction_reaction_43=compartment__1*function_7(reaction_reaction_43_k1, x(14), x(11));

% Reaction: id = reaction_44, name = Smad4-Ski	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_44_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_44_k2=0.05288;

	reaction_reaction_44=compartment__3*(reaction_reaction_44_k1*x(29)*x(44)-reaction_reaction_44_k2*x(45));

% Reaction: id = reaction_45, name = Smad3-Ski_cyt	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_45_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_45_k2=0.1;

	reaction_reaction_45=compartment__1*(reaction_reaction_45_k1*x(16)*x(20)-reaction_reaction_45_k2*x(21));

% Reaction: id = reaction_46, name = Smad7-Smurf1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=2.9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_46_k2=0.2;

	reaction_reaction_46=compartment__3*(reaction_reaction_46_k1*x(46)*x(36)-reaction_reaction_46_k2*x(47));

% Reaction: id = reaction_47, name = fluxSmurf1	% Local Parameter:   id =  k, name = k
	reaction_reaction_47_k=1.0E-4;
	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_47_k1=0.0022;

	reaction_reaction_47=compartment__1*function_5(reaction_reaction_47_k, reaction_reaction_47_k1, x(52));

% Reaction: id = reaction_48, name = Smad_inhibComp3Ski	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_48_k1=1.6;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_48_k2=1.6;

	reaction_reaction_48=compartment__3*(reaction_reaction_48_k1*x(40)*x(44)^2-reaction_reaction_48_k2*x(48));

% Reaction: id = reaction_49, name = Rec_degrad2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_49_k1=1900.0;

	reaction_reaction_49=compartment__1*reaction_reaction_49_k1*x(23)*x(4);

% Reaction: id = reaction_50, name = Smad7-Smurf1_transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_50_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_50_k2=0.01;

	reaction_reaction_50=reaction_reaction_50_k1*x(47)-reaction_reaction_50_k2*x(23);

% Reaction: id = reaction_51, name = Smurf1_degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_51_k1=0.5;

	reaction_reaction_51=compartment__1*function_7(reaction_reaction_51_k1, x(22), x(11));

% Reaction: id = reaction_52, name = Smurf1_transp	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_52_k1=0.05;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_52_k2=3.0;

	reaction_reaction_52=reaction_reaction_52_k1*x(46)-reaction_reaction_52_k2*x(22);

% Reaction: id = reaction_53, name = Smad3-freePromot	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_53_k1=0.463;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_53_k2=0.102;

	reaction_reaction_53=compartment__3*(reaction_reaction_53_k1*x(40)*x(50)-reaction_reaction_53_k2*x(52));

% Reaction: id = reaction_54, name = Smad2-freePromot	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_54_k1=0.463;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_54_k2=0.102;

	reaction_reaction_54=compartment__3*(reaction_reaction_54_k1*x(30)*x(50)-reaction_reaction_54_k2*x(52));

% Reaction: id = reaction_55, name = Smad3-SnoN-freePromot	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_55_k1=0.2;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_55_k2=0.2;

	reaction_reaction_55=compartment__3*(reaction_reaction_55_k1*x(43)*x(50)-reaction_reaction_55_k2*x(51));

% Reaction: id = reaction_56, name = Smad2-SnoN-gene	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_56_k1=0.2;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_56_k2=0.2;

	reaction_reaction_56=compartment__3*(reaction_reaction_56_k1*x(32)*x(50)-reaction_reaction_56_k2*x(51));

% Reaction: id = reaction_57, name = Smad3-Ski-freePromot	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_57_k1=0.2;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_57_k2=0.2;

	reaction_reaction_57=compartment__3*(reaction_reaction_57_k1*x(48)*x(50)-reaction_reaction_57_k2*x(51));

% Reaction: id = reaction_58, name = Smad_inhibComp2Ski	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_58_k1=1.6;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_58_k2=1.6;

	reaction_reaction_58=reaction_reaction_58_k1*x(30)*x(44)^2-reaction_reaction_58_k2*x(24);

% Reaction: id = reaction_59, name = Smad2-Ski-gene	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_59_k1=0.2;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_59_k2=0.2;

	reaction_reaction_59=reaction_reaction_59_k1*x(24)*x(50)-reaction_reaction_59_k2*x(51);

% Reaction: id = reaction_60, name = Smad4-freePromot	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_60_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_60_k2=0.1;

	reaction_reaction_60=compartment__3*(reaction_reaction_60_k1*x(45)*x(50)-reaction_reaction_60_k2*x(51));

% Reaction: id = reaction_61, name = Smad2-Ski_cyt	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_61_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_61_k2=0.1;

	reaction_reaction_61=compartment__1*(reaction_reaction_61_k1*x(5)*x(20)-reaction_reaction_61_k2*x(25));

% Reaction: id = reaction_62, name = Smad2-Snon	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_62_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_62_k2=1.0;

	reaction_reaction_62=reaction_reaction_62_k1*x(34)^3*x(31)^3-reaction_reaction_62_k2*x(26);

% Reaction: id = reaction_63, name = Smad3-Snon	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_63_k1=1.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_63_k2=1.0;

	reaction_reaction_63=reaction_reaction_63_k1*x(42)^3*x(31)^3-reaction_reaction_63_k2*x(27);

% Reaction: id = reaction_64, name = Smad2-comp-degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_64_k1=0.005;

	reaction_reaction_64=compartment__3*reaction_reaction_64_k1*x(30);

% Reaction: id = reaction_65, name = Samd3-comp-degrad	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_65_k1=0.005;

	reaction_reaction_65=compartment__3*reaction_reaction_65_k1*x(40);

% Reaction: id = reaction_67, name = Arkadia_deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_67_k1=0.1;

	reaction_reaction_67=compartment__1*reaction_reaction_67_k1*x(28);

% Reaction: id = reaction_68, name = SnoN-deg2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_68_k1=0.1;

	reaction_reaction_68=reaction_reaction_68_k1*x(26)*x(53)^3;

% Reaction: id = reaction_69, name = SnoN-deg3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_69_k1=0.1;

	reaction_reaction_69=reaction_reaction_69_k1*x(27)*x(53)^3;

% Reaction: id = reaction_70, name = transArkadia	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_70_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_70_k2=0.1;

	reaction_reaction_70=reaction_reaction_70_k1*x(28)-reaction_reaction_70_k2*x(53);

	xdot=zeros(53,1);
	
% Species:   id = _75, name = TGF_RII, affected by kineticLaw
	xdot(1) = (1/(compartment__1))*((-2.0 * reaction__77) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_11) + ( 2.0 * reaction_reaction_12));
	
% Species:   id = _79, name = TGFbeta_TGF_RII, affected by kineticLaw
	xdot(2) = (1/(compartment__1))*(( 1.0 * reaction__77) + (-1.0 * reaction__86) + (-1.0 * reaction_reaction_12));
	
% Species:   id = _84, name = TGF_RI, affected by kineticLaw
	xdot(3) = (1/(compartment__1))*((-2.0 * reaction__86) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_10));
	
% Species:   id = _96, name = Rec_active, affected by kineticLaw
	xdot(4) = (1/(compartment__1))*(( 1.0 * reaction__86) + (-1.0 * reaction__192) + (-1.0 * reaction__194) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_49));
	
% Species:   id = _99, name = Smad2_c, affected by kineticLaw
	xdot(5) = (1/(compartment__1))*((-1.0 * reaction__103) + (-1.0 * reaction__125) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_61));
	
% Species:   id = _101, name = SARA, affected by kineticLaw
	xdot(6) = (1/(compartment__1))*((-1.0 * reaction__103) + ( 1.0 * reaction__132) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_31));
	
% Species:   id = _105, name = Smad2_SARA, affected by kineticLaw
	xdot(7) = (1/(compartment__1))*(( 1.0 * reaction__103) + (-1.0 * reaction__132));
	
% Species:   id = _129, name = pSmad2_c, affected by kineticLaw
	xdot(8) = (1/(compartment__1))*(( 1.0 * reaction__125) + ( 1.0 * reaction__132) + (-1.0 * reaction__139) + (-2.0 * reaction__149) + (-1.0 * reaction_reaction_17));
	
% Species:   id = _147, name = Smad4_c, affected by kineticLaw
	xdot(9) = (1/(compartment__1))*((-1.0 * reaction__149) + (-1.0 * reaction__156) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_34));
	
% Species:   id = _153, name = pSmad2_Smad4_c, affected by kineticLaw
	xdot(10) = (1/(compartment__1))*(( 1.0 * reaction__149) + (-1.0 * reaction__164));
	
% Species:   id = _174, name = Smad7_c, affected by kineticLaw
	xdot(11) = (1/(compartment__1))*(( 1.0 * reaction__172) + (-1.0 * reaction__194) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_39));
	
% Species:   id = _181, name = Smad7_Smurf2_c, affected by kineticLaw
	xdot(12) = (1/(compartment__1))*(( 1.0 * reaction__178) + (-1.0 * reaction__192));
	
% Species:   id = _198, name = Rec_Smad7, affected by kineticLaw
	xdot(13) = (1/(compartment__1))*(( 1.0 * reaction__194));
	
% Species:   id = species_1, name = Smurf2_c, affected by kineticLaw
	xdot(14) = (1/(compartment__1))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_2, name = SnoN_c, affected by kineticLaw
	xdot(15) = (1/(compartment__1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_3, name = Smad3_c, affected by kineticLaw
	xdot(16) = (1/(compartment__1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_4, name = pSmad3_c, affected by kineticLaw
	xdot(17) = (1/(compartment__1))*((-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_33) + (-2.0 * reaction_reaction_34));
	
% Species:   id = species_5, name = Smad3_SARA, affected by kineticLaw
	xdot(18) = (1/(compartment__1))*((-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_31));
	
% Species:   id = species_6, name = pSmad3_Smad4_c, affected by kineticLaw
	xdot(19) = (1/(compartment__1))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_37));
	
% Species:   id = species_7, name = Ski_c, affected by kineticLaw
	xdot(20) = (1/(compartment__1))*((-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_61));
	
% Species:   id = species_8, name = Smad3_Ski_c, affected by kineticLaw
	xdot(21) = (1/(compartment__1))*(( 1.0 * reaction_reaction_45));
	
% Species:   id = species_9, name = Smurf1_c, affected by kineticLaw
	xdot(22) = (1/(compartment__1))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = species_10, name = Smad7_Smurf1_c, affected by kineticLaw
	xdot(23) = (1/(compartment__1))*((-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_50));
	
% Species:   id = species_11, name = pSmad2_Smad4_Ski_n, affected by kineticLaw
	xdot(24) = (1/(compartment__1))*(( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59));
	
% Species:   id = species_12, name = Smad2_Ski_c, affected by kineticLaw
	xdot(25) = (1/(compartment__1))*(( 1.0 * reaction_reaction_61));
	
% Species:   id = species_13, name = pSmad2_SnoN_n, affected by kineticLaw
	xdot(26) = (1/(compartment__1))*((-1.0 * reaction__35) + ( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_68));
	
% Species:   id = species_14, name = pSmad3_SnoN_n, affected by kineticLaw
	xdot(27) = (1/(compartment__1))*((-1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_69));
	
% Species:   id = species_15, name = Arkadia_c, affected by kineticLaw
	xdot(28) = (1/(compartment__1))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_70));
	
% Species:   id = _5, name = Smad4_n, affected by kineticLaw
	xdot(29) = (1/(compartment__3))*(( 1.0 * reaction__29) + (-1.0 * reaction__37) + ( 1.0 * reaction__156) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_44));
	
% Species:   id = _9, name = pSmad2_Smad4_n, affected by kineticLaw
	xdot(30) = (1/(compartment__3))*((-1.0 * reaction__31) + (-1.0 * reaction__33) + ( 1.0 * reaction__37) + ( 1.0 * reaction__164) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_64));
	
% Species:   id = _11, name = SnoN_n, affected by kineticLaw
	xdot(31) = (1/(compartment__3))*((-2.0 * reaction__33) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_21) + (-2.0 * reaction_reaction_36) + (-3.0 * reaction_reaction_62) + (-3.0 * reaction_reaction_63));
	
% Species:   id = _13, name = pSmad2_Smad4_SnoN_n, affected by kineticLaw
	xdot(32) = (1/(compartment__3))*(( 1.0 * reaction__33) + (-1.0 * reaction_reaction_56));
	
% Species:   id = _15, name = Smurf2_n, affected by kineticLaw
	xdot(33) = (1/(compartment__3))*((-3.0 * reaction__35) + (-1.0 * reaction__41) + (-1.0 * reaction__43) + (-1.0 * reaction_reaction_19));
	
% Species:   id = _19, name = pSmad2_n, affected by kineticLaw
	xdot(34) = (1/(compartment__3))*(( 3.0 * reaction__35) + (-2.0 * reaction__37) + (-1.0 * reaction__39) + ( 1.0 * reaction__139) + (-3.0 * reaction_reaction_62) + ( 3.0 * reaction_reaction_68));
	
% Species:   id = _21, name = Smad2_n, affected by kineticLaw
	xdot(35) = (1/(compartment__3))*(( 1.0 * reaction__39) + (-1.0 * reaction__41) + ( 1.0 * reaction_reaction_8) + ( 2.0 * reaction_reaction_32));
	
% Species:   id = _25, name = Smad7_n, affected by kineticLaw
	xdot(36) = (1/(compartment__3))*((-1.0 * reaction__43) + (-1.0 * reaction__172) + (-1.0 * reaction_reaction_46));
	
% Species:   id = _27, name = Smad7_Smurf2_n, affected by kineticLaw
	xdot(37) = (1/(compartment__3))*(( 1.0 * reaction__43) + (-1.0 * reaction__178));
	
% Species:   id = species_16, name = Smad4_SnoN_n, affected by kineticLaw
	xdot(38) = (1/(compartment__3))*(( 1.0 * reaction_reaction_7));
	
% Species:   id = species_17, name = Smad3_n, affected by kineticLaw
	xdot(39) = (1/(compartment__3))*(( 2.0 * reaction__29) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30));
	
% Species:   id = species_18, name = pSmad3_Smad4_n, affected by kineticLaw
	xdot(40) = (1/(compartment__3))*((-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36) + ( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_65));
	
% Species:   id = species_19, name = Smad4_Smad2_n, affected by kineticLaw
	xdot(41) = (1/(compartment__3))*(( 1.0 * reaction__31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_20, name = pSmad3_n, affected by kineticLaw
	xdot(42) = (1/(compartment__3))*((-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_33) + (-2.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_38) + (-3.0 * reaction_reaction_63) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = species_21, name = pSmad3_Smad4_SnoN_n, affected by kineticLaw
	xdot(43) = (1/(compartment__3))*(( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_55));
	
% Species:   id = species_22, name = Ski_n, affected by kineticLaw
	xdot(44) = (1/(compartment__3))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_44) + (-2.0 * reaction_reaction_48) + (-2.0 * reaction_reaction_58));
	
% Species:   id = species_23, name = Smad4_Ski_n, affected by kineticLaw
	xdot(45) = (1/(compartment__3))*(( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_60));
	
% Species:   id = species_24, name = Smurf1_n, affected by kineticLaw
	xdot(46) = (1/(compartment__3))*((-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_52));
	
% Species:   id = species_25, name = Smad7_Smurf1_n, affected by kineticLaw
	xdot(47) = (1/(compartment__3))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_50));
	
% Species:   id = species_26, name = pSmad3_Smad4_Ski_n, affected by kineticLaw
	xdot(48) = (1/(compartment__3))*(( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_57));
	
% Species:   id = species_27, name = Smad4_Smad3_n, affected by kineticLaw
	xdot(49) = (1/(compartment__3))*((-1.0 * reaction__29) + ( 1.0 * reaction_reaction_25));
	
% Species:   id = species_28, name = freePromoters, affected by kineticLaw
	xdot(50) = (1/(compartment__3))*((-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60));
	
% Species:   id = species_29, name = inactivePromoters, affected by kineticLaw
	xdot(51) = (1/(compartment__3))*(( 1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_60));
	
% Species:   id = species_30, name = geneProduct, affected by kineticLaw
	xdot(52) = (1/(compartment__3))*(( 1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54));
	
% Species:   id = species_31, name = Arkadia_n, affected by kineticLaw
	xdot(53) = (1/(compartment__3))*((-3.0 * reaction_reaction_68) + (-3.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70));
end

function z=function_4(v), z=(v);end

function z=function_1(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_3(k,rec,s,km), z=(k*rec*s/(km+s));end

function z=function_2(TGFbeta,k,s,s2), z=(k*s*s2*TGFbeta);end

function z=function_7(k1,substrate,modifier), z=(k1*substrate*(1+modifier));end

function z=function_5(k,k1,m), z=(k+k1*m);end

function z=function_6(k,k1,m,m2,m3), z=((k+k1*m)/(1+m2+m3));end

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


