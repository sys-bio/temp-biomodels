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
% Model name = Singh2006_IL6_Signal_Transduction
%
% is http://identifiers.org/biomodels.db/MODEL9750203466
% is http://identifiers.org/biomodels.db/BIOMD0000000151
% isDescribedBy http://identifiers.org/pubmed/16752369
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000093
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000094
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% isDerivedFrom http://identifiers.org/pubmed/12773095
%


function main()
%Initial conditions vector
	x0=zeros(66,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 100.0;
	x0(8) = 1000.0;
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
	x0(21) = 50.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 60.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 85.0;
	x0(33) = 19000.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 67.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 67.0;
	x0(41) = 41667.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 67.0;
	x0(46) = 0.0;
	x0(47) = 35000.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 34.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 12.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 16667.0;
	x0(66) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  IL6, name = IL6
	global_par_IL6=0.38;
% Parameter:   id =  kf0, name = kf0
	global_par_kf0=0.1;
% Parameter:   id =  kr0, name = kr0
	global_par_kr0=0.05;
% Parameter:   id =  kf1, name = kf1
	global_par_kf1=0.1;
% Parameter:   id =  kr1, name = kr1
	global_par_kr1=0.05;
% Parameter:   id =  kf2, name = kf2
	global_par_kf2=0.02;
% Parameter:   id =  kr2, name = kr2
	global_par_kr2=0.02;
% Parameter:   id =  kf3, name = kf3
	global_par_kf3=0.04;
% Parameter:   id =  kr3, name = kr3
	global_par_kr3=0.2;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.005;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.003;
% Parameter:   id =  kf5, name = kf5
	global_par_kf5=0.008;
% Parameter:   id =  kr5, name = kr5
	global_par_kr5=0.8;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.4;
% Parameter:   id =  kf7, name = kf7
	global_par_kf7=0.005;
% Parameter:   id =  kr7, name = kr7
	global_par_kr7=0.5;
% Parameter:   id =  kf9, name = kf9
	global_par_kf9=0.001;
% Parameter:   id =  kr9, name = kr9
	global_par_kr9=0.2;
% Parameter:   id =  kf21, name = kf21
	global_par_kf21=0.02;
% Parameter:   id =  kr21, name = kr21
	global_par_kr21=0.1;
% Parameter:   id =  kf37, name = kf37
	global_par_kf37=0.3;
% Parameter:   id =  kr37, name = kr37
	global_par_kr37=9.0E-4;
% Parameter:   id =  kf39, name = kf39
	global_par_kf39=0.3;
% Parameter:   id =  kr39, name = kr39
	global_par_kr39=9.0E-4;
% Parameter:   id =  kf32, name = kf32
	global_par_kf32=0.1;
% Parameter:   id =  kr32, name = kr32
	global_par_kr32=2.45E-4;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.003;
% Parameter:   id =  kf13, name = kf13
	global_par_kf13=2.0E-7;
% Parameter:   id =  kr13, name = kr13
	global_par_kr13=0.2;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.05;
% Parameter:   id =  kf8, name = kf8
	global_par_kf8=0.02;
% Parameter:   id =  kr8, name = kr8
	global_par_kr8=0.1;
% Parameter:   id =  kf11, name = kf11
	global_par_kf11=0.001;
% Parameter:   id =  kr11, name = kr11
	global_par_kr11=0.2;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.005;
% Parameter:   id =  Vm, name = Vm
	global_par_Vm=1.7;
% Parameter:   id =  Km, name = Km
	global_par_Km=340.0;
% Parameter:   id =  kf34, name = kf34
	global_par_kf34=6.0;
% Parameter:   id =  kr34, name = kr34
	global_par_kr34=0.06;
% Parameter:   id =  kf60, name = kf60
	global_par_kf60=0.5;
% Parameter:   id =  kr60, name = kr60
	global_par_kr60=0.005;
% Parameter:   id =  kf15, name = kf15
	global_par_kf15=0.001;
% Parameter:   id =  kr15, name = kr15
	global_par_kr15=0.2;
% Parameter:   id =  kf61, name = kf61
	global_par_kf61=0.2;
% Parameter:   id =  kr61, name = kr61
	global_par_kr61=2.0E-7;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.005;
% Parameter:   id =  k18a, name = k18a
	global_par_k18a=0.01;
% Parameter:   id =  k18b, name = k18b
	global_par_k18b=400.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.001;
% Parameter:   id =  k22, name = k22
	global_par_k22=5.0E-4;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.01;
% Parameter:   id =  k23, name = k23
	global_par_k23=5.0E-4;
% Parameter:   id =  kf38, name = kf38
	global_par_kf38=0.01;
% Parameter:   id =  kr38, name = kr38
	global_par_kr38=0.55;
% Parameter:   id =  kf35, name = kf35
	global_par_kf35=0.0015;
% Parameter:   id =  kr35, name = kr35
	global_par_kr35=0.0045;
% Parameter:   id =  kf24, name = kf24
	global_par_kf24=0.01;
% Parameter:   id =  kr24, name = kr24
	global_par_kr24=0.55;
% Parameter:   id =  kf25, name = kf25
	global_par_kf25=0.01;
% Parameter:   id =  kr25, name = kr25
	global_par_kr25=0.0214;
% Parameter:   id =  kf40, name = kf40
	global_par_kf40=0.03;
% Parameter:   id =  kr40, name = kr40
	global_par_kr40=0.064;
% Parameter:   id =  kf26, name = kf26
	global_par_kf26=0.015;
% Parameter:   id =  kr26, name = kr26
	global_par_kr26=1.3;
% Parameter:   id =  kf31, name = kf31
	global_par_kf31=0.023;
% Parameter:   id =  kr31, name = kr31
	global_par_kr31=2.2E-4;
% Parameter:   id =  kf27, name = kf27
	global_par_kf27=0.5;
% Parameter:   id =  kr27, name = kr27
	global_par_kr27=1.0E-4;
% Parameter:   id =  kf28, name = kf28
	global_par_kf28=0.001;
% Parameter:   id =  kr28, name = kr28
	global_par_kr28=0.0053;
% Parameter:   id =  kf41, name = kf41
	global_par_kf41=0.03;
% Parameter:   id =  kr41, name = kr41
	global_par_kr41=0.0429;
% Parameter:   id =  kf33, name = kf33
	global_par_kf33=0.3;
% Parameter:   id =  kr33, name = kr33
	global_par_kr33=0.021;
% Parameter:   id =  kf30, name = kf30
	global_par_kf30=0.0079;
% Parameter:   id =  kr30, name = kr30
	global_par_kr30=0.4;
% Parameter:   id =  k43, name = k43
	global_par_k43=1.0;
% Parameter:   id =  kf29, name = kf29
	global_par_kf29=1.0;
% Parameter:   id =  kr29, name = kr29
	global_par_kr29=7.0E-4;
% Parameter:   id =  kf42, name = kf42
	global_par_kf42=0.0717;
% Parameter:   id =  kr42, name = kr42
	global_par_kr42=0.2;
% Parameter:   id =  kf44, name = kf44
	global_par_kf44=0.011;
% Parameter:   id =  kr44, name = kr44
	global_par_kr44=0.001833;
% Parameter:   id =  k45, name = k45
	global_par_k45=3.5;
% Parameter:   id =  kf46, name = kf46
	global_par_kf46=0.011;
% Parameter:   id =  kr46, name = kr46
	global_par_kr46=0.001833;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.058;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.058;
% Parameter:   id =  kf50, name = kf50
	global_par_kf50=2.5E-4;
% Parameter:   id =  kr50, name = kr50
	global_par_kr50=0.5;
% Parameter:   id =  k47, name = k47
	global_par_k47=2.9;
% Parameter:   id =  kf48, name = kf48
	global_par_kf48=0.0143;
% Parameter:   id =  kr48, name = kr48
	global_par_kr48=0.8;
% Parameter:   id =  kf52, name = kf52
	global_par_kf52=1.1E-4;
% Parameter:   id =  kr52, name = kr52
	global_par_kr52=0.033;
% Parameter:   id =  k53, name = k53
	global_par_k53=16.0;
% Parameter:   id =  kr54, name = kr54
	global_par_kr54=0.033;
% Parameter:   id =  kf54, name = kf54
	global_par_kf54=1.1E-4;
% Parameter:   id =  k55, name = k55
	global_par_k55=6.7;
% Parameter:   id =  k59, name = k59
	global_par_k59=0.3;
% Parameter:   id =  k57, name = k57
	global_par_k57=0.27;
% Parameter:   id =  kf58, name = kf58
	global_par_kf58=0.005;
% Parameter:   id =  kr58, name = kr58
	global_par_kr58=0.5;
% Parameter:   id =  kf56, name = kf56
	global_par_kf56=0.014;
% Parameter:   id =  kr56, name = kr56
	global_par_kr56=0.6;

% Reaction: id = R1, name = IL6-gp80 complex formation
	reaction_R1=compartment_cytosol*global_par_kf0*const_species_x1*global_par_IL6;

% Reaction: id = R2, name = IL6-gp80 complex dissociation
	reaction_R2=compartment_cytosol*global_par_kr0*x(1);

% Reaction: id = R3, name = IL6-gp80-gp130-JAK dissociation
	reaction_R3=compartment_cytosol*(global_par_kr2*x(2)-global_par_kf2*x(1)*x(3));

% Reaction: id = R5, name = gp130-JAK complex formation
	reaction_R5=compartment_cytosol*(global_par_kf1*const_species_x3*x(58)-global_par_kr1*x(3));

% Reaction: id = R7, name = IL6-gp80-gp130-JAK dimerization
	reaction_R7=compartment_cytosol*global_par_kf3*x(2)^2;

% Reaction: id = R8, name = IL6-gp80-gp130-JAK dimer dissociation
	reaction_R8=compartment_cytosol*global_par_kr3*x(4);

% Reaction: id = R9, name = IL6-gp80-gp130-JAK dimer phosphorylation
	reaction_R9=compartment_cytosol*global_par_k4*x(4);

% Reaction: id = R10, name = IL6-gp80-gp130-JAK dimer-SHP2 dissociation
	reaction_R10=compartment_cytosol*global_par_k10*x(6);

% Reaction: id = R11, name = IL6-gp80-gp130-JAK -STAT3C complex formation
	reaction_R11=compartment_cytosol*(global_par_kf5*x(5)*x(8)-global_par_kr5*x(9));

% Reaction: id = R12, name = IL6-gp80-gp130-JAK -STAT3C dissociation
	reaction_R12=compartment_cytosol*global_par_k6*x(9);

% Reaction: id = R13, name = IL6-gp80-gp130-JAK-STAT3Cast complex formation
	reaction_R13=compartment_cytosol*(global_par_kf7*x(5)*x(10)-global_par_kr7*x(11));

% Reaction: id = R14, name = IL6-gp80-gp130-JAK -SHP2 complex formation
	reaction_R14=compartment_cytosol*(global_par_kf9*x(5)*x(7)-global_par_kr9*x(6));

% Reaction: id = R15, name = IL6-gp80-gp130-JAK -SOCS3 complex formation
	reaction_R15=compartment_cytosol*(global_par_kf21*x(12)*x(5)-global_par_kr21*x(13));

% Reaction: id = R16, name = IL6-gp80-gp130-JAK -SHP2 dimer dissociation
	reaction_R16=compartment_cytosol*(global_par_kf37*x(14)-global_par_kr37*x(5)*x(15));

% Reaction: id = R16a, name = IL6-gp80-gp130-JAK SHP2 Grb2 dissociation
	reaction_R16a=compartment_cytosol*(global_par_kf39*x(16)-global_par_kr39*x(17)*x(5));

% Reaction: id = R17, name = IL6-gp80-gp130-JAK-SHP2-Grb2-SOS dissociation
	reaction_R17=compartment_cytosol*(global_par_kf32*x(18)-global_par_kr32*x(19)*x(5));

% Reaction: id = R18, name = PP1-STAT3Cast dissociation
	reaction_R18=compartment_cytosol*global_par_k12*x(20);

% Reaction: id = R19, name = STAT3C dimerization
	reaction_R19=compartment_cytosol*(global_par_kf13*x(8)*x(10)-global_par_kr13*x(22));

% Reaction: id = R20, name = STAT3N transport
	reaction_R20=compartment_nucleus*global_par_k17*x(23);

% Reaction: id = R21, name = IL6-gp80-gp130-JAK-SOCS2-STAT3C complex formation
	reaction_R21=compartment_cytosol*(global_par_kf5*x(8)*x(13)-global_par_kr5*x(54));

% Reaction: id = R22, name = IL6-gp80-gp130-JAK-STAT3C-SOCS3-SHP2 dissociation
	reaction_R22=compartment_cytosol*global_par_k10*x(24);

% Reaction: id = R23, name = STAT3C dimerization
	reaction_R23=compartment_cytosol*(2*global_par_kf8*x(10)^2-2*global_par_kr8*x(25));

% Reaction: id = R24, name = IL6-gp80-gp130-JAK STAT3Cast complex formation
	reaction_R24=compartment_cytosol*(global_par_kf11*x(10)*x(21)-global_par_kr11*x(20));

% Reaction: id = R25, name = PP1-STAT3C dimer complex formation
	reaction_R25=compartment_cytosol*(global_par_kf11*x(25)*x(21)-global_par_kr11*x(63));

% Reaction: id = R26, name = STAT3C dimer phosphorylation
	reaction_R26=compartment_cytosol*global_par_k14*x(25);

% Reaction: id = R27, name = PP1-STAT3C dimer dissociation
	reaction_R27=compartment_cytosol*global_par_k12*x(63);

% Reaction: id = R28, name = Complex formation
	reaction_R28=compartment_cytosol*(global_par_kf9*x(7)*x(54)-global_par_kr9*x(24));

% Reaction: id = R29, name = SHP2 dephosphorylation
	reaction_R29=compartment_cytosol*global_par_Vm*x(15)/(global_par_Km+x(15));

% Reaction: id = R30, name = IL6-gp80-gp130-JAK-SHP2 phosphorylation
	reaction_R30=compartment_cytosol*(global_par_kf34*x(6)-global_par_kr34*x(14));

% Reaction: id = R31, name = STAT3N dimer dissociation
	reaction_R31=compartment_nucleus*(global_par_kr8*x(26)-global_par_kf8*x(27)^2);

% Reaction: id = R32, name = PP2-STAT3N dimer complex formation
	reaction_R32=compartment_nucleus*(global_par_kf15*x(28)*x(26)-global_par_kr15*x(29));

% Reaction: id = R33, name = PP2-STAT3N complex formation
	reaction_R33=compartment_nucleus*(global_par_kf15*x(28)*x(27)-global_par_kr15*x(53));

% Reaction: id = R34, name = STAT3N dimer dissociation
	reaction_R34=compartment_nucleus*(global_par_kr13*x(30)-global_par_kf13*x(27)*x(23));

% Reaction: id = R35, name = PP2-STAT3N dissociation
	reaction_R35=compartment_nucleus*global_par_k16*x(53);

% Reaction: id = R36, name = PP2-STAT3N dimer dissociation
	reaction_R36=compartment_nucleus*global_par_k16*x(29);

% Reaction: id = R37, name = SOCS3N transcription
	reaction_R37=compartment_nucleus*global_par_k18a*x(26)/(global_par_k18b+x(26));

% Reaction: id = R38, name = SOCS3 mRNA translocation
	reaction_R38=compartment_nucleus*global_par_k19*x(31);

% Reaction: id = R39, name = SOCS3 mRNA degradation
	reaction_R39=compartment_nucleus*global_par_k22*x(59);

% Reaction: id = R40, name = SOCS3 translation
	reaction_R40=compartment_nucleus*global_par_k20*x(59);

% Reaction: id = R41, name = SOCS3 degradation
	reaction_R41=compartment_cytosol*global_par_k23*x(12);

% Reaction: id = R42, name = Complex dissociation
	reaction_R42=compartment_cytosol*global_par_k23*x(24);

% Reaction: id = R43, name = SHP2-Grb2 complex formation
	reaction_R43=compartment_cytosol*(global_par_kf38*x(32)*x(15)-global_par_kr38*x(17));

% Reaction: id = R44, name = Grb2-SOS dissociation
	reaction_R44=compartment_cytosol*(global_par_kf35*x(64)-global_par_kr35*x(32)*x(52));

% Reaction: id = R45, name = Complex formation
	reaction_R45=compartment_cytosol*(global_par_kf24*x(14)*x(32)-global_par_kr24*x(16));

% Reaction: id = R46, name = Complex formation
	reaction_R46=compartment_cytosol*(global_par_kf25*x(52)*x(16)-global_par_kr25*x(18));

% Reaction: id = R47, name = SHP2Grb2-SOS complex formation
	reaction_R47=compartment_cytosol*(global_par_kf40*x(52)*x(17)-global_par_kr40*x(19));

% Reaction: id = R48, name = Complex formation
	reaction_R48=compartment_cytosol*(global_par_kf26*x(33)*x(18)-global_par_kr26*x(34));

% Reaction: id = R49, name = Complex dissociation
	reaction_R49=compartment_cytosol*(global_par_kf31*x(56)-global_par_kr31*x(33)*x(18));

% Reaction: id = R50, name = Complex dissociation
	reaction_R50=compartment_cytosol*(global_par_kf27*x(34)-global_par_kr27*x(35)*x(18));

% Reaction: id = R51, name = Ras-GTP-Raf complex formation
	reaction_R51=compartment_cytosol*(global_par_kf28*x(35)*x(36)-global_par_kr28*x(37));

% Reaction: id = R52, name = Complex formation
	reaction_R52=compartment_cytosol*(global_par_kf41*x(64)*x(14)-global_par_kr41*x(18));

% Reaction: id = R53, name = SHP2-Grb2-SOS dissociation
	reaction_R53=compartment_cytosol*(global_par_kf33*x(19)-global_par_kr33*x(64)*x(15));

% Reaction: id = R54, name = Complex formation
	reaction_R54=compartment_cytosol*(global_par_kf30*x(60)*x(18)-global_par_kr30*x(56));

% Reaction: id = R55, name = Raf-Phosp1 dissociation
	reaction_R55=compartment_cytosol*global_par_k43*x(38);

% Reaction: id = R56, name = Raf-Ras-GTP dissociation
	reaction_R56=compartment_cytosol*(global_par_kf29*x(37)-global_par_kr29*x(60)*x(39));

% Reaction: id = R57, name = Raf-Phosp1 complex formation
	reaction_R57=compartment_cytosol*(global_par_kf42*x(40)*x(39)-global_par_kr42*x(38));

% Reaction: id = R58, name = MEK-Raf complex formation
	reaction_R58=compartment_cytosol*(global_par_kf44*x(39)*x(41)-global_par_kr44*x(42));

% Reaction: id = R59, name = MEK-Raf complex dissociation
	reaction_R59=compartment_cytosol*global_par_k45*x(42);

% Reaction: id = R60, name = MEK-P-Raf complex formation
	reaction_R60=compartment_cytosol*(global_par_kf46*x(43)*x(39)-global_par_kr46*x(55));

% Reaction: id = R61, name = MEK-P-Phosp2 dissociation
	reaction_R61=compartment_cytosol*global_par_k51*x(44);

% Reaction: id = R62, name = MEK-PP-Phosp2 dissociation
	reaction_R62=compartment_cytosol*global_par_k49*x(57);

% Reaction: id = R63, name = MEK-P-Phosp2 complex formation
	reaction_R63=compartment_cytosol*(global_par_kf50*x(43)*x(45)-global_par_kr50*x(44));

% Reaction: id = R64, name = MEK-P-Raf complex dissociation
	reaction_R64=compartment_cytosol*global_par_k47*x(55);

% Reaction: id = R65, name = MEK-PP-Phosp2 complex formation
	reaction_R65=compartment_cytosol*(global_par_kf48*x(46)*x(45)-global_par_kr48*x(57));

% Reaction: id = R66, name = ERK-MEK-PP complex formation
	reaction_R66=compartment_cytosol*(global_par_kf52*x(46)*x(47)-global_par_kr52*x(48));

% Reaction: id = R67, name = ERK-MEK-PP complex dissociation
	reaction_R67=compartment_cytosol*global_par_k53*x(48);

% Reaction: id = R68, name = ERK-P-MEK-PP complex dissociation
	reaction_R68=compartment_cytosol*(global_par_kr54*x(62)-global_par_kf54*x(46)*x(49));

% Reaction: id = R69, name = ERK-PP formation
	reaction_R69=compartment_cytosol*global_par_k55*x(62);

% Reaction: id = R70, name = ERK-P-Phosp3 complex dissociation
	reaction_R70=compartment_cytosol*global_par_k59*x(51);

% Reaction: id = R71, name = ERK-PP-Phosp3 dissociation
	reaction_R71=compartment_cytosol*global_par_k57*x(66);

% Reaction: id = R72, name = ERK-P-Phosp3 formation
	reaction_R72=compartment_cytosol*(global_par_kf58*x(49)*x(65)-global_par_kr58*x(51));

% Reaction: id = R73, name = ERK-PP-Phosp3 formation
	reaction_R73=compartment_cytosol*(global_par_kf56*x(50)*x(65)-global_par_kr56*x(66));

% Species:   id = x1, name = gp80, constant	const_species_x1=8.0;

% Species:   id = x3, name = gp130, constant	const_species_x3=0.8;

	xdot=zeros(66,1);
	
% Species:   id = x2, name = IL6-gp80, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3));
	
% Species:   id = x6, name = IL6-gp80-gp130-JAK, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*((-1.0 * reaction_R3) + (-2.0 * reaction_R7) + ( 2.0 * reaction_R8));
	
% Species:   id = x5, name = gp130-JAK, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_R3) + ( 1.0 * reaction_R5));
	
% Species:   id = x7, name = (IL6-gp80-gp130-JAK)2, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R22));
	
% Species:   id = x8, name = (IL6-gp80-gp130-JAK)_ast2, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R14) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R16a) + ( 1.0 * reaction_R17));
	
% Species:   id = x16, name = (IL6-gp80-gp130-JAK)ast2-JAK, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R30));
	
% Species:   id = x15, name = SHP2, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R22) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R29));
	
% Species:   id = x9, name = STAT3C, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*((-1.0 * reaction_R11) + ( 1.0 * reaction_R18) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R20) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R22));
	
% Species:   id = x11, name = (IL6-gp80-gp130-JAK)ast2-STAT3C, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = x10, name = STAT3Cast, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R19) + (-1.0 * reaction_R23) + (-1.0 * reaction_R24));
	
% Species:   id = x12, name = (IL6-gp80-gp130-JAK)ast2-STAT3Cast, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_R13));
	
% Species:   id = x29, name = SOCS3, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*((-1.0 * reaction_R15) + ( 1.0 * reaction_R22) + ( 1.0 * reaction_R40) + (-1.0 * reaction_R41) + ( 1.0 * reaction_R42));
	
% Species:   id = x30, name = (IL6-gp80-gp130-JAK)ast2-SOCS3, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R21));
	
% Species:   id = x39, name = (IL6-gp80-gp130-JAK)ast2-SHP2ast, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*((-1.0 * reaction_R16) + ( 1.0 * reaction_R30) + (-1.0 * reaction_R45) + (-1.0 * reaction_R52));
	
% Species:   id = x46, name = SHP2ast, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R29) + (-1.0 * reaction_R43) + ( 1.0 * reaction_R53));
	
% Species:   id = x40, name = (IL6-gp80-gp130-JAK)ast2-SHP2ast-Grb2, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*((-1.0 * reaction_R16a) + ( 1.0 * reaction_R45) + (-1.0 * reaction_R46));
	
% Species:   id = x45, name = SHP2ast-Grb2, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_R16a) + ( 1.0 * reaction_R43) + (-1.0 * reaction_R47));
	
% Species:   id = x41, name = (IL6-gp80-gp130-JAK)ast2-SHP2-Grb2, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*((-1.0 * reaction_R17) + ( 1.0 * reaction_R46) + (-1.0 * reaction_R48) + ( 1.0 * reaction_R49) + ( 1.0 * reaction_R50) + ( 1.0 * reaction_R52) + (-1.0 * reaction_R54));
	
% Species:   id = x44, name = SHP2ast-Grb2-SOS, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol))*(( 1.0 * reaction_R17) + ( 1.0 * reaction_R47) + (-1.0 * reaction_R53));
	
% Species:   id = x18, name = PP1-STAT3Cast, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*((-1.0 * reaction_R18) + ( 1.0 * reaction_R24));
	
% Species:   id = x17, name = PP1, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R24) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R27));
	
% Species:   id = x14, name = STAT3C-STAT3Cast, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol))*(( 1.0 * reaction_R19) + ( 1.0 * reaction_R27));
	
% Species:   id = x22, name = STAT3N, affected by kineticLaw
	xdot(23) = (1/(compartment_nucleus))*((-1.0 * reaction_R20) + ( 1.0 * reaction_R34) + ( 1.0 * reaction_R35));
	
% Species:   id = x32, name = (IL6-gp80-gp130-JAK)ast2-STAT3C-SOCS3-SHP2, affected by kineticLaw
	xdot(24) = (1/(compartment_cytosol))*((-1.0 * reaction_R22) + ( 1.0 * reaction_R28) + (-1.0 * reaction_R42));
	
% Species:   id = x13, name = STAT3Cast-STAT3Cast, affected by kineticLaw
	xdot(25) = (1/(compartment_cytosol))*(( 0.5 * reaction_R23) + (-1.0 * reaction_R25) + (-1.0 * reaction_R26));
	
% Species:   id = x20, name = STAT3Nast-STAT3Nast, affected by kineticLaw
	xdot(26) = (1/(compartment_nucleus))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R31) + (-1.0 * reaction_R32));
	
% Species:   id = x21, name = STAT3Nast, affected by kineticLaw
	xdot(27) = (1/(compartment_nucleus))*(( 2.0 * reaction_R31) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R34));
	
% Species:   id = x23, name = PP2, affected by kineticLaw
	xdot(28) = (1/(compartment_nucleus))*((-1.0 * reaction_R32) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R36));
	
% Species:   id = x27, name = PP2-STAT3Nast-STAT3Nast, affected by kineticLaw
	xdot(29) = (1/(compartment_nucleus))*(( 1.0 * reaction_R32) + (-1.0 * reaction_R36));
	
% Species:   id = x24, name = STAT3N-STAT3Nast, affected by kineticLaw
	xdot(30) = (1/(compartment_nucleus))*((-1.0 * reaction_R34) + ( 1.0 * reaction_R36));
	
% Species:   id = x25, name = Mrna-SOCS3N, affected by kineticLaw
	xdot(31) = (1/(compartment_nucleus))*(( 1.0 * reaction_R37) + (-1.0 * reaction_R38));
	
% Species:   id = x34, name = Grb2, affected by kineticLaw
	xdot(32) = (1/(compartment_cytosol))*((-1.0 * reaction_R43) + ( 1.0 * reaction_R44) + (-1.0 * reaction_R45));
	
% Species:   id = x36, name = Ras-GDP, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol))*((-1.0 * reaction_R48) + ( 1.0 * reaction_R49));
	
% Species:   id = x42, name = (IL6-gp80-gp130-JAK)ast2-SHP2ast-Grb2-SOS-Ras-GDP, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*(( 1.0 * reaction_R48) + (-1.0 * reaction_R50));
	
% Species:   id = x37, name = Ras-GTP, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_R50) + (-1.0 * reaction_R51));
	
% Species:   id = x47, name = Raf, affected by kineticLaw
	xdot(36) = (1/(compartment_cytosol))*((-1.0 * reaction_R51) + ( 1.0 * reaction_R55));
	
% Species:   id = x48, name = Raf-Ras-GTP, affected by kineticLaw
	xdot(37) = (1/(compartment_cytosol))*(( 1.0 * reaction_R51) + (-1.0 * reaction_R56));
	
% Species:   id = x52, name = Rafast-Phosp1, affected by kineticLaw
	xdot(38) = (1/(compartment_cytosol))*((-1.0 * reaction_R55) + ( 1.0 * reaction_R57));
	
% Species:   id = x51, name = Rafast, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol))*(( 1.0 * reaction_R56) + (-1.0 * reaction_R57) + (-1.0 * reaction_R58) + ( 1.0 * reaction_R59) + (-1.0 * reaction_R60) + ( 1.0 * reaction_R64));
	
% Species:   id = x50, name = Phosp1, affected by kineticLaw
	xdot(40) = (1/(compartment_cytosol))*(( 1.0 * reaction_R55) + (-1.0 * reaction_R57));
	
% Species:   id = x53, name = MEK, affected by kineticLaw
	xdot(41) = (1/(compartment_cytosol))*((-1.0 * reaction_R58) + ( 1.0 * reaction_R61));
	
% Species:   id = x54, name = MEK-Rafast, affected by kineticLaw
	xdot(42) = (1/(compartment_cytosol))*(( 1.0 * reaction_R58) + (-1.0 * reaction_R59));
	
% Species:   id = x55, name = MEK-P, affected by kineticLaw
	xdot(43) = (1/(compartment_cytosol))*(( 1.0 * reaction_R59) + (-1.0 * reaction_R60) + ( 1.0 * reaction_R62) + (-1.0 * reaction_R63));
	
% Species:   id = x60, name = MEK-P-Phosp2, affected by kineticLaw
	xdot(44) = (1/(compartment_cytosol))*((-1.0 * reaction_R61) + ( 1.0 * reaction_R63));
	
% Species:   id = x59, name = Phosp2, affected by kineticLaw
	xdot(45) = (1/(compartment_cytosol))*(( 1.0 * reaction_R61) + ( 1.0 * reaction_R62) + (-1.0 * reaction_R63) + (-1.0 * reaction_R65));
	
% Species:   id = x57, name = MEK-PP, affected by kineticLaw
	xdot(46) = (1/(compartment_cytosol))*(( 1.0 * reaction_R64) + (-1.0 * reaction_R65) + (-1.0 * reaction_R66) + ( 1.0 * reaction_R67) + ( 1.0 * reaction_R68) + ( 1.0 * reaction_R69));
	
% Species:   id = x61, name = ERK, affected by kineticLaw
	xdot(47) = (1/(compartment_cytosol))*((-1.0 * reaction_R66) + ( 1.0 * reaction_R70));
	
% Species:   id = x62, name = ERK-MEK-PP, affected by kineticLaw
	xdot(48) = (1/(compartment_cytosol))*(( 1.0 * reaction_R66) + (-1.0 * reaction_R67));
	
% Species:   id = x63, name = ERK-P, affected by kineticLaw
	xdot(49) = (1/(compartment_cytosol))*(( 1.0 * reaction_R67) + ( 1.0 * reaction_R68) + ( 1.0 * reaction_R71) + (-1.0 * reaction_R72));
	
% Species:   id = x65, name = ERK-PP, affected by kineticLaw
	xdot(50) = (1/(compartment_cytosol))*(( 1.0 * reaction_R69) + (-1.0 * reaction_R73));
	
% Species:   id = x68, name = ERK-P-Phosp3, affected by kineticLaw
	xdot(51) = (1/(compartment_cytosol))*((-1.0 * reaction_R70) + ( 1.0 * reaction_R72));
	
% Species:   id = x35, name = SOS, affected by kineticLaw
	xdot(52) = (1/(compartment_cytosol))*(( 1.0 * reaction_R44) + (-1.0 * reaction_R46) + (-1.0 * reaction_R47));
	
% Species:   id = x28, name = PP2-STAT3Nast, affected by kineticLaw
	xdot(53) = (1/(compartment_nucleus))*(( 1.0 * reaction_R33) + (-1.0 * reaction_R35));
	
% Species:   id = x31, name = (IL6-gp80-gp130-JAK)ast2-STAT3C-SOCS3, affected by kineticLaw
	xdot(54) = (1/(compartment_cytosol))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R28));
	
% Species:   id = x56, name = MEK-P-Rafast, affected by kineticLaw
	xdot(55) = (1/(compartment_cytosol))*(( 1.0 * reaction_R60) + (-1.0 * reaction_R64));
	
% Species:   id = x43, name = (IL6-gp80-gp130-JAK)ast2-SHP2ast-Grb2-SOS-Ras-GTP, affected by kineticLaw
	xdot(56) = (1/(compartment_cytosol))*((-1.0 * reaction_R49) + ( 1.0 * reaction_R54));
	
% Species:   id = x58, name = MEK-PP-Phosp2, affected by kineticLaw
	xdot(57) = (1/(compartment_cytosol))*((-1.0 * reaction_R62) + ( 1.0 * reaction_R65));
	
% Species:   id = x4, name = JAK, affected by kineticLaw
	xdot(58) = (1/(compartment_cytosol))*((-1.0 * reaction_R5));
	
% Species:   id = x26, name = Mrna-SOCS3C, affected by kineticLaw
	xdot(59) = (1/(compartment_nucleus))*(( 1.0 * reaction_R38) + (-1.0 * reaction_R39));
	
% Species:   id = x49, name = Ras-GTPast, affected by kineticLaw
	xdot(60) = (1/(compartment_cytosol))*((-1.0 * reaction_R54) + ( 1.0 * reaction_R56));
	
% Species:   id = x33, name = (IL6-gp80-gp130-JAK)ast2-STAT3C-SHP2, affected by kineticLaw
	xdot(61) = (1/(compartment_cytosol))*(( 1.0 * reaction_R42));
	
% Species:   id = x64, name = ERK-P-MEK-PP, affected by kineticLaw
	xdot(62) = (1/(compartment_cytosol))*((-1.0 * reaction_R68) + (-1.0 * reaction_R69));
	
% Species:   id = x19, name = PP1-STAT3Cast-STAT3Cast, affected by kineticLaw
	xdot(63) = (1/(compartment_cytosol))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R27));
	
% Species:   id = x38, name = Grb2-SOS, affected by kineticLaw
	xdot(64) = (1/(compartment_cytosol))*((-1.0 * reaction_R44) + (-1.0 * reaction_R52) + ( 1.0 * reaction_R53));
	
% Species:   id = x66, name = Phosp3, affected by kineticLaw
	xdot(65) = (1/(compartment_cytosol))*(( 1.0 * reaction_R70) + ( 1.0 * reaction_R71) + (-1.0 * reaction_R72) + (-1.0 * reaction_R73));
	
% Species:   id = x67, name = ERK-PP-Phosp3, affected by kineticLaw
	xdot(66) = (1/(compartment_cytosol))*((-1.0 * reaction_R71) + ( 1.0 * reaction_R73));
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


