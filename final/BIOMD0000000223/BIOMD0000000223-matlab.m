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
% Model name = Borisov2009_EGF_Insulin_Crosstalk
%
% is http://identifiers.org/biomodels.db/MODEL6194251662
% is http://identifiers.org/biomodels.db/BIOMD0000000223
% isDescribedBy http://identifiers.org/pubmed/19357636
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000048
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000146
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000026
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000027
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000028
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000029
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000030
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000031
% isDerivedFrom http://identifiers.org/pubmed/17052120
%


function main()
%Initial conditions vector
	x0=zeros(86,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 200.0;
	x0(7) = 0.0;
	x0(8) = 270.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 200.0;
	x0(14) = 0.0;
	x0(15) = 50.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 300.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 518.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 300.0;
	x0(31) = 0.0;
	x0(32) = 225.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 150.0;
	x0(41) = 100.0;
	x0(42) = 0.0;
	x0(43) = 200.0;
	x0(44) = 400.0;
	x0(45) = 0.0;
	x0(46) = 100.0;
	x0(47) = 100.0;
	x0(48) = 0.0;
	x0(49) = 100.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 100.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 100.0;
	x0(57) = 0.0;
	x0(58) = 150.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 200.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 1.0E-5;
	x0(86) = 0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = extra, name = extracellular space, constant
	compartment_extra=34.0;
% Parameter:   id =  EGF_tot, name = EGF_tot
% Parameter:   id =  k1, name = k1
	global_par_k1=0.068;
% Parameter:   id =  Kd1, name = Kd1
	global_par_Kd1=0.58824;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.033;
% Parameter:   id =  Kd2, name = Kd2
	global_par_Kd2=15.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.4;
% Parameter:   id =  k4, name = k4
	global_par_k4=6.66E-4;
% Parameter:   id =  Kd4, name = Kd4
	global_par_Kd4=10.0;
% Parameter:   id =  Kd5, name = Kd5
	global_par_Kd5=10.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0133;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.333;
% Parameter:   id =  k7, name = k7
	global_par_k7=6.66E-4;
% Parameter:   id =  Kd7, name = Kd7
	global_par_Kd7=400.0;
% Parameter:   id =  V8, name = V8
	global_par_V8=200.0;
% Parameter:   id =  Km8, name = Km8
	global_par_Km8=100.0;
% Parameter:   id =  Kd9, name = Kd9
	global_par_Kd9=10.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.00666;
% Parameter:   id =  Kd10, name = Kd10
	global_par_Kd10=400.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=4.0E-4;
% Parameter:   id =  k11, name = k11
% Parameter:   id =  k12, name = k12
	global_par_k12=0.00933;
% Parameter:   id =  Kd12, name = Kd12
	global_par_Kd12=12.45;
% Parameter:   id =  k13, name = k13
	global_par_k13=6.66E-6;
% Parameter:   id =  Kd13, name = Kd13
	global_par_Kd13=200.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.85E-4;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.011322;
% Parameter:   id =  Kd24, name = Kd24
	global_par_Kd24=0.029412;
% Parameter:   id =  k25, name = k25
	global_par_k25=1.66;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.00933;
% Parameter:   id =  Kd26, name = Kd26
	global_par_Kd26=124.5;
% Parameter:   id =  k27, name = k27
	global_par_k27=6.66E-8;
% Parameter:   id =  Kd27, name = Kd27
	global_par_Kd27=2000000.0;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.1066;
% Parameter:   id =  Kd28, name = Kd28
	global_par_Kd28=3.75;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.66;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.0066;
% Parameter:   id =  Kd30, name = Kd30
	global_par_Kd30=10.0;
% Parameter:   id =  V31, name = V31
	global_par_V31=333.0;
% Parameter:   id =  Km31, name = Km31
	global_par_Km31=143.3;
% Parameter:   id =  kcat40, name = kcat40
	global_par_kcat40=6.6;
% Parameter:   id =  Km40, name = Km40
	global_par_Km40=110.0;
% Parameter:   id =  alpha40, name = alpha40
	global_par_alpha40=2.5E-4;
% Parameter:   id =  V41, name = V41
	global_par_V41=6.66;
% Parameter:   id =  Km41, name = Km41
	global_par_Km41=50.0;
% Parameter:   id =  k42, name = k42
	global_par_k42=0.00666;
% Parameter:   id =  Kd42, name = Kd42
	global_par_Kd42=10.0;
% Parameter:   id =  kcat43, name = kcat43
	global_par_kcat43=33.3;
% Parameter:   id =  Km43, name = Km43
	global_par_Km43=150.0;
% Parameter:   id =  alpha43, name = alpha43
	global_par_alpha43=0.05;
% Parameter:   id =  Kd45, name = Kd45
	global_par_Kd45=100000.0;
% Parameter:   id =  k45, name = k45
	global_par_k45=6.66E-4;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.00666;
% Parameter:   id =  Kd46, name = Kd46
	global_par_Kd46=1.0;
% Parameter:   id =  k47, name = k47
	global_par_k47=6.66E-4;
% Parameter:   id =  Kd47, name = Kd47
	global_par_Kd47=1000.0;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.666;
% Parameter:   id =  k49, name = k49
	global_par_k49=6.66E-4;
% Parameter:   id =  Kd49, name = Kd49
	global_par_Kd49=1.0;
% Parameter:   id =  kcat50, name = kcat50
	global_par_kcat50=3333.0;
% Parameter:   id =  alpha50, name = alpha50
	global_par_alpha50=1.0E-4;
% Parameter:   id =  Km50, name = Km50
	global_par_Km50=150.0;
% Parameter:   id =  V51, name = V51
	global_par_V51=333.0;
% Parameter:   id =  Km51, name = Km51
	global_par_Km51=130.0;
% Parameter:   id =  k52, name = k52
	global_par_k52=0.002;
% Parameter:   id =  Kd52, name = Kd52
	global_par_Kd52=1.0;
% Parameter:   id =  k53, name = k53
	global_par_k53=0.0133;
% Parameter:   id =  Kd53, name = Kd53
	global_par_Kd53=2.5;
% Parameter:   id =  k54, name = k54
	global_par_k54=1.0E-5;
% Parameter:   id =  Kd54, name = Kd54
	global_par_Kd54=66666.0;
% Parameter:   id =  k55, name = k55
	global_par_k55=6.66E-4;
% Parameter:   id =  Kd55, name = Kd55
	global_par_Kd55=100.0;
% Parameter:   id =  k56, name = k56
	global_par_k56=0.666;
% Parameter:   id =  kcat57, name = kcat57
	global_par_kcat57=0.133;
% Parameter:   id =  Km57, name = Km57
	global_par_Km57=150.0;
% Parameter:   id =  V58, name = V58
	global_par_V58=2.0;
% Parameter:   id =  Km58, name = Km58
	global_par_Km58=130.0;
% Parameter:   id =  k59, name = k59
	global_par_k59=0.01;
% Parameter:   id =  Kd59, name = Kd59
	global_par_Kd59=20.0;
% Parameter:   id =  k60, name = k60
	global_par_k60=4.66;
% Parameter:   id =  k61, name = k61
	global_par_k61=3.33;
% Parameter:   id =  kcat62, name = kcat62
	global_par_kcat62=5.33;
% Parameter:   id =  Km62, name = Km62
	global_par_Km62=50.0;
% Parameter:   id =  kcat63, name = kcat63
	global_par_kcat63=20000.0;
% Parameter:   id =  Km63, name = Km63
	global_par_Km63=50.0;
% Parameter:   id =  k64, name = k64
	global_par_k64=0.0;
% Parameter:   id =  k_64, name = k_64
	global_par_k_64=2.5;
% Parameter:   id =  kcat65, name = kcat65
	global_par_kcat65=0.1;
% Parameter:   id =  Km65, name = Km65
	global_par_Km65=400.0;
% Parameter:   id =  kcat66, name = kcat66
	global_par_kcat66=3.33;
% Parameter:   id =  Km66, name = Km66
	global_par_Km66=10.0;
% Parameter:   id =  kcat67, name = kcat67
	global_par_kcat67=0.666;
% Parameter:   id =  Km67, name = Km67
	global_par_Km67=10000.0;
% Parameter:   id =  alpha67, name = alpha67
	global_par_alpha67=1.0E-6;
% Parameter:   id =  beta67, name = beta67
	global_par_beta67=2.0;
% Parameter:   id =  kcat68, name = kcat68
	global_par_kcat68=0.133;
% Parameter:   id =  Km68, name = Km68
	global_par_Km68=50.0;
% Parameter:   id =  V69, name = V69
	global_par_V69=16.6;
% Parameter:   id =  Km69, name = Km69
	global_par_Km69=675.299;
% Parameter:   id =  kcat70, name = kcat70
	global_par_kcat70=0.333;
% Parameter:   id =  Km70, name = Km70
	global_par_Km70=500.0;
% Parameter:   id =  kcat71, name = kcat71
	global_par_kcat71=0.666;
% Parameter:   id =  Km71, name = Km71
	global_par_Km71=500.0;
% Parameter:   id =  V72, name = V72
	global_par_V72=33.3;
% Parameter:   id =  Km72, name = Km72
	global_par_Km72=500.0;
% Parameter:   id =  V73, name = V73
	global_par_V73=23.33;
% Parameter:   id =  Km73, name = Km73
	global_par_Km73=500.0;
% Parameter:   id =  k74, name = k74
	global_par_k74=0.00666;
% Parameter:   id =  Kd74, name = Kd74
	global_par_Kd74=100.0;
% Parameter:   id =  kcat75, name = kcat75
	global_par_kcat75=4.66;
% Parameter:   id =  Km75, name = Km75
	global_par_Km75=500.0;
% Parameter:   id =  V76, name = V76
	global_par_V76=16.66;
% Parameter:   id =  Km76, name = Km76
	global_par_Km76=1.0;
% Parameter:   id =  kcat77, name = kcat77
	global_par_kcat77=0.666;
% Parameter:   id =  alpha77, name = alpha77
	global_par_alpha77=0.5;
% Parameter:   id =  Km77, name = Km77
	global_par_Km77=100.0;
% Parameter:   id =  k_77, name = k_77
	global_par_k_77=0.666;
% Parameter:   id =  kcat78, name = kcat78
	global_par_kcat78=0.666;
% Parameter:   id =  Km78, name = Km78
	global_par_Km78=100.0;
% Parameter:   id =  k_78, name = k_78
	global_par_k_78=0.666;
% Parameter:   id =  kcat79, name = kcat79
	global_par_kcat79=0.0466;
% Parameter:   id =  Km79, name = Km79
	global_par_Km79=5000.0;
% Parameter:   id =  k_79, name = k_79
	global_par_k_79=6.66E-5;
% Parameter:   id =  kcat80, name = kcat80
	global_par_kcat80=0.04;
% Parameter:   id =  Km80, name = Km80
	global_par_Km80=700.0;
% Parameter:   id =  k_80, name = k_80
	global_par_k_80=6.66E-5;
% Parameter:   id =  kcat81, name = kcat81
	global_par_kcat81=0.166;
% Parameter:   id =  Km81, name = Km81
	global_par_Km81=300.0;
% Parameter:   id =  k_81, name = k_81
	global_par_k_81=6.66E-5;
% Parameter:   id =  V_82, name = V_82
	global_par_V_82=133.0;
% Parameter:   id =  Km82, name = Km82
	global_par_Km82=50.0;
% Parameter:   id =  k83, name = k83
	global_par_k83=0.0166;
% Parameter:   id =  V_84, name = V_84
	global_par_V_84=333.0;
% Parameter:   id =  Km84, name = Km84
	global_par_Km84=266.0;
% Parameter:   id =  k85, name = k85
	global_par_k85=0.0166;
% Parameter:   id =  k111, name = k111
	global_par_k111=0.0133;
% Parameter:   id =  k118, name = k118
	global_par_k118=0.001;
% Parameter:   id =  k_1, name = k_1
% Parameter:   id =  k_2, name = k_2
% Parameter:   id =  k_4, name = k_4
% Parameter:   id =  k_5, name = k_5
% Parameter:   id =  k_7, name = k_7
% Parameter:   id =  k_9, name = k_9
% Parameter:   id =  k_10, name = k_10
% Parameter:   id =  k_11, name = k_11
% Parameter:   id =  k_12, name = k_12
% Parameter:   id =  k_13, name = k_13
% Parameter:   id =  k_24, name = k_24
% Parameter:   id =  k_26, name = k_26
% Parameter:   id =  k_27, name = k_27
% Parameter:   id =  k_28, name = k_28
% Parameter:   id =  k_30, name = k_30
% Parameter:   id =  k_42, name = k_42
% Parameter:   id =  k_45, name = k_45
% Parameter:   id =  k_46, name = k_46
% Parameter:   id =  k_47, name = k_47
% Parameter:   id =  k_49, name = k_49
% Parameter:   id =  k_52, name = k_52
% Parameter:   id =  k_53, name = k_53
% Parameter:   id =  k_54, name = k_54
% Parameter:   id =  k_55, name = k_55
% Parameter:   id =  k_59, name = k_59
% Parameter:   id =  k_74, name = k_74
% assignmentRule: variable = phosphorylated_Akt
	x(86)=x(48)+x(62);
% assignmentRule: variable = EGF_tot
	global_par_EGF_tot=x(1)+(x(3)+2*(x(4)+x(5)+x(69)+x(7)+x(9)+x(10)+x(12)+x(14)+x(16)))*compartment_cell/compartment_extra;
% assignmentRule: variable = k_1
	global_par_k_1=global_par_Kd1*global_par_k1;
% assignmentRule: variable = k_2
	global_par_k_2=global_par_Kd2*global_par_k2;
% assignmentRule: variable = k_4
	global_par_k_4=global_par_Kd4*global_par_k4;
% assignmentRule: variable = k_5
	global_par_k_5=global_par_Kd5*global_par_k5;
% assignmentRule: variable = k_7
	global_par_k_7=global_par_Kd7*global_par_k7;
% assignmentRule: variable = k_9
	global_par_k_9=global_par_Kd9*global_par_k9;
% assignmentRule: variable = k_10
	global_par_k_10=global_par_Kd10*global_par_k10;
% assignmentRule: variable = k_11
	global_par_k_11=global_par_k_9;
% assignmentRule: variable = k11
	global_par_k11=global_par_k9;
% assignmentRule: variable = k_12
	global_par_k_12=global_par_Kd12*global_par_k12;
% assignmentRule: variable = k_13
	global_par_k_13=global_par_Kd13*global_par_k13;
% assignmentRule: variable = k_24
	global_par_k_24=global_par_Kd24*global_par_k24;
% assignmentRule: variable = k_26
	global_par_k_26=global_par_Kd26*global_par_k26;
% assignmentRule: variable = k_27
	global_par_k_27=global_par_Kd27*global_par_k27;
% assignmentRule: variable = k_28
	global_par_k_28=global_par_Kd28*global_par_k28;
% assignmentRule: variable = k_30
	global_par_k_30=global_par_Kd30*global_par_k30;
% assignmentRule: variable = k_42
	global_par_k_42=global_par_Kd42*global_par_k42;
% assignmentRule: variable = k_45
	global_par_k_45=global_par_k45*global_par_Kd45;
% assignmentRule: variable = k_46
	global_par_k_46=global_par_Kd46*global_par_k46;
% assignmentRule: variable = k_47
	global_par_k_47=global_par_Kd47*global_par_k47;
% assignmentRule: variable = k_49
	global_par_k_49=global_par_Kd49*global_par_k49;
% assignmentRule: variable = k_52
	global_par_k_52=global_par_k52*global_par_Kd52;
% assignmentRule: variable = k_53
	global_par_k_53=global_par_Kd53*global_par_k53;
% assignmentRule: variable = k_54
	global_par_k_54=global_par_Kd54*global_par_k54;
% assignmentRule: variable = k_55
	global_par_k_55=global_par_Kd55*global_par_k55;
% assignmentRule: variable = k_59
	global_par_k_59=global_par_Kd59*global_par_k59;
% assignmentRule: variable = k_74
	global_par_k_74=global_par_k74*global_par_Kd74;

% Reaction: id = reaction_1
	reaction_reaction_1=(global_par_k1*x(56)*x(1)-global_par_k_1*x(3))*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=(global_par_k2*x(3)*x(3)-global_par_k_2*x(4))*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_k3*x(4)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=(global_par_k4*x(5)*x(6)-global_par_k_4*x(7))*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=(global_par_k5*x(5)*x(8)-global_par_k_5*x(9))*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_k6*x(9)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=(global_par_k_7*x(10)-global_par_k7*x(5)*x(11))*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_V8*x(11)/(global_par_Km8+x(11))*compartment_cell;

% Reaction: id = reaction_9
	reaction_reaction_9=(global_par_k9*x(10)*x(6)-global_par_k_9*x(12))*compartment_cell;

% Reaction: id = reaction_10
	reaction_reaction_10=(global_par_k_10*x(12)-global_par_k10*x(5)*x(53))*compartment_cell;

% Reaction: id = reaction_11
	reaction_reaction_11=(global_par_k_11*x(53)-global_par_k11*x(11)*x(6))*compartment_cell;

% Reaction: id = reaction_12
	reaction_reaction_12=(global_par_k12*x(5)*x(13)-global_par_k_12*x(14))*compartment_cell;

% Reaction: id = reaction_13
	reaction_reaction_13=(global_par_k13*x(5)*x(15)-global_par_k_13*x(16))*compartment_cell;

% Reaction: id = reaction_17
	reaction_reaction_17=global_par_k17*x(5)*compartment_cell;

% Reaction: id = reaction_18
	reaction_reaction_18=global_par_k17*x(7)*compartment_cell;

% Reaction: id = reaction_19
	reaction_reaction_19=global_par_k17*x(9)*compartment_cell;

% Reaction: id = reaction_20
	reaction_reaction_20=global_par_k17*x(10)*compartment_cell;

% Reaction: id = reaction_21
	reaction_reaction_21=global_par_k17*x(12)*compartment_cell;

% Reaction: id = reaction_22
	reaction_reaction_22=global_par_k17*x(14)*compartment_cell;

% Reaction: id = reaction_23
	reaction_reaction_23=global_par_k17*x(16)*compartment_cell;

% Reaction: id = reaction_24
	reaction_reaction_24=(global_par_k24*x(58)*x(2)-global_par_k_24*x(17))*compartment_cell;

% Reaction: id = reaction_25
	reaction_reaction_25=global_par_k25*x(17)*compartment_cell;

% Reaction: id = reaction_26
	reaction_reaction_26=(global_par_k26*x(18)*x(13)-global_par_k_26*x(19))*compartment_cell;

% Reaction: id = reaction_27
	reaction_reaction_27=(global_par_k27*x(18)*x(15)-global_par_k_27*x(20))*compartment_cell;

% Reaction: id = reaction_28
	reaction_reaction_28=(global_par_k28*x(18)*x(21)-global_par_k_28*x(22))*compartment_cell;

% Reaction: id = reaction_29
	reaction_reaction_29=global_par_k29*x(22)*compartment_cell;

% Reaction: id = reaction_30
	reaction_reaction_30=(global_par_k_30*x(23)-global_par_k30*x(18)*x(24))*compartment_cell;

% Reaction: id = reaction_31
	reaction_reaction_31=global_par_V31*x(24)/(global_par_Km31+x(24))*compartment_cell;

% Reaction: id = reaction_34
	reaction_reaction_34=global_par_k17*x(18)*compartment_cell;

% Reaction: id = reaction_35
	reaction_reaction_35=global_par_k17*x(19)*compartment_cell;

% Reaction: id = reaction_36
	reaction_reaction_36=global_par_k17*x(20)*compartment_cell;

% Reaction: id = reaction_37
	reaction_reaction_37=global_par_k17*x(22)*compartment_cell;

% Reaction: id = reaction_38
	reaction_reaction_38=global_par_k17*x(23)*compartment_cell;

% Reaction: id = reaction_40
	reaction_reaction_40=global_par_kcat40*x(25)*(x(5)+global_par_alpha40*x(18))/(global_par_Km40+x(25))*compartment_cell;

% Reaction: id = reaction_41
	reaction_reaction_41=global_par_V41*x(68)/(global_par_Km41+x(68))*compartment_cell;

% Reaction: id = reaction_42
	reaction_reaction_42=(global_par_k42*x(21)*x(39)-global_par_k_42*x(26))*compartment_cell;

% Reaction: id = reaction_43
	reaction_reaction_43=global_par_kcat43*x(26)*(x(18)+global_par_alpha43*x(5))/(global_par_Km43+x(26))*compartment_cell;

% Reaction: id = reaction_44
	reaction_reaction_44=global_par_V31*x(27)/(global_par_Km31+x(27))*compartment_cell;

% Reaction: id = reaction_45
	reaction_reaction_45=(global_par_k45*x(27)*x(6)-global_par_k_45*x(28))*compartment_cell;

% Reaction: id = reaction_46
	reaction_reaction_46=(global_par_k46*x(27)*x(13)-global_par_k_46*x(29))*compartment_cell;

% Reaction: id = reaction_47
	reaction_reaction_47=(global_par_k47*x(27)*x(30)-global_par_k_47*x(31))*compartment_cell;

% Reaction: id = reaction_48
	reaction_reaction_48=global_par_k48*x(31)*compartment_cell;

% Reaction: id = reaction_49
	reaction_reaction_49=(global_par_k49*x(32)*x(39)-global_par_k_49*x(33))*compartment_cell;

% Reaction: id = reaction_50
	reaction_reaction_50=global_par_kcat50*x(33)*(x(5)+global_par_alpha50*x(68))/(global_par_Km50+x(33))*compartment_cell;

% Reaction: id = reaction_51
	reaction_reaction_51=global_par_V51*x(34)/(global_par_Km51+x(34))*compartment_cell;

% Reaction: id = reaction_52
	reaction_reaction_52=(global_par_k52*x(34)*x(6)-global_par_k_52*x(35))*compartment_cell;

% Reaction: id = reaction_53
	reaction_reaction_53=(global_par_k53*x(34)*x(13)-global_par_k_53*x(36))*compartment_cell;

% Reaction: id = reaction_54
	reaction_reaction_54=(global_par_k54*x(34)*x(15)-global_par_k_54*x(63))*compartment_cell;

% Reaction: id = reaction_55
	reaction_reaction_55=(global_par_k55*x(34)*x(30)-global_par_k_55*x(37))*compartment_cell;

% Reaction: id = reaction_56
	reaction_reaction_56=global_par_k56*x(37)*compartment_cell;

% Reaction: id = reaction_57
	reaction_reaction_57=global_par_kcat57*x(37)*(x(5)+x(68))/(global_par_Km57+x(37))*compartment_cell;

% Reaction: id = reaction_58
	reaction_reaction_58=global_par_V58*x(38)/(global_par_Km58+x(38))*compartment_cell;

% Reaction: id = reaction_59
	reaction_reaction_59=(global_par_k59*x(38)*x(6)-global_par_k_59*x(55))*compartment_cell;

% Reaction: id = reaction_60
	reaction_reaction_60=global_par_k60*(x(14)+x(19)+x(29)+x(36)+x(61))*compartment_cell;

% Reaction: id = reaction_61
	reaction_reaction_61=global_par_k61*x(39)*compartment_cell;

% Reaction: id = reaction_62
	reaction_reaction_62=global_par_kcat62*x(40)*(x(7)+x(12)+x(28)+x(35)+x(55))/(global_par_Km62+x(40))*compartment_cell;

% Reaction: id = reaction_63
	reaction_reaction_63=global_par_kcat63*x(60)*(x(85)+x(63)+x(16)+x(20))/(global_par_Km63+x(60))*compartment_cell;

% Reaction: id = reaction_64
	reaction_reaction_64=(global_par_k64*x(60)*x(13)-global_par_k_64*x(61))*compartment_cell;

% Reaction: id = reaction_65
	reaction_reaction_65=global_par_kcat65*x(60)*x(41)/(global_par_Km65+x(41))*compartment_cell;

% Reaction: id = reaction_66
	reaction_reaction_66=global_par_kcat66*x(68)*x(42)/(global_par_Km66+x(42))*compartment_cell;

% Reaction: id = reaction_67
	reaction_reaction_67=(global_par_kcat67*x(51)*x(52)/(global_par_Km67+x(51))+global_par_alpha67*x(51)*(x(48)+global_par_beta67*x(62)))*compartment_cell;

% Reaction: id = reaction_68
	reaction_reaction_68=global_par_kcat68*x(51)*x(43)/(global_par_Km68+x(43))*compartment_cell;

% Reaction: id = reaction_69
	reaction_reaction_69=global_par_V69*x(54)/(global_par_Km69+x(54))*compartment_cell;

% Reaction: id = reaction_70
	reaction_reaction_70=global_par_kcat70*x(44)*x(54)/(global_par_Km70+x(44)+x(45)*global_par_Km70/global_par_Km71)*compartment_cell;

% Reaction: id = reaction_71
	reaction_reaction_71=global_par_kcat71*x(45)*x(54)/(global_par_Km71+x(45)+x(44)*global_par_Km71/global_par_Km70)*compartment_cell;

% Reaction: id = reaction_72
	reaction_reaction_72=global_par_V72*x(57)/(global_par_Km72+x(57)+x(45)*global_par_Km72/global_par_Km73)*compartment_cell;

% Reaction: id = reaction_73
	reaction_reaction_73=global_par_V73*x(45)/(global_par_Km73+x(45)+x(57)*global_par_Km73/global_par_Km72)*compartment_cell;

% Reaction: id = reaction_74
	reaction_reaction_74=(global_par_k74*x(46)*x(39)-global_par_k_74*x(59))*compartment_cell;

% Reaction: id = reaction_75
	reaction_reaction_75=global_par_kcat75*x(59)*x(47)/(global_par_Km75+x(47))*compartment_cell;

% Reaction: id = reaction_76
	reaction_reaction_76=global_par_V76*x(48)/(global_par_Km76+x(48))*compartment_cell;

% Reaction: id = reaction_77
	reaction_reaction_77=(global_par_kcat77*x(49)*(global_par_alpha77*x(48)+x(62))/(global_par_Km77+x(49))-global_par_k_77*x(64))*compartment_cell;

% Reaction: id = reaction_78
	reaction_reaction_78=(global_par_kcat78*x(64)*x(48)/(global_par_Km78+x(48))-global_par_k_78*x(62))*compartment_cell;

% Reaction: id = reaction_79
	reaction_reaction_79=(global_par_kcat79*x(57)*x(6)/(global_par_Km79+x(6))-global_par_k_79*x(65))*compartment_cell;

% Reaction: id = reaction_80
	reaction_reaction_80=(global_par_kcat80*x(33)*x(57)/(global_par_Km80+x(33))-global_par_k_80*x(66))*compartment_cell;

% Reaction: id = reaction_81
	reaction_reaction_81=(global_par_kcat81*x(26)*x(64)/(global_par_Km81+x(26))-global_par_k_81*x(67))*compartment_cell;

% Reaction: id = reaction_82
	reaction_reaction_82=global_par_V_82*x(5)/(global_par_Km82+x(5))*compartment_cell;

% Reaction: id = reaction_83
	reaction_reaction_83=global_par_k83*x(69)*compartment_cell;

% Reaction: id = reaction_84
	reaction_reaction_84=global_par_V_84*x(18)/(global_par_Km84+x(18))*compartment_cell;

% Reaction: id = reaction_85
	reaction_reaction_85=global_par_k85*x(70)*compartment_cell;

% Reaction: id = reaction_88
	reaction_reaction_88=(global_par_k_42*x(27)-global_par_k42*x(39)*x(24))*compartment_cell;

% Reaction: id = reaction_89
	reaction_reaction_89=(global_par_k_42*x(29)-global_par_k42*x(39)*x(74))*compartment_cell;

% Reaction: id = reaction_90
	reaction_reaction_90=(global_par_k_42*x(28)-global_par_k42*x(39)*x(75))*compartment_cell;

% Reaction: id = reaction_91
	reaction_reaction_91=(global_par_k_42*x(31)-global_par_k42*x(39)*x(76))*compartment_cell;

% Reaction: id = reaction_92
	reaction_reaction_92=(global_par_k_42*x(34)-global_par_k42*x(39)*x(77))*compartment_cell;

% Reaction: id = reaction_93
	reaction_reaction_93=(global_par_k_42*x(36)-global_par_k42*x(39)*x(78))*compartment_cell;

% Reaction: id = reaction_94
	reaction_reaction_94=(global_par_k_42*x(35)-global_par_k42*x(39)*x(79))*compartment_cell;

% Reaction: id = reaction_95
	reaction_reaction_95=(global_par_k_42*x(63)-global_par_k49*x(39)*x(80))*compartment_cell;

% Reaction: id = reaction_96
	reaction_reaction_96=(global_par_k_42*x(37)-global_par_k42*x(39)*x(81))*compartment_cell;

% Reaction: id = reaction_97
	reaction_reaction_97=(global_par_k_42*x(38)-global_par_k42*x(39)*x(82))*compartment_cell;

% Reaction: id = reaction_98
	reaction_reaction_98=(global_par_k_42*x(55)-global_par_k42*x(39)*x(83))*compartment_cell;

% Reaction: id = reaction_99
	reaction_reaction_99=global_par_V31*x(74)/(global_par_Km31+x(74))*compartment_cell;

% Reaction: id = reaction_100
	reaction_reaction_100=global_par_V31*x(75)/(global_par_Km31+x(75))*compartment_cell;

% Reaction: id = reaction_101
	reaction_reaction_101=global_par_k48*x(76)*compartment_cell;

% Reaction: id = reaction_102
	reaction_reaction_102=global_par_k56*x(38)*compartment_cell;

% Reaction: id = reaction_103
	reaction_reaction_103=global_par_k56*x(55)*compartment_cell;

% Reaction: id = reaction_104
	reaction_reaction_104=global_par_V51*x(77)/(global_par_Km51+x(77))*compartment_cell;

% Reaction: id = reaction_105
	reaction_reaction_105=global_par_V51*x(78)/(global_par_Km51+x(78))*compartment_cell;

% Reaction: id = reaction_106
	reaction_reaction_106=global_par_V51*x(79)/(global_par_Km51+x(79))*compartment_cell;

% Reaction: id = reaction_107
	reaction_reaction_107=global_par_V51*x(80)/(global_par_Km51+x(80))*compartment_cell;

% Reaction: id = reaction_108
	reaction_reaction_108=global_par_k56*x(81)*compartment_cell;

% Reaction: id = reaction_109
	reaction_reaction_109=global_par_k56*x(82)*compartment_cell;

% Reaction: id = reaction_110
	reaction_reaction_110=global_par_k56*x(83)*compartment_cell;

% Reaction: id = reaction_111
	reaction_reaction_111=global_par_k111*(x(37)+x(38)+x(55)+x(31))*x(63)*compartment_cell;

% Reaction: id = reaction_112
	reaction_reaction_112=global_par_k111*(x(37)+x(38)+x(55))*x(16)*compartment_cell;

% Reaction: id = reaction_113
	reaction_reaction_113=global_par_k111*(x(37)+x(38)+x(55))*x(20)*compartment_cell;

% Reaction: id = reaction_114
	reaction_reaction_114=global_par_k111*x(31)*x(16)*compartment_cell;

% Reaction: id = reaction_115
	reaction_reaction_115=global_par_k111*x(31)*x(20)*compartment_cell;

% Reaction: id = reaction_117
	reaction_reaction_117=(2*global_par_kcat80*x(34)*x(57)/(global_par_Km80+x(34))-global_par_k_80*x(84))*compartment_cell;

% Reaction: id = reaction_118
	reaction_reaction_118=global_par_k118*x(84)*compartment_cell;

	xdot=zeros(86,1);
	
% Species:   id = EGF, name = EGF, affected by kineticLaw
	xdot(1) = (1/(compartment_extra))*((-1.0 * reaction_reaction_1));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_extra))*((-1.0 * reaction_reaction_24));
	
% Species:   id = RE, name = RE, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-2.0 * reaction_reaction_2));
	
% Species:   id = Rd, name = Rd, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_83));
	
% Species:   id = Rp, name = Rp, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_82) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_114));
	
% Species:   id = GS, name = GS, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_79) + ( 1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_106) + ( 1.0 * reaction_reaction_110));
	
% Species:   id = Rp_GS, name = Rp_GS, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_18));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = Rp_Shc, name = Rp_Shc, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_19));
	
% Species:   id = Rp_pShc, name = Rp_pShc, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_20));
	
% Species:   id = pShc, name = pShc, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = Rp_pShc_GS, name = Rp_pShc_GS, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_21));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_105));
	
% Species:   id = Rp_PI3K, name = Rp_PI3K, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_22));
	
% Species:   id = RasGAP, name = RasGAP, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_54) + ( 1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_115));
	
% Species:   id = Rp_RasGAP, name = Rp_RasGAP, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_112) + (-1.0 * reaction_reaction_114));
	
% Species:   id = IRL, name = IRL, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_85));
	
% Species:   id = IRp, name = IRp, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_84) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_115));
	
% Species:   id = IRp_PI3K, name = IRp_PI3K, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_35));
	
% Species:   id = IRp_RasGAP, name = IRp_RasGAP, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_115));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_101));
	
% Species:   id = IRp_IRS, name = IRp_IRS, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_37));
	
% Species:   id = IRp_IRSp, name = IRp_IRSp, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_38));
	
% Species:   id = IRSp, name = IRSp, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_88));
	
% Species:   id = iSrc, name = iSrc, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = mIRS, name = mIRS, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_81));
	
% Species:   id = mIRSp, name = mIRSp, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_88));
	
% Species:   id = mIRSp_GS, name = mIRSp_GS, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_90));
	
% Species:   id = mIRSp_PI3K, name = mIRSp_PI3K, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_89));
	
% Species:   id = SHP2, name = SHP2, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_102) + ( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_110));
	
% Species:   id = mIRSp_SHP2, name = mIRSp_SHP2, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_91));
	
% Species:   id = GAB, name = GAB, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*((-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_104) + ( 1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_106) + ( 1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_110));
	
% Species:   id = mGAB, name = mGAB, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_50) + ( 1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_102) + ( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_111));
	
% Species:   id = mGABp, name = mGABp, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_117));
	
% Species:   id = mGABp_GS, name = mGABp_GS, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_94));
	
% Species:   id = mGABp_PI3K, name = mGABp_PI3K, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_93));
	
% Species:   id = mGABp_SHP2, name = mGABp_SHP2, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_96));
	
% Species:   id = mGABp_pSHP2, name = mGABp_pSHP2, affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_102));
	
% Species:   id = PIP3, name = PIP3, affected by kineticLaw
	xdot(39) = (1/(compartment_cell))*((-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_95) + ( 1.0 * reaction_reaction_96) + ( 1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_98));
	
% Species:   id = dRas, name = dRas, affected by kineticLaw
	xdot(40) = (1/(compartment_cell))*((-1.0 * reaction_reaction_62) + ( 1.0 * reaction_reaction_63));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(41) = (1/(compartment_cell))*((-1.0 * reaction_reaction_65) + ( 1.0 * reaction_reaction_67));
	
% Species:   id = aRaf, name = aRaf, affected by kineticLaw
	xdot(42) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66));
	
% Species:   id = Mek, name = Mek, affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*((-1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = Erk, name = Erk, affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*((-1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_73));
	
% Species:   id = pErk, name = pErk, affected by kineticLaw
	xdot(45) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73));
	
% Species:   id = PDK1, name = PDK1, affected by kineticLaw
	xdot(46) = (1/(compartment_cell))*((-1.0 * reaction_reaction_74));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(47) = (1/(compartment_cell))*((-1.0 * reaction_reaction_75) + ( 1.0 * reaction_reaction_76));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(48) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_78));
	
% Species:   id = mTOR, name = mTOR, affected by kineticLaw
	xdot(49) = (1/(compartment_cell))*((-1.0 * reaction_reaction_77));
	
% Species:   id = Null, name = Null, affected by kineticLaw
	xdot(50) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_61));
	
% Species:   id = aaRaf, name = aaRaf, affected by kineticLaw
	xdot(51) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67));
	
% Species:   id = PKA, name = PKA
% Warning species is not changed by either rules or reactions
	xdot(52) = ;
	
% Species:   id = pShc_GS, name = pShc_GS, affected by kineticLaw
	xdot(53) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_21));
	
% Species:   id = ppMek, name = ppMek, affected by kineticLaw
	xdot(54) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_69));
	
% Species:   id = mGABp_pSHP2_GS, name = mGABp_pSHP2_GS, affected by kineticLaw
	xdot(55) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_103));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(56) = (1/(compartment_cell))*((-1.0 * reaction_reaction_1));
	
% Species:   id = ppErk, name = ppErk, affected by kineticLaw
	xdot(57) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72));
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(58) = (1/(compartment_cell))*((-1.0 * reaction_reaction_24));
	
% Species:   id = mPDK1, name = mPDK1, affected by kineticLaw
	xdot(59) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_74));
	
% Species:   id = tRas, name = tRas, affected by kineticLaw
	xdot(60) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_64));
	
% Species:   id = tRas_PI3K, name = tRas_PI3K, affected by kineticLaw
	xdot(61) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_64));
	
% Species:   id = ppAkt, name = ppAkt, affected by kineticLaw
	xdot(62) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_78));
	
% Species:   id = mGABp_RasGAP, name = mGABp_RasGAP, affected by kineticLaw
	xdot(63) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_111));
	
% Species:   id = amTOR, name = amTOR, affected by kineticLaw
	xdot(64) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_77));
	
% Species:   id = iGS, name = iGS, affected by kineticLaw
	xdot(65) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_79));
	
% Species:   id = imGAB, name = imGAB, affected by kineticLaw
	xdot(66) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_118));
	
% Species:   id = imIRS, name = imIRS, affected by kineticLaw
	xdot(67) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_81));
	
% Species:   id = aSrc, name = aSrc, affected by kineticLaw
	xdot(68) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41));
	
% Species:   id = Ri, name = Ri, affected by kineticLaw
	xdot(69) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83));
	
% Species:   id = IRi, name = IRi, affected by kineticLaw
	xdot(70) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_85));
	
% Species:   id = iPX, name = iPX
% Warning species is not changed by either rules or reactions
	xdot(71) = ;
	
% Species:   id = aPX, name = aPX
% Warning species is not changed by either rules or reactions
	xdot(72) = ;
	
% Species:   id = aPX_GS, name = aPX_GS
% Warning species is not changed by either rules or reactions
	xdot(73) = ;
	
% Species:   id = IRSp_PI3K, name = IRSp_PI3K, affected by kineticLaw
	xdot(74) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_89) + (-1.0 * reaction_reaction_99));
	
% Species:   id = IRSp_GS, name = IRSp_GS, affected by kineticLaw
	xdot(75) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_100));
	
% Species:   id = IRSp_SHP2, name = IRSp_SHP2, affected by kineticLaw
	xdot(76) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_91) + (-1.0 * reaction_reaction_101));
	
% Species:   id = GABp, name = GABp, affected by kineticLaw
	xdot(77) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_104));
	
% Species:   id = GABp_PI3K, name = GABp_PI3K, affected by kineticLaw
	xdot(78) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_93) + (-1.0 * reaction_reaction_105));
	
% Species:   id = GABp_GS, name = GABp_GS, affected by kineticLaw
	xdot(79) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_106));
	
% Species:   id = GABp_RasGAP, name = GABp_RasGAP, affected by kineticLaw
	xdot(80) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_107));
	
% Species:   id = GABp_SHP2, name = GABp_SHP2, affected by kineticLaw
	xdot(81) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_108));
	
% Species:   id = GABp_pSHP2, name = GABp_pSHP2, affected by kineticLaw
	xdot(82) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_109));
	
% Species:   id = GABp_pSHP2_GS, name = GABp_pSHP2_GS, affected by kineticLaw
	xdot(83) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_110));
	
% Species:   id = imGABp, name = imGABp, affected by kineticLaw
	xdot(84) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_117) + (-1.0 * reaction_reaction_118));
	
% Species:   id = bRasGAP, name = bRasGAP
% Warning species is not changed by either rules or reactions
	xdot(85) = ;
	
% Species:   id = phosphorylated_Akt, name = phosphorylated_Akt, defined in a rule 	xdot(86) = x(86);
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


