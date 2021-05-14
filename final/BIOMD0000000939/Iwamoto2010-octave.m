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
% Model name = Iwamoto2010 - Cell cycle reponse to DNA damage
%
% is http://identifiers.org/biomodels.db/MODEL1809060003
% is http://identifiers.org/biomodels.db/BIOMD0000000939
%


function main()
%Initial conditions vector
	x0=zeros(60,1);
	x0(1) = 0.03;
	x0(2) = 5.0;
	x0(3) = 7.5;
	x0(4) = 0.001;
	x0(5) = 0.0;
	x0(6) = 15.0;
	x0(7) = 0.001;
	x0(8) = 4.0E-5;
	x0(9) = 0.0;
	x0(10) = 4.0E-4;
	x0(11) = 1.0E-4;
	x0(12) = 0.1;
	x0(13) = 0.9;
	x0(14) = 0.001;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 14.0;
	x0(18) = 0.001;
	x0(19) = 1.0E-4;
	x0(20) = 1.0;
	x0(21) = 0.0;
	x0(22) = 1.0E-4;
	x0(23) = 0.0;
	x0(24) = 0.0265;
	x0(25) = 0.001;
	x0(26) = 0.05;
	x0(27) = 1.95;
	x0(28) = 0.001;
	x0(29) = 0.01;
	x0(30) = 0.0;
	x0(31) = 2.35E-4;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0556;
	x0(35) = 0.0;
	x0(36) = 0.001;
	x0(37) = 0.01;
	x0(38) = 0.99;
	x0(39) = 0.0;
	x0(40) = 10.0;
	x0(41) = 1.0E-4;
	x0(42) = 1.0E-4;
	x0(43) = 1.0E-6;
	x0(44) = 2.0;
	x0(45) = 0.0;
	x0(46) = 0.001;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 1.0E-6;
	x0(52) = 0.03;
	x0(53) = 0.03;
	x0(54) = 0.9;
	x0(55) = 0.1;
	x0(56) = 0.0;
	x0(57) = 1.003;
	x0(58) = 6.4E-4;
	x0(59) = 2.0E-4;
	x0(60) = 2.0;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=5.0E-4;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.005;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0025;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.0025;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.0025;
% Parameter:   id =  k8, name = k8
	global_par_k8=2.5E-5;
% Parameter:   id =  k9, name = k9
	global_par_k9=3.0E-4;
% Parameter:   id =  k10, name = k10
	global_par_k10=5.0E-4;
% Parameter:   id =  k11, name = k11
	global_par_k11=5.0E-4;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.0E-4;
% Parameter:   id =  k13, name = k13
	global_par_k13=5.0E-4;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.0075;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.005;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.005;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.05;
% Parameter:   id =  k18, name = k18
	global_par_k18=5.0E-4;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.005;
% Parameter:   id =  k20, name = k20
	global_par_k20=5.0E-4;
% Parameter:   id =  k21, name = k21
	global_par_k21=5.0E-5;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.006;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.00175;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.0225;
% Parameter:   id =  k25, name = k25
	global_par_k25=1.75E-4;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.0225;
% Parameter:   id =  k27, name = k27
	global_par_k27=1.75E-4;
% Parameter:   id =  k28, name = k28
	global_par_k28=9.0E-4;
% Parameter:   id =  k29, name = k29
	global_par_k29=5.0E-5;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.0025;
% Parameter:   id =  k31, name = k31
	global_par_k31=1.75E-4;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.0025;
% Parameter:   id =  k33, name = k33
	global_par_k33=1.75E-4;
% Parameter:   id =  k34, name = k34
	global_par_k34=5.0E-8;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.05;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.0015;
% Parameter:   id =  k37, name = k37
	global_par_k37=5.0E-5;
% Parameter:   id =  k38, name = k38
	global_par_k38=0.001;
% Parameter:   id =  k39, name = k39
	global_par_k39=0.005;
% Parameter:   id =  k40, name = k40
	global_par_k40=0.002;
% Parameter:   id =  k41, name = k41
	global_par_k41=5.0E-5;
% Parameter:   id =  k42, name = k42
	global_par_k42=1.0E-4;
% Parameter:   id =  k43, name = k43
	global_par_k43=5.0E-4;
% Parameter:   id =  k44, name = k44
	global_par_k44=5.0E-4;
% Parameter:   id =  k45, name = k45
	global_par_k45=5.0E-5;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.0025;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.0025;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.0025;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.04;
% Parameter:   id =  k50, name = k50
	global_par_k50=0.0025;
% Parameter:   id =  k51, name = k51
	global_par_k51=5.0E-8;
% Parameter:   id =  k52, name = k52
	global_par_k52=5.0E-7;
% Parameter:   id =  k53, name = k53
	global_par_k53=5.0E-5;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.01;
% Parameter:   id =  k55, name = k55
	global_par_k55=5.0E-8;
% Parameter:   id =  k56, name = k56
	global_par_k56=5.0E-5;
% Parameter:   id =  k57, name = k57
	global_par_k57=0.005;
% Parameter:   id =  k58, name = k58
	global_par_k58=5.0E-5;
% Parameter:   id =  k59, name = k59
	global_par_k59=5.0E-4;
% Parameter:   id =  k60, name = k60
	global_par_k60=1.0E-4;
% Parameter:   id =  k61, name = k61
	global_par_k61=0.07;
% Parameter:   id =  k62, name = k62
	global_par_k62=0.001;
% Parameter:   id =  k63, name = k63
	global_par_k63=9.4E-4;
% Parameter:   id =  k64, name = k64
	global_par_k64=0.02;
% Parameter:   id =  k65, name = k65
	global_par_k65=9.5;
% Parameter:   id =  k66, name = k66
	global_par_k66=10.0;
% Parameter:   id =  k67, name = k67
	global_par_k67=0.005;
% Parameter:   id =  k68, name = k68
	global_par_k68=0.05;
% Parameter:   id =  k69, name = k69
	global_par_k69=8.0E-4;
% Parameter:   id =  k70, name = k70
	global_par_k70=6.0;
% Parameter:   id =  k71, name = k71
	global_par_k71=0.004;
% Parameter:   id =  k72, name = k72
	global_par_k72=1.0E-8;
% Parameter:   id =  k73, name = k73
	global_par_k73=3.0;
% Parameter:   id =  k74, name = k74
	global_par_k74=0.772;
% Parameter:   id =  k75, name = k75
	global_par_k75=1.0E-5;
% Parameter:   id =  k76, name = k76
	global_par_k76=0.0556;
% Parameter:   id =  k77, name = k77
	global_par_k77=0.02;
% Parameter:   id =  k78, name = k78
	global_par_k78=0.2;
% Parameter:   id =  k79, name = k79
	global_par_k79=0.01;
% Parameter:   id =  k80, name = k80
	global_par_k80=0.04;
% Parameter:   id =  k81, name = k81
	global_par_k81=0.001;
% Parameter:   id =  k82, name = k82
	global_par_k82=0.05;
% Parameter:   id =  k83, name = k83
	global_par_k83=0.005;
% Parameter:   id =  k84, name = k84
	global_par_k84=0.001;
% Parameter:   id =  k85, name = k85
	global_par_k85=0.005;
% Parameter:   id =  k86, name = k86
	global_par_k86=5.0E-4;
% Parameter:   id =  k87, name = k87
	global_par_k87=1.0;
% Parameter:   id =  k88, name = k88
	global_par_k88=1.0;
% Parameter:   id =  k89, name = k89
	global_par_k89=0.001;
% Parameter:   id =  k90, name = k90
	global_par_k90=5.0E-4;
% Parameter:   id =  k91, name = k91
	global_par_k91=0.02;
% Parameter:   id =  k92, name = k92
	global_par_k92=0.005;
% Parameter:   id =  k93, name = k93
	global_par_k93=0.00125;
% Parameter:   id =  k94, name = k94
	global_par_k94=2.5E-4;
% Parameter:   id =  k95, name = k95
	global_par_k95=0.05;
% Parameter:   id =  k96, name = k96
	global_par_k96=1.0E-4;
% Parameter:   id =  k97, name = k97
	global_par_k97=0.005;
% Parameter:   id =  k98, name = k98
	global_par_k98=0.005;
% Parameter:   id =  k99, name = k99
	global_par_k99=2.0E-4;
% Parameter:   id =  k100, name = k100
	global_par_k100=0.1;
% Parameter:   id =  k101, name = k101
	global_par_k101=1.0;
% Parameter:   id =  k102, name = k102
	global_par_k102=1.0;
% Parameter:   id =  k103, name = k103
	global_par_k103=0.0225;
% Parameter:   id =  k104, name = k104
	global_par_k104=1.75E-4;
% Parameter:   id =  k105, name = k105
	global_par_k105=0.05;
% Parameter:   id =  k106, name = k106
	global_par_k106=0.05;
% Parameter:   id =  k107, name = k107
	global_par_k107=0.002;
% Parameter:   id =  k108, name = k108
	global_par_k108=1.0E-5;
% Parameter:   id =  k109, name = k109
	global_par_k109=0.01;
% Parameter:   id =  k110, name = k110
	global_par_k110=1.0;
% Parameter:   id =  k111, name = k111
	global_par_k111=0.001;
% Parameter:   id =  k112, name = k112
	global_par_k112=0.01;
% Parameter:   id =  k113, name = k113
	global_par_k113=0.001;
% Parameter:   id =  k114, name = k114
	global_par_k114=1.0E-4;
% Parameter:   id =  k115, name = k115
	global_par_k115=0.01;
% Parameter:   id =  k116, name = k116
	global_par_k116=1.0;
% Parameter:   id =  k117, name = k117
	global_par_k117=1.0;
% Parameter:   id =  k118, name = k118
	global_par_k118=0.01;
% Parameter:   id =  k119, name = k119
	global_par_k119=1.0;
% Parameter:   id =  k120, name = k120
	global_par_k120=100.0;
% Parameter:   id =  k121, name = k121
	global_par_k121=1.0;
% Parameter:   id =  k122, name = k122
	global_par_k122=0.005;
% Parameter:   id =  k123, name = k123
	global_par_k123=0.01;
% Parameter:   id =  k124, name = k124
	global_par_k124=0.01;
% Parameter:   id =  k125, name = k125
	global_par_k125=0.005;
% Parameter:   id =  k126, name = k126
	global_par_k126=0.005;
% Parameter:   id =  k127, name = k127
	global_par_k127=0.005;
% Parameter:   id =  k128, name = k128
	global_par_k128=0.001;
% Parameter:   id =  k129, name = k129
	global_par_k129=0.3;
% Parameter:   id =  k130, name = k130
	global_par_k130=3.0E-6;
% Parameter:   id =  k131, name = k131
	global_par_k131=0.01;
% Parameter:   id =  k132, name = k132
	global_par_k132=5.0E-5;
% Parameter:   id =  k133, name = k133
	global_par_k133=5.0E-4;
% Parameter:   id =  k134, name = k134
	global_par_k134=0.01;
% Parameter:   id =  k135, name = k135
	global_par_k135=0.005;
% Parameter:   id =  k136, name = k136
	global_par_k136=0.005;
% Parameter:   id =  k137, name = k137
	global_par_k137=0.03;
% Parameter:   id =  DNA_damage_signal, name = DNA damage signal
	global_par_DNA_damage_signal=0.0;
% assignmentRule: variable = sig
	x(33)=global_par_DNA_damage_signal*exp((-global_par_k72)*time);
% assignmentRule: variable = deg
	x(34)=global_par_k76-global_par_k74*(x(33)-global_par_DNA_damage_signal*exp((-global_par_k77)*global_par_DNA_damage_signal*time));
% assignmentRule: variable = Cyclin_E_total
	x(57)=x(4)+x(7)+x(14)+x(20)+x(21);
% assignmentRule: variable = Cyclin_A_total
	x(58)=x(8)+x(10)+x(11)+x(22)+x(23)*0+x(36)*0+x(19)*0;
% assignmentRule: variable = APC_C_Cdc20_active_x20
	x(60)=20*x(12);
% assignmentRule: variable = Cyclin_B_total
	x(59)=x(39)+x(41)+x(42);

% Reaction: id = R2_Cyclin_degradation, name = R2 Cyclin degradation
	reaction_R2_Cyclin_degradation=compartment_nuclear*global_par_k2*x(1);

% Reaction: id = R3_4_Cyclin_D_Cdk4_complex_formation, name = R3_4 Cyclin D Cdk4 complex formation
	reaction_R3_4_Cyclin_D_Cdk4_complex_formation=compartment_nuclear*(global_par_k3*x(1)*x(2)-global_par_k4*x(3));

% Reaction: id = R5_Cyclin_E_synthesis_mediated_by_E2F, name = R5 Cyclin E synthesis mediated by E2F
	reaction_R5_Cyclin_E_synthesis_mediated_by_E2F=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k5, x(5));

% Reaction: id = R6_Cyclin_E_degradation, name = R6 Cyclin E degradation
	reaction_R6_Cyclin_E_degradation=compartment_nuclear*global_par_k6*x(4);

% Reaction: id = R7_Cyclin_E_Cdk2_complex_formation, name = R7 Cyclin E Cdk2 complex formation
	reaction_R7_Cyclin_E_Cdk2_complex_formation=compartment_nuclear*global_par_k7*x(4)*x(6);

% Reaction: id = R8_Cyclin_E_Cdk2_complex_dissociation, name = R8 Cyclin E Cdk2 complex dissociation
	reaction_R8_Cyclin_E_Cdk2_complex_dissociation=compartment_nuclear*global_par_k8*x(7);

% Reaction: id = R9_Cyclin_A_synthesis, name = R9 Cyclin A synthesis
	reaction_R9_Cyclin_A_synthesis=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k9, x(9));

% Reaction: id = R10_Cyclin_A_degradation, name = R10 Cyclin A degradation
	reaction_R10_Cyclin_A_degradation=compartment_nuclear*global_par_k10*x(8);

% Reaction: id = R11_Cyclin_A_Cdk2_complex_formation, name = R11 Cyclin A Cdk2 complex formation
	reaction_R11_Cyclin_A_Cdk2_complex_formation=compartment_nuclear*global_par_k11*x(8)*x(6);

% Reaction: id = R12_Cyclin_A_Cdk2_complex_dissociation, name = R12 Cyclin A Cdk2 complex dissociation
	reaction_R12_Cyclin_A_Cdk2_complex_dissociation=compartment_nuclear*global_par_k12*x(10);

% Reaction: id = R13_Cyclin_D_degradation, name = R13 Cyclin D degradation
	reaction_R13_Cyclin_D_degradation=compartment_nuclear*global_par_k13*x(3);

% Reaction: id = R14_Cyclin_A_degradation, name = R14 Cyclin A degradation
	reaction_R14_Cyclin_A_degradation=compartment_nuclear*Function_for_R14(global_par_k14, x(11), x(12), x(13));

% Reaction: id = R15_Cyclin_A_degradation, name = R15 Cyclin A degradation
	reaction_R15_Cyclin_A_degradation=compartment_nuclear*Function_for_R15(global_par_k15, x(10), x(12), x(13));

% Reaction: id = R16_Cyclin_E_degradation, name = R16 Cyclin E degradation
	reaction_R16_Cyclin_E_degradation=compartment_nuclear*global_par_k16*x(7);

% Reaction: id = R17_Cyclin_E_degradation, name = R17 Cyclin E degradation
	reaction_R17_Cyclin_E_degradation=compartment_nuclear*Function_for_R17(global_par_k17, x(14));

% Reaction: id = R18_binding_of_p21_to_Cyclin_D_Cdk4_complex, name = R18 binding of p21 to Cyclin D/Cdk4 complex
	reaction_R18_binding_of_p21_to_Cyclin_D_Cdk4_complex=compartment_nuclear*global_par_k18*x(15)*x(3);

% Reaction: id = R19_unbinding_of_p21_to_Cyclin_D_Cdk4_complex, name = R19 unbinding of p21 to Cyclin D/Cdk4 complex
	reaction_R19_unbinding_of_p21_to_Cyclin_D_Cdk4_complex=compartment_nuclear*global_par_k19*x(16);

% Reaction: id = R20_binding_of_p27_to_Cyclin_D_Cdk4_complex, name = R20 binding of p27 to Cyclin D/Cdk4 complex
	reaction_R20_binding_of_p27_to_Cyclin_D_Cdk4_complex=compartment_nuclear*global_par_k20*x(3)*x(17);

% Reaction: id = R21_unbinding_of_p27_to_Cyclin_D_Cdk4_complex, name = R21 unbinding of p27 to Cyclin D/Cdk4 complex
	reaction_R21_unbinding_of_p27_to_Cyclin_D_Cdk4_complex=compartment_nuclear*global_par_k21*x(18);

% Reaction: id = R22_Dephosphorylation_of_CycE_Cdk2_complex_by_Cdc25, name = R22 Dephosphorylation of CycE_Cdk2 complex by Cdc25
	reaction_R22_Dephosphorylation_of_CycE_Cdk2_complex_by_Cdc25=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k22, x(19), x(7));

% Reaction: id = R23_Phosphorylation_of_Cyclin_E_Cdk2_complex, name = R23 Phosphorylation of Cyclin E Cdk2 complex
	reaction_R23_Phosphorylation_of_Cyclin_E_Cdk2_complex=compartment_nuclear*global_par_k23*x(14);

% Reaction: id = R24_binding_of_p27_to_Cyclin_E_Cdk2_complex, name = R24 binding of p27 to Cyclin E/Cdk2 complex
	reaction_R24_binding_of_p27_to_Cyclin_E_Cdk2_complex=compartment_nuclear*global_par_k24*x(14)*x(17);

% Reaction: id = R25_unbinding_of_p27_to_Cyclin_E_Cdk2_complex, name = R25 unbinding of p27 to Cyclin E/Cdk2 complex
	reaction_R25_unbinding_of_p27_to_Cyclin_E_Cdk2_complex=compartment_nuclear*global_par_k25*x(20);

% Reaction: id = R26_binding_of_p21_to_Cyclin_E_Cdk2_complex, name = R26 binding of p21 to Cyclin E/Cdk2 complex
	reaction_R26_binding_of_p21_to_Cyclin_E_Cdk2_complex=compartment_nuclear*global_par_k26*x(14)*x(15);

% Reaction: id = R27_unbinding_of_p21_to_Cyclin_E_Cdk2_complex, name = R27 unbinding of p21 to Cyclin E/Cdk2 complex
	reaction_R27_unbinding_of_p21_to_Cyclin_E_Cdk2_complex=compartment_nuclear*global_par_k27*x(21);

% Reaction: id = R28_Dephosphorylation_of_Cyclin_A_Cdk2_complex, name = R28 Dephosphorylation of Cyclin A Cdk2 complex
	reaction_R28_Dephosphorylation_of_Cyclin_A_Cdk2_complex=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k28, x(19), x(10));

% Reaction: id = R29_Phosphorylation_of_Cyclin_A_Cdk2_complex, name = R29 Phosphorylation of Cyclin A Cdk2 complex
	reaction_R29_Phosphorylation_of_Cyclin_A_Cdk2_complex=compartment_nuclear*global_par_k29*x(11);

% Reaction: id = R30_binding_of_p27_to_Cyclin_A_Cdk2_complex, name = R30 binding of p27 to Cyclin A/Cdk2 complex
	reaction_R30_binding_of_p27_to_Cyclin_A_Cdk2_complex=compartment_nuclear*global_par_k30*x(11)*x(17);

% Reaction: id = R31_unbinding_of_p27_to_Cyclin_A_Cdk2_complex, name = R31 unbinding of p27 to Cyclin A/Cdk2 complex
	reaction_R31_unbinding_of_p27_to_Cyclin_A_Cdk2_complex=compartment_nuclear*global_par_k31*x(22);

% Reaction: id = R32_binding_of_p21_to_Cyclin_A_Cdk2_complex, name = R32 binding of p21 to Cyclin A/Cdk2 complex
	reaction_R32_binding_of_p21_to_Cyclin_A_Cdk2_complex=compartment_nuclear*global_par_k32*x(11)*x(15);

% Reaction: id = R33_unbinding_of_p21_to_Cyclin_A_Cdk2_complex, name = R33 unbinding of p21 to Cyclin A/Cdk2 complex
	reaction_R33_unbinding_of_p21_to_Cyclin_A_Cdk2_complex=compartment_nuclear*global_par_k33*x(23);

% Reaction: id = R35_p27_degradation_mediated_by_Cyclin_E_Cdk2_complex, name = R35 p27 degradation mediated by Cyclin E Cdk2 complex
	reaction_R35_p27_degradation_mediated_by_Cyclin_E_Cdk2_complex=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k35, x(17), x(14));

% Reaction: id = R36_p27_degradation_mediated_by_Cyclin_A_Cdk2_complex, name = R36 p27 degradation mediated by Cyclin A Cdk2 complex
	reaction_R36_p27_degradation_mediated_by_Cyclin_A_Cdk2_complex=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k36, x(17), x(11));

% Reaction: id = R38_p21_synthesis_mediated_by_p53, name = R38 p21 synthesis mediated by p53
	reaction_R38_p21_synthesis_mediated_by_p53=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k38, x(24));

% Reaction: id = R39_p21_degradation, name = R39 p21 degradation
	reaction_R39_p21_degradation=compartment_nuclear*global_par_k39*x(15);

% Reaction: id = R41_p16_synthesis_mediated_by_Rb, name = R41 p16 synthesis mediated by Rb
	reaction_R41_p16_synthesis_mediated_by_Rb=compartment_nuclear*Function_for_R41(global_par_k41, global_par_k42, x(26));

% Reaction: id = R43_p16_degradation, name = R43 p16 degradation
	reaction_R43_p16_degradation=compartment_nuclear*global_par_k43*x(25);

% Reaction: id = R44_Inhibition_by_p16_of_Cyclin_D_Cdk4_complex, name = R44 Inhibition by p16 of Cyclin D Cdk4 complex
	reaction_R44_Inhibition_by_p16_of_Cyclin_D_Cdk4_complex=compartment_nuclear*global_par_k44*x(3)*x(25);

% Reaction: id = R45_E2F_Rb_binding, name = R45 E2F Rb binding
	reaction_R45_E2F_Rb_binding=compartment_nuclear*global_par_k45*x(5)*x(26);

% Reaction: id = R46_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex, name = R46 Phosphorylation of Rb_E2F by Cyclin D Cdk4 complex
	reaction_R46_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k46, x(3), x(27));

% Reaction: id = R47_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex, name = R47 Phosphorylation of Rb_E2F by Cyclin D Cdk4 complex
	reaction_R47_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k47, x(18), x(27));

% Reaction: id = R48_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex, name = R48 Phosphorylation of Rb_E2F by Cyclin D Cdk4 complex
	reaction_R48_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k48, x(16), x(27));

% Reaction: id = R49_Dissociation_of_Rb_and_E2F, name = R49 Dissociation of Rb and E2F
	reaction_R49_Dissociation_of_Rb_and_E2F=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k49, x(14), x(28));

% Reaction: id = R50_Dissociation_of_Rb_and_E2F, name = R50 Dissociation of Rb and E2F
	reaction_R50_Dissociation_of_Rb_and_E2F=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k50, x(28), x(11));

% Reaction: id = R51_E2F_synthesis, name = R51 E2F synthesis
	reaction_R51_E2F_synthesis=compartment_nuclear*Function_for_R51(global_par_k51, x(5));

% Reaction: id = R53_E2F_degradation, name = R53 E2F degradation
	reaction_R53_E2F_degradation=compartment_nuclear*global_par_k53*x(5);

% Reaction: id = R54_E2F_degradation_mediated_by_Cyclin_A_Cdk2, name = R54 E2F degradation mediated by Cyclin A Cdk2
	reaction_R54_E2F_degradation_mediated_by_Cyclin_A_Cdk2=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k54, x(5), x(11));

% Reaction: id = R55_Dephosphorylation_of_Rb, name = R55 Dephosphorylation of Rb
	reaction_R55_Dephosphorylation_of_Rb=compartment_nuclear*global_par_k55*x(29);

% Reaction: id = R57_Rb_degradation, name = R57 Rb degradation
	reaction_R57_Rb_degradation=compartment_nuclear*global_par_k57*x(26);

% Reaction: id = R58_Rb_synthesis_mediated_by_p16, name = R58 Rb synthesis mediated by p16
	reaction_R58_Rb_synthesis_mediated_by_p16=compartment_nuclear*Function_for_R41(global_par_k58, global_par_k59, x(25));

% Reaction: id = R61_synthesis_of_p53_mediated_by_ATM_ATR, name = R61 synthesis of p53 mediated by ATM_ATR
	reaction_R61_synthesis_of_p53_mediated_by_ATM_ATR=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k61, x(30));

% Reaction: id = R62_degradation_of_p53_mediated_by_mdm2, name = R62 degradation of p53 mediated by mdm2
	reaction_R62_degradation_of_p53_mediated_by_mdm2=compartment_nuclear*global_par_k62*x(24);

% Reaction: id = R64_mdm2_degradation, name = R64 mdm2 degradation
	reaction_R64_mdm2_degradation=compartment_nuclear*global_par_k64*x(31);

% Reaction: id = R65_mdm2_synthesis, name = R65 mdm2 synthesis
	reaction_R65_mdm2_synthesis=compartment_nuclear*Function_for_R65(global_par_k66, x(32), global_par_k65);

% Reaction: id = R67_Intermediate_Degradation, name = R67 Intermediate Degradation
	reaction_R67_Intermediate_Degradation=compartment_nuclear*global_par_k67*x(32);

% Reaction: id = R70_Synthesis_mediated_by_p53_mdm2, name = R70 Synthesis mediated by p53 mdm2
	reaction_R70_Synthesis_mediated_by_p53_mdm2=compartment_nuclear*Function_for_R70(global_par_k70, x(24), x(33), global_par_k71, x(31));

% Reaction: id = R75_Cyclin_A_synthesis_mediated_by_NF_Y, name = R75 Cyclin A synthesis mediated by NF-Y
	reaction_R75_Cyclin_A_synthesis_mediated_by_NF_Y=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k75, x(35));

% Reaction: id = R78_synthesis_of_ATM_ATR, name = R78 synthesis of ATM/ATR
	reaction_R78_synthesis_of_ATM_ATR=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k78, x(33));

% Reaction: id = R79_ATM_ATR_degradation, name = R79 ATM/ATR degradation
	reaction_R79_ATM_ATR_degradation=compartment_nuclear*global_par_k79*x(30);

% Reaction: id = R80_synthesis_of_Cdc25_mediated_by_E2F, name = R80 synthesis of Cdc25 mediated by E2F
	reaction_R80_synthesis_of_Cdc25_mediated_by_E2F=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k80, x(5));

% Reaction: id = R81_Cdc25_degradation_mediated_by_Chk1, name = R81 Cdc25 degradation mediated by Chk1
	reaction_R81_Cdc25_degradation_mediated_by_Chk1=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k81, x(36), x(37));

% Reaction: id = R82_Cdc25_activation_mediated_by_Cyclin_E_A_Cdk2_complexes, name = R82 Cdc25 activation mediated by Cyclin E/A Cdk2 complexes
	reaction_R82_Cdc25_activation_mediated_by_Cyclin_E_A_Cdk2_complexes=compartment_nuclear*Function_for_R14(global_par_k82, x(36), x(14), x(11));

% Reaction: id = R83_Cdc25_degradation, name = R83 Cdc25 degradation
	reaction_R83_Cdc25_degradation=compartment_nuclear*global_par_k83*x(36);

% Reaction: id = R84_Cdc25_degradation, name = R84 Cdc25 degradation
	reaction_R84_Cdc25_degradation=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k84, x(19), x(37));

% Reaction: id = R85_Cdc25_inactivation, name = R85 Cdc25 inactivation
	reaction_R85_Cdc25_inactivation=compartment_nuclear*global_par_k85*x(19);

% Reaction: id = R86_Cdc25_degradation, name = R86 Cdc25 degradation
	reaction_R86_Cdc25_degradation=compartment_nuclear*global_par_k86*x(19);

% Reaction: id = R87_inactivation_of_Chk1, name = R87 inactivation of Chk1
	reaction_R87_inactivation_of_Chk1=compartment_nuclear*global_par_k87*x(37);

% Reaction: id = R88_activation_of_Chk1, name = R88 activation of Chk1
	reaction_R88_activation_of_Chk1=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k88, x(30), x(38));

% Reaction: id = R89_synthesis_of_NF_Y_mediated_by_Cyclin_A_Cdk2_complex, name = R89 synthesis of NF-Y mediated by Cyclin A Cdk2 complex
	reaction_R89_synthesis_of_NF_Y_mediated_by_Cyclin_A_Cdk2_complex=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k89, x(11));

% Reaction: id = R90_NF_Y_degradation, name = R90 NF-Y degradation
	reaction_R90_NF_Y_degradation=compartment_nuclear*global_par_k90*x(35);

% Reaction: id = R91_Cyclin_B_synthesis_mediated_by_NF_Y, name = R91 Cyclin B synthesis mediated by NF-Y
	reaction_R91_Cyclin_B_synthesis_mediated_by_NF_Y=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k91, x(35));

% Reaction: id = R92_Cyclin_B_degradation, name = R92 Cyclin B degradation
	reaction_R92_Cyclin_B_degradation=compartment_nuclear*global_par_k92*x(39);

% Reaction: id = R93_Cyclin_B_Cdk1_binding, name = R93 Cyclin B Cdk1 binding
	reaction_R93_Cyclin_B_Cdk1_binding=global_par_k93*x(39)*x(40);

% Reaction: id = R94_Cyclin_B_Cdk1_dissociation, name = R94 Cyclin B Cdk1 dissociation
	reaction_R94_Cyclin_B_Cdk1_dissociation=global_par_k94*x(41);

% Reaction: id = R95_Cyclin_B_Cdk1_complex_activation_by_dephosphorylation, name = R95 Cyclin B Cdk1 complex activation by dephosphorylation
	reaction_R95_Cyclin_B_Cdk1_complex_activation_by_dephosphorylation=Function_for_R14(global_par_k95, x(41), x(43), x(45));

% Reaction: id = R96_Cyclin_B_Cdk1_complex_phosphorylation__inactivation, name = R96 Cyclin B Cdk1 complex phosphorylation_ inactivation
	reaction_R96_Cyclin_B_Cdk1_complex_phosphorylation__inactivation=compartment_cytoplasm*global_par_k96*x(42);

% Reaction: id = R97_Cyclin_B_degradation_by_APC_Cdc20_Cdh1, name = R97 Cyclin B degradation by APC Cdc20/Cdh1
	reaction_R97_Cyclin_B_degradation_by_APC_Cdc20_Cdh1=Function_for_R14(global_par_k97, x(41), x(12), x(13));

% Reaction: id = R98_Cyclin_B_degradation, name = R98 Cyclin B degradation
	reaction_R98_Cyclin_B_degradation=Function_for_R14(global_par_k98, x(42), x(12), x(13));

% Reaction: id = R100_phosphorylation_of_wee1, name = R100 phosphorylation of wee1
	reaction_R100_phosphorylation_of_wee1=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k100, x(48), x(46));

% Reaction: id = R101_dephosphorylation_of_wee1, name = R101 dephosphorylation of wee1
	reaction_R101_dephosphorylation_of_wee1=compartment_nuclear*global_par_k101*x(47);

% Reaction: id = R102_degradation_of_wee1, name = R102 degradation of wee1
	reaction_R102_degradation_of_wee1=compartment_nuclear*global_par_k102*x(47);

% Reaction: id = R103_p21_binding_to_Cyclin_B_Cdk1_complex, name = R103 p21 binding to Cyclin B Cdk1 complex
	reaction_R103_p21_binding_to_Cyclin_B_Cdk1_complex=compartment_nuclear*global_par_k103*x(48)*x(15);

% Reaction: id = R104_p21_dissociation_to_Cyclin_B_Cdk1_complex, name = R104 p21 dissociation to Cyclin B Cdk1 complex
	reaction_R104_p21_dissociation_to_Cyclin_B_Cdk1_complex=compartment_nuclear*global_par_k104*x(49);

% Reaction: id = R105_synthesis_of_iB_Myb_mediated_by_E2F, name = R105 synthesis of iB-Myb mediated by E2F
	reaction_R105_synthesis_of_iB_Myb_mediated_by_E2F=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k105, x(5));

% Reaction: id = R106_activation_of_B_Myb_by_Cyclin_A_Cdk2_complex, name = R106 activation of B-Myb by Cyclin A Cdk2 complex
	reaction_R106_activation_of_B_Myb_by_Cyclin_A_Cdk2_complex=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k106, x(50), x(11));

% Reaction: id = R107_degradation_of_B_Myb, name = R107 degradation of B-Myb
	reaction_R107_degradation_of_B_Myb=compartment_nuclear*global_par_k107*x(9);

% Reaction: id = R109_inactivation_of_Cdc25, name = R109 inactivation of Cdc25
	reaction_R109_inactivation_of_Cdc25=compartment_nuclear*global_par_k109*x(43);

% Reaction: id = R110_activation_of_Cdc25_mediated_by_cyclin_B_Cdk1_complex, name = R110 activation of Cdc25 mediated by cyclin B Cdk1 complex
	reaction_R110_activation_of_Cdc25_mediated_by_cyclin_B_Cdk1_complex=Function_for_R14(global_par_k110, x(51), x(42), x(48));

% Reaction: id = R111_phosphorylation_of_Cdc25_mediated_by_Chk1, name = R111 phosphorylation of Cdc25 mediated by Chk1
	reaction_R111_phosphorylation_of_Cdc25_mediated_by_Chk1=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k111, x(37), x(51));

% Reaction: id = R112_dephosphorylation_of_Cdc25, name = R112 dephosphorylation of Cdc25
	reaction_R112_dephosphorylation_of_Cdc25=compartment_nuclear*global_par_k112*x(45);

% Reaction: id = R113_phosphorylation_of_Cdc25_mediated_by_Chk1, name = R113 phosphorylation of Cdc25 mediated by Chk1
	reaction_R113_phosphorylation_of_Cdc25_mediated_by_Chk1=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k113, x(37), x(43));

% Reaction: id = R114_degradation_of_Cdc25, name = R114 degradation of Cdc25
	reaction_R114_degradation_of_Cdc25=compartment_nuclear*global_par_k114*x(43);

% Reaction: id = R115_inactivation_of_Cdc25, name = R115 inactivation of Cdc25
	reaction_R115_inactivation_of_Cdc25=compartment_nuclear*global_par_k115*x(45);

% Reaction: id = R116_activation_of_Cdc25_mediated_by_Cyclin_B_Cdk1, name = R116 activation of Cdc25 mediated by Cyclin B Cdk1
	reaction_R116_activation_of_Cdc25_mediated_by_Cyclin_B_Cdk1=Function_for_R14(global_par_k116, x(52), x(42), x(48));

% Reaction: id = R118_synthesis_of_14_3_3_sigma_mediated_by_p53, name = R118 synthesis of 14_3_3_sigma mediated by p53
	reaction_R118_synthesis_of_14_3_3_sigma_mediated_by_p53=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k118, x(24));

% Reaction: id = R119_degradation_of_14_3_3_sigma, name = R119 degradation of 14_3_3_sigma
	reaction_R119_degradation_of_14_3_3_sigma=compartment_nuclear*global_par_k119*x(44);

% Reaction: id = R120_Binding_of_Cdc25_to_14_3_3, name = R120 Binding of Cdc25 to 14-3-3
	reaction_R120_Binding_of_Cdc25_to_14_3_3=compartment_nuclear*global_par_k120*x(52)*x(44);

% Reaction: id = R121_Degradation_of_Cdc25_14_3_3_sigma_complex, name = R121 Degradation of Cdc25 14_3_3_sigma complex
	reaction_R121_Degradation_of_Cdc25_14_3_3_sigma_complex=compartment_nuclear*global_par_k121*x(53);

% Reaction: id = R122_Inactivation_of_APC_C_Cdc20, name = R122 Inactivation of APC/C_Cdc20
	reaction_R122_Inactivation_of_APC_C_Cdc20=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k122, x(13), x(12));

% Reaction: id = R123_Activation_of_APC_C_Cdc20, name = R123 Activation of APC/C_Cdc20
	reaction_R123_Activation_of_APC_C_Cdc20=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k123, x(48), x(54));

% Reaction: id = R124_Inactivation_of_APC_C_Cdh1, name = R124 Inactivation of APC/C_Cdh1
	reaction_R124_Inactivation_of_APC_C_Cdh1=compartment_nuclear*Function_for_R14(global_par_k124, x(13), x(48), x(11));

% Reaction: id = R125_Activation_of_APC_C_Cdh1, name = R125 Activation of APC/C_Cdh1
	reaction_R125_Activation_of_APC_C_Cdh1=compartment_nuclear*global_par_k125*x(55);

% Reaction: id = R126_Degradation_of_Cyclin_A_mediated_by_APC_C_Cdc20, name = R126 Degradation of Cyclin A mediated by APC_C_Cdc20
	reaction_R126_Degradation_of_Cyclin_A_mediated_by_APC_C_Cdc20=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k126, x(8), x(12));

% Reaction: id = R127_Degradation_of_Cyclin_A__mediated_by_APC_C_Cdh1, name = R127 Degradation of Cyclin A  mediated by APC_C_Cdh1
	reaction_R127_Degradation_of_Cyclin_A__mediated_by_APC_C_Cdh1=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k127, x(8), x(13));

% Reaction: id = R128_Degradation_of_Cyclin_B_mediated_by_APC_C_Cdc20, name = R128 Degradation of Cyclin B mediated by APC_C_Cdc20
	reaction_R128_Degradation_of_Cyclin_B_mediated_by_APC_C_Cdc20=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k128, x(39), x(12));

% Reaction: id = R129_Degradation_of_Cyclin_B__mediated_by_APC_C_Cdh1, name = R129 Degradation of Cyclin B  mediated by APC_C_Cdh1
	reaction_R129_Degradation_of_Cyclin_B__mediated_by_APC_C_Cdh1=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k129, x(39), x(13));

% Reaction: id = R130_Synthesis_of_Cyclin_A_mediated_by_E2F, name = R130 Synthesis of Cyclin A mediated by E2F
	reaction_R130_Synthesis_of_Cyclin_A_mediated_by_E2F=compartment_nuclear*Function_for_synthesis_by_modifier(global_par_k130, x(5));

% Reaction: id = R131_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear, name = R131 translocation of Cyclin B Cdk1 complex for cytoplasm to nuclear
	reaction_R131_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear=Function_for_R17(global_par_k131, x(42));

% Reaction: id = R132_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear, name = R132 translocation of Cyclin B Cdk1 complex for cytoplasm to nuclear
	reaction_R132_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear=global_par_k132*x(48);

% Reaction: id = R133_inactivation_of_Cyclin_B_Cdk1, name = R133 inactivation of Cyclin B Cdk1
	reaction_R133_inactivation_of_Cyclin_B_Cdk1=compartment_nuclear*Function_for_synthesis_with_modifier(global_par_k133, x(46), x(48));

% Reaction: id = R134_Activation_of_cyclin_B_Cdk1, name = R134 Activation of cyclin B Cdk1
	reaction_R134_Activation_of_cyclin_B_Cdk1=compartment_nuclear*Function_for_R14(global_par_k134, x(56), x(43), x(45));

% Reaction: id = R135_degradation_of_cyclin_B_cdk1, name = R135 degradation of cyclin B cdk1
	reaction_R135_degradation_of_cyclin_B_cdk1=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k135, x(48), x(12));

% Reaction: id = R136_degradation_of_cyclin_B_cdk1, name = R136 degradation of cyclin B cdk1
	reaction_R136_degradation_of_cyclin_B_cdk1=compartment_nuclear*Function_for_R14(global_par_k136, x(56), x(12), x(13));

% Reaction: id = R137_degradation_of_cyclin_B_cdk1, name = R137 degradation of cyclin B cdk1
	reaction_R137_degradation_of_cyclin_B_cdk1=compartment_nuclear*Function_for_degradation_mass_action_modifier(global_par_k137, x(48), x(13));

% Reaction: id = Rdeg_p53_degradation, name = Rdeg p53 degradation
	reaction_Rdeg_p53_degradation=compartment_nuclear*Function_for_Rdeg(x(34), x(31), x(24));

	xdot=zeros(60,1);
	
% Species:   id = Cyclin_D, name = Cyclin_D, affected by kineticLaw
	xdot(1) = (1/(compartment_nuclear))*(( 1.0 * reaction_R1_Cyclin_D_synthesis) + (-1.0 * reaction_R2_Cyclin_degradation) + (-1.0 * reaction_R3_4_Cyclin_D_Cdk4_complex_formation));
	
% Species:   id = Cdk4, name = Cdk4, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*((-1.0 * reaction_R3_4_Cyclin_D_Cdk4_complex_formation) + ( 1.0 * reaction_R13_Cyclin_D_degradation));
	
% Species:   id = Cyclin_D_Cdk4, name = Cyclin_D/Cdk4, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*(( 1.0 * reaction_R3_4_Cyclin_D_Cdk4_complex_formation) + (-1.0 * reaction_R13_Cyclin_D_degradation) + (-1.0 * reaction_R18_binding_of_p21_to_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R19_unbinding_of_p21_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R20_binding_of_p27_to_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R21_unbinding_of_p27_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R44_Inhibition_by_p16_of_Cyclin_D_Cdk4_complex));
	
% Species:   id = Cyclin_E, name = Cyclin_E, affected by kineticLaw
	xdot(4) = (1/(compartment_nuclear))*(( 1.0 * reaction_R5_Cyclin_E_synthesis_mediated_by_E2F) + (-1.0 * reaction_R6_Cyclin_E_degradation) + (-1.0 * reaction_R7_Cyclin_E_Cdk2_complex_formation) + ( 1.0 * reaction_R8_Cyclin_E_Cdk2_complex_dissociation));
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(5) = (1/(compartment_nuclear))*((-1.0 * reaction_R45_E2F_Rb_binding) + ( 1.0 * reaction_R49_Dissociation_of_Rb_and_E2F) + ( 1.0 * reaction_R50_Dissociation_of_Rb_and_E2F) + ( 1.0 * reaction_R51_E2F_synthesis) + ( 1.0 * reaction_R52_E2F_synthesis) + (-1.0 * reaction_R53_E2F_degradation) + (-1.0 * reaction_R54_E2F_degradation_mediated_by_Cyclin_A_Cdk2));
	
% Species:   id = Cdk2, name = Cdk2, affected by kineticLaw
	xdot(6) = (1/(compartment_nuclear))*((-1.0 * reaction_R7_Cyclin_E_Cdk2_complex_formation) + ( 1.0 * reaction_R8_Cyclin_E_Cdk2_complex_dissociation) + (-1.0 * reaction_R11_Cyclin_A_Cdk2_complex_formation) + ( 1.0 * reaction_R12_Cyclin_A_Cdk2_complex_dissociation) + ( 1.0 * reaction_R14_Cyclin_A_degradation) + ( 1.0 * reaction_R15_Cyclin_A_degradation) + ( 1.0 * reaction_R16_Cyclin_E_degradation) + ( 1.0 * reaction_R17_Cyclin_E_degradation));
	
% Species:   id = Cyclin_E_Cdk2_inactive_phosphorylated, name = Cyclin_E/Cdk2_inactive_phosphorylated, affected by kineticLaw
	xdot(7) = (1/(compartment_nuclear))*(( 1.0 * reaction_R7_Cyclin_E_Cdk2_complex_formation) + (-1.0 * reaction_R8_Cyclin_E_Cdk2_complex_dissociation) + (-1.0 * reaction_R16_Cyclin_E_degradation) + (-1.0 * reaction_R22_Dephosphorylation_of_CycE_Cdk2_complex_by_Cdc25) + ( 1.0 * reaction_R23_Phosphorylation_of_Cyclin_E_Cdk2_complex));
	
% Species:   id = Cyclin_A, name = Cyclin_A, affected by kineticLaw
	xdot(8) = (1/(compartment_nuclear))*(( 1.0 * reaction_R9_Cyclin_A_synthesis) + (-1.0 * reaction_R10_Cyclin_A_degradation) + (-1.0 * reaction_R11_Cyclin_A_Cdk2_complex_formation) + ( 1.0 * reaction_R12_Cyclin_A_Cdk2_complex_dissociation) + ( 1.0 * reaction_R75_Cyclin_A_synthesis_mediated_by_NF_Y) + (-1.0 * reaction_R126_Degradation_of_Cyclin_A_mediated_by_APC_C_Cdc20) + (-1.0 * reaction_R127_Degradation_of_Cyclin_A__mediated_by_APC_C_Cdh1) + ( 1.0 * reaction_R130_Synthesis_of_Cyclin_A_mediated_by_E2F));
	
% Species:   id = B_Myb_active, name = B-Myb_active, affected by kineticLaw
	xdot(9) = (1/(compartment_nuclear))*(( 1.0 * reaction_R106_activation_of_B_Myb_by_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R107_degradation_of_B_Myb));
	
% Species:   id = Cyclin_A_Cdk2_inactive, name = Cyclin_A/Cdk2_inactive, affected by kineticLaw
	xdot(10) = (1/(compartment_nuclear))*(( 1.0 * reaction_R11_Cyclin_A_Cdk2_complex_formation) + (-1.0 * reaction_R12_Cyclin_A_Cdk2_complex_dissociation) + (-1.0 * reaction_R15_Cyclin_A_degradation) + (-1.0 * reaction_R28_Dephosphorylation_of_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R29_Phosphorylation_of_Cyclin_A_Cdk2_complex));
	
% Species:   id = Cyclin_A_Cdk2_active, name = Cyclin_A/Cdk2_active, affected by kineticLaw
	xdot(11) = (1/(compartment_nuclear))*((-1.0 * reaction_R14_Cyclin_A_degradation) + ( 1.0 * reaction_R28_Dephosphorylation_of_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R29_Phosphorylation_of_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R30_binding_of_p27_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R31_unbinding_of_p27_to_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R32_binding_of_p21_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R33_unbinding_of_p21_to_Cyclin_A_Cdk2_complex));
	
% Species:   id = APC_Ccdc20_active, name = APC/Ccdc20_active, affected by kineticLaw
	xdot(12) = (1/(compartment_nuclear))*((-1.0 * reaction_R122_Inactivation_of_APC_C_Cdc20) + ( 1.0 * reaction_R123_Activation_of_APC_C_Cdc20));
	
% Species:   id = APC_Ccdh1_active, name = APC/Ccdh1_active, affected by kineticLaw
	xdot(13) = (1/(compartment_nuclear))*((-1.0 * reaction_R124_Inactivation_of_APC_C_Cdh1) + ( 1.0 * reaction_R125_Activation_of_APC_C_Cdh1));
	
% Species:   id = Cyclin_E_Cdk2_active_unphosphorylated, name = Cyclin_E/Cdk2_active_unphosphorylated, affected by kineticLaw
	xdot(14) = (1/(compartment_nuclear))*((-1.0 * reaction_R17_Cyclin_E_degradation) + ( 1.0 * reaction_R22_Dephosphorylation_of_CycE_Cdk2_complex_by_Cdc25) + (-1.0 * reaction_R23_Phosphorylation_of_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R24_binding_of_p27_to_Cyclin_E_Cdk2_complex) + ( 1.0 * reaction_R25_unbinding_of_p27_to_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R26_binding_of_p21_to_Cyclin_E_Cdk2_complex) + ( 1.0 * reaction_R27_unbinding_of_p21_to_Cyclin_E_Cdk2_complex));
	
% Species:   id = p21, name = p21, affected by kineticLaw
	xdot(15) = (1/(compartment_nuclear))*((-1.0 * reaction_R18_binding_of_p21_to_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R19_unbinding_of_p21_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R26_binding_of_p21_to_Cyclin_E_Cdk2_complex) + ( 1.0 * reaction_R27_unbinding_of_p21_to_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R32_binding_of_p21_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R33_unbinding_of_p21_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R37_p21_synthesis) + ( 1.0 * reaction_R38_p21_synthesis_mediated_by_p53) + (-1.0 * reaction_R39_p21_degradation) + (-1.0 * reaction_R103_p21_binding_to_Cyclin_B_Cdk1_complex) + ( 1.0 * reaction_R104_p21_dissociation_to_Cyclin_B_Cdk1_complex));
	
% Species:   id = p21_CyclinD_Cdk4, name = p21/CyclinD/Cdk4, affected by kineticLaw
	xdot(16) = (1/(compartment_nuclear))*(( 1.0 * reaction_R18_binding_of_p21_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R19_unbinding_of_p21_to_Cyclin_D_Cdk4_complex));
	
% Species:   id = p27, name = p27, affected by kineticLaw
	xdot(17) = (1/(compartment_nuclear))*((-1.0 * reaction_R20_binding_of_p27_to_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R21_unbinding_of_p27_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R24_binding_of_p27_to_Cyclin_E_Cdk2_complex) + ( 1.0 * reaction_R25_unbinding_of_p27_to_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R30_binding_of_p27_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R31_unbinding_of_p27_to_Cyclin_A_Cdk2_complex) + ( 1.0 * reaction_R34_synthesis_of_p27) + (-1.0 * reaction_R35_p27_degradation_mediated_by_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R36_p27_degradation_mediated_by_Cyclin_A_Cdk2_complex));
	
% Species:   id = p27_CyclinD_Cdk4, name = p27/CyclinD/Cdk4, affected by kineticLaw
	xdot(18) = (1/(compartment_nuclear))*(( 1.0 * reaction_R20_binding_of_p27_to_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R21_unbinding_of_p27_to_Cyclin_D_Cdk4_complex));
	
% Species:   id = Cdc25A_active, name = Cdc25A_active, affected by kineticLaw
	xdot(19) = (1/(compartment_nuclear))*(( 1.0 * reaction_R82_Cdc25_activation_mediated_by_Cyclin_E_A_Cdk2_complexes) + (-1.0 * reaction_R84_Cdc25_degradation) + (-1.0 * reaction_R85_Cdc25_inactivation) + (-1.0 * reaction_R86_Cdc25_degradation));
	
% Species:   id = p27_CyclinE_Cdk2, name = p27/CyclinE/Cdk2, affected by kineticLaw
	xdot(20) = (1/(compartment_nuclear))*(( 1.0 * reaction_R24_binding_of_p27_to_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R25_unbinding_of_p27_to_Cyclin_E_Cdk2_complex));
	
% Species:   id = p21_CyclinE_Cdk2, name = p21/CyclinE/Cdk2, affected by kineticLaw
	xdot(21) = (1/(compartment_nuclear))*(( 1.0 * reaction_R26_binding_of_p21_to_Cyclin_E_Cdk2_complex) + (-1.0 * reaction_R27_unbinding_of_p21_to_Cyclin_E_Cdk2_complex));
	
% Species:   id = p27_CyclinA_Cdk2, name = p27/CyclinA/Cdk2, affected by kineticLaw
	xdot(22) = (1/(compartment_nuclear))*(( 1.0 * reaction_R30_binding_of_p27_to_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R31_unbinding_of_p27_to_Cyclin_A_Cdk2_complex));
	
% Species:   id = p21_CyclinA_Cdk2, name = p21/CyclinA/Cdk2, affected by kineticLaw
	xdot(23) = (1/(compartment_nuclear))*(( 1.0 * reaction_R32_binding_of_p21_to_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R33_unbinding_of_p21_to_Cyclin_A_Cdk2_complex));
	
% Species:   id = p53, name = p53, affected by kineticLaw
	xdot(24) = (1/(compartment_nuclear))*(( 1.0 * reaction_R60_synthesis_of_p53) + ( 1.0 * reaction_R61_synthesis_of_p53_mediated_by_ATM_ATR) + (-1.0 * reaction_R62_degradation_of_p53_mediated_by_mdm2) + (-1.0 * reaction_Rdeg_p53_degradation));
	
% Species:   id = p16, name = p16, affected by kineticLaw
	xdot(25) = (1/(compartment_nuclear))*(( 1.0 * reaction_R40_p16_synthesis) + ( 1.0 * reaction_R41_p16_synthesis_mediated_by_Rb) + (-1.0 * reaction_R43_p16_degradation) + (-1.0 * reaction_R44_Inhibition_by_p16_of_Cyclin_D_Cdk4_complex));
	
% Species:   id = Rb, name = Rb, affected by kineticLaw
	xdot(26) = (1/(compartment_nuclear))*((-1.0 * reaction_R45_E2F_Rb_binding) + ( 1.0 * reaction_R55_Dephosphorylation_of_Rb) + ( 1.0 * reaction_R56_Rb_synthesis) + (-1.0 * reaction_R57_Rb_degradation) + ( 1.0 * reaction_R58_Rb_synthesis_mediated_by_p16));
	
% Species:   id = Rb_E2F, name = Rb/E2F, affected by kineticLaw
	xdot(27) = (1/(compartment_nuclear))*(( 1.0 * reaction_R45_E2F_Rb_binding) + (-1.0 * reaction_R46_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R47_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R48_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex));
	
% Species:   id = Rb_PP_E2F, name = Rb-PP/E2F, affected by kineticLaw
	xdot(28) = (1/(compartment_nuclear))*(( 1.0 * reaction_R46_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R47_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex) + ( 1.0 * reaction_R48_Phosphorylation_of_Rb_E2F_by_Cyclin_D_Cdk4_complex) + (-1.0 * reaction_R49_Dissociation_of_Rb_and_E2F) + (-1.0 * reaction_R50_Dissociation_of_Rb_and_E2F));
	
% Species:   id = Rb_PPP, name = Rb-PPP, affected by kineticLaw
	xdot(29) = (1/(compartment_nuclear))*(( 1.0 * reaction_R49_Dissociation_of_Rb_and_E2F) + ( 1.0 * reaction_R50_Dissociation_of_Rb_and_E2F) + (-1.0 * reaction_R55_Dephosphorylation_of_Rb));
	
% Species:   id = ATM_ATR, name = ATM/ATR, affected by kineticLaw
	xdot(30) = (1/(compartment_nuclear))*(( 1.0 * reaction_R78_synthesis_of_ATM_ATR) + (-1.0 * reaction_R79_ATM_ATR_degradation));
	
% Species:   id = Mdm2, name = Mdm2, affected by kineticLaw
	xdot(31) = (1/(compartment_nuclear))*(( 1.0 * reaction_R63_mdm2_synthesis) + (-1.0 * reaction_R64_mdm2_degradation) + ( 1.0 * reaction_R65_mdm2_synthesis));
	
% Species:   id = Intermediate, name = Intermediate, affected by kineticLaw
	xdot(32) = (1/(compartment_nuclear))*((-1.0 * reaction_R67_Intermediate_Degradation) + ( 1.0 * reaction_R70_Synthesis_mediated_by_p53_mdm2));
	
% Species:   id = sig, name = sig, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = deg, name = deg, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = NF_Y, name = NF-Y, affected by kineticLaw
	xdot(35) = (1/(compartment_nuclear))*(( 1.0 * reaction_R89_synthesis_of_NF_Y_mediated_by_Cyclin_A_Cdk2_complex) + (-1.0 * reaction_R90_NF_Y_degradation));
	
% Species:   id = Cdc25A_inactive, name = Cdc25A_inactive, affected by kineticLaw
	xdot(36) = (1/(compartment_nuclear))*(( 1.0 * reaction_R80_synthesis_of_Cdc25_mediated_by_E2F) + (-1.0 * reaction_R81_Cdc25_degradation_mediated_by_Chk1) + (-1.0 * reaction_R82_Cdc25_activation_mediated_by_Cyclin_E_A_Cdk2_complexes) + (-1.0 * reaction_R83_Cdc25_degradation) + ( 1.0 * reaction_R85_Cdc25_inactivation));
	
% Species:   id = Chk1_active, name = Chk1_active, affected by kineticLaw
	xdot(37) = (1/(compartment_nuclear))*((-1.0 * reaction_R87_inactivation_of_Chk1) + ( 1.0 * reaction_R88_activation_of_Chk1));
	
% Species:   id = Chk1_inactive, name = Chk1_inactive, affected by kineticLaw
	xdot(38) = (1/(compartment_nuclear))*(( 1.0 * reaction_R87_inactivation_of_Chk1) + (-1.0 * reaction_R88_activation_of_Chk1));
	
% Species:   id = Cyclin_B, name = Cyclin_B, affected by kineticLaw
	xdot(39) = (1/(compartment_nuclear))*(( 1.0 * reaction_R91_Cyclin_B_synthesis_mediated_by_NF_Y) + (-1.0 * reaction_R92_Cyclin_B_degradation) + (-1.0 * reaction_R93_Cyclin_B_Cdk1_binding) + ( 1.0 * reaction_R94_Cyclin_B_Cdk1_dissociation) + (-1.0 * reaction_R128_Degradation_of_Cyclin_B_mediated_by_APC_C_Cdc20) + (-1.0 * reaction_R129_Degradation_of_Cyclin_B__mediated_by_APC_C_Cdh1));
	
% Species:   id = Cdk1, name = Cdk1, affected by kineticLaw
	xdot(40) = (1/(compartment_nuclear))*((-1.0 * reaction_R93_Cyclin_B_Cdk1_binding) + ( 1.0 * reaction_R94_Cyclin_B_Cdk1_dissociation) + ( 1.0 * reaction_R97_Cyclin_B_degradation_by_APC_Cdc20_Cdh1) + ( 1.0 * reaction_R98_Cyclin_B_degradation));
	
% Species:   id = Cyclin_B_Cdk1_inactive_unphosphorylated_cytoplasm, name = Cyclin_B/Cdk1_inactive_unphosphorylated_cytoplasm, affected by kineticLaw
	xdot(41) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R93_Cyclin_B_Cdk1_binding) + (-1.0 * reaction_R94_Cyclin_B_Cdk1_dissociation) + (-1.0 * reaction_R95_Cyclin_B_Cdk1_complex_activation_by_dephosphorylation) + ( 1.0 * reaction_R96_Cyclin_B_Cdk1_complex_phosphorylation__inactivation) + (-1.0 * reaction_R97_Cyclin_B_degradation_by_APC_Cdc20_Cdh1));
	
% Species:   id = Cyclin_B_Cdk1_active_phosphorylated_cytoplasm, name = Cyclin_B_Cdk1_active_phosphorylated_cytoplasm, affected by kineticLaw
	xdot(42) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R95_Cyclin_B_Cdk1_complex_activation_by_dephosphorylation) + (-1.0 * reaction_R96_Cyclin_B_Cdk1_complex_phosphorylation__inactivation) + (-1.0 * reaction_R98_Cyclin_B_degradation) + (-1.0 * reaction_R131_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear) + ( 1.0 * reaction_R132_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear));
	
% Species:   id = Cdc25C_active, name = Cdc25C_active, affected by kineticLaw
	xdot(43) = (1/(compartment_nuclear))*((-1.0 * reaction_R109_inactivation_of_Cdc25) + ( 1.0 * reaction_R110_activation_of_Cdc25_mediated_by_cyclin_B_Cdk1_complex) + ( 1.0 * reaction_R112_dephosphorylation_of_Cdc25) + (-1.0 * reaction_R113_phosphorylation_of_Cdc25_mediated_by_Chk1) + (-1.0 * reaction_R114_degradation_of_Cdc25));
	
% Species:   id = _14_3_3_sigma, name = _14_3_3_sigma, affected by kineticLaw
	xdot(44) = (1/(compartment_nuclear))*(( 1.0 * reaction_R117_synthesis_of_14_3_3_sigma) + ( 1.0 * reaction_R118_synthesis_of_14_3_3_sigma_mediated_by_p53) + (-1.0 * reaction_R119_degradation_of_14_3_3_sigma) + (-1.0 * reaction_R120_Binding_of_Cdc25_to_14_3_3));
	
% Species:   id = Cdc25C_Ps216_phosphorylated_active, name = Cdc25C_Ps216_phosphorylated_active, affected by kineticLaw
	xdot(45) = (1/(compartment_nuclear))*((-1.0 * reaction_R112_dephosphorylation_of_Cdc25) + ( 1.0 * reaction_R113_phosphorylation_of_Cdc25_mediated_by_Chk1) + (-1.0 * reaction_R115_inactivation_of_Cdc25) + ( 1.0 * reaction_R116_activation_of_Cdc25_mediated_by_Cyclin_B_Cdk1));
	
% Species:   id = Wee1, name = Wee1, affected by kineticLaw
	xdot(46) = (1/(compartment_nuclear))*(( 1.0 * reaction_R99_synthesis_of_Wee1) + (-1.0 * reaction_R100_phosphorylation_of_wee1) + ( 1.0 * reaction_R101_dephosphorylation_of_wee1));
	
% Species:   id = Wee1_phosphorylated, name = Wee1_phosphorylated, affected by kineticLaw
	xdot(47) = (1/(compartment_nuclear))*(( 1.0 * reaction_R100_phosphorylation_of_wee1) + (-1.0 * reaction_R101_dephosphorylation_of_wee1) + (-1.0 * reaction_R102_degradation_of_wee1));
	
% Species:   id = Cyclin_B_Cdk1_nuclear, name = Cyclin_B/Cdk1_nuclear, affected by kineticLaw
	xdot(48) = (1/(compartment_nuclear))*((-1.0 * reaction_R103_p21_binding_to_Cyclin_B_Cdk1_complex) + ( 1.0 * reaction_R104_p21_dissociation_to_Cyclin_B_Cdk1_complex) + ( 1.0 * reaction_R131_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear) + (-1.0 * reaction_R132_translocation_of_Cyclin_B_Cdk1_complex_for_cytoplasm_to_nuclear) + (-1.0 * reaction_R133_inactivation_of_Cyclin_B_Cdk1) + ( 1.0 * reaction_R134_Activation_of_cyclin_B_Cdk1) + (-1.0 * reaction_R135_degradation_of_cyclin_B_cdk1) + (-1.0 * reaction_R137_degradation_of_cyclin_B_cdk1));
	
% Species:   id = p21_CyclinB_Cdk1, name = p21/CyclinB/Cdk1, affected by kineticLaw
	xdot(49) = (1/(compartment_nuclear))*(( 1.0 * reaction_R103_p21_binding_to_Cyclin_B_Cdk1_complex) + (-1.0 * reaction_R104_p21_dissociation_to_Cyclin_B_Cdk1_complex));
	
% Species:   id = B_Myb_inactive, name = B-Myb_inactive, affected by kineticLaw
	xdot(50) = (1/(compartment_nuclear))*(( 1.0 * reaction_R105_synthesis_of_iB_Myb_mediated_by_E2F) + (-1.0 * reaction_R106_activation_of_B_Myb_by_Cyclin_A_Cdk2_complex));
	
% Species:   id = Cdc25C_inactive, name = Cdc25C_inactive, affected by kineticLaw
	xdot(51) = (1/(compartment_nuclear))*(( 1.0 * reaction_R108_synthesis_of_Cdc25) + ( 1.0 * reaction_R109_inactivation_of_Cdc25) + (-1.0 * reaction_R110_activation_of_Cdc25_mediated_by_cyclin_B_Cdk1_complex) + (-1.0 * reaction_R111_phosphorylation_of_Cdc25_mediated_by_Chk1));
	
% Species:   id = Cdc25C_Ps216_phosphorylated_inactive, name = Cdc25C_Ps216_phosphorylated_inactive, affected by kineticLaw
	xdot(52) = (1/(compartment_nuclear))*(( 1.0 * reaction_R111_phosphorylation_of_Cdc25_mediated_by_Chk1) + ( 1.0 * reaction_R115_inactivation_of_Cdc25) + (-1.0 * reaction_R116_activation_of_Cdc25_mediated_by_Cyclin_B_Cdk1) + (-1.0 * reaction_R120_Binding_of_Cdc25_to_14_3_3));
	
% Species:   id = _14_3_3_sigma_iCdc25C_PS216_phosphorylated, name = _14_3_3_sigma_iCdc25C_PS216_phosphorylated, affected by kineticLaw
	xdot(53) = (1/(compartment_nuclear))*(( 1.0 * reaction_R120_Binding_of_Cdc25_to_14_3_3) + (-1.0 * reaction_R121_Degradation_of_Cdc25_14_3_3_sigma_complex));
	
% Species:   id = APC_Ccdc20_inactive, name = APC/Ccdc20_inactive, affected by kineticLaw
	xdot(54) = (1/(compartment_nuclear))*(( 1.0 * reaction_R122_Inactivation_of_APC_C_Cdc20) + (-1.0 * reaction_R123_Activation_of_APC_C_Cdc20));
	
% Species:   id = APC_Ccdh1_inactive, name = APC/Ccdh1_inactive, affected by kineticLaw
	xdot(55) = (1/(compartment_nuclear))*(( 1.0 * reaction_R124_Inactivation_of_APC_C_Cdh1) + (-1.0 * reaction_R125_Activation_of_APC_C_Cdh1));
	
% Species:   id = Cyclin_B_Cdk1_nuclear_inactive, name = Cyclin_B/Cdk1_nuclear_inactive, affected by kineticLaw
	xdot(56) = (1/(compartment_nuclear))*(( 1.0 * reaction_R133_inactivation_of_Cyclin_B_Cdk1) + (-1.0 * reaction_R134_Activation_of_cyclin_B_Cdk1) + (-1.0 * reaction_R136_degradation_of_cyclin_B_cdk1));
	
% Species:   id = Cyclin_E_total, name = Cyclin_E_total, involved in a rule 	xdot(57) = x(57);
	
% Species:   id = Cyclin_A_total, name = Cyclin_A_total, involved in a rule 	xdot(58) = x(58);
	
% Species:   id = Cyclin_B_total, name = Cyclin_B_total, involved in a rule 	xdot(59) = x(59);
	
% Species:   id = APC_C_Cdc20_active_x20, name = APC/C_Cdc20_active_x20, involved in a rule 	xdot(60) = x(60);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_synthesis_by_modifier(k,modifier), z=(k*modifier);end

function z=Function_for_R17(k17,y8), z=(k17*y8*y8);end

function z=Function_for_degradation_mass_action_modifier(k,substrate,modifier), z=(k*substrate*modifier);end

function z=Function_for_synthesis_with_modifier(k22,modifier,substrate), z=(k22*modifier*substrate);end

function z=Function_for_R41(k41,k42,Y_24), z=(k41/(1+k42*Y_24));end

function z=Function_for_R65(k66,Im,k65), z=(k66*Im^50/(k65^50+Im^50));end

function z=Function_for_R14(k14,y10,y49,y51), z=(k14*y10*(y49+y51));end

function z=Function_for_R51(k51,product), z=(k51*product);end

function z=Function_for_R15(k15,y9,y49,y51), z=(k15*y9*(y49+y51));end

function z=Function_for_R70(k70,y25,sig,k71,y26), z=(k70*y25*sig/(1+k71*y25*y26));end

function z=Function_for_Rdeg(deg,modifier,substrate), z=(deg*modifier*substrate);end

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


