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
% Model name = Maeda2006_MyosinPhosphorylation
%
% is http://identifiers.org/biomodels.db/MODEL7944007619
% is http://identifiers.org/biomodels.db/BIOMD0000000088
% isDescribedBy http://identifiers.org/pubmed/16923126
%


function main()
%Initial conditions vector
	x0=zeros(102,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.42;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.2;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 50.0;
	x0(12) = 0.0;
	x0(13) = 5.0;
	x0(14) = 0.008333;
	x0(15) = 0.0;
	x0(16) = 0.1;
	x0(17) = 0.042;
	x0(18) = 0.1;
	x0(19) = 0.0;
	x0(20) = 0.3;
	x0(21) = 0.0;
	x0(22) = 0.005;
	x0(23) = 10.0;
	x0(24) = 0.0;
	x0(25) = 0.09;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.005;
	x0(29) = 0.3;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.69;
	x0(34) = 0.05;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 2.0;
	x0(39) = 0.039823;
	x0(40) = 0.0;
	x0(41) = 0.68193;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.059;
	x0(52) = 0.1;
	x0(53) = 4.3;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0833;
	x0(58) = 19.65;
	x0(59) = 155.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.57;
	x0(63) = 0.5;
	x0(64) = 0.1;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.5;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.5;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.6;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.094;
	x0(98) = 0.0;
	x0(99) = 0.08;
	x0(100) = 0.15;
	x0(101) = 0.7;
	x0(102) = 0.4941;


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

% Compartment: id = c0, name = Default, constant
	compartment_c0=1.0;
% Compartment: id = c1, name = cytosol, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = ER, constant
	compartment_c2=0.1;

% Reaction: id = re1, name = A2-1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re1_Km=5.0;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re1_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re1_Vmax=15.0;

	reaction_re1=compartment_c1*((1+reaction_re1_ratio)*reaction_re1_Vmax*x(3)*x(1)/reaction_re1_Km-reaction_re1_Vmax*reaction_re1_ratio*x(2));

% Reaction: id = re12, name = A1-2	% Local Parameter:   id =  kf, name = kf
	reaction_re12_kf=0.01;

	reaction_re12=compartment_c1*reaction_re12_kf*x(11)*x(65);

% Reaction: id = re14, name = A1-5.1	% Local Parameter:   id =  kf, name = kf
	reaction_re14_kf=0.00224;

	reaction_re14=compartment_c1*reaction_re14_kf*x(9);

% Reaction: id = re15, name = A1-3	% Local Parameter:   id =  kf, name = kf
	reaction_re15_kf=1.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re15_kb=0.006;

	reaction_re15=compartment_c1*(reaction_re15_kf*x(72)*x(5)-reaction_re15_kb*x(71));

% Reaction: id = re16, name = A1-4	% Local Parameter:   id =  kf, name = kf
	reaction_re16_kf=0.01;

	reaction_re16=compartment_c1*reaction_re16_kf*x(11)*x(71);

% Reaction: id = re17, name = A1-6	% Local Parameter:   id =  kf, name = kf
	reaction_re17_kf=0.0133;

	reaction_re17=compartment_c1*reaction_re17_kf*x(69);

% Reaction: id = re19, name = A1-7	% Local Parameter:   id =  kf, name = kf
	reaction_re19_kf=0.01;

	reaction_re19=compartment_c1*reaction_re19_kf*x(60)*x(68);

% Reaction: id = re20, name = A2-2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re20_Km=0.05;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re20_ratio=23.51;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re20_Vmax=0.0102;

	reaction_re20=compartment_c1*((1+reaction_re20_ratio)*reaction_re20_Vmax*x(12)*x(6)/reaction_re20_Km-reaction_re20_ratio*reaction_re20_Vmax*x(10));

% Reaction: id = re22, name = A1-9	% Local Parameter:   id =  kf, name = kf
	reaction_re22_kf=0.01;

	reaction_re22=compartment_c1*reaction_re22_kf*x(61)*x(70);

% Reaction: id = re23, name = B1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re23_kf=20.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re23_kb=0.1;

	reaction_re23=compartment_c1*(reaction_re23_kf*x(69)*x(16)-reaction_re23_kb*x(66));

% Reaction: id = re24, name = B2-1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re24_Km=0.015;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re24_Vmax=0.052;

	reaction_re24=compartment_c1*reaction_re24_Vmax*x(25)*x(66)/(reaction_re24_Km+x(22));

% Reaction: id = re26, name = B2-2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re26_Km=2.0;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re26_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re26_Vmax=0.04;

	reaction_re26=compartment_c1*((1+reaction_re26_ratio)*reaction_re26_Vmax*x(16)*x(25)/reaction_re26_Km-reaction_re26_Vmax*reaction_re26_ratio*x(26));

% Reaction: id = re28, name = B2-3.1	% Local Parameter:   id =  Km, name = Km
	reaction_re28_Km=2.83;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re28_ratio=13.246;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re28_Vmax=0.993;

	reaction_re28=compartment_c1*((1+reaction_re28_ratio)*reaction_re28_Vmax*x(18)*x(22)/reaction_re28_Km-reaction_re28_Vmax*reaction_re28_ratio*x(21));

% Reaction: id = re32, name = B2-1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re32_Vmax=0.04;

	reaction_re32=compartment_c1*reaction_re32_Vmax*x(26);

% Reaction: id = re33, name = B2-3.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re33_Vmax=0.9933;

	reaction_re33=compartment_c1*reaction_re33_Vmax*x(21);

% Reaction: id = re34, name = A2-2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re34_Vmax=0.0102;

	reaction_re34=compartment_c1*reaction_re34_Vmax*x(10);

% Reaction: id = re37, name = B1-2	% Local Parameter:   id =  kf, name = kf
	reaction_re37_kf=0.0117;

	reaction_re37=compartment_c1*reaction_re37_kf*x(66);

% Reaction: id = re38, name = B1-3	% Local Parameter:   id =  kf, name = kf
	reaction_re38_kf=3.667E-4;

	reaction_re38=compartment_c1*reaction_re38_kf*x(22);

% Reaction: id = re39, name = B1-4	% Local Parameter:   id =  kf, name = kf
	reaction_re39_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re39_kb=0.5;

	reaction_re39=compartment_c1*(reaction_re39_kf*x(17)*x(22)-reaction_re39_kb*x(28));

% Reaction: id = re40, name = A2-1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re40_Vmax=15.0;

	reaction_re40=compartment_c1*reaction_re40_Vmax*x(2);

% Reaction: id = re43, name = A1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re43_kf=1.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re43_kb=0.006;

	reaction_re43=compartment_c1*(reaction_re43_kf*x(67)*x(5)-reaction_re43_kb*x(65));

% Reaction: id = re44, name = A1-8	% Local Parameter:   id =  kf, name = kf
	reaction_re44_kf=0.0133;

	reaction_re44=compartment_c1*reaction_re44_kf*x(12);

% Reaction: id = re45, name = A1-5.2	% Local Parameter:   id =  kf, name = kf
	reaction_re45_kf=0.00224;

	reaction_re45=compartment_c1*reaction_re45_kf*x(5);

% Reaction: id = re47, name = C1-2	% Local Parameter:   id =  kf, name = kf
	reaction_re47_kf=25.201;
	% Local Parameter:   id =  kb, name = kb
	reaction_re47_kb=1.0;

	reaction_re47=compartment_c1*(reaction_re47_kf*x(12)*x(100)-reaction_re47_kb*x(95));

% Reaction: id = re48, name = C1-3	% Local Parameter:   id =  kf, name = kf
	reaction_re48_kf=2.5201;
	% Local Parameter:   id =  kb, name = kb
	reaction_re48_kb=1.0;

	reaction_re48=compartment_c1*(reaction_re48_kf*x(62)*x(12)-reaction_re48_kb*x(73));

% Reaction: id = re51, name = C1-4	% Local Parameter:   id =  kf, name = kf
	reaction_re51_kf=30.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re51_kb=1.0;

	reaction_re51=compartment_c1*(reaction_re51_kf*x(57)*x(73)-reaction_re51_kb*x(95));

% Reaction: id = re52, name = C1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re52_kf=3.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re52_kb=1.0;

	reaction_re52=compartment_c1*(reaction_re52_kf*x(62)*x(57)-reaction_re52_kb*x(100));

% Reaction: id = re54, name = C1-5	% Local Parameter:   id =  kf, name = kf
	reaction_re54_kf=0.0133;

	reaction_re54=compartment_c1*reaction_re54_kf*x(95);

% Reaction: id = re55, name = C2-1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re55_Km=19.841;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re55_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re55_Vmax=10.0;

	reaction_re55=compartment_c1*((1+reaction_re55_ratio)*reaction_re55_Vmax*x(100)*x(23)/reaction_re55_Km-reaction_re55_ratio*reaction_re55_Vmax*x(99));

% Reaction: id = re56, name = C2-2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re56_Km=5.0;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re56_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re56_Vmax=48.0;

	reaction_re56=compartment_c1*((1+reaction_re56_ratio)*reaction_re56_Vmax*x(95)*x(23)/reaction_re56_Km-reaction_re56_ratio*reaction_re56_Vmax*x(98));

% Reaction: id = re57, name = C2-1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re57_Vmax=10.0;

	reaction_re57=compartment_c1*reaction_re57_Vmax*x(99);

% Reaction: id = re58, name = C2-2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re58_Vmax=48.0;

	reaction_re58=compartment_c1*reaction_re58_Vmax*x(98);

% Reaction: id = re59, name = C1-6	% Local Parameter:   id =  kf, name = kf
	reaction_re59_kf=0.15;

	reaction_re59=compartment_c1*reaction_re59_kf*x(19);

% Reaction: id = re60, name = C1-7	% Local Parameter:   id =  kf, name = kf
	reaction_re60_kf=2.5;

	reaction_re60=compartment_c1*reaction_re60_kf*x(20);

% Reaction: id = re68, name = C1-8	% Local Parameter:   id =  kf, name = kf
	reaction_re68_kf=0.1;
	% Local Parameter:   id =  kb, name = kb
	reaction_re68_kb=10.0;

	reaction_re68=compartment_c1*(reaction_re68_kf*x(20)*x(20)*x(20)*x(14)-reaction_re68_kb*x(15));

% Reaction: id = re73, name = D3-1	% Local Parameter:   id =  g, name = g
	reaction_re73_g=150.0;

	reaction_re73=compartment_c1*reaction_re73_g*x(15)*(x(59)-x(57));

% Reaction: id = re85, name = D1-2	% Local Parameter:   id =  kf, name = kf
	reaction_re85_kf=1.0;

	reaction_re85=compartment_c1*reaction_re85_kf*x(74);

% Reaction: id = re86, name = D1-3	% Local Parameter:   id =  kf, name = kf
	reaction_re86_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re86_kb=50.0;

	reaction_re86=compartment_c1*(reaction_re86_kf*x(58)*x(57)-reaction_re86_kb*x(29));

% Reaction: id = re87, name = D1-4	% Local Parameter:   id =  kf, name = kf
	reaction_re87_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re87_kb=45.0;

	reaction_re87=compartment_c1*(reaction_re87_kf*x(29)*x(57)-reaction_re87_kb*x(30));

% Reaction: id = re88, name = D1-6	% Local Parameter:   id =  kf, name = kf
	reaction_re88_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re88_kb=500.0;

	reaction_re88=compartment_c1*(reaction_re88_kf*x(31)*x(57)-reaction_re88_kb*x(32));

% Reaction: id = re89, name = D1-5	% Local Parameter:   id =  kf, name = kf
	reaction_re89_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re89_kb=170.0;

	reaction_re89=compartment_c1*(reaction_re89_kf*x(30)*x(57)-reaction_re89_kb*x(31));

% Reaction: id = re90, name = D1-10	% Local Parameter:   id =  kf, name = kf
	reaction_re90_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re90_kb=0.01;

	reaction_re90=compartment_c1*(reaction_re90_kf*x(32)*x(33)-reaction_re90_kb*x(37));

% Reaction: id = re91, name = D1-9	% Local Parameter:   id =  kf, name = kf
	reaction_re91_kf=10.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re91_kb=0.01;

	reaction_re91=compartment_c1*(reaction_re91_kf*x(31)*x(33)-reaction_re91_kb*x(36));

% Reaction: id = re92, name = D1-8	% Local Parameter:   id =  kf, name = kf
	reaction_re92_kf=0.1;
	% Local Parameter:   id =  kb, name = kb
	reaction_re92_kb=0.45;

	reaction_re92=compartment_c1*(reaction_re92_kf*x(30)*x(33)-reaction_re92_kb*x(35));

% Reaction: id = re93, name = D1-7	% Local Parameter:   id =  kf, name = kf
	reaction_re93_kf=0.1;
	% Local Parameter:   id =  kb, name = kb
	reaction_re93_kb=0.5;

	reaction_re93=compartment_c1*(reaction_re93_kf*x(29)*x(33)-reaction_re93_kb*x(34));

% Reaction: id = re94, name = E1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re94_kf=1.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re94_kb=50.0;

	reaction_re94=compartment_c1*(reaction_re94_kf*x(38)-reaction_re94_kb*x(39));

% Reaction: id = re95, name = E1-3	% Local Parameter:   id =  kf, name = kf
	reaction_re95_kf=3.0E-4;
	% Local Parameter:   id =  kb, name = kb
	reaction_re95_kb=0.1;

	reaction_re95=compartment_c1*(reaction_re95_kf*x(38)*x(19)-reaction_re95_kb*x(40));

% Reaction: id = re96, name = E1-5	% Local Parameter:   id =  kf, name = kf
	reaction_re96_kf=1.2705;
	% Local Parameter:   id =  kb, name = kb
	reaction_re96_kb=3.5026;

	reaction_re96=compartment_c1*(reaction_re96_kf*x(97)-reaction_re96_kb*x(41));

% Reaction: id = re97, name = E1-4	% Local Parameter:   id =  kf, name = kf
	reaction_re97_kf=0.3;
	% Local Parameter:   id =  kb, name = kb
	reaction_re97_kb=0.5;

	reaction_re97=compartment_c1*(reaction_re97_kf*x(38)*x(57)-reaction_re97_kb*x(97));

% Reaction: id = re98, name = D2-1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re98_Vmax=4.9;

	reaction_re98=compartment_c1*reaction_re98_Vmax*x(75);

% Reaction: id = re100, name = D1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re100_kf=30.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re100_kb=3.0;

	reaction_re100=compartment_c1*(reaction_re100_kf*x(57)*x(57)*x(63)-reaction_re100_kb*x(74));

% Reaction: id = re101, name = E1-7	% Local Parameter:   id =  kf, name = kf
	reaction_re101_kf=0.004;
	% Local Parameter:   id =  kb, name = kb
	reaction_re101_kb=8.6348;

	reaction_re101=compartment_c1*(reaction_re101_kf*x(97)*x(19)-reaction_re101_kb*x(96));

% Reaction: id = re102, name = E1-8	% Local Parameter:   id =  kf, name = kf
	reaction_re102_kf=1.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re102_kb=0.1;

	reaction_re102=compartment_c1*(reaction_re102_kf*x(96)-reaction_re102_kb*x(42));

% Reaction: id = re106, name = E1-9	% Local Parameter:   id =  kf, name = kf
	reaction_re106_kf=4.63E-5;

	reaction_re106=compartment_c1*reaction_re106_kf*x(42);

% Reaction: id = re107, name = E1-6	% Local Parameter:   id =  kf, name = kf
	reaction_re107_kf=4.63E-5;

	reaction_re107=compartment_c1*reaction_re107_kf*x(41);

% Reaction: id = re108, name = E1-2	% Local Parameter:   id =  kf, name = kf
	reaction_re108_kf=4.63E-5;

	reaction_re108=compartment_c1*reaction_re108_kf*x(39);

% Reaction: id = re109, name = D2-1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re109_Km=0.04;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re109_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re109_Vmax=4.9;

	reaction_re109=compartment_c1*((1+reaction_re109_ratio)*reaction_re109_Vmax*x(64)*x(57)/reaction_re109_Km-reaction_re109_Vmax*reaction_re109_ratio*x(75));

% Reaction: id = re110, name = E2-1.1.3	% Local Parameter:   id =  Km, name = Km
	reaction_re110_Km=0.0014;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re110_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re110_Vmax=3.94;

	reaction_re110=compartment_c1*((1+reaction_re110_ratio)*reaction_re110_Vmax*x(42)*x(51)/reaction_re110_Km-reaction_re110_Vmax*reaction_re110_ratio*x(48));

% Reaction: id = re111, name = E2-1.1.2	% Local Parameter:   id =  Km, name = Km
	reaction_re111_Km=0.0014;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re111_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re111_Vmax=3.94;

	reaction_re111=compartment_c1*((1+reaction_re111_ratio)*reaction_re111_Vmax*x(41)*x(51)/reaction_re111_Km-reaction_re111_ratio*reaction_re111_Vmax*x(47));

% Reaction: id = re112, name = E2-1.1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re112_Km=0.0014;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re112_ratio=4.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re112_Vmax=3.94;

	reaction_re112=compartment_c1*((1+reaction_re112_ratio)*reaction_re112_Vmax*x(39)*x(51)/reaction_re112_Km-reaction_re112_Vmax*reaction_re112_ratio*x(46));

% Reaction: id = re113, name = E2-1.2.3	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re113_Vmax=3.94;

	reaction_re113=compartment_c1*reaction_re113_Vmax*x(48);

% Reaction: id = re114, name = E2-1.2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re114_Vmax=3.94;

	reaction_re114=compartment_c1*reaction_re114_Vmax*x(47);

% Reaction: id = re115, name = E2-1.2.1	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re115_Vmax=3.94;

	reaction_re115=compartment_c1*reaction_re115_Vmax*x(46);

% Reaction: id = re116, name = E1-10	% Local Parameter:   id =  kf, name = kf
	reaction_re116_kf=0.5;

	reaction_re116=compartment_c1*reaction_re116_kf*x(56);

% Reaction: id = re117, name = E1-11	% Local Parameter:   id =  kf, name = kf
	reaction_re117_kf=100.0;
	% Local Parameter:   id =  kb, name = kb
	reaction_re117_kb=0.62;

	reaction_re117=compartment_c1*(reaction_re117_kf*x(101)*x(56)-reaction_re117_kb*x(49));

% Reaction: id = re118, name = E1-12	% Local Parameter:   id =  kf, name = kf
	reaction_re118_kf=0.01;
	% Local Parameter:   id =  kb, name = kb
	reaction_re118_kb=0.1;

	reaction_re118=compartment_c1*(reaction_re118_kf*x(101)*x(51)-reaction_re118_kb*x(50));

% Reaction: id = re119, name = E1-13	% Local Parameter:   id =  kf, name = kf
	reaction_re119_kf=0.5;

	reaction_re119=compartment_c1*reaction_re119_kf*x(49);

% Reaction: id = re120, name = F2-1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re120_Km=4.5099;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re120_ratio=16.617;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re120_Vmax=1.28;

	reaction_re120=compartment_c1*((1+reaction_re120_ratio)*reaction_re120_Vmax*x(17)*x(53)/reaction_re120_Km-reaction_re120_Vmax*reaction_re120_ratio*x(54));

% Reaction: id = re121, name = F2-2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re121_Km=4.5099;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re121_ratio=16.617;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re121_Vmax=1.28;

	reaction_re121=compartment_c1*((1+reaction_re121_ratio)*reaction_re121_Vmax*x(17)*x(78)/reaction_re121_Km-reaction_re121_Vmax*reaction_re121_ratio*x(55));

% Reaction: id = re123, name = F2-1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re123_Vmax=1.28;

	reaction_re123=compartment_c1*reaction_re123_Vmax*x(54);

% Reaction: id = re124, name = F2-2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re124_Vmax=1.28;

	reaction_re124=compartment_c1*reaction_re124_Vmax*x(55);

% Reaction: id = re125, name = F2-3.1	% Local Parameter:   id =  Km, name = Km
	reaction_re125_Km=2.47;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re125_ratio=0.4261;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re125_Vmax=8.66;

	reaction_re125=compartment_c1*((1+reaction_re125_ratio)*reaction_re125_Vmax*x(28)*x(53)/reaction_re125_Km-reaction_re125_Vmax*reaction_re125_ratio*x(77));

% Reaction: id = re126, name = F2-4.1	% Local Parameter:   id =  Km, name = Km
	reaction_re126_Km=2.47;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re126_ratio=0.4261;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re126_Vmax=8.66;

	reaction_re126=compartment_c1*((1+reaction_re126_ratio)*reaction_re126_Vmax*x(28)*x(78)/reaction_re126_Km-reaction_re126_Vmax*reaction_re126_ratio*x(76));

% Reaction: id = re127, name = F2-3.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re127_Vmax=8.66;

	reaction_re127=compartment_c1*reaction_re127_Vmax*x(77);

% Reaction: id = re128, name = F2-4.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re128_Vmax=8.66;

	reaction_re128=compartment_c1*reaction_re128_Vmax*x(76);

% Reaction: id = re129, name = F2-14.1	% Local Parameter:   id =  Km, name = Km
	reaction_re129_Km=0.18;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re129_ratio=0.23288;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re129_Vmax=1.46;

	reaction_re129=compartment_c1*((1+reaction_re129_ratio)*reaction_re129_Vmax*x(17)*x(101)/reaction_re129_Km-reaction_re129_Vmax*reaction_re129_ratio*x(79));

% Reaction: id = re130, name = F2-14.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re130_Vmax=1.46;

	reaction_re130=compartment_c1*reaction_re130_Vmax*x(79);

% Reaction: id = re131, name = F2-13.1	% Local Parameter:   id =  Km, name = Km
	reaction_re131_Km=0.1;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re131_ratio=0.028278;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re131_Vmax=17.505;

	reaction_re131=compartment_c1*((1+reaction_re131_ratio)*reaction_re131_Vmax*x(28)*x(101)/reaction_re131_Km-reaction_re131_Vmax*reaction_re131_ratio*x(86));

% Reaction: id = re132, name = F2-13.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re132_Vmax=17.505;

	reaction_re132=compartment_c1*reaction_re132_Vmax*x(86);

% Reaction: id = re133, name = F2-11.1	% Local Parameter:   id =  Km, name = Km
	reaction_re133_Km=58.099;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re133_ratio=28.795;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re133_Vmax=1.95;

	reaction_re133=compartment_c1*((1+reaction_re133_ratio)*reaction_re133_Vmax*x(52)*x(102)/reaction_re133_Km-reaction_re133_Vmax*reaction_re133_ratio*x(80));

% Reaction: id = re134, name = F2-9.1	% Local Parameter:   id =  Km, name = Km
	reaction_re134_Km=16.0;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re134_ratio=7.5865;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re134_Vmax=9.317;

	reaction_re134=compartment_c1*((1+reaction_re134_ratio)*reaction_re134_Vmax*x(52)*x(101)/reaction_re134_Km-reaction_re134_Vmax*reaction_re134_ratio*x(81));

% Reaction: id = re135, name = F2-12.1	% Local Parameter:   id =  Km, name = Km
	reaction_re135_Km=58.099;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re135_ratio=28.795;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re135_Vmax=1.95;

	reaction_re135=compartment_c1*((1+reaction_re135_ratio)*reaction_re135_Vmax*x(78)*x(102)/reaction_re135_Km-reaction_re135_Vmax*reaction_re135_ratio*x(82));

% Reaction: id = re136, name = F2-10.1	% Local Parameter:   id =  Km, name = Km
	reaction_re136_Km=16.0;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re136_ratio=7.5865;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re136_Vmax=9.317;

	reaction_re136=compartment_c1*((1+reaction_re136_ratio)*reaction_re136_Vmax*x(101)*x(78)/reaction_re136_Km-reaction_re136_Vmax*reaction_re136_ratio*x(83));

% Reaction: id = re137, name = F2-11.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re137_Vmax=1.95;

	reaction_re137=compartment_c1*reaction_re137_Vmax*x(80);

% Reaction: id = re138, name = F2-9.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re138_Vmax=9.317;

	reaction_re138=compartment_c1*reaction_re138_Vmax*x(81);

% Reaction: id = re139, name = F2-12.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re139_Vmax=1.95;

	reaction_re139=compartment_c1*reaction_re139_Vmax*x(82);

% Reaction: id = re140, name = F2-10.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re140_Vmax=9.317;

	reaction_re140=compartment_c1*reaction_re140_Vmax*x(83);

% Reaction: id = re141, name = F1-1	% Local Parameter:   id =  kf, name = kf
	reaction_re141_kf=0.2;

	reaction_re141=compartment_c1*reaction_re141_kf*x(102);

% Reaction: id = re154, name = F2-7.1	% Local Parameter:   id =  Km, name = Km
	reaction_re154_Km=148.08;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re154_ratio=39.349;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re154_Vmax=3.67;

	reaction_re154=compartment_c1*((1+reaction_re154_ratio)*reaction_re154_Vmax*x(33)*x(53)/reaction_re154_Km-reaction_re154_Vmax*reaction_re154_ratio*x(85));

% Reaction: id = re155, name = F2-8.1	% Local Parameter:   id =  Km, name = Km
	reaction_re155_Km=148.08;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re155_ratio=39.349;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re155_Vmax=3.67;

	reaction_re155=compartment_c1*((1+reaction_re155_ratio)*reaction_re155_Vmax*x(33)*x(78)/reaction_re155_Km-reaction_re155_Vmax*reaction_re155_ratio*x(84));

% Reaction: id = re156, name = F2-7.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re156_Vmax=3.67;

	reaction_re156=compartment_c1*reaction_re156_Vmax*x(85);

% Reaction: id = re157, name = F2-8.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re157_Vmax=3.67;

	reaction_re157=compartment_c1*reaction_re157_Vmax*x(84);

% Reaction: id = re158, name = F2-5.1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re158_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re158_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re158_Vmax=3.67;

	reaction_re158=compartment_c1*((1+reaction_re158_ratio)*reaction_re158_Vmax*x(34)*x(53)/reaction_re158_Km-reaction_re158_Vmax*reaction_re158_ratio*x(94));

% Reaction: id = re159, name = F2-5.2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re159_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re159_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re159_Vmax=3.67;

	reaction_re159=compartment_c1*((1+reaction_re159_ratio)*reaction_re159_Vmax*x(35)*x(53)/reaction_re159_Km-reaction_re159_Vmax*reaction_re159_ratio*x(92));

% Reaction: id = re160, name = F2-5.3.1	% Local Parameter:   id =  Km, name = Km
	reaction_re160_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re160_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re160_Vmax=3.67;

	reaction_re160=compartment_c1*((1+reaction_re160_ratio)*reaction_re160_Vmax*x(36)*x(53)/reaction_re160_Km-reaction_re160_Vmax*reaction_re160_ratio*x(90));

% Reaction: id = re161, name = F2-5.4.1	% Local Parameter:   id =  Km, name = Km
	reaction_re161_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re161_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re161_Vmax=3.67;

	reaction_re161=compartment_c1*((1+reaction_re161_ratio)*reaction_re161_Vmax*x(37)*x(53)/reaction_re161_Km-reaction_re161_Vmax*reaction_re161_ratio*x(89));

% Reaction: id = re162, name = F2-6.1.1	% Local Parameter:   id =  Km, name = Km
	reaction_re162_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re162_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re162_Vmax=3.67;

	reaction_re162=compartment_c1*((1+reaction_re162_ratio)*reaction_re162_Vmax*x(34)*x(78)/reaction_re162_Km-reaction_re162_Vmax*reaction_re162_ratio*x(93));

% Reaction: id = re163, name = F2-6.2.1	% Local Parameter:   id =  Km, name = Km
	reaction_re163_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re163_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re163_Vmax=3.67;

	reaction_re163=compartment_c1*((1+reaction_re163_ratio)*reaction_re163_Vmax*x(35)*x(78)/reaction_re163_Km-reaction_re163_Vmax*reaction_re163_ratio*x(91));

% Reaction: id = re164, name = F2-6.3.1	% Local Parameter:   id =  Km, name = Km
	reaction_re164_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re164_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re164_Vmax=3.67;

	reaction_re164=compartment_c1*((1+reaction_re164_ratio)*reaction_re164_Vmax*x(36)*x(78)/reaction_re164_Km-reaction_re164_Vmax*reaction_re164_ratio*x(88));

% Reaction: id = re165, name = F2-6.4.1	% Local Parameter:   id =  Km, name = Km
	reaction_re165_Km=10.019;
	% Local Parameter:   id =  ratio, name = ratio
	reaction_re165_ratio=1.7299;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re165_Vmax=3.67;

	reaction_re165=compartment_c1*((1+reaction_re165_ratio)*reaction_re165_Vmax*x(37)*x(78)/reaction_re165_Km-reaction_re165_Vmax*reaction_re165_ratio*x(87));

% Reaction: id = re166, name = F2-6.4.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re166_Vmax=3.67;

	reaction_re166=compartment_c1*reaction_re166_Vmax*x(87);

% Reaction: id = re167, name = F2-5.4.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re167_Vmax=3.67;

	reaction_re167=compartment_c1*reaction_re167_Vmax*x(89);

% Reaction: id = re168, name = F2-6.3.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re168_Vmax=3.67;

	reaction_re168=compartment_c1*reaction_re168_Vmax*x(88);

% Reaction: id = re169, name = F2-5.3.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re169_Vmax=3.67;

	reaction_re169=compartment_c1*reaction_re169_Vmax*x(90);

% Reaction: id = re170, name = F2-6.2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re170_Vmax=3.67;

	reaction_re170=compartment_c1*reaction_re170_Vmax*x(91);

% Reaction: id = re171, name = F2-5.2.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re171_Vmax=3.67;

	reaction_re171=compartment_c1*reaction_re171_Vmax*x(92);

% Reaction: id = re172, name = F2-6.1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re172_Vmax=3.67;

	reaction_re172=compartment_c1*reaction_re172_Vmax*x(93);

% Reaction: id = re173, name = F2-5.1.2	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_re173_Vmax=3.67;

	reaction_re173=compartment_c1*reaction_re173_Vmax*x(94);

% Reaction: id = re174, name = D3-3	% Local Parameter:   id =  g, name = g
	reaction_re174_g=0.01;

	reaction_re174=compartment_c1*reaction_re174_g*const_species_s556*(const_species_s267-x(57));

% Reaction: id = re175, name = D3-2	% Local Parameter:   id =  g, name = g
	reaction_re175_g=0.01;

	reaction_re175=compartment_c1*reaction_re175_g*const_species_s557*(x(59)-x(57));

% Species:   id = s556, name = Ca_super_2_plus__endsuper_ ext leak, constant	const_species_s556=0.00833;

% Species:   id = s267, name = Ca_super_2_plus__endsuper_ ext, constant	const_species_s267=4000.0;

% Species:   id = s557, name = Ca_super_2_plus__endsuper_ int leak, constant	const_species_s557=0.001;

%Event: id=event_0000001
	event_event_0000001=t >= 300;

	if(event_event_0000001) 
		x(1)=0.01;
	end

	xdot=zeros(102,1);
	
% Species:   id = s2, name = thrombin	xdot(1) = ;
	
% Species:   id = s174, name = thrombin_R, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re40));
	
% Species:   id = s130, name = pro_thrombinR, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*((-1.0 * reaction_re1));
	
% Species:   id = s4, name = thrombin_ligand, affected by kineticLaw
	xdot(4) = (1/(compartment_c0))*(( 1.0 * reaction_re40));
	
% Species:   id = s57, name = thrombinR active, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re40) + (-1.0 * reaction_re43) + (-1.0 * reaction_re45));
	
% Species:   id = s93, name = RGS, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*((-1.0 * reaction_re20) + ( 1.0 * reaction_re34));
	
% Species:   id = s165, name = Inositol, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_re60));
	
% Species:   id = s183, name = sa40_degraded, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_re14) + ( 1.0 * reaction_re45));
	
% Species:   id = s55, name = thrombinR, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re14) + ( 1.0 * reaction_re16));
	
% Species:   id = s184, name = RGS, affected by kineticLaw
	xdot(10) = (1/(compartment_c1))*(( 1.0 * reaction_re20) + (-1.0 * reaction_re34));
	
% Species:   id = s48, name = GTP
%WARNING speciesID: s48, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = s187, name = G_sub_q_endsub__alpha_.GTP, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re20) + (-1.0 * reaction_re44) + (-1.0 * reaction_re47) + (-1.0 * reaction_re48));
	
% Species:   id = s50, name = GDP
%WARNING speciesID: s50, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = s171, name = IP3R, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*((-1.0 * reaction_re68));
	
% Species:   id = s173, name = 3IP3.IP3R, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_re68));
	
% Species:   id = s98, name = p115RhoGEF, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*((-1.0 * reaction_re23) + (-1.0 * reaction_re26) + ( 1.0 * reaction_re32) + ( 1.0 * reaction_re37));
	
% Species:   id = s124, name = Rho-kinase, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*((-1.0 * reaction_re39) + (-1.0 * reaction_re120) + (-1.0 * reaction_re121) + ( 1.0 * reaction_re123) + ( 1.0 * reaction_re124) + (-1.0 * reaction_re129) + ( 1.0 * reaction_re130));
	
% Species:   id = s118, name = RhoGAP, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*((-1.0 * reaction_re28) + ( 1.0 * reaction_re33));
	
% Species:   id = s153, name = DAG, affected by kineticLaw
	xdot(19) = (1/(compartment_c1))*(( 1.0 * reaction_re57) + ( 1.0 * reaction_re58) + (-1.0 * reaction_re59) + (-1.0 * reaction_re95) + (-1.0 * reaction_re101));
	
% Species:   id = s152, name = IP3, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*(( 1.0 * reaction_re57) + ( 1.0 * reaction_re58) + (-1.0 * reaction_re60) + (-3.0 * reaction_re68));
	
% Species:   id = s213, name = Rho_GAP, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*(( 1.0 * reaction_re28) + (-1.0 * reaction_re33));
	
% Species:   id = s214, name = Rho.GTP, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*(( 1.0 * reaction_re24) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re32) + (-1.0 * reaction_re38) + (-1.0 * reaction_re39));
	
% Species:   id = s151, name = PIP2
%WARNING speciesID: s151, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = s164, name = PC, affected by kineticLaw
	xdot(24) = (1/(compartment_c1))*(( 1.0 * reaction_re59));
	
% Species:   id = s231, name = Rho.GDP, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*((-1.0 * reaction_re24) + (-1.0 * reaction_re26) + ( 1.0 * reaction_re33) + ( 1.0 * reaction_re38));
	
% Species:   id = s233, name = Rho_GEF, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re32));
	
% Species:   id = s245, name = Rho_GEF_active
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = s252, name = Rho.GTP.Rho-kinase, affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*(( 1.0 * reaction_re39) + (-1.0 * reaction_re125) + (-1.0 * reaction_re126) + ( 1.0 * reaction_re127) + ( 1.0 * reaction_re128) + (-1.0 * reaction_re131) + ( 1.0 * reaction_re132));
	
% Species:   id = s277, name = Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_re86) + (-1.0 * reaction_re87) + (-1.0 * reaction_re93));
	
% Species:   id = s278, name = 2Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*(( 1.0 * reaction_re87) + (-1.0 * reaction_re89) + (-1.0 * reaction_re92));
	
% Species:   id = s279, name = 3Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*((-1.0 * reaction_re88) + ( 1.0 * reaction_re89) + (-1.0 * reaction_re91));
	
% Species:   id = s280, name = 4Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*(( 1.0 * reaction_re88) + (-1.0 * reaction_re90));
	
% Species:   id = s289, name = MLCK, affected by kineticLaw
	xdot(33) = (1/(compartment_c1))*((-1.0 * reaction_re90) + (-1.0 * reaction_re91) + (-1.0 * reaction_re92) + (-1.0 * reaction_re93) + (-1.0 * reaction_re154) + (-1.0 * reaction_re155) + ( 1.0 * reaction_re156) + ( 1.0 * reaction_re157));
	
% Species:   id = s292, name = MLCK.Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*(( 1.0 * reaction_re93) + (-1.0 * reaction_re158) + (-1.0 * reaction_re162) + ( 1.0 * reaction_re172) + ( 1.0 * reaction_re173));
	
% Species:   id = s293, name = MLCK.2Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*(( 1.0 * reaction_re92) + (-1.0 * reaction_re159) + (-1.0 * reaction_re163) + ( 1.0 * reaction_re170) + ( 1.0 * reaction_re171));
	
% Species:   id = s294, name = MLCK.3Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_re91) + (-1.0 * reaction_re160) + (-1.0 * reaction_re164) + ( 1.0 * reaction_re168) + ( 1.0 * reaction_re169));
	
% Species:   id = s295, name = MLCK.4Ca_super_2_plus__endsuper_.CaM, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*(( 1.0 * reaction_re90) + (-1.0 * reaction_re161) + (-1.0 * reaction_re165) + ( 1.0 * reaction_re166) + ( 1.0 * reaction_re167));
	
% Species:   id = s309, name = PKC, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*((-1.0 * reaction_re94) + (-1.0 * reaction_re95) + (-1.0 * reaction_re97));
	
% Species:   id = s310, name = PKC active1, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*(( 1.0 * reaction_re94) + (-1.0 * reaction_re108) + (-1.0 * reaction_re112) + ( 1.0 * reaction_re115));
	
% Species:   id = s311, name = PKC.DAG, affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*(( 1.0 * reaction_re95));
	
% Species:   id = s314, name = PKC active_2, affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*(( 1.0 * reaction_re96) + (-1.0 * reaction_re107) + (-1.0 * reaction_re111) + ( 1.0 * reaction_re114));
	
% Species:   id = s324, name = PKC active_3, affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*(( 1.0 * reaction_re102) + (-1.0 * reaction_re106) + (-1.0 * reaction_re110) + ( 1.0 * reaction_re113));
	
% Species:   id = s329, name = csa39_degraded, affected by kineticLaw
	xdot(43) = (1/(compartment_c1))*(( 1.0 * reaction_re106));
	
% Species:   id = s330, name = csa36_degraded, affected by kineticLaw
	xdot(44) = (1/(compartment_c1))*(( 1.0 * reaction_re107));
	
% Species:   id = s331, name = csa35_degraded, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*(( 1.0 * reaction_re108));
	
% Species:   id = s332, name = PKC active_1.CPI, affected by kineticLaw
	xdot(46) = (1/(compartment_c1))*(( 1.0 * reaction_re112) + (-1.0 * reaction_re115));
	
% Species:   id = s335, name = PKC active_2.CPI, affected by kineticLaw
	xdot(47) = (1/(compartment_c1))*(( 1.0 * reaction_re111) + (-1.0 * reaction_re114));
	
% Species:   id = s338, name = PKC active_3.CPI, affected by kineticLaw
	xdot(48) = (1/(compartment_c1))*(( 1.0 * reaction_re110) + (-1.0 * reaction_re113));
	
% Species:   id = s352, name = CPI-17.MYPT1_PPase, affected by kineticLaw
	xdot(49) = (1/(compartment_c1))*(( 1.0 * reaction_re117) + (-1.0 * reaction_re119));
	
% Species:   id = s355, name = CPI-17.MYPT1_PPase, affected by kineticLaw
	xdot(50) = (1/(compartment_c1))*(( 1.0 * reaction_re118) + ( 1.0 * reaction_re119));
	
% Species:   id = s349, name = CPI-17, affected by kineticLaw
	xdot(51) = (1/(compartment_c1))*((-1.0 * reaction_re110) + (-1.0 * reaction_re111) + (-1.0 * reaction_re112) + ( 1.0 * reaction_re116) + (-1.0 * reaction_re118));
	
% Species:   id = s360, name = MLC, affected by kineticLaw
	xdot(52) = (1/(compartment_c1))*(( 1.0 * reaction_re124) + ( 1.0 * reaction_re128) + (-1.0 * reaction_re133) + (-1.0 * reaction_re134) + ( 1.0 * reaction_re157) + ( 1.0 * reaction_re166) + ( 1.0 * reaction_re168) + ( 1.0 * reaction_re170) + ( 1.0 * reaction_re172));
	
% Species:   id = s358, name = MLC, affected by kineticLaw
	xdot(53) = (1/(compartment_c1))*((-1.0 * reaction_re120) + (-1.0 * reaction_re125) + ( 1.0 * reaction_re139) + ( 1.0 * reaction_re140) + (-1.0 * reaction_re154) + (-1.0 * reaction_re158) + (-1.0 * reaction_re159) + (-1.0 * reaction_re160) + (-1.0 * reaction_re161));
	
% Species:   id = s361, name = Rho-kinase.MLC, affected by kineticLaw
	xdot(54) = (1/(compartment_c1))*(( 1.0 * reaction_re120) + (-1.0 * reaction_re123));
	
% Species:   id = s362, name = Rho-kinase.MLC, affected by kineticLaw
	xdot(55) = (1/(compartment_c1))*(( 1.0 * reaction_re121) + (-1.0 * reaction_re124));
	
% Species:   id = s350, name = CPI-17, affected by kineticLaw
	xdot(56) = (1/(compartment_c1))*(( 1.0 * reaction_re113) + ( 1.0 * reaction_re114) + ( 1.0 * reaction_re115) + (-1.0 * reaction_re116) + (-1.0 * reaction_re117));
	
% Species:   id = s135, name = Ca_super_2_plus__endsuper_, affected by kineticLaw
	xdot(57) = (1/(compartment_c1))*((-1.0 * reaction_re51) + (-1.0 * reaction_re52) + ( 1.0 * reaction_re73) + (-1.0 * reaction_re86) + (-1.0 * reaction_re87) + (-1.0 * reaction_re88) + (-1.0 * reaction_re89) + (-1.0 * reaction_re97) + (-2.0 * reaction_re100) + (-1.0 * reaction_re109) + ( 1.0 * reaction_re174) + ( 1.0 * reaction_re175));
	
% Species:   id = s276, name = CaM, affected by kineticLaw
	xdot(58) = (1/(compartment_c1))*((-1.0 * reaction_re86));
	
% Species:   id = s172, name = Ca_super_2_plus__endsuper_ store, affected by kineticLaw
	xdot(59) = (1/(compartment_c2))*((-1.0 * reaction_re73) + ( 2.0 * reaction_re85) + (-1.0 * reaction_re175));
	
% Species:   id = s410, name = G_beta__gamma__1, affected by kineticLaw
	xdot(60) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re19));
	
% Species:   id = s421, name = G_beta__gamma__2, affected by kineticLaw
	xdot(61) = (1/(compartment_c1))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re22));
	
% Species:   id = s424, name = PLC_beta_, affected by kineticLaw
	xdot(62) = (1/(compartment_c1))*((-1.0 * reaction_re48) + (-1.0 * reaction_re52));
	
% Species:   id = s430, name = Ca_super_2_plus__endsuper_ trunsp, affected by kineticLaw
	xdot(63) = (1/(compartment_c1))*(( 1.0 * reaction_re85) + (-1.0 * reaction_re100));
	
% Species:   id = s432, name = Ca_super_2_plus__endsuper_ pump, affected by kineticLaw
	xdot(64) = (1/(compartment_c1))*(( 1.0 * reaction_re98) + (-1.0 * reaction_re109));
	
% Species:   id = s435, name = G_sub_12_endsub__alpha__beta__gamma__thrombinR active, affected by kineticLaw
	xdot(65) = (1/(compartment_c1))*((-1.0 * reaction_re12) + ( 1.0 * reaction_re43));
	
% Species:   id = s436, name = p115RhoGEF.GTP_alpha_, affected by kineticLaw
	xdot(66) = (1/(compartment_c1))*(( 1.0 * reaction_re23) + (-1.0 * reaction_re37));
	
% Species:   id = s437, name = G_sub_12_endsub__alpha__beta__gamma_, affected by kineticLaw
	xdot(67) = (1/(compartment_c1))*(( 1.0 * reaction_re19) + (-1.0 * reaction_re43));
	
% Species:   id = s438, name = G_sub_12_endsub__alpha_.GDP, affected by kineticLaw
	xdot(68) = (1/(compartment_c1))*(( 1.0 * reaction_re17) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re37));
	
% Species:   id = s439, name = G_sub_12_endsub__alpha_.GTP, affected by kineticLaw
	xdot(69) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re17) + (-1.0 * reaction_re23));
	
% Species:   id = s440, name = G_sub_q_endsub__alpha_.GDP, affected by kineticLaw
	xdot(70) = (1/(compartment_c1))*((-1.0 * reaction_re22) + ( 1.0 * reaction_re34) + ( 1.0 * reaction_re44) + ( 1.0 * reaction_re54));
	
% Species:   id = s441, name = G_sub_q_endsub__alpha__beta__gamma__thrombinR active, affected by kineticLaw
	xdot(71) = (1/(compartment_c1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re16));
	
% Species:   id = s442, name = G_sub_q_endsub__alpha__beta__gamma_, affected by kineticLaw
	xdot(72) = (1/(compartment_c1))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re22));
	
% Species:   id = s443, name = PLC_beta_.G_sub_q_endsub__alpha_.GTP, affected by kineticLaw
	xdot(73) = (1/(compartment_c1))*(( 1.0 * reaction_re48) + (-1.0 * reaction_re51));
	
% Species:   id = s444, name = 2Ca_super_2_plus__endsuper_ .Ca_super_2_plus__endsuper_ trunsp, affected by kineticLaw
	xdot(74) = (1/(compartment_c1))*((-1.0 * reaction_re85) + ( 1.0 * reaction_re100));
	
% Species:   id = s446, name = Ca_super_2_plus__endsuper_  pump.Ca_super_2_plus__endsuper_, affected by kineticLaw
	xdot(75) = (1/(compartment_c1))*((-1.0 * reaction_re98) + ( 1.0 * reaction_re109));
	
% Species:   id = s449, name = Rho.GTP.Rho-kinase.MLC, affected by kineticLaw
	xdot(76) = (1/(compartment_c1))*(( 1.0 * reaction_re126) + (-1.0 * reaction_re128));
	
% Species:   id = s456, name = Rho.GTP.Rho-kinase.MLC, affected by kineticLaw
	xdot(77) = (1/(compartment_c1))*(( 1.0 * reaction_re125) + (-1.0 * reaction_re127));
	
% Species:   id = s359, name = MLC, affected by kineticLaw
	xdot(78) = (1/(compartment_c1))*((-1.0 * reaction_re121) + ( 1.0 * reaction_re123) + (-1.0 * reaction_re126) + ( 1.0 * reaction_re127) + (-1.0 * reaction_re135) + (-1.0 * reaction_re136) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re138) + (-1.0 * reaction_re155) + ( 1.0 * reaction_re156) + (-1.0 * reaction_re162) + (-1.0 * reaction_re163) + (-1.0 * reaction_re164) + (-1.0 * reaction_re165) + ( 1.0 * reaction_re167) + ( 1.0 * reaction_re169) + ( 1.0 * reaction_re171) + ( 1.0 * reaction_re173));
	
% Species:   id = s463, name = MYPT1.Rho-kinase, affected by kineticLaw
	xdot(79) = (1/(compartment_c1))*(( 1.0 * reaction_re129) + (-1.0 * reaction_re130));
	
% Species:   id = s467, name = MYPT1.MLC, affected by kineticLaw
	xdot(80) = (1/(compartment_c1))*(( 1.0 * reaction_re133) + (-1.0 * reaction_re137));
	
% Species:   id = s470, name = MYPT1.MLC, affected by kineticLaw
	xdot(81) = (1/(compartment_c1))*(( 1.0 * reaction_re134) + (-1.0 * reaction_re138));
	
% Species:   id = s477, name = MYPT1.MLC, affected by kineticLaw
	xdot(82) = (1/(compartment_c1))*(( 1.0 * reaction_re135) + (-1.0 * reaction_re139));
	
% Species:   id = s480, name = MYPT1.MLC, affected by kineticLaw
	xdot(83) = (1/(compartment_c1))*(( 1.0 * reaction_re136) + (-1.0 * reaction_re140));
	
% Species:   id = s491, name = MLCK.MLC, affected by kineticLaw
	xdot(84) = (1/(compartment_c1))*(( 1.0 * reaction_re155) + (-1.0 * reaction_re157));
	
% Species:   id = s487, name = MLCK.MLC, affected by kineticLaw
	xdot(85) = (1/(compartment_c1))*(( 1.0 * reaction_re154) + (-1.0 * reaction_re156));
	
% Species:   id = s496, name = MYPT1.Rho-kinase, affected by kineticLaw
	xdot(86) = (1/(compartment_c1))*(( 1.0 * reaction_re131) + (-1.0 * reaction_re132));
	
% Species:   id = s506, name = MLCK.4Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(87) = (1/(compartment_c1))*(( 1.0 * reaction_re165) + (-1.0 * reaction_re166));
	
% Species:   id = s512, name = MLCK.3Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(88) = (1/(compartment_c1))*(( 1.0 * reaction_re164) + (-1.0 * reaction_re168));
	
% Species:   id = s513, name = MLCK.4Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(89) = (1/(compartment_c1))*(( 1.0 * reaction_re161) + (-1.0 * reaction_re167));
	
% Species:   id = s520, name = MLCK.3Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(90) = (1/(compartment_c1))*(( 1.0 * reaction_re160) + (-1.0 * reaction_re169));
	
% Species:   id = s526, name = MLCK.2Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(91) = (1/(compartment_c1))*(( 1.0 * reaction_re163) + (-1.0 * reaction_re170));
	
% Species:   id = s539, name = MLCK.2Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(92) = (1/(compartment_c1))*(( 1.0 * reaction_re159) + (-1.0 * reaction_re171));
	
% Species:   id = s546, name = MLCK.Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(93) = (1/(compartment_c1))*(( 1.0 * reaction_re162) + (-1.0 * reaction_re172));
	
% Species:   id = s551, name = MLCK.Ca_super_2_plus__endsuper_.CaM.MLC, affected by kineticLaw
	xdot(94) = (1/(compartment_c1))*(( 1.0 * reaction_re158) + (-1.0 * reaction_re173));
	
% Species:   id = s564, name = PLC_beta_.G_sub_q_endsub__alpha_.GTP.Ca_super_2_plus__endsuper_, affected by kineticLaw
	xdot(95) = (1/(compartment_c1))*(( 1.0 * reaction_re47) + ( 1.0 * reaction_re51) + (-1.0 * reaction_re54) + (-1.0 * reaction_re56) + ( 1.0 * reaction_re58));
	
% Species:   id = s565, name = PKC.Ca_super_2_plus__endsuper_.DAG, affected by kineticLaw
	xdot(96) = (1/(compartment_c1))*(( 1.0 * reaction_re101) + (-1.0 * reaction_re102));
	
% Species:   id = s566, name = PKC.Ca_super_2_plus__endsuper_, affected by kineticLaw
	xdot(97) = (1/(compartment_c1))*((-1.0 * reaction_re96) + ( 1.0 * reaction_re97) + (-1.0 * reaction_re101));
	
% Species:   id = s567, name = PLC_beta_.G_sub_q_endsub_.GTP.Ca.PIP2, affected by kineticLaw
	xdot(98) = (1/(compartment_c1))*(( 1.0 * reaction_re56) + (-1.0 * reaction_re58));
	
% Species:   id = s568, name = PLC_beta_.Ca.PIP2, affected by kineticLaw
	xdot(99) = (1/(compartment_c1))*(( 1.0 * reaction_re55) + (-1.0 * reaction_re57));
	
% Species:   id = s569, name = PLC_beta_.Ca_super_2_plus__endsuper_, affected by kineticLaw
	xdot(100) = (1/(compartment_c1))*((-1.0 * reaction_re47) + ( 1.0 * reaction_re52) + ( 1.0 * reaction_re54) + (-1.0 * reaction_re55) + ( 1.0 * reaction_re57));
	
% Species:   id = s351, name = MYPT1_PPase, affected by kineticLaw
	xdot(101) = (1/(compartment_c1))*((-1.0 * reaction_re117) + (-1.0 * reaction_re118) + (-1.0 * reaction_re129) + (-1.0 * reaction_re131) + (-1.0 * reaction_re134) + (-1.0 * reaction_re136) + ( 1.0 * reaction_re138) + ( 1.0 * reaction_re140) + ( 1.0 * reaction_re141));
	
% Species:   id = s570, name = MYPT1_PPase, affected by kineticLaw
	xdot(102) = (1/(compartment_c1))*(( 1.0 * reaction_re130) + ( 1.0 * reaction_re132) + (-1.0 * reaction_re133) + (-1.0 * reaction_re135) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re139) + (-1.0 * reaction_re141));
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


