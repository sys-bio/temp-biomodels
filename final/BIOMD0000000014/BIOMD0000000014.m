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
% Model name = Levchenko2000_MAPK_Scaffold
%
% is http://identifiers.org/biomodels.db/MODEL6616691524
% is http://identifiers.org/biomodels.db/BIOMD0000000014
% isDescribedBy http://identifiers.org/pubmed/10823939
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000011
%


function main()
%Initial conditions vector
	x0=zeros(86,1);
	x0(1) = 0.3;
	x0(2) = 0.2;
	x0(3) = 0.1;
	x0(4) = 0.3;
	x0(5) = 0.4;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.2;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.3;
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
	x0(23) = 0.1;
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
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
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
	x0(71) = 0.0;
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
	x0(85) = 0.0;
	x0(86) = 0.0;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;

% Reaction: id = Reaction1, name = binding of RAF and RAFK	% Local Parameter:   id =  a1, name = a1
	reaction_Reaction1_a1=1.0;

	reaction_Reaction1=reaction_Reaction1_a1*x(3)*x(11);

% Reaction: id = Reaction2, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1, name = d1
	reaction_Reaction2_d1=0.4;

	reaction_Reaction2=reaction_Reaction2_d1*x(21);

% Reaction: id = Reaction3, name = phosphorylation of RAF	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction3_k1=0.1;

	reaction_Reaction3=reaction_Reaction3_k1*x(21);

% Reaction: id = Reaction4, name = binding of RAF-P and RAF phosphatase	% Local Parameter:   id =  a2, name = a2
	reaction_Reaction4_a2=0.5;

	reaction_Reaction4=reaction_Reaction4_a2*x(4)*x(12);

% Reaction: id = Reaction5, name = dissociation of RAF-P_RAFPase	% Local Parameter:   id =  d2, name = d2
	reaction_Reaction5_d2=0.5;

	reaction_Reaction5=reaction_Reaction5_d2*x(22);

% Reaction: id = Reaction6, name = dephosphorylation of RAF-P	% Local Parameter:   id =  k2, name = k2
	reaction_Reaction6_k2=0.1;

	reaction_Reaction6=reaction_Reaction6_k2*x(22);

% Reaction: id = Reaction7, name = binding of MEK and RAF-P	% Local Parameter:   id =  a3, name = a3
	reaction_Reaction7_a3=3.3;

	reaction_Reaction7=reaction_Reaction7_a3*x(8)*x(12);

% Reaction: id = Reaction8, name = dissociation of MEK_RAF-P	% Local Parameter:   id =  d3, name = d3
	reaction_Reaction8_d3=0.42;

	reaction_Reaction8=reaction_Reaction8_d3*x(15);

% Reaction: id = Reaction9, name = phosphorylation of MEK	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction9_k3=0.1;

	reaction_Reaction9=reaction_Reaction9_k3*x(15);

% Reaction: id = Reaction10, name = binding of MEK-P and MEK phosphatase	% Local Parameter:   id =  a4, name = a4
	reaction_Reaction10_a4=10.0;

	reaction_Reaction10=reaction_Reaction10_a4*x(2)*x(9);

% Reaction: id = Reaction11, name = dissociation of MEK-P_MEKPase	% Local Parameter:   id =  d4, name = d4
	reaction_Reaction11_d4=0.8;

	reaction_Reaction11=reaction_Reaction11_d4*x(19);

% Reaction: id = Reaction12, name = dephosphorylation of MEK-P	% Local Parameter:   id =  k4, name = k4
	reaction_Reaction12_k4=0.1;

	reaction_Reaction12=reaction_Reaction12_k4*x(19);

% Reaction: id = Reaction13, name = binding of MEK-P and RAF-P	% Local Parameter:   id =  a5, name = a5
	reaction_Reaction13_a5=3.3;

	reaction_Reaction13=reaction_Reaction13_a5*x(9)*x(12);

% Reaction: id = Reaction14, name = dissociation of MEK-P_RAF-P	% Local Parameter:   id =  d5, name = d5
	reaction_Reaction14_d5=0.4;

	reaction_Reaction14=reaction_Reaction14_d5*x(16);

% Reaction: id = Reaction15, name = phosphorylation of MEK-P	% Local Parameter:   id =  k5, name = k5
	reaction_Reaction15_k5=0.1;

	reaction_Reaction15=reaction_Reaction15_k5*x(16);

% Reaction: id = Reaction16, name = binding of MEK-PP and MEK phosphatase	% Local Parameter:   id =  a6, name = a6
	reaction_Reaction16_a6=10.0;

	reaction_Reaction16=reaction_Reaction16_a6*x(2)*x(10);

% Reaction: id = Reaction17, name = dissociation of MEK-PP_MEKPase	% Local Parameter:   id =  d6, name = d6
	reaction_Reaction17_d6=0.8;

	reaction_Reaction17=reaction_Reaction17_d6*x(20);

% Reaction: id = Reaction18, name = dephosphorylation of MEK-PP	% Local Parameter:   id =  k6, name = k6
	reaction_Reaction18_k6=0.1;

	reaction_Reaction18=reaction_Reaction18_k6*x(20);

% Reaction: id = Reaction19, name = binding of MAPK and MEK-PP	% Local Parameter:   id =  a7, name = a7
	reaction_Reaction19_a7=20.0;

	reaction_Reaction19=reaction_Reaction19_a7*x(5)*x(10);

% Reaction: id = Reaction20, name = dissociation of MAPK_MEK-PP	% Local Parameter:   id =  d7, name = d7
	reaction_Reaction20_d7=0.6;

	reaction_Reaction20=reaction_Reaction20_d7*x(13);

% Reaction: id = Reaction21, name = phosphorylation of MAPK	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction21_k7=0.1;

	reaction_Reaction21=reaction_Reaction21_k7*x(13);

% Reaction: id = Reaction22, name = binding of MAPK-P and MAPK phosphatase	% Local Parameter:   id =  a8, name = a8
	reaction_Reaction22_a8=5.0;

	reaction_Reaction22=reaction_Reaction22_a8*x(1)*x(6);

% Reaction: id = Reaction23, name = dissociation of MAPK-P_MAPKPase	% Local Parameter:   id =  d8, name = d8
	reaction_Reaction23_d8=0.4;

	reaction_Reaction23=reaction_Reaction23_d8*x(17);

% Reaction: id = Reaction24, name = dephosphorylation of MAPK-P	% Local Parameter:   id =  k8, name = k8
	reaction_Reaction24_k8=0.1;

	reaction_Reaction24=reaction_Reaction24_k8*x(17);

% Reaction: id = Reaction25, name = binding of MAPK-P and MEK-PP	% Local Parameter:   id =  a9, name = a9
	reaction_Reaction25_a9=20.0;

	reaction_Reaction25=reaction_Reaction25_a9*x(6)*x(10);

% Reaction: id = Reaction26, name = dissociation of MAPK-P_MEK-PP	% Local Parameter:   id =  d9, name = d9
	reaction_Reaction26_d9=0.6;

	reaction_Reaction26=reaction_Reaction26_d9*x(14);

% Reaction: id = Reaction27, name = phosphorylation of MAPK-P	% Local Parameter:   id =  k9, name = k9
	reaction_Reaction27_k9=0.1;

	reaction_Reaction27=reaction_Reaction27_k9*x(14);

% Reaction: id = Reaction28, name = binding of MAPK-PP and MAPK phosphatase	% Local Parameter:   id =  a10, name = a10
	reaction_Reaction28_a10=5.0;

	reaction_Reaction28=reaction_Reaction28_a10*x(1)*x(7);

% Reaction: id = Reaction29, name = dissociation of MAPK-PP_MAPKPase	% Local Parameter:   id =  d10, name = d10
	reaction_Reaction29_d10=0.4;

	reaction_Reaction29=reaction_Reaction29_d10*x(18);

% Reaction: id = Reaction30, name = dephosphorylation of MAPK-PP	% Local Parameter:   id =  k10, name = k10
	reaction_Reaction30_k10=0.1;

	reaction_Reaction30=reaction_Reaction30_k10*x(18);

% Reaction: id = Reaction31, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction31_kon=10.0;

	reaction_Reaction31=reaction_Reaction31_kon*x(5)*x(23);

% Reaction: id = Reaction32, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction32_koff=0.5;

	reaction_Reaction32=reaction_Reaction32_koff*x(35);

% Reaction: id = Reaction33, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction33_kon=10.0;

	reaction_Reaction33=reaction_Reaction33_kon*x(5)*x(24);

% Reaction: id = Reaction34, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction34_koff=0.5;

	reaction_Reaction34=reaction_Reaction34_koff*x(36);

% Reaction: id = Reaction35, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction35_kon=10.0;

	reaction_Reaction35=reaction_Reaction35_kon*x(5)*x(25);

% Reaction: id = Reaction36, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction36_koff=0.5;

	reaction_Reaction36=reaction_Reaction36_koff*x(37);

% Reaction: id = Reaction37, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction37_kon=10.0;

	reaction_Reaction37=reaction_Reaction37_kon*x(5)*x(26);

% Reaction: id = Reaction38, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction38_koff=0.5;

	reaction_Reaction38=reaction_Reaction38_koff*x(38);

% Reaction: id = Reaction39, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction39_kon=10.0;

	reaction_Reaction39=reaction_Reaction39_kon*x(5)*x(27);

% Reaction: id = Reaction40, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction40_koff=0.5;

	reaction_Reaction40=reaction_Reaction40_koff*x(39);

% Reaction: id = Reaction41, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction41_kon=10.0;

	reaction_Reaction41=reaction_Reaction41_kon*x(5)*x(28);

% Reaction: id = Reaction42, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction42_koff=0.5;

	reaction_Reaction42=reaction_Reaction42_koff*x(40);

% Reaction: id = Reaction43, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction43_kon=10.0;

	reaction_Reaction43=reaction_Reaction43_kon*x(5)*x(29);

% Reaction: id = Reaction44, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction44_koff=0.5;

	reaction_Reaction44=reaction_Reaction44_koff*x(41);

% Reaction: id = Reaction45, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction45_kon=10.0;

	reaction_Reaction45=reaction_Reaction45_kon*x(5)*x(30);

% Reaction: id = Reaction46, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction46_koff=0.5;

	reaction_Reaction46=reaction_Reaction46_koff*x(42);

% Reaction: id = Reaction47, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction47_kon=10.0;

	reaction_Reaction47=reaction_Reaction47_kon*x(5)*x(31);

% Reaction: id = Reaction48, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction48_koff=0.5;

	reaction_Reaction48=reaction_Reaction48_koff*x(43);

% Reaction: id = Reaction49, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction49_kon=10.0;

	reaction_Reaction49=reaction_Reaction49_kon*x(5)*x(32);

% Reaction: id = Reaction50, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction50_koff=0.5;

	reaction_Reaction50=reaction_Reaction50_koff*x(44);

% Reaction: id = Reaction51, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction51_kon=10.0;

	reaction_Reaction51=reaction_Reaction51_kon*x(5)*x(33);

% Reaction: id = Reaction52, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction52_koff=0.5;

	reaction_Reaction52=reaction_Reaction52_koff*x(45);

% Reaction: id = Reaction53, name = binding of MAPK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction53_kon=10.0;

	reaction_Reaction53=reaction_Reaction53_kon*x(5)*x(34);

% Reaction: id = Reaction54, name = dissociation of MAPK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction54_koff=0.5;

	reaction_Reaction54=reaction_Reaction54_koff*x(46);

% Reaction: id = Reaction55, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction55_kpon=0.0;

	reaction_Reaction55=reaction_Reaction55_kpon*x(6)*x(23);

% Reaction: id = Reaction56, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction56_kpoff=0.05;

	reaction_Reaction56=reaction_Reaction56_kpoff*x(47);

% Reaction: id = Reaction57, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction57_kpon=0.0;

	reaction_Reaction57=reaction_Reaction57_kpon*x(6)*x(24);

% Reaction: id = Reaction58, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction58_kpoff=0.05;

	reaction_Reaction58=reaction_Reaction58_kpoff*x(48);

% Reaction: id = Reaction59, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction59_kpon=0.0;

	reaction_Reaction59=reaction_Reaction59_kpon*x(6)*x(25);

% Reaction: id = Reaction60, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction60_kpoff=0.05;

	reaction_Reaction60=reaction_Reaction60_kpoff*x(49);

% Reaction: id = Reaction61, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction61_kpon=0.0;

	reaction_Reaction61=reaction_Reaction61_kpon*x(6)*x(26);

% Reaction: id = Reaction62, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction62_kpoff=0.05;

	reaction_Reaction62=reaction_Reaction62_kpoff*x(50);

% Reaction: id = Reaction63, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction63_kpon=0.0;

	reaction_Reaction63=reaction_Reaction63_kpon*x(6)*x(27);

% Reaction: id = Reaction64, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction64_kpoff=0.05;

	reaction_Reaction64=reaction_Reaction64_kpoff*x(51);

% Reaction: id = Reaction65, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction65_kpon=0.0;

	reaction_Reaction65=reaction_Reaction65_kpon*x(6)*x(28);

% Reaction: id = Reaction66, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction66_kpoff=0.05;

	reaction_Reaction66=reaction_Reaction66_kpoff*x(52);

% Reaction: id = Reaction67, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction67_kpon=0.0;

	reaction_Reaction67=reaction_Reaction67_kpon*x(6)*x(29);

% Reaction: id = Reaction68, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction68_kpoff=0.05;

	reaction_Reaction68=reaction_Reaction68_kpoff*x(53);

% Reaction: id = Reaction69, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction69_kpon=0.0;

	reaction_Reaction69=reaction_Reaction69_kpon*x(6)*x(30);

% Reaction: id = Reaction70, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction70_kpoff=0.05;

	reaction_Reaction70=reaction_Reaction70_kpoff*x(54);

% Reaction: id = Reaction71, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction71_kpon=0.0;

	reaction_Reaction71=reaction_Reaction71_kpon*x(6)*x(31);

% Reaction: id = Reaction72, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction72_kpoff=0.05;

	reaction_Reaction72=reaction_Reaction72_kpoff*x(55);

% Reaction: id = Reaction73, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction73_kpon=0.0;

	reaction_Reaction73=reaction_Reaction73_kpon*x(6)*x(32);

% Reaction: id = Reaction74, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction74_kpoff=0.05;

	reaction_Reaction74=reaction_Reaction74_kpoff*x(56);

% Reaction: id = Reaction75, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction75_kpon=0.0;

	reaction_Reaction75=reaction_Reaction75_kpon*x(6)*x(33);

% Reaction: id = Reaction76, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction76_kpoff=0.05;

	reaction_Reaction76=reaction_Reaction76_kpoff*x(57);

% Reaction: id = Reaction77, name = binding of MAPK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction77_kpon=0.0;

	reaction_Reaction77=reaction_Reaction77_kpon*x(6)*x(34);

% Reaction: id = Reaction78, name = dissociation of MAPK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction78_kpoff=0.05;

	reaction_Reaction78=reaction_Reaction78_kpoff*x(58);

% Reaction: id = Reaction79, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction79_kpon=0.0;

	reaction_Reaction79=reaction_Reaction79_kpon*x(7)*x(23);

% Reaction: id = Reaction80, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction80_kpoff=0.05;

	reaction_Reaction80=reaction_Reaction80_kpoff*x(59);

% Reaction: id = Reaction81, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction81_kpon=0.0;

	reaction_Reaction81=reaction_Reaction81_kpon*x(7)*x(24);

% Reaction: id = Reaction82, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction82_kpoff=0.05;

	reaction_Reaction82=reaction_Reaction82_kpoff*x(60);

% Reaction: id = Reaction83, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction83_kpon=0.0;

	reaction_Reaction83=reaction_Reaction83_kpon*x(7)*x(25);

% Reaction: id = Reaction84, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction84_kpoff=0.05;

	reaction_Reaction84=reaction_Reaction84_kpoff*x(61);

% Reaction: id = Reaction85, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction85_kpon=0.0;

	reaction_Reaction85=reaction_Reaction85_kpon*x(7)*x(26);

% Reaction: id = Reaction86, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction86_kpoff=0.05;

	reaction_Reaction86=reaction_Reaction86_kpoff*x(62);

% Reaction: id = Reaction87, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction87_kpon=0.0;

	reaction_Reaction87=reaction_Reaction87_kpon*x(7)*x(27);

% Reaction: id = Reaction88, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction88_kpoff=0.05;

	reaction_Reaction88=reaction_Reaction88_kpoff*x(63);

% Reaction: id = Reaction89, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction89_kpon=0.0;

	reaction_Reaction89=reaction_Reaction89_kpon*x(7)*x(28);

% Reaction: id = Reaction90, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction90_kpoff=0.05;

	reaction_Reaction90=reaction_Reaction90_kpoff*x(64);

% Reaction: id = Reaction91, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction91_kpon=0.0;

	reaction_Reaction91=reaction_Reaction91_kpon*x(7)*x(29);

% Reaction: id = Reaction92, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction92_kpoff=0.05;

	reaction_Reaction92=reaction_Reaction92_kpoff*x(65);

% Reaction: id = Reaction93, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction93_kpon=0.0;

	reaction_Reaction93=reaction_Reaction93_kpon*x(7)*x(30);

% Reaction: id = Reaction94, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction94_kpoff=0.05;

	reaction_Reaction94=reaction_Reaction94_kpoff*x(66);

% Reaction: id = Reaction95, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction95_kpon=0.0;

	reaction_Reaction95=reaction_Reaction95_kpon*x(7)*x(31);

% Reaction: id = Reaction96, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction96_kpoff=0.05;

	reaction_Reaction96=reaction_Reaction96_kpoff*x(67);

% Reaction: id = Reaction97, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction97_kpon=0.0;

	reaction_Reaction97=reaction_Reaction97_kpon*x(7)*x(32);

% Reaction: id = Reaction98, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction98_kpoff=0.05;

	reaction_Reaction98=reaction_Reaction98_kpoff*x(68);

% Reaction: id = Reaction99, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction99_kpon=0.0;

	reaction_Reaction99=reaction_Reaction99_kpon*x(7)*x(33);

% Reaction: id = Reaction100, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction100_kpoff=0.05;

	reaction_Reaction100=reaction_Reaction100_kpoff*x(69);

% Reaction: id = Reaction101, name = binding of MAPK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction101_kpon=0.0;

	reaction_Reaction101=reaction_Reaction101_kpon*x(7)*x(34);

% Reaction: id = Reaction102, name = dissociation of MAPK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction102_kpoff=0.05;

	reaction_Reaction102=reaction_Reaction102_kpoff*x(70);

% Reaction: id = Reaction103, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction103_kon=10.0;

	reaction_Reaction103=reaction_Reaction103_kon*x(8)*x(23);

% Reaction: id = Reaction104, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction104_koff=0.5;

	reaction_Reaction104=reaction_Reaction104_koff*x(26);

% Reaction: id = Reaction105, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction105_kon=10.0;

	reaction_Reaction105=reaction_Reaction105_kon*x(8)*x(24);

% Reaction: id = Reaction106, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction106_koff=0.5;

	reaction_Reaction106=reaction_Reaction106_koff*x(27);

% Reaction: id = Reaction107, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction107_kon=10.0;

	reaction_Reaction107=reaction_Reaction107_kon*x(8)*x(25);

% Reaction: id = Reaction108, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction108_koff=0.5;

	reaction_Reaction108=reaction_Reaction108_koff*x(28);

% Reaction: id = Reaction109, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction109_kpon=0.0;

	reaction_Reaction109=reaction_Reaction109_kpon*x(9)*x(23);

% Reaction: id = Reaction110, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction110_kpoff=0.05;

	reaction_Reaction110=reaction_Reaction110_kpoff*x(29);

% Reaction: id = Reaction111, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction111_kpon=0.0;

	reaction_Reaction111=reaction_Reaction111_kpon*x(9)*x(24);

% Reaction: id = Reaction112, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction112_kpoff=0.05;

	reaction_Reaction112=reaction_Reaction112_kpoff*x(30);

% Reaction: id = Reaction113, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction113_kpon=0.0;

	reaction_Reaction113=reaction_Reaction113_kpon*x(9)*x(25);

% Reaction: id = Reaction114, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction114_kpoff=0.05;

	reaction_Reaction114=reaction_Reaction114_kpoff*x(31);

% Reaction: id = Reaction115, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction115_kpon=0.0;

	reaction_Reaction115=reaction_Reaction115_kpon*x(10)*x(23);

% Reaction: id = Reaction116, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction116_kpoff=0.05;

	reaction_Reaction116=reaction_Reaction116_kpoff*x(32);

% Reaction: id = Reaction117, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction117_kpon=0.0;

	reaction_Reaction117=reaction_Reaction117_kpon*x(10)*x(24);

% Reaction: id = Reaction118, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction118_kpoff=0.05;

	reaction_Reaction118=reaction_Reaction118_kpoff*x(33);

% Reaction: id = Reaction119, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction119_kpon=0.0;

	reaction_Reaction119=reaction_Reaction119_kpon*x(10)*x(25);

% Reaction: id = Reaction120, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction120_kpoff=0.05;

	reaction_Reaction120=reaction_Reaction120_kpoff*x(34);

% Reaction: id = Reaction121, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction121_kon=10.0;

	reaction_Reaction121=reaction_Reaction121_kon*x(8)*x(35);

% Reaction: id = Reaction122, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction122_koff=0.5;

	reaction_Reaction122=reaction_Reaction122_koff*x(38);

% Reaction: id = Reaction123, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction123_kon=10.0;

	reaction_Reaction123=reaction_Reaction123_kon*x(8)*x(36);

% Reaction: id = Reaction124, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction124_koff=0.5;

	reaction_Reaction124=reaction_Reaction124_koff*x(39);

% Reaction: id = Reaction125, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction125_kon=10.0;

	reaction_Reaction125=reaction_Reaction125_kon*x(8)*x(37);

% Reaction: id = Reaction126, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction126_koff=0.5;

	reaction_Reaction126=reaction_Reaction126_koff*x(40);

% Reaction: id = Reaction127, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction127_kpon=0.0;

	reaction_Reaction127=reaction_Reaction127_kpon*x(9)*x(35);

% Reaction: id = Reaction128, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction128_kpoff=0.05;

	reaction_Reaction128=reaction_Reaction128_kpoff*x(41);

% Reaction: id = Reaction129, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction129_kpon=0.0;

	reaction_Reaction129=reaction_Reaction129_kpon*x(9)*x(36);

% Reaction: id = Reaction130, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction130_kpoff=0.05;

	reaction_Reaction130=reaction_Reaction130_kpoff*x(42);

% Reaction: id = Reaction131, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction131_kpon=0.0;

	reaction_Reaction131=reaction_Reaction131_kpon*x(9)*x(37);

% Reaction: id = Reaction132, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction132_kpoff=0.05;

	reaction_Reaction132=reaction_Reaction132_kpoff*x(43);

% Reaction: id = Reaction133, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction133_kpon=0.0;

	reaction_Reaction133=reaction_Reaction133_kpon*x(10)*x(35);

% Reaction: id = Reaction134, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction134_kpoff=0.05;

	reaction_Reaction134=reaction_Reaction134_kpoff*x(44);

% Reaction: id = Reaction135, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction135_kpon=0.0;

	reaction_Reaction135=reaction_Reaction135_kpon*x(10)*x(36);

% Reaction: id = Reaction136, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction136_kpoff=0.05;

	reaction_Reaction136=reaction_Reaction136_kpoff*x(45);

% Reaction: id = Reaction137, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction137_kpon=0.0;

	reaction_Reaction137=reaction_Reaction137_kpon*x(10)*x(37);

% Reaction: id = Reaction138, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction138_kpoff=0.05;

	reaction_Reaction138=reaction_Reaction138_kpoff*x(46);

% Reaction: id = Reaction139, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction139_kon=10.0;

	reaction_Reaction139=reaction_Reaction139_kon*x(8)*x(47);

% Reaction: id = Reaction140, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction140_koff=0.5;

	reaction_Reaction140=reaction_Reaction140_koff*x(50);

% Reaction: id = Reaction141, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction141_kon=10.0;

	reaction_Reaction141=reaction_Reaction141_kon*x(8)*x(48);

% Reaction: id = Reaction142, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction142_koff=0.5;

	reaction_Reaction142=reaction_Reaction142_koff*x(51);

% Reaction: id = Reaction143, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction143_kon=10.0;

	reaction_Reaction143=reaction_Reaction143_kon*x(8)*x(49);

% Reaction: id = Reaction144, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction144_koff=0.5;

	reaction_Reaction144=reaction_Reaction144_koff*x(52);

% Reaction: id = Reaction145, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction145_kpon=0.0;

	reaction_Reaction145=reaction_Reaction145_kpon*x(9)*x(47);

% Reaction: id = Reaction146, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction146_kpoff=0.05;

	reaction_Reaction146=reaction_Reaction146_kpoff*x(53);

% Reaction: id = Reaction147, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction147_kpon=0.0;

	reaction_Reaction147=reaction_Reaction147_kpon*x(9)*x(48);

% Reaction: id = Reaction148, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction148_kpoff=0.05;

	reaction_Reaction148=reaction_Reaction148_kpoff*x(54);

% Reaction: id = Reaction149, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction149_kpon=0.0;

	reaction_Reaction149=reaction_Reaction149_kpon*x(9)*x(49);

% Reaction: id = Reaction150, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction150_kpoff=0.05;

	reaction_Reaction150=reaction_Reaction150_kpoff*x(55);

% Reaction: id = Reaction151, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction151_kpon=0.0;

	reaction_Reaction151=reaction_Reaction151_kpon*x(10)*x(47);

% Reaction: id = Reaction152, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction152_kpoff=0.05;

	reaction_Reaction152=reaction_Reaction152_kpoff*x(56);

% Reaction: id = Reaction153, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction153_kpon=0.0;

	reaction_Reaction153=reaction_Reaction153_kpon*x(10)*x(48);

% Reaction: id = Reaction154, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction154_kpoff=0.05;

	reaction_Reaction154=reaction_Reaction154_kpoff*x(57);

% Reaction: id = Reaction155, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction155_kpon=0.0;

	reaction_Reaction155=reaction_Reaction155_kpon*x(10)*x(49);

% Reaction: id = Reaction156, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction156_kpoff=0.05;

	reaction_Reaction156=reaction_Reaction156_kpoff*x(58);

% Reaction: id = Reaction157, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction157_kon=10.0;

	reaction_Reaction157=reaction_Reaction157_kon*x(8)*x(59);

% Reaction: id = Reaction158, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction158_koff=0.5;

	reaction_Reaction158=reaction_Reaction158_koff*x(62);

% Reaction: id = Reaction159, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction159_kon=10.0;

	reaction_Reaction159=reaction_Reaction159_kon*x(8)*x(60);

% Reaction: id = Reaction160, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction160_koff=0.5;

	reaction_Reaction160=reaction_Reaction160_koff*x(63);

% Reaction: id = Reaction161, name = binding of MEK on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction161_kon=10.0;

	reaction_Reaction161=reaction_Reaction161_kon*x(8)*x(61);

% Reaction: id = Reaction162, name = dissociation of MEK from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction162_koff=0.5;

	reaction_Reaction162=reaction_Reaction162_koff*x(64);

% Reaction: id = Reaction163, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction163_kpon=0.0;

	reaction_Reaction163=reaction_Reaction163_kpon*x(9)*x(59);

% Reaction: id = Reaction164, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction164_kpoff=0.05;

	reaction_Reaction164=reaction_Reaction164_kpoff*x(65);

% Reaction: id = Reaction165, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction165_kpon=0.0;

	reaction_Reaction165=reaction_Reaction165_kpon*x(9)*x(60);

% Reaction: id = Reaction166, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction166_kpoff=0.05;

	reaction_Reaction166=reaction_Reaction166_kpoff*x(66);

% Reaction: id = Reaction167, name = binding of MEK-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction167_kpon=0.0;

	reaction_Reaction167=reaction_Reaction167_kpon*x(9)*x(61);

% Reaction: id = Reaction168, name = dissociation of MEK-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction168_kpoff=0.05;

	reaction_Reaction168=reaction_Reaction168_kpoff*x(67);

% Reaction: id = Reaction169, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction169_kpon=0.0;

	reaction_Reaction169=reaction_Reaction169_kpon*x(10)*x(59);

% Reaction: id = Reaction170, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction170_kpoff=0.05;

	reaction_Reaction170=reaction_Reaction170_kpoff*x(68);

% Reaction: id = Reaction171, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction171_kpon=0.0;

	reaction_Reaction171=reaction_Reaction171_kpon*x(10)*x(60);

% Reaction: id = Reaction172, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction172_kpoff=0.05;

	reaction_Reaction172=reaction_Reaction172_kpoff*x(69);

% Reaction: id = Reaction173, name = binding of MEK-PP on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction173_kpon=0.0;

	reaction_Reaction173=reaction_Reaction173_kpon*x(10)*x(61);

% Reaction: id = Reaction174, name = dissociation of MEK-PP from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction174_kpoff=0.05;

	reaction_Reaction174=reaction_Reaction174_kpoff*x(70);

% Reaction: id = Reaction175, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction175_kon=10.0;

	reaction_Reaction175=reaction_Reaction175_kon*x(11)*x(23);

% Reaction: id = Reaction176, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction176_koff=0.5;

	reaction_Reaction176=reaction_Reaction176_koff*x(24);

% Reaction: id = Reaction177, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction177_kpon=0.0;

	reaction_Reaction177=reaction_Reaction177_kpon*x(12)*x(23);

% Reaction: id = Reaction178, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction178_kpoff=0.05;

	reaction_Reaction178=reaction_Reaction178_kpoff*x(25);

% Reaction: id = Reaction179, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction179_kon=10.0;

	reaction_Reaction179=reaction_Reaction179_kon*x(11)*x(26);

% Reaction: id = Reaction180, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction180_koff=0.5;

	reaction_Reaction180=reaction_Reaction180_koff*x(27);

% Reaction: id = Reaction181, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction181_kpon=0.0;

	reaction_Reaction181=reaction_Reaction181_kpon*x(12)*x(26);

% Reaction: id = Reaction182, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction182_kpoff=0.05;

	reaction_Reaction182=reaction_Reaction182_kpoff*x(28);

% Reaction: id = Reaction183, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction183_kon=10.0;

	reaction_Reaction183=reaction_Reaction183_kon*x(11)*x(29);

% Reaction: id = Reaction184, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction184_koff=0.5;

	reaction_Reaction184=reaction_Reaction184_koff*x(30);

% Reaction: id = Reaction185, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction185_kpon=0.0;

	reaction_Reaction185=reaction_Reaction185_kpon*x(12)*x(29);

% Reaction: id = Reaction186, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction186_kpoff=0.05;

	reaction_Reaction186=reaction_Reaction186_kpoff*x(31);

% Reaction: id = Reaction187, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction187_kon=10.0;

	reaction_Reaction187=reaction_Reaction187_kon*x(11)*x(32);

% Reaction: id = Reaction188, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction188_koff=0.5;

	reaction_Reaction188=reaction_Reaction188_koff*x(33);

% Reaction: id = Reaction189, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction189_kpon=0.0;

	reaction_Reaction189=reaction_Reaction189_kpon*x(12)*x(32);

% Reaction: id = Reaction190, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction190_kpoff=0.05;

	reaction_Reaction190=reaction_Reaction190_kpoff*x(34);

% Reaction: id = Reaction191, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction191_kon=10.0;

	reaction_Reaction191=reaction_Reaction191_kon*x(11)*x(35);

% Reaction: id = Reaction192, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction192_koff=0.5;

	reaction_Reaction192=reaction_Reaction192_koff*x(36);

% Reaction: id = Reaction193, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction193_kpon=0.0;

	reaction_Reaction193=reaction_Reaction193_kpon*x(12)*x(35);

% Reaction: id = Reaction194, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction194_kpoff=0.05;

	reaction_Reaction194=reaction_Reaction194_kpoff*x(37);

% Reaction: id = Reaction195, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction195_kon=10.0;

	reaction_Reaction195=reaction_Reaction195_kon*x(11)*x(38);

% Reaction: id = Reaction196, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction196_koff=0.5;

	reaction_Reaction196=reaction_Reaction196_koff*x(39);

% Reaction: id = Reaction197, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction197_kpon=0.0;

	reaction_Reaction197=reaction_Reaction197_kpon*x(12)*x(38);

% Reaction: id = Reaction198, name = dissociation of RAF from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction198_kpoff=0.05;

	reaction_Reaction198=reaction_Reaction198_kpoff*x(40);

% Reaction: id = Reaction199, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction199_kon=10.0;

	reaction_Reaction199=reaction_Reaction199_kon*x(11)*x(41);

% Reaction: id = Reaction200, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction200_koff=0.5;

	reaction_Reaction200=reaction_Reaction200_koff*x(42);

% Reaction: id = Reaction201, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction201_kpon=0.0;

	reaction_Reaction201=reaction_Reaction201_kpon*x(12)*x(41);

% Reaction: id = Reaction202, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction202_kpoff=0.05;

	reaction_Reaction202=reaction_Reaction202_kpoff*x(43);

% Reaction: id = Reaction203, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction203_kon=10.0;

	reaction_Reaction203=reaction_Reaction203_kon*x(11)*x(44);

% Reaction: id = Reaction204, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction204_koff=0.5;

	reaction_Reaction204=reaction_Reaction204_koff*x(45);

% Reaction: id = Reaction205, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction205_kpon=0.0;

	reaction_Reaction205=reaction_Reaction205_kpon*x(12)*x(44);

% Reaction: id = Reaction206, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction206_kpoff=0.05;

	reaction_Reaction206=reaction_Reaction206_kpoff*x(46);

% Reaction: id = Reaction207, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction207_kon=10.0;

	reaction_Reaction207=reaction_Reaction207_kon*x(11)*x(47);

% Reaction: id = Reaction208, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction208_koff=0.5;

	reaction_Reaction208=reaction_Reaction208_koff*x(48);

% Reaction: id = Reaction209, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction209_kpon=0.0;

	reaction_Reaction209=reaction_Reaction209_kpon*x(12)*x(47);

% Reaction: id = Reaction210, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction210_kpoff=0.05;

	reaction_Reaction210=reaction_Reaction210_kpoff*x(49);

% Reaction: id = Reaction211, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction211_kon=10.0;

	reaction_Reaction211=reaction_Reaction211_kon*x(11)*x(50);

% Reaction: id = Reaction212, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction212_koff=0.5;

	reaction_Reaction212=reaction_Reaction212_koff*x(51);

% Reaction: id = Reaction213, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction213_kpon=0.0;

	reaction_Reaction213=reaction_Reaction213_kpon*x(12)*x(50);

% Reaction: id = Reaction214, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction214_kpoff=0.05;

	reaction_Reaction214=reaction_Reaction214_kpoff*x(52);

% Reaction: id = Reaction215, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction215_kon=10.0;

	reaction_Reaction215=reaction_Reaction215_kon*x(11)*x(53);

% Reaction: id = Reaction216, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction216_koff=0.5;

	reaction_Reaction216=reaction_Reaction216_koff*x(54);

% Reaction: id = Reaction217, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction217_kpon=0.0;

	reaction_Reaction217=reaction_Reaction217_kpon*x(12)*x(53);

% Reaction: id = Reaction218, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction218_kpoff=0.05;

	reaction_Reaction218=reaction_Reaction218_kpoff*x(55);

% Reaction: id = Reaction219, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction219_kon=10.0;

	reaction_Reaction219=reaction_Reaction219_kon*x(11)*x(56);

% Reaction: id = Reaction220, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction220_koff=0.5;

	reaction_Reaction220=reaction_Reaction220_koff*x(57);

% Reaction: id = Reaction221, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction221_kpon=0.0;

	reaction_Reaction221=reaction_Reaction221_kpon*x(12)*x(56);

% Reaction: id = Reaction222, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction222_kpoff=0.05;

	reaction_Reaction222=reaction_Reaction222_kpoff*x(58);

% Reaction: id = Reaction223, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction223_kon=10.0;

	reaction_Reaction223=reaction_Reaction223_kon*x(11)*x(59);

% Reaction: id = Reaction224, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction224_koff=0.5;

	reaction_Reaction224=reaction_Reaction224_koff*x(60);

% Reaction: id = Reaction225, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction225_kpon=0.0;

	reaction_Reaction225=reaction_Reaction225_kpon*x(12)*x(59);

% Reaction: id = Reaction226, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction226_kpoff=0.05;

	reaction_Reaction226=reaction_Reaction226_kpoff*x(61);

% Reaction: id = Reaction227, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction227_kon=10.0;

	reaction_Reaction227=reaction_Reaction227_kon*x(11)*x(62);

% Reaction: id = Reaction228, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction228_koff=0.5;

	reaction_Reaction228=reaction_Reaction228_koff*x(63);

% Reaction: id = Reaction229, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction229_kpon=0.0;

	reaction_Reaction229=reaction_Reaction229_kpon*x(12)*x(62);

% Reaction: id = Reaction230, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction230_kpoff=0.05;

	reaction_Reaction230=reaction_Reaction230_kpoff*x(64);

% Reaction: id = Reaction231, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction231_kon=10.0;

	reaction_Reaction231=reaction_Reaction231_kon*x(11)*x(65);

% Reaction: id = Reaction232, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction232_koff=0.5;

	reaction_Reaction232=reaction_Reaction232_koff*x(66);

% Reaction: id = Reaction233, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction233_kpon=0.0;

	reaction_Reaction233=reaction_Reaction233_kpon*x(12)*x(65);

% Reaction: id = Reaction234, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction234_kpoff=0.05;

	reaction_Reaction234=reaction_Reaction234_kpoff*x(67);

% Reaction: id = Reaction235, name = binding of RAF on scaffold	% Local Parameter:   id =  kon, name = kon
	reaction_Reaction235_kon=10.0;

	reaction_Reaction235=reaction_Reaction235_kon*x(11)*x(68);

% Reaction: id = Reaction236, name = dissociation of RAF from scaffold	% Local Parameter:   id =  koff, name = koff
	reaction_Reaction236_koff=0.5;

	reaction_Reaction236=reaction_Reaction236_koff*x(69);

% Reaction: id = Reaction237, name = binding of RAF-P on scaffold	% Local Parameter:   id =  kpon, name = kpon
	reaction_Reaction237_kpon=0.0;

	reaction_Reaction237=reaction_Reaction237_kpon*x(12)*x(68);

% Reaction: id = Reaction238, name = dissociation of RAF-P from scaffold	% Local Parameter:   id =  kpoff, name = kpoff
	reaction_Reaction238_kpoff=0.05;

	reaction_Reaction238=reaction_Reaction238_kpoff*x(70);

% Reaction: id = Reaction239, name = phosphorylation of MAPK on scaffold	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction239_k7=0.1;

	reaction_Reaction239=reaction_Reaction239_k7*x(44);

% Reaction: id = Reaction240, name = phosphorylation of MAPK on scaffold	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction240_k7=0.1;

	reaction_Reaction240=reaction_Reaction240_k7*x(45);

% Reaction: id = Reaction241, name = phosphorylation of MAPK on scaffold	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction241_k7=0.1;

	reaction_Reaction241=reaction_Reaction241_k7*x(46);

% Reaction: id = Reaction242, name = phosphorylation of MAPK-P on scaffold	% Local Parameter:   id =  k9a, name = k9a
	reaction_Reaction242_k9a=0.1;

	reaction_Reaction242=reaction_Reaction242_k9a*x(56);

% Reaction: id = Reaction243, name = phosphorylation of MAPK-P on scaffold	% Local Parameter:   id =  k9a, name = k9a
	reaction_Reaction243_k9a=0.1;

	reaction_Reaction243=reaction_Reaction243_k9a*x(57);

% Reaction: id = Reaction244, name = phosphorylation of MAPK-P on scaffold	% Local Parameter:   id =  k9a, name = k9a
	reaction_Reaction244_k9a=0.1;

	reaction_Reaction244=reaction_Reaction244_k9a*x(58);

% Reaction: id = Reaction245, name = phosphorylation of MEK on scaffold	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction245_k3=0.1;

	reaction_Reaction245=reaction_Reaction245_k3*x(28);

% Reaction: id = Reaction246, name = phosphorylation of MEK-P on scaffold	% Local Parameter:   id =  k5a, name = k5a
	reaction_Reaction246_k5a=0.1;

	reaction_Reaction246=reaction_Reaction246_k5a*x(31);

% Reaction: id = Reaction247, name = phosphorylation of MEK on scaffold	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction247_k3=0.1;

	reaction_Reaction247=reaction_Reaction247_k3*x(40);

% Reaction: id = Reaction248, name = phosphorylation of MEK-P on scaffold	% Local Parameter:   id =  k5a, name = k5a
	reaction_Reaction248_k5a=0.1;

	reaction_Reaction248=reaction_Reaction248_k5a*x(43);

% Reaction: id = Reaction249, name = phosphorylation of MEK on scaffold	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction249_k3=0.1;

	reaction_Reaction249=reaction_Reaction249_k3*x(52);

% Reaction: id = Reaction250, name = phosphorylation of MEK-P on scaffold	% Local Parameter:   id =  k5a, name = k5a
	reaction_Reaction250_k5a=0.1;

	reaction_Reaction250=reaction_Reaction250_k5a*x(55);

% Reaction: id = Reaction251, name = phosphorylation of MEK on scaffold	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction251_k3=0.1;

	reaction_Reaction251=reaction_Reaction251_k3*x(64);

% Reaction: id = Reaction252, name = phosphorylation of MEK-P on scaffold	% Local Parameter:   id =  k5a, name = k5a
	reaction_Reaction252_k5a=0.1;

	reaction_Reaction252=reaction_Reaction252_k5a*x(67);

% Reaction: id = Reaction253, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction253_k1a=100.0;

	reaction_Reaction253=reaction_Reaction253_k1a*x(3)*x(24);

% Reaction: id = Reaction254, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction254_d1a=0.0;

	reaction_Reaction254=reaction_Reaction254_d1a*x(71);

% Reaction: id = Reaction255, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction255_k1=0.1;

	reaction_Reaction255=reaction_Reaction255_k1*x(71);

% Reaction: id = Reaction256, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction256_k1a=100.0;

	reaction_Reaction256=reaction_Reaction256_k1a*x(3)*x(27);

% Reaction: id = Reaction257, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction257_d1a=0.0;

	reaction_Reaction257=reaction_Reaction257_d1a*x(72);

% Reaction: id = Reaction258, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction258_k1=0.1;

	reaction_Reaction258=reaction_Reaction258_k1*x(72);

% Reaction: id = Reaction259, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction259_k1a=100.0;

	reaction_Reaction259=reaction_Reaction259_k1a*x(3)*x(30);

% Reaction: id = Reaction260, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction260_d1a=0.0;

	reaction_Reaction260=reaction_Reaction260_d1a*x(73);

% Reaction: id = Reaction261, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction261_k1=0.1;

	reaction_Reaction261=reaction_Reaction261_k1*x(73);

% Reaction: id = Reaction262, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction262_k1a=100.0;

	reaction_Reaction262=reaction_Reaction262_k1a*x(3)*x(33);

% Reaction: id = Reaction263, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction263_d1a=0.0;

	reaction_Reaction263=reaction_Reaction263_d1a*x(74);

% Reaction: id = Reaction264, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction264_k1=0.1;

	reaction_Reaction264=reaction_Reaction264_k1*x(74);

% Reaction: id = Reaction265, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction265_k1a=100.0;

	reaction_Reaction265=reaction_Reaction265_k1a*x(3)*x(36);

% Reaction: id = Reaction266, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction266_d1a=0.0;

	reaction_Reaction266=reaction_Reaction266_d1a*x(75);

% Reaction: id = Reaction267, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction267_k1=0.1;

	reaction_Reaction267=reaction_Reaction267_k1*x(75);

% Reaction: id = Reaction268, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction268_k1a=100.0;

	reaction_Reaction268=reaction_Reaction268_k1a*x(3)*x(39);

% Reaction: id = Reaction269, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction269_d1a=0.0;

	reaction_Reaction269=reaction_Reaction269_d1a*x(76);

% Reaction: id = Reaction270, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction270_k1=0.1;

	reaction_Reaction270=reaction_Reaction270_k1*x(76);

% Reaction: id = Reaction271, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction271_k1a=100.0;

	reaction_Reaction271=reaction_Reaction271_k1a*x(3)*x(42);

% Reaction: id = Reaction272, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction272_d1a=0.0;

	reaction_Reaction272=reaction_Reaction272_d1a*x(77);

% Reaction: id = Reaction273, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction273_k1=0.1;

	reaction_Reaction273=reaction_Reaction273_k1*x(77);

% Reaction: id = Reaction274, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction274_k1a=100.0;

	reaction_Reaction274=reaction_Reaction274_k1a*x(3)*x(45);

% Reaction: id = Reaction275, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction275_d1a=0.0;

	reaction_Reaction275=reaction_Reaction275_d1a*x(78);

% Reaction: id = Reaction276, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction276_k1=0.1;

	reaction_Reaction276=reaction_Reaction276_k1*x(78);

% Reaction: id = Reaction277, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction277_k1a=100.0;

	reaction_Reaction277=reaction_Reaction277_k1a*x(3)*x(48);

% Reaction: id = Reaction278, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction278_d1a=0.0;

	reaction_Reaction278=reaction_Reaction278_d1a*x(79);

% Reaction: id = Reaction279, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction279_k1=0.1;

	reaction_Reaction279=reaction_Reaction279_k1*x(79);

% Reaction: id = Reaction280, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction280_k1a=100.0;

	reaction_Reaction280=reaction_Reaction280_k1a*x(3)*x(51);

% Reaction: id = Reaction281, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction281_d1a=0.0;

	reaction_Reaction281=reaction_Reaction281_d1a*x(80);

% Reaction: id = Reaction282, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction282_k1=0.1;

	reaction_Reaction282=reaction_Reaction282_k1*x(80);

% Reaction: id = Reaction283, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction283_k1a=100.0;

	reaction_Reaction283=reaction_Reaction283_k1a*x(3)*x(54);

% Reaction: id = Reaction284, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction284_d1a=0.0;

	reaction_Reaction284=reaction_Reaction284_d1a*x(81);

% Reaction: id = Reaction285, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction285_k1=0.1;

	reaction_Reaction285=reaction_Reaction285_k1*x(81);

% Reaction: id = Reaction286, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction286_k1a=100.0;

	reaction_Reaction286=reaction_Reaction286_k1a*x(3)*x(57);

% Reaction: id = Reaction287, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction287_d1a=0.0;

	reaction_Reaction287=reaction_Reaction287_d1a*x(82);

% Reaction: id = Reaction288, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction288_k1=0.1;

	reaction_Reaction288=reaction_Reaction288_k1*x(82);

% Reaction: id = Reaction289, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction289_k1a=100.0;

	reaction_Reaction289=reaction_Reaction289_k1a*x(3)*x(60);

% Reaction: id = Reaction290, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction290_d1a=0.0;

	reaction_Reaction290=reaction_Reaction290_d1a*x(83);

% Reaction: id = Reaction291, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction291_k1=0.1;

	reaction_Reaction291=reaction_Reaction291_k1*x(83);

% Reaction: id = Reaction292, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction292_k1a=100.0;

	reaction_Reaction292=reaction_Reaction292_k1a*x(3)*x(63);

% Reaction: id = Reaction293, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction293_d1a=0.0;

	reaction_Reaction293=reaction_Reaction293_d1a*x(84);

% Reaction: id = Reaction294, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction294_k1=0.1;

	reaction_Reaction294=reaction_Reaction294_k1*x(84);

% Reaction: id = Reaction295, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction295_k1a=100.0;

	reaction_Reaction295=reaction_Reaction295_k1a*x(3)*x(66);

% Reaction: id = Reaction296, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction296_d1a=0.0;

	reaction_Reaction296=reaction_Reaction296_d1a*x(85);

% Reaction: id = Reaction297, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction297_k1=0.1;

	reaction_Reaction297=reaction_Reaction297_k1*x(85);

% Reaction: id = Reaction298, name = binding of RAF and RAFK	% Local Parameter:   id =  k1a, name = k1a
	reaction_Reaction298_k1a=100.0;

	reaction_Reaction298=reaction_Reaction298_k1a*x(3)*x(69);

% Reaction: id = Reaction299, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1a, name = d1a
	reaction_Reaction299_d1a=0.0;

	reaction_Reaction299=reaction_Reaction299_d1a*x(86);

% Reaction: id = Reaction300, name = phosphorylation of RAF on scaffold	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction300_k1=0.1;

	reaction_Reaction300=reaction_Reaction300_k1*x(86);

	xdot=zeros(86,1);
	
% Species:   id = MAPKP, name = MAPK phosphatase, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_Reaction22) + ( 1.0 * reaction_Reaction23) + ( 1.0 * reaction_Reaction24) + (-1.0 * reaction_Reaction28) + ( 1.0 * reaction_Reaction29) + ( 1.0 * reaction_Reaction30);
	
% Species:   id = MEKP, name = MEK phosphatase, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction11) + ( 1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction16) + ( 1.0 * reaction_Reaction17) + ( 1.0 * reaction_Reaction18);
	
% Species:   id = RAFK, name = RAF kinase, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction253) + ( 1.0 * reaction_Reaction254) + ( 1.0 * reaction_Reaction255) + (-1.0 * reaction_Reaction256) + ( 1.0 * reaction_Reaction257) + ( 1.0 * reaction_Reaction258) + (-1.0 * reaction_Reaction259) + ( 1.0 * reaction_Reaction260) + ( 1.0 * reaction_Reaction261) + (-1.0 * reaction_Reaction262) + ( 1.0 * reaction_Reaction263) + ( 1.0 * reaction_Reaction264) + (-1.0 * reaction_Reaction265) + ( 1.0 * reaction_Reaction266) + ( 1.0 * reaction_Reaction267) + (-1.0 * reaction_Reaction268) + ( 1.0 * reaction_Reaction269) + ( 1.0 * reaction_Reaction270) + (-1.0 * reaction_Reaction271) + ( 1.0 * reaction_Reaction272) + ( 1.0 * reaction_Reaction273) + (-1.0 * reaction_Reaction274) + ( 1.0 * reaction_Reaction275) + ( 1.0 * reaction_Reaction276) + (-1.0 * reaction_Reaction277) + ( 1.0 * reaction_Reaction278) + ( 1.0 * reaction_Reaction279) + (-1.0 * reaction_Reaction280) + ( 1.0 * reaction_Reaction281) + ( 1.0 * reaction_Reaction282) + (-1.0 * reaction_Reaction283) + ( 1.0 * reaction_Reaction284) + ( 1.0 * reaction_Reaction285) + (-1.0 * reaction_Reaction286) + ( 1.0 * reaction_Reaction287) + ( 1.0 * reaction_Reaction288) + (-1.0 * reaction_Reaction289) + ( 1.0 * reaction_Reaction290) + ( 1.0 * reaction_Reaction291) + (-1.0 * reaction_Reaction292) + ( 1.0 * reaction_Reaction293) + ( 1.0 * reaction_Reaction294) + (-1.0 * reaction_Reaction295) + ( 1.0 * reaction_Reaction296) + ( 1.0 * reaction_Reaction297) + (-1.0 * reaction_Reaction298) + ( 1.0 * reaction_Reaction299) + ( 1.0 * reaction_Reaction300);
	
% Species:   id = RAFP, name = RAF phosphatase, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Reaction4) + ( 1.0 * reaction_Reaction5) + ( 1.0 * reaction_Reaction6);
	
% Species:   id = K_1_0, name = MAPK, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_Reaction19) + ( 1.0 * reaction_Reaction20) + ( 1.0 * reaction_Reaction24) + (-1.0 * reaction_Reaction31) + ( 1.0 * reaction_Reaction32) + (-1.0 * reaction_Reaction33) + ( 1.0 * reaction_Reaction34) + (-1.0 * reaction_Reaction35) + ( 1.0 * reaction_Reaction36) + (-1.0 * reaction_Reaction37) + ( 1.0 * reaction_Reaction38) + (-1.0 * reaction_Reaction39) + ( 1.0 * reaction_Reaction40) + (-1.0 * reaction_Reaction41) + ( 1.0 * reaction_Reaction42) + (-1.0 * reaction_Reaction43) + ( 1.0 * reaction_Reaction44) + (-1.0 * reaction_Reaction45) + ( 1.0 * reaction_Reaction46) + (-1.0 * reaction_Reaction47) + ( 1.0 * reaction_Reaction48) + (-1.0 * reaction_Reaction49) + ( 1.0 * reaction_Reaction50) + (-1.0 * reaction_Reaction51) + ( 1.0 * reaction_Reaction52) + (-1.0 * reaction_Reaction53) + ( 1.0 * reaction_Reaction54);
	
% Species:   id = K_1_1, name = MAPK-P, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Reaction21) + (-1.0 * reaction_Reaction22) + ( 1.0 * reaction_Reaction23) + (-1.0 * reaction_Reaction25) + ( 1.0 * reaction_Reaction26) + ( 1.0 * reaction_Reaction30) + (-1.0 * reaction_Reaction55) + ( 1.0 * reaction_Reaction56) + (-1.0 * reaction_Reaction57) + ( 1.0 * reaction_Reaction58) + (-1.0 * reaction_Reaction59) + ( 1.0 * reaction_Reaction60) + (-1.0 * reaction_Reaction61) + ( 1.0 * reaction_Reaction62) + (-1.0 * reaction_Reaction63) + ( 1.0 * reaction_Reaction64) + (-1.0 * reaction_Reaction65) + ( 1.0 * reaction_Reaction66) + (-1.0 * reaction_Reaction67) + ( 1.0 * reaction_Reaction68) + (-1.0 * reaction_Reaction69) + ( 1.0 * reaction_Reaction70) + (-1.0 * reaction_Reaction71) + ( 1.0 * reaction_Reaction72) + (-1.0 * reaction_Reaction73) + ( 1.0 * reaction_Reaction74) + (-1.0 * reaction_Reaction75) + ( 1.0 * reaction_Reaction76) + (-1.0 * reaction_Reaction77) + ( 1.0 * reaction_Reaction78);
	
% Species:   id = K_1_2, name = MAPK-PP, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Reaction27) + (-1.0 * reaction_Reaction28) + ( 1.0 * reaction_Reaction29) + (-1.0 * reaction_Reaction79) + ( 1.0 * reaction_Reaction80) + (-1.0 * reaction_Reaction81) + ( 1.0 * reaction_Reaction82) + (-1.0 * reaction_Reaction83) + ( 1.0 * reaction_Reaction84) + (-1.0 * reaction_Reaction85) + ( 1.0 * reaction_Reaction86) + (-1.0 * reaction_Reaction87) + ( 1.0 * reaction_Reaction88) + (-1.0 * reaction_Reaction89) + ( 1.0 * reaction_Reaction90) + (-1.0 * reaction_Reaction91) + ( 1.0 * reaction_Reaction92) + (-1.0 * reaction_Reaction93) + ( 1.0 * reaction_Reaction94) + (-1.0 * reaction_Reaction95) + ( 1.0 * reaction_Reaction96) + (-1.0 * reaction_Reaction97) + ( 1.0 * reaction_Reaction98) + (-1.0 * reaction_Reaction99) + ( 1.0 * reaction_Reaction100) + (-1.0 * reaction_Reaction101) + ( 1.0 * reaction_Reaction102);
	
% Species:   id = K_2_0, name = MEK, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction103) + ( 1.0 * reaction_Reaction104) + (-1.0 * reaction_Reaction105) + ( 1.0 * reaction_Reaction106) + (-1.0 * reaction_Reaction107) + ( 1.0 * reaction_Reaction108) + (-1.0 * reaction_Reaction121) + ( 1.0 * reaction_Reaction122) + (-1.0 * reaction_Reaction123) + ( 1.0 * reaction_Reaction124) + (-1.0 * reaction_Reaction125) + ( 1.0 * reaction_Reaction126) + (-1.0 * reaction_Reaction139) + ( 1.0 * reaction_Reaction140) + (-1.0 * reaction_Reaction141) + ( 1.0 * reaction_Reaction142) + (-1.0 * reaction_Reaction143) + ( 1.0 * reaction_Reaction144) + (-1.0 * reaction_Reaction157) + ( 1.0 * reaction_Reaction158) + (-1.0 * reaction_Reaction159) + ( 1.0 * reaction_Reaction160) + (-1.0 * reaction_Reaction161) + ( 1.0 * reaction_Reaction162);
	
% Species:   id = K_2_1, name = MEK-P, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction14) + ( 1.0 * reaction_Reaction18) + (-1.0 * reaction_Reaction109) + ( 1.0 * reaction_Reaction110) + (-1.0 * reaction_Reaction111) + ( 1.0 * reaction_Reaction112) + (-1.0 * reaction_Reaction113) + ( 1.0 * reaction_Reaction114) + (-1.0 * reaction_Reaction127) + ( 1.0 * reaction_Reaction128) + (-1.0 * reaction_Reaction129) + ( 1.0 * reaction_Reaction130) + (-1.0 * reaction_Reaction131) + ( 1.0 * reaction_Reaction132) + (-1.0 * reaction_Reaction145) + ( 1.0 * reaction_Reaction146) + (-1.0 * reaction_Reaction147) + ( 1.0 * reaction_Reaction148) + (-1.0 * reaction_Reaction149) + ( 1.0 * reaction_Reaction150) + (-1.0 * reaction_Reaction163) + ( 1.0 * reaction_Reaction164) + (-1.0 * reaction_Reaction165) + ( 1.0 * reaction_Reaction166) + (-1.0 * reaction_Reaction167) + ( 1.0 * reaction_Reaction168);
	
% Species:   id = K_2_2, name = MEK-PP, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_Reaction15) + (-1.0 * reaction_Reaction16) + ( 1.0 * reaction_Reaction17) + (-1.0 * reaction_Reaction19) + ( 1.0 * reaction_Reaction20) + ( 1.0 * reaction_Reaction21) + (-1.0 * reaction_Reaction25) + ( 1.0 * reaction_Reaction26) + ( 1.0 * reaction_Reaction27) + (-1.0 * reaction_Reaction115) + ( 1.0 * reaction_Reaction116) + (-1.0 * reaction_Reaction117) + ( 1.0 * reaction_Reaction118) + (-1.0 * reaction_Reaction119) + ( 1.0 * reaction_Reaction120) + (-1.0 * reaction_Reaction133) + ( 1.0 * reaction_Reaction134) + (-1.0 * reaction_Reaction135) + ( 1.0 * reaction_Reaction136) + (-1.0 * reaction_Reaction137) + ( 1.0 * reaction_Reaction138) + (-1.0 * reaction_Reaction151) + ( 1.0 * reaction_Reaction152) + (-1.0 * reaction_Reaction153) + ( 1.0 * reaction_Reaction154) + (-1.0 * reaction_Reaction155) + ( 1.0 * reaction_Reaction156) + (-1.0 * reaction_Reaction169) + ( 1.0 * reaction_Reaction170) + (-1.0 * reaction_Reaction171) + ( 1.0 * reaction_Reaction172) + (-1.0 * reaction_Reaction173) + ( 1.0 * reaction_Reaction174);
	
% Species:   id = K_3_0, name = RAF, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction175) + ( 1.0 * reaction_Reaction176) + (-1.0 * reaction_Reaction179) + ( 1.0 * reaction_Reaction180) + (-1.0 * reaction_Reaction183) + ( 1.0 * reaction_Reaction184) + (-1.0 * reaction_Reaction187) + ( 1.0 * reaction_Reaction188) + (-1.0 * reaction_Reaction191) + ( 1.0 * reaction_Reaction192) + (-1.0 * reaction_Reaction195) + ( 1.0 * reaction_Reaction196) + (-1.0 * reaction_Reaction199) + ( 1.0 * reaction_Reaction200) + (-1.0 * reaction_Reaction203) + ( 1.0 * reaction_Reaction204) + (-1.0 * reaction_Reaction207) + ( 1.0 * reaction_Reaction208) + (-1.0 * reaction_Reaction211) + ( 1.0 * reaction_Reaction212) + (-1.0 * reaction_Reaction215) + ( 1.0 * reaction_Reaction216) + (-1.0 * reaction_Reaction219) + ( 1.0 * reaction_Reaction220) + (-1.0 * reaction_Reaction223) + ( 1.0 * reaction_Reaction224) + (-1.0 * reaction_Reaction227) + ( 1.0 * reaction_Reaction228) + (-1.0 * reaction_Reaction231) + ( 1.0 * reaction_Reaction232) + (-1.0 * reaction_Reaction235) + ( 1.0 * reaction_Reaction236);
	
% Species:   id = K_3_1, name = RAF-P, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction4) + ( 1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction14) + ( 1.0 * reaction_Reaction15) + (-1.0 * reaction_Reaction177) + ( 1.0 * reaction_Reaction178) + (-1.0 * reaction_Reaction181) + ( 1.0 * reaction_Reaction182) + (-1.0 * reaction_Reaction185) + ( 1.0 * reaction_Reaction186) + (-1.0 * reaction_Reaction189) + ( 1.0 * reaction_Reaction190) + (-1.0 * reaction_Reaction193) + ( 1.0 * reaction_Reaction194) + (-1.0 * reaction_Reaction197) + ( 1.0 * reaction_Reaction198) + (-1.0 * reaction_Reaction201) + ( 1.0 * reaction_Reaction202) + (-1.0 * reaction_Reaction205) + ( 1.0 * reaction_Reaction206) + (-1.0 * reaction_Reaction209) + ( 1.0 * reaction_Reaction210) + (-1.0 * reaction_Reaction213) + ( 1.0 * reaction_Reaction214) + (-1.0 * reaction_Reaction217) + ( 1.0 * reaction_Reaction218) + (-1.0 * reaction_Reaction221) + ( 1.0 * reaction_Reaction222) + (-1.0 * reaction_Reaction225) + ( 1.0 * reaction_Reaction226) + (-1.0 * reaction_Reaction229) + ( 1.0 * reaction_Reaction230) + (-1.0 * reaction_Reaction233) + ( 1.0 * reaction_Reaction234) + (-1.0 * reaction_Reaction237) + ( 1.0 * reaction_Reaction238);
	
% Species:   id = K_K_1_0_2_2, name = MAPK_MEK-PP, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Reaction19) + (-1.0 * reaction_Reaction20) + (-1.0 * reaction_Reaction21);
	
% Species:   id = K_K_1_1_2_2, name = MAPK-P_MEK-PP, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Reaction25) + (-1.0 * reaction_Reaction26) + (-1.0 * reaction_Reaction27);
	
% Species:   id = K_K_2_0_3_1, name = MEK_RAF-P, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Reaction7) + (-1.0 * reaction_Reaction8) + (-1.0 * reaction_Reaction9);
	
% Species:   id = K_K_2_1_3_1, name = MEK-P_RAF-P, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_Reaction13) + (-1.0 * reaction_Reaction14) + (-1.0 * reaction_Reaction15);
	
% Species:   id = K_MAPKP_1_1, name = MAPK-P_MAPKPase, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Reaction22) + (-1.0 * reaction_Reaction23) + (-1.0 * reaction_Reaction24);
	
% Species:   id = K_MAPKP_1_2, name = MAPK-PP_MAPKPase, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_Reaction28) + (-1.0 * reaction_Reaction29) + (-1.0 * reaction_Reaction30);
	
% Species:   id = K_MEKP_2_1, name = MEK-P_MEKPase, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Reaction10) + (-1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction12);
	
% Species:   id = K_MEKP_2_2, name = MEK-PP_MEKPase, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Reaction16) + (-1.0 * reaction_Reaction17) + (-1.0 * reaction_Reaction18);
	
% Species:   id = K_RAFK_3_0, name = RAF_RAFK, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction3);
	
% Species:   id = K_RAFP_3_1, name = RAF-P_RAFPase, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_Reaction4) + (-1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction6);
	
% Species:   id = S_m1_m1_m1, name = Scaffold, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_Reaction31) + ( 1.0 * reaction_Reaction32) + (-1.0 * reaction_Reaction55) + ( 1.0 * reaction_Reaction56) + (-1.0 * reaction_Reaction79) + ( 1.0 * reaction_Reaction80) + (-1.0 * reaction_Reaction103) + ( 1.0 * reaction_Reaction104) + (-1.0 * reaction_Reaction109) + ( 1.0 * reaction_Reaction110) + (-1.0 * reaction_Reaction115) + ( 1.0 * reaction_Reaction116) + (-1.0 * reaction_Reaction175) + ( 1.0 * reaction_Reaction176) + (-1.0 * reaction_Reaction177) + ( 1.0 * reaction_Reaction178);
	
% Species:   id = S_m1_m1_0, name = Scaffold_RAF, affected by kineticLaw
	xdot(24) = (-1.0 * reaction_Reaction33) + ( 1.0 * reaction_Reaction34) + (-1.0 * reaction_Reaction57) + ( 1.0 * reaction_Reaction58) + (-1.0 * reaction_Reaction81) + ( 1.0 * reaction_Reaction82) + (-1.0 * reaction_Reaction105) + ( 1.0 * reaction_Reaction106) + (-1.0 * reaction_Reaction111) + ( 1.0 * reaction_Reaction112) + (-1.0 * reaction_Reaction117) + ( 1.0 * reaction_Reaction118) + ( 1.0 * reaction_Reaction175) + (-1.0 * reaction_Reaction176) + (-1.0 * reaction_Reaction253) + ( 1.0 * reaction_Reaction254);
	
% Species:   id = S_m1_m1_1, name = Scaffold_RAF-P, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_Reaction35) + ( 1.0 * reaction_Reaction36) + (-1.0 * reaction_Reaction59) + ( 1.0 * reaction_Reaction60) + (-1.0 * reaction_Reaction83) + ( 1.0 * reaction_Reaction84) + (-1.0 * reaction_Reaction107) + ( 1.0 * reaction_Reaction108) + (-1.0 * reaction_Reaction113) + ( 1.0 * reaction_Reaction114) + (-1.0 * reaction_Reaction119) + ( 1.0 * reaction_Reaction120) + ( 1.0 * reaction_Reaction177) + (-1.0 * reaction_Reaction178) + ( 1.0 * reaction_Reaction255);
	
% Species:   id = S_m1_0_m1, name = Scaffold_MEK, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_Reaction37) + ( 1.0 * reaction_Reaction38) + (-1.0 * reaction_Reaction61) + ( 1.0 * reaction_Reaction62) + (-1.0 * reaction_Reaction85) + ( 1.0 * reaction_Reaction86) + ( 1.0 * reaction_Reaction103) + (-1.0 * reaction_Reaction104) + (-1.0 * reaction_Reaction179) + ( 1.0 * reaction_Reaction180) + (-1.0 * reaction_Reaction181) + ( 1.0 * reaction_Reaction182);
	
% Species:   id = S_m1_0_0, name = Scaffold_MEK_RAF, affected by kineticLaw
	xdot(27) = (-1.0 * reaction_Reaction39) + ( 1.0 * reaction_Reaction40) + (-1.0 * reaction_Reaction63) + ( 1.0 * reaction_Reaction64) + (-1.0 * reaction_Reaction87) + ( 1.0 * reaction_Reaction88) + ( 1.0 * reaction_Reaction105) + (-1.0 * reaction_Reaction106) + ( 1.0 * reaction_Reaction179) + (-1.0 * reaction_Reaction180) + (-1.0 * reaction_Reaction256) + ( 1.0 * reaction_Reaction257);
	
% Species:   id = S_m1_0_1, name = Scaffold_MEK_RAF-P, affected by kineticLaw
	xdot(28) = (-1.0 * reaction_Reaction41) + ( 1.0 * reaction_Reaction42) + (-1.0 * reaction_Reaction65) + ( 1.0 * reaction_Reaction66) + (-1.0 * reaction_Reaction89) + ( 1.0 * reaction_Reaction90) + ( 1.0 * reaction_Reaction107) + (-1.0 * reaction_Reaction108) + ( 1.0 * reaction_Reaction181) + (-1.0 * reaction_Reaction182) + (-1.0 * reaction_Reaction245) + ( 1.0 * reaction_Reaction258);
	
% Species:   id = S_m1_1_m1, name = Scaffold_MEK-P, affected by kineticLaw
	xdot(29) = (-1.0 * reaction_Reaction43) + ( 1.0 * reaction_Reaction44) + (-1.0 * reaction_Reaction67) + ( 1.0 * reaction_Reaction68) + (-1.0 * reaction_Reaction91) + ( 1.0 * reaction_Reaction92) + ( 1.0 * reaction_Reaction109) + (-1.0 * reaction_Reaction110) + (-1.0 * reaction_Reaction183) + ( 1.0 * reaction_Reaction184) + (-1.0 * reaction_Reaction185) + ( 1.0 * reaction_Reaction186);
	
% Species:   id = S_m1_1_0, name = Scaffold_MEK-P_RAF, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_Reaction45) + ( 1.0 * reaction_Reaction46) + (-1.0 * reaction_Reaction69) + ( 1.0 * reaction_Reaction70) + (-1.0 * reaction_Reaction93) + ( 1.0 * reaction_Reaction94) + ( 1.0 * reaction_Reaction111) + (-1.0 * reaction_Reaction112) + ( 1.0 * reaction_Reaction183) + (-1.0 * reaction_Reaction184) + (-1.0 * reaction_Reaction259) + ( 1.0 * reaction_Reaction260);
	
% Species:   id = S_m1_1_1, name = Scaffold_MEK-P_RAF-P, affected by kineticLaw
	xdot(31) = (-1.0 * reaction_Reaction47) + ( 1.0 * reaction_Reaction48) + (-1.0 * reaction_Reaction71) + ( 1.0 * reaction_Reaction72) + (-1.0 * reaction_Reaction95) + ( 1.0 * reaction_Reaction96) + ( 1.0 * reaction_Reaction113) + (-1.0 * reaction_Reaction114) + ( 1.0 * reaction_Reaction185) + (-1.0 * reaction_Reaction186) + ( 1.0 * reaction_Reaction245) + (-1.0 * reaction_Reaction246) + ( 1.0 * reaction_Reaction261);
	
% Species:   id = S_m1_2_m1, name = Scaffold_MEK-PP, affected by kineticLaw
	xdot(32) = (-1.0 * reaction_Reaction49) + ( 1.0 * reaction_Reaction50) + (-1.0 * reaction_Reaction73) + ( 1.0 * reaction_Reaction74) + (-1.0 * reaction_Reaction97) + ( 1.0 * reaction_Reaction98) + ( 1.0 * reaction_Reaction115) + (-1.0 * reaction_Reaction116) + (-1.0 * reaction_Reaction187) + ( 1.0 * reaction_Reaction188) + (-1.0 * reaction_Reaction189) + ( 1.0 * reaction_Reaction190);
	
% Species:   id = S_m1_2_0, name = Scaffold_MEK-PP_RAF, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_Reaction51) + ( 1.0 * reaction_Reaction52) + (-1.0 * reaction_Reaction75) + ( 1.0 * reaction_Reaction76) + (-1.0 * reaction_Reaction99) + ( 1.0 * reaction_Reaction100) + ( 1.0 * reaction_Reaction117) + (-1.0 * reaction_Reaction118) + ( 1.0 * reaction_Reaction187) + (-1.0 * reaction_Reaction188) + (-1.0 * reaction_Reaction262) + ( 1.0 * reaction_Reaction263);
	
% Species:   id = S_m1_2_1, name = Scaffold_MEK-PP_RAF-P, affected by kineticLaw
	xdot(34) = (-1.0 * reaction_Reaction53) + ( 1.0 * reaction_Reaction54) + (-1.0 * reaction_Reaction77) + ( 1.0 * reaction_Reaction78) + (-1.0 * reaction_Reaction101) + ( 1.0 * reaction_Reaction102) + ( 1.0 * reaction_Reaction119) + (-1.0 * reaction_Reaction120) + ( 1.0 * reaction_Reaction189) + (-1.0 * reaction_Reaction190) + ( 1.0 * reaction_Reaction246) + ( 1.0 * reaction_Reaction264);
	
% Species:   id = S_0_m1_m1, name = Scaffold_MAPK, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_Reaction31) + (-1.0 * reaction_Reaction32) + (-1.0 * reaction_Reaction121) + ( 1.0 * reaction_Reaction122) + (-1.0 * reaction_Reaction127) + ( 1.0 * reaction_Reaction128) + (-1.0 * reaction_Reaction133) + ( 1.0 * reaction_Reaction134) + (-1.0 * reaction_Reaction191) + ( 1.0 * reaction_Reaction192) + (-1.0 * reaction_Reaction193) + ( 1.0 * reaction_Reaction194);
	
% Species:   id = S_0_m1_0, name = Scaffold_MAPK_RAF, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_Reaction33) + (-1.0 * reaction_Reaction34) + (-1.0 * reaction_Reaction123) + ( 1.0 * reaction_Reaction124) + (-1.0 * reaction_Reaction129) + ( 1.0 * reaction_Reaction130) + (-1.0 * reaction_Reaction135) + ( 1.0 * reaction_Reaction136) + ( 1.0 * reaction_Reaction191) + (-1.0 * reaction_Reaction192) + (-1.0 * reaction_Reaction265) + ( 1.0 * reaction_Reaction266);
	
% Species:   id = S_0_m1_1, name = Scaffold_MAPK_RAF-P, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_Reaction35) + (-1.0 * reaction_Reaction36) + (-1.0 * reaction_Reaction125) + ( 1.0 * reaction_Reaction126) + (-1.0 * reaction_Reaction131) + ( 1.0 * reaction_Reaction132) + (-1.0 * reaction_Reaction137) + ( 1.0 * reaction_Reaction138) + ( 1.0 * reaction_Reaction193) + (-1.0 * reaction_Reaction194) + ( 1.0 * reaction_Reaction267);
	
% Species:   id = S_0_0_m1, name = Scaffold_MAPK_MEK, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_Reaction37) + (-1.0 * reaction_Reaction38) + ( 1.0 * reaction_Reaction121) + (-1.0 * reaction_Reaction122) + (-1.0 * reaction_Reaction195) + ( 1.0 * reaction_Reaction196) + (-1.0 * reaction_Reaction197) + ( 1.0 * reaction_Reaction198);
	
% Species:   id = S_0_0_0, name = Scaffold_MAPK_MEK_RAF, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_Reaction39) + (-1.0 * reaction_Reaction40) + ( 1.0 * reaction_Reaction123) + (-1.0 * reaction_Reaction124) + ( 1.0 * reaction_Reaction195) + (-1.0 * reaction_Reaction196) + (-1.0 * reaction_Reaction268) + ( 1.0 * reaction_Reaction269);
	
% Species:   id = S_0_0_1, name = Scaffold_MAPK_MEK_RAF-P, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_Reaction41) + (-1.0 * reaction_Reaction42) + ( 1.0 * reaction_Reaction125) + (-1.0 * reaction_Reaction126) + ( 1.0 * reaction_Reaction197) + (-1.0 * reaction_Reaction198) + (-1.0 * reaction_Reaction247) + ( 1.0 * reaction_Reaction270);
	
% Species:   id = S_0_1_m1, name = Scaffold_MAPK_MEK-P, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_Reaction43) + (-1.0 * reaction_Reaction44) + ( 1.0 * reaction_Reaction127) + (-1.0 * reaction_Reaction128) + (-1.0 * reaction_Reaction199) + ( 1.0 * reaction_Reaction200) + (-1.0 * reaction_Reaction201) + ( 1.0 * reaction_Reaction202);
	
% Species:   id = S_0_1_0, name = Scaffold_MAPK_MEK-P_RAF, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_Reaction45) + (-1.0 * reaction_Reaction46) + ( 1.0 * reaction_Reaction129) + (-1.0 * reaction_Reaction130) + ( 1.0 * reaction_Reaction199) + (-1.0 * reaction_Reaction200) + (-1.0 * reaction_Reaction271) + ( 1.0 * reaction_Reaction272);
	
% Species:   id = S_0_1_1, name = Scaffold_MAPK_MEK-P_RAF-P, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_Reaction47) + (-1.0 * reaction_Reaction48) + ( 1.0 * reaction_Reaction131) + (-1.0 * reaction_Reaction132) + ( 1.0 * reaction_Reaction201) + (-1.0 * reaction_Reaction202) + ( 1.0 * reaction_Reaction247) + (-1.0 * reaction_Reaction248) + ( 1.0 * reaction_Reaction273);
	
% Species:   id = S_0_2_m1, name = Scaffold_MAPK_MEK-PP, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_Reaction49) + (-1.0 * reaction_Reaction50) + ( 1.0 * reaction_Reaction133) + (-1.0 * reaction_Reaction134) + (-1.0 * reaction_Reaction203) + ( 1.0 * reaction_Reaction204) + (-1.0 * reaction_Reaction205) + ( 1.0 * reaction_Reaction206) + (-1.0 * reaction_Reaction239);
	
% Species:   id = S_0_2_0, name = Scaffold_MAPK_MEK-PP_RAF, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_Reaction51) + (-1.0 * reaction_Reaction52) + ( 1.0 * reaction_Reaction135) + (-1.0 * reaction_Reaction136) + ( 1.0 * reaction_Reaction203) + (-1.0 * reaction_Reaction204) + (-1.0 * reaction_Reaction240) + (-1.0 * reaction_Reaction274) + ( 1.0 * reaction_Reaction275);
	
% Species:   id = S_0_2_1, name = Scaffold_MAPK_MEK-PP_RAF-P, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_Reaction53) + (-1.0 * reaction_Reaction54) + ( 1.0 * reaction_Reaction137) + (-1.0 * reaction_Reaction138) + ( 1.0 * reaction_Reaction205) + (-1.0 * reaction_Reaction206) + (-1.0 * reaction_Reaction241) + ( 1.0 * reaction_Reaction248) + ( 1.0 * reaction_Reaction276);
	
% Species:   id = S_1_m1_m1, name = Scaffold_MAPK-P, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_Reaction55) + (-1.0 * reaction_Reaction56) + (-1.0 * reaction_Reaction139) + ( 1.0 * reaction_Reaction140) + (-1.0 * reaction_Reaction145) + ( 1.0 * reaction_Reaction146) + (-1.0 * reaction_Reaction151) + ( 1.0 * reaction_Reaction152) + (-1.0 * reaction_Reaction207) + ( 1.0 * reaction_Reaction208) + (-1.0 * reaction_Reaction209) + ( 1.0 * reaction_Reaction210);
	
% Species:   id = S_1_m1_0, name = Scaffold_MAPK-P_RAF, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_Reaction57) + (-1.0 * reaction_Reaction58) + (-1.0 * reaction_Reaction141) + ( 1.0 * reaction_Reaction142) + (-1.0 * reaction_Reaction147) + ( 1.0 * reaction_Reaction148) + (-1.0 * reaction_Reaction153) + ( 1.0 * reaction_Reaction154) + ( 1.0 * reaction_Reaction207) + (-1.0 * reaction_Reaction208) + (-1.0 * reaction_Reaction277) + ( 1.0 * reaction_Reaction278);
	
% Species:   id = S_1_m1_1, name = Scaffold_MAPK-P_RAF-P, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_Reaction59) + (-1.0 * reaction_Reaction60) + (-1.0 * reaction_Reaction143) + ( 1.0 * reaction_Reaction144) + (-1.0 * reaction_Reaction149) + ( 1.0 * reaction_Reaction150) + (-1.0 * reaction_Reaction155) + ( 1.0 * reaction_Reaction156) + ( 1.0 * reaction_Reaction209) + (-1.0 * reaction_Reaction210) + ( 1.0 * reaction_Reaction279);
	
% Species:   id = S_1_0_m1, name = Scaffold_MAPK-P_MEK, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_Reaction61) + (-1.0 * reaction_Reaction62) + ( 1.0 * reaction_Reaction139) + (-1.0 * reaction_Reaction140) + (-1.0 * reaction_Reaction211) + ( 1.0 * reaction_Reaction212) + (-1.0 * reaction_Reaction213) + ( 1.0 * reaction_Reaction214);
	
% Species:   id = S_1_0_0, name = Scaffold_MAPK-P_MEK_RAF, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_Reaction63) + (-1.0 * reaction_Reaction64) + ( 1.0 * reaction_Reaction141) + (-1.0 * reaction_Reaction142) + ( 1.0 * reaction_Reaction211) + (-1.0 * reaction_Reaction212) + (-1.0 * reaction_Reaction280) + ( 1.0 * reaction_Reaction281);
	
% Species:   id = S_1_0_1, name = Scaffold_MAPK-P_MEK_RAF-P, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_Reaction65) + (-1.0 * reaction_Reaction66) + ( 1.0 * reaction_Reaction143) + (-1.0 * reaction_Reaction144) + ( 1.0 * reaction_Reaction213) + (-1.0 * reaction_Reaction214) + (-1.0 * reaction_Reaction249) + ( 1.0 * reaction_Reaction282);
	
% Species:   id = S_1_1_m1, name = Scaffold_MAPK-P_MEK-P, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_Reaction67) + (-1.0 * reaction_Reaction68) + ( 1.0 * reaction_Reaction145) + (-1.0 * reaction_Reaction146) + (-1.0 * reaction_Reaction215) + ( 1.0 * reaction_Reaction216) + (-1.0 * reaction_Reaction217) + ( 1.0 * reaction_Reaction218);
	
% Species:   id = S_1_1_0, name = Scaffold_MAPK-P_MEK-P_RAF, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_Reaction69) + (-1.0 * reaction_Reaction70) + ( 1.0 * reaction_Reaction147) + (-1.0 * reaction_Reaction148) + ( 1.0 * reaction_Reaction215) + (-1.0 * reaction_Reaction216) + (-1.0 * reaction_Reaction283) + ( 1.0 * reaction_Reaction284);
	
% Species:   id = S_1_1_1, name = Scaffold_MAPK-P_MEK-P_RAF-P, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_Reaction71) + (-1.0 * reaction_Reaction72) + ( 1.0 * reaction_Reaction149) + (-1.0 * reaction_Reaction150) + ( 1.0 * reaction_Reaction217) + (-1.0 * reaction_Reaction218) + ( 1.0 * reaction_Reaction249) + (-1.0 * reaction_Reaction250) + ( 1.0 * reaction_Reaction285);
	
% Species:   id = S_1_2_m1, name = Scaffold_MAPK-P_MEK-PP, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_Reaction73) + (-1.0 * reaction_Reaction74) + ( 1.0 * reaction_Reaction151) + (-1.0 * reaction_Reaction152) + (-1.0 * reaction_Reaction219) + ( 1.0 * reaction_Reaction220) + (-1.0 * reaction_Reaction221) + ( 1.0 * reaction_Reaction222) + ( 1.0 * reaction_Reaction239) + (-1.0 * reaction_Reaction242);
	
% Species:   id = S_1_2_0, name = Scaffold_MAPK-P_MEK-PP_RAF, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_Reaction75) + (-1.0 * reaction_Reaction76) + ( 1.0 * reaction_Reaction153) + (-1.0 * reaction_Reaction154) + ( 1.0 * reaction_Reaction219) + (-1.0 * reaction_Reaction220) + ( 1.0 * reaction_Reaction240) + (-1.0 * reaction_Reaction243) + (-1.0 * reaction_Reaction286) + ( 1.0 * reaction_Reaction287);
	
% Species:   id = S_1_2_1, name = Scaffold_MAPK-P_MEK-PP_RAF-P, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_Reaction77) + (-1.0 * reaction_Reaction78) + ( 1.0 * reaction_Reaction155) + (-1.0 * reaction_Reaction156) + ( 1.0 * reaction_Reaction221) + (-1.0 * reaction_Reaction222) + ( 1.0 * reaction_Reaction241) + (-1.0 * reaction_Reaction244) + ( 1.0 * reaction_Reaction250) + ( 1.0 * reaction_Reaction288);
	
% Species:   id = S_2_m1_m1, name = Scaffold_MAPK-PP, affected by kineticLaw
	xdot(59) = ( 1.0 * reaction_Reaction79) + (-1.0 * reaction_Reaction80) + (-1.0 * reaction_Reaction157) + ( 1.0 * reaction_Reaction158) + (-1.0 * reaction_Reaction163) + ( 1.0 * reaction_Reaction164) + (-1.0 * reaction_Reaction169) + ( 1.0 * reaction_Reaction170) + (-1.0 * reaction_Reaction223) + ( 1.0 * reaction_Reaction224) + (-1.0 * reaction_Reaction225) + ( 1.0 * reaction_Reaction226);
	
% Species:   id = S_2_m1_0, name = Scaffold_MAPK-PP_RAF, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_Reaction81) + (-1.0 * reaction_Reaction82) + (-1.0 * reaction_Reaction159) + ( 1.0 * reaction_Reaction160) + (-1.0 * reaction_Reaction165) + ( 1.0 * reaction_Reaction166) + (-1.0 * reaction_Reaction171) + ( 1.0 * reaction_Reaction172) + ( 1.0 * reaction_Reaction223) + (-1.0 * reaction_Reaction224) + (-1.0 * reaction_Reaction289) + ( 1.0 * reaction_Reaction290);
	
% Species:   id = S_2_m1_1, name = Scaffold_MAPK-PP_RAF-P, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_Reaction83) + (-1.0 * reaction_Reaction84) + (-1.0 * reaction_Reaction161) + ( 1.0 * reaction_Reaction162) + (-1.0 * reaction_Reaction167) + ( 1.0 * reaction_Reaction168) + (-1.0 * reaction_Reaction173) + ( 1.0 * reaction_Reaction174) + ( 1.0 * reaction_Reaction225) + (-1.0 * reaction_Reaction226) + ( 1.0 * reaction_Reaction291);
	
% Species:   id = S_2_0_m1, name = Scaffold_MAPK-PP_MEK, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_Reaction85) + (-1.0 * reaction_Reaction86) + ( 1.0 * reaction_Reaction157) + (-1.0 * reaction_Reaction158) + (-1.0 * reaction_Reaction227) + ( 1.0 * reaction_Reaction228) + (-1.0 * reaction_Reaction229) + ( 1.0 * reaction_Reaction230);
	
% Species:   id = S_2_0_0, name = Scaffold_MAPK-PP_MEK_RAF, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_Reaction87) + (-1.0 * reaction_Reaction88) + ( 1.0 * reaction_Reaction159) + (-1.0 * reaction_Reaction160) + ( 1.0 * reaction_Reaction227) + (-1.0 * reaction_Reaction228) + (-1.0 * reaction_Reaction292) + ( 1.0 * reaction_Reaction293);
	
% Species:   id = S_2_0_1, name = Scaffold_MAPK-PP_MEK_RAF-P, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_Reaction89) + (-1.0 * reaction_Reaction90) + ( 1.0 * reaction_Reaction161) + (-1.0 * reaction_Reaction162) + ( 1.0 * reaction_Reaction229) + (-1.0 * reaction_Reaction230) + (-1.0 * reaction_Reaction251) + ( 1.0 * reaction_Reaction294);
	
% Species:   id = S_2_1_m1, name = Scaffold_MAPK-PP_MEK-P, affected by kineticLaw
	xdot(65) = ( 1.0 * reaction_Reaction91) + (-1.0 * reaction_Reaction92) + ( 1.0 * reaction_Reaction163) + (-1.0 * reaction_Reaction164) + (-1.0 * reaction_Reaction231) + ( 1.0 * reaction_Reaction232) + (-1.0 * reaction_Reaction233) + ( 1.0 * reaction_Reaction234);
	
% Species:   id = S_2_1_0, name = Scaffold_MAPK-PP_MEK-P_RAF, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_Reaction93) + (-1.0 * reaction_Reaction94) + ( 1.0 * reaction_Reaction165) + (-1.0 * reaction_Reaction166) + ( 1.0 * reaction_Reaction231) + (-1.0 * reaction_Reaction232) + (-1.0 * reaction_Reaction295) + ( 1.0 * reaction_Reaction296);
	
% Species:   id = S_2_1_1, name = Scaffold_MAPK-PP_MEK-P_RAF-P, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_Reaction95) + (-1.0 * reaction_Reaction96) + ( 1.0 * reaction_Reaction167) + (-1.0 * reaction_Reaction168) + ( 1.0 * reaction_Reaction233) + (-1.0 * reaction_Reaction234) + ( 1.0 * reaction_Reaction251) + (-1.0 * reaction_Reaction252) + ( 1.0 * reaction_Reaction297);
	
% Species:   id = S_2_2_m1, name = Scaffold_MAPK-PP_MEK-PP, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_Reaction97) + (-1.0 * reaction_Reaction98) + ( 1.0 * reaction_Reaction169) + (-1.0 * reaction_Reaction170) + (-1.0 * reaction_Reaction235) + ( 1.0 * reaction_Reaction236) + (-1.0 * reaction_Reaction237) + ( 1.0 * reaction_Reaction238) + ( 1.0 * reaction_Reaction242);
	
% Species:   id = S_2_2_0, name = Scaffold_MAPK-PP_MEK-PP_RAF, affected by kineticLaw
	xdot(69) = ( 1.0 * reaction_Reaction99) + (-1.0 * reaction_Reaction100) + ( 1.0 * reaction_Reaction171) + (-1.0 * reaction_Reaction172) + ( 1.0 * reaction_Reaction235) + (-1.0 * reaction_Reaction236) + ( 1.0 * reaction_Reaction243) + (-1.0 * reaction_Reaction298) + ( 1.0 * reaction_Reaction299);
	
% Species:   id = S_2_2_1, name = Scaffold_MAPK-PP_MEK-PP_RAF-P, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_Reaction101) + (-1.0 * reaction_Reaction102) + ( 1.0 * reaction_Reaction173) + (-1.0 * reaction_Reaction174) + ( 1.0 * reaction_Reaction237) + (-1.0 * reaction_Reaction238) + ( 1.0 * reaction_Reaction244) + ( 1.0 * reaction_Reaction252) + ( 1.0 * reaction_Reaction300);
	
% Species:   id = S_RAFK_m1_m1_0, name = Scaffold_RAF, affected by kineticLaw
	xdot(71) = ( 1.0 * reaction_Reaction253) + (-1.0 * reaction_Reaction254) + (-1.0 * reaction_Reaction255);
	
% Species:   id = S_RAFK_m1_0_0, name = Scaffold_MEK_RAF, affected by kineticLaw
	xdot(72) = ( 1.0 * reaction_Reaction256) + (-1.0 * reaction_Reaction257) + (-1.0 * reaction_Reaction258);
	
% Species:   id = S_RAFK_m1_1_0, name = Scaffold_MEK-P_RAF, affected by kineticLaw
	xdot(73) = ( 1.0 * reaction_Reaction259) + (-1.0 * reaction_Reaction260) + (-1.0 * reaction_Reaction261);
	
% Species:   id = S_RAFK_m1_2_0, name = Scaffold_MEK-PP_RAF, affected by kineticLaw
	xdot(74) = ( 1.0 * reaction_Reaction262) + (-1.0 * reaction_Reaction263) + (-1.0 * reaction_Reaction264);
	
% Species:   id = S_RAFK_0_m1_0, name = Scaffold_MAPK_RAF, affected by kineticLaw
	xdot(75) = ( 1.0 * reaction_Reaction265) + (-1.0 * reaction_Reaction266) + (-1.0 * reaction_Reaction267);
	
% Species:   id = S_RAFK_0_0_0, name = Scaffold_MAPK_MEK_RAF, affected by kineticLaw
	xdot(76) = ( 1.0 * reaction_Reaction268) + (-1.0 * reaction_Reaction269) + (-1.0 * reaction_Reaction270);
	
% Species:   id = S_RAFK_0_1_0, name = Scaffold_MAPK_MEK-P_RAF, affected by kineticLaw
	xdot(77) = ( 1.0 * reaction_Reaction271) + (-1.0 * reaction_Reaction272) + (-1.0 * reaction_Reaction273);
	
% Species:   id = S_RAFK_0_2_0, name = Scaffold_MAPK_MEK-PP_RAF, affected by kineticLaw
	xdot(78) = ( 1.0 * reaction_Reaction274) + (-1.0 * reaction_Reaction275) + (-1.0 * reaction_Reaction276);
	
% Species:   id = S_RAFK_1_m1_0, name = Scaffold_MAPK-P_RAF, affected by kineticLaw
	xdot(79) = ( 1.0 * reaction_Reaction277) + (-1.0 * reaction_Reaction278) + (-1.0 * reaction_Reaction279);
	
% Species:   id = S_RAFK_1_0_0, name = Scaffold_MAPK-P_MEK_RAF, affected by kineticLaw
	xdot(80) = ( 1.0 * reaction_Reaction280) + (-1.0 * reaction_Reaction281) + (-1.0 * reaction_Reaction282);
	
% Species:   id = S_RAFK_1_1_0, name = Scaffold_MAPK-P_MEK-P_RAF, affected by kineticLaw
	xdot(81) = ( 1.0 * reaction_Reaction283) + (-1.0 * reaction_Reaction284) + (-1.0 * reaction_Reaction285);
	
% Species:   id = S_RAFK_1_2_0, name = Scaffold_MAPK-P_MEK-PP_RAF, affected by kineticLaw
	xdot(82) = ( 1.0 * reaction_Reaction286) + (-1.0 * reaction_Reaction287) + (-1.0 * reaction_Reaction288);
	
% Species:   id = S_RAFK_2_m1_0, name = Scaffold_MAPK-PP_RAF, affected by kineticLaw
	xdot(83) = ( 1.0 * reaction_Reaction289) + (-1.0 * reaction_Reaction290) + (-1.0 * reaction_Reaction291);
	
% Species:   id = S_RAFK_2_0_0, name = Scaffold_MAPK-PP_MEK_RAF, affected by kineticLaw
	xdot(84) = ( 1.0 * reaction_Reaction292) + (-1.0 * reaction_Reaction293) + (-1.0 * reaction_Reaction294);
	
% Species:   id = S_RAFK_2_1_0, name = Scaffold_MAPK-PP_MEK-P_RAF, affected by kineticLaw
	xdot(85) = ( 1.0 * reaction_Reaction295) + (-1.0 * reaction_Reaction296) + (-1.0 * reaction_Reaction297);
	
% Species:   id = S_RAFK_2_2_0, name = Scaffold_MAPK-PP_MEK-PP_RAF, affected by kineticLaw
	xdot(86) = ( 1.0 * reaction_Reaction298) + (-1.0 * reaction_Reaction299) + (-1.0 * reaction_Reaction300);
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


