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
% Model name = Haberichter2007_cellcycle
%
% is http://identifiers.org/biomodels.db/MODEL3734058719
% is http://identifiers.org/biomodels.db/BIOMD0000000109
% isDescribedBy http://identifiers.org/pubmed/17299420
%


function main()
%Initial conditions vector
	x0=zeros(57,1);
	x0(1) = 24582.9;
	x0(2) = 104.388;
	x0(3) = 0.0;
	x0(4) = 52.8191;
	x0(5) = 0.0;
	x0(6) = 90.5091;
	x0(7) = 0.0;
	x0(8) = 8.79462;
	x0(9) = 5160.61;
	x0(10) = 98550.6;
	x0(11) = 1345.01;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 33942.0;
	x0(17) = 2176.46;
	x0(18) = 680.557;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 58162.0;
	x0(27) = 3729.51;
	x0(28) = 1166.18;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 46551.9;
	x0(33) = 6547.64;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 41117.2;
	x0(37) = 5783.23;
	x0(38) = 113.316;
	x0(39) = 14753.7;
	x0(40) = 191.985;
	x0(41) = 546.211;
	x0(42) = 248.046;
	x0(43) = 14150.9;
	x0(44) = 30000.0;
	x0(45) = 0.0;
	x0(46) = 28583.4;
	x0(47) = 1416.59;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0;
	x0(51) = 0;
	x0(52) = 0;
	x0(53) = 0;
	x0(54) = 0;
	x0(55) = 0;
	x0(56) = 0;
	x0(57) = 0;


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

% Compartment: id = X, name = cell, constant
	compartment_X=1.0;
% Parameter:   id =  ksYE2F, name = ksYE2F
% Parameter:   id =  ksYEmi1, name = ksYEmi1
% Parameter:   id =  ksYCyclinA, name = ksYCyclinA
% Parameter:   id =  ksYCyclinE, name = ksYCyclinE
% Parameter:   id =  kYact, name = kYact
	global_par_kYact=0.0;
% Parameter:   id =  ksYCyclinD, name = ksYCyclinD
	global_par_ksYCyclinD=1354.231;
% Parameter:   id =  ksYp27, name = ksYp27
	global_par_ksYp27=195.4716;
% Parameter:   id =  kdYp27, name = kdYp27
	global_par_kdYp27=0.001575;
% Parameter:   id =  kd1Yp27, name = kd1Yp27
	global_par_kd1Yp27=0.071149;
% Parameter:   id =  ks0YCyclinE, name = ks0YCyclinE
	global_par_ks0YCyclinE=254.0742;
% Parameter:   id =  ks1YCyclinE, name = ks1YCyclinE
	global_par_ks1YCyclinE=980.611;
% Parameter:   id =  ksMYCyclinE, name = ksMYCyclinE
	global_par_ksMYCyclinE=9992.647;
% Parameter:   id =  ks0YCyclinA, name = ks0YCyclinA
	global_par_ks0YCyclinA=499.9437;
% Parameter:   id =  ks1YCyclinA, name = ks1YCyclinA
	global_par_ks1YCyclinA=7999.996;
% Parameter:   id =  ksMYCyclinA, name = ksMYCyclinA
	global_par_ksMYCyclinA=4064.384;
% Parameter:   id =  ks0YE2F, name = ks0YE2F
	global_par_ks0YE2F=6.927086;
% Parameter:   id =  ks1YE2F, name = ks1YE2F
	global_par_ks1YE2F=65.44282;
% Parameter:   id =  ksMYE2F, name = ksMYE2F
	global_par_ksMYE2F=9818.78;
% Parameter:   id =  kdYE2F, name = kdYE2F
	global_par_kdYE2F=0.006465;
% Parameter:   id =  kd0YE2F, name = kd0YE2F
	global_par_kd0YE2F=0.002229;
% Parameter:   id =  ks0YEmi1, name = ks0YEmi1
	global_par_ks0YEmi1=2.004744;
% Parameter:   id =  ks1YEmi1, name = ks1YEmi1
	global_par_ks1YEmi1=1788.517;
% Parameter:   id =  ksMYEmi1, name = ksMYEmi1
	global_par_ksMYEmi1=9608.162;
% Parameter:   id =  kdYEmi1, name = kdYEmi1
	global_par_kdYEmi1=0.018158;
% Parameter:   id =  kbYCyclinDYYCdk4, name = kbYCyclinDYYCdk4
	global_par_kbYCyclinDYYCdk4=1.43E-6;
% Parameter:   id =  kbYp27YYCdk4, name = kbYp27YYCdk4
	global_par_kbYp27YYCdk4=6.34E-6;
% Parameter:   id =  kbYp27YYCdk2, name = kbYp27YYCdk2
	global_par_kbYp27YYCdk2=1.23E-5;
% Parameter:   id =  k1Yact, name = k1Yact
	global_par_k1Yact=0.01075;
% Parameter:   id =  timeYModifier, name = timeYModifier
	global_par_timeYModifier=240.0637;
% Parameter:   id =  kbYCyclinEYYCdk2, name = kbYCyclinEYYCdk2
	global_par_kbYCyclinEYYCdk2=5.01E-5;
% Parameter:   id =  kbYCyclinAYYCdk2, name = kbYCyclinAYYCdk2
	global_par_kbYCyclinAYYCdk2=9.52E-5;
% Parameter:   id =  kbYCyclinAYYCdk1, name = kbYCyclinAYYCdk1
	global_par_kbYCyclinAYYCdk1=6.48E-5;
% Parameter:   id =  kbYD4YYpRb, name = kbYD4YYpRb
	global_par_kbYD4YYpRb=3.15E-5;
% Parameter:   id =  kupYD4YYpRb, name = kupYD4YYpRb
	global_par_kupYD4YYpRb=1.694662;
% Parameter:   id =  kbYE2YYpRb, name = kbYE2YYpRb
	global_par_kbYE2YYpRb=5.74E-5;
% Parameter:   id =  kupYE2YYpRb, name = kupYE2YYpRb
	global_par_kupYE2YYpRb=4.78271;
% Parameter:   id =  kbYA2YYpRb, name = kbYA2YYpRb
	global_par_kbYA2YYpRb=6.25E-5;
% Parameter:   id =  kupYA2YYpRb, name = kupYA2YYpRb
	global_par_kupYA2YYpRb=0.200091;
% Parameter:   id =  kbYA1YYpRb, name = kbYA1YYpRb
	global_par_kbYA1YYpRb=6.73E-5;
% Parameter:   id =  kupYA1YYpRb, name = kupYA1YYpRb
	global_par_kupYA1YYpRb=0.202132;
% Parameter:   id =  ktYpRbYYDephos, name = ktYpRbYYDephos
	global_par_ktYpRbYYDephos=0.023194;
% Parameter:   id =  kbYE2FYYpRb, name = kbYE2FYYpRb
	global_par_kbYE2FYYpRb=9.66E-6;
% Parameter:   id =  kbYEmi1YYAPCC, name = kbYEmi1YYAPCC
	global_par_kbYEmi1YYAPCC=1.0E-4;
% Parameter:   id =  kbYAPCCYYCyclinA, name = kbYAPCCYYCyclinA
	global_par_kbYAPCCYYCyclinA=1.61E-5;
% Parameter:   id =  kudYAPCCYYCyclinA, name = kudYAPCCYYCyclinA
	global_par_kudYAPCCYYCyclinA=4.999555;
% Parameter:   id =  kdYCyclinD, name = kdYCyclinD
	global_par_kdYCyclinD=0.05;
% Parameter:   id =  kdYCyclinE, name = kdYCyclinE
	global_par_kdYCyclinE=0.05;
% Parameter:   id =  kdYCyclinA, name = kdYCyclinA
	global_par_kdYCyclinA=0.05;
% Parameter:   id =  kuYCyclinDYYCdk4, name = kuYCyclinDYYCdk4
	global_par_kuYCyclinDYYCdk4=0.1;
% Parameter:   id =  kuYp27YYCdk4, name = kuYp27YYCdk4
	global_par_kuYp27YYCdk4=0.1;
% Parameter:   id =  kuYCyclinEYYCdk2, name = kuYCyclinEYYCdk2
	global_par_kuYCyclinEYYCdk2=0.1;
% Parameter:   id =  kuYp27YYCdk2, name = kuYp27YYCdk2
	global_par_kuYp27YYCdk2=0.1;
% Parameter:   id =  kuYCyclinAYYCdk2, name = kuYCyclinAYYCdk2
	global_par_kuYCyclinAYYCdk2=0.1;
% Parameter:   id =  kuYCyclinAYYCdk1, name = kuYCyclinAYYCdk1
	global_par_kuYCyclinAYYCdk1=0.1;
% Parameter:   id =  kuYD4YYpRb, name = kuYD4YYpRb
	global_par_kuYD4YYpRb=0.1;
% Parameter:   id =  kuYE2YYpRb, name = kuYE2YYpRb
	global_par_kuYE2YYpRb=0.1;
% Parameter:   id =  kuYA2YYpRb, name = kuYA2YYpRb
	global_par_kuYA2YYpRb=0.1;
% Parameter:   id =  kuYA1YYpRb, name = kuYA1YYpRb
	global_par_kuYA1YYpRb=0.1;
% Parameter:   id =  kuYE2FYYpRb, name = kuYE2FYYpRb
	global_par_kuYE2FYYpRb=0.1;
% Parameter:   id =  kuYEmi1YYAPCC, name = kuYEmi1YYAPCC
	global_par_kuYEmi1YYAPCC=0.1;
% Parameter:   id =  kuYAPCCYYCyclinA, name = kuYAPCCYYCyclinA
	global_par_kuYAPCCYYCyclinA=0.1;
% assignmentRule: variable = totalYCyclinYD
	x(50)=x(39)+x(33)+x(37);
% assignmentRule: variable = totalYCyclinYE
	x(51)=x(40)+x(17)+x(20)+x(27)+x(30);
% assignmentRule: variable = totalYCyclinYA
	x(52)=x(38)+x(11)+x(13)+x(18)+x(23)+x(28)+x(31);
% assignmentRule: variable = totalYp27
	x(53)=x(43)+x(36)+x(37)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31);
% assignmentRule: variable = hypophosphorylatedYpRb
	x(54)=x(46)+x(47);
% assignmentRule: variable = hyperphosphorylatedYpRb
	x(55)=x(48)+x(49);
% assignmentRule: variable = activeYCdk2
	x(57)=x(20)+x(23);
% assignmentRule: variable = totalYEmi1
	x(56)=x(42)+x(9);
% assignmentRule: variable = ksYCyclinE
	global_par_ksYCyclinE=global_par_ks0YCyclinE+global_par_ks1YCyclinE*x(41)/(global_par_ksMYCyclinE+x(41));
% assignmentRule: variable = ksYCyclinA
	global_par_ksYCyclinA=global_par_ks0YCyclinA+global_par_ks1YCyclinA*x(41)/(global_par_ksMYCyclinA+x(41));
% assignmentRule: variable = ksYEmi1
	global_par_ksYEmi1=global_par_ks0YEmi1+global_par_ks1YEmi1*x(41)/(global_par_ksMYEmi1+x(41));
% assignmentRule: variable = ksYE2F
	global_par_ksYE2F=global_par_ks0YE2F+global_par_ks1YE2F*x(41)/(global_par_ksMYE2F+x(41));

% Reaction: id = rxnY001
	reaction_rxnY001=global_par_ksYCyclinD*compartment_X;

% Reaction: id = rxnY002
	reaction_rxnY002=global_par_kdYCyclinD*x(39)*compartment_X;

% Reaction: id = rxnY003
	reaction_rxnY003=global_par_kdYCyclinD*x(33)*compartment_X;

% Reaction: id = rxnY004
	reaction_rxnY004=global_par_kdYCyclinD*x(37)*compartment_X;

% Reaction: id = rxnY005
	reaction_rxnY005=global_par_ksYp27*compartment_X;

% Reaction: id = rxnY006
	reaction_rxnY006=global_par_kdYp27*x(43)*compartment_X;

% Reaction: id = rxnY007
	reaction_rxnY007=global_par_kdYp27*x(36)*compartment_X;

% Reaction: id = rxnY008
	reaction_rxnY008=global_par_kdYp27*x(37)*compartment_X;

% Reaction: id = rxnY009
	reaction_rxnY009=global_par_kdYp27*x(26)*compartment_X;

% Reaction: id = rxnY010
	reaction_rxnY010=global_par_kdYp27*x(27)*compartment_X;

% Reaction: id = rxnY011
	reaction_rxnY011=global_par_kdYp27*x(28)*compartment_X;

% Reaction: id = rxnY012
	reaction_rxnY012=global_par_kdYp27*x(29)*compartment_X;

% Reaction: id = rxnY013
	reaction_rxnY013=global_par_kd1Yp27*x(30)*compartment_X;

% Reaction: id = rxnY014
	reaction_rxnY014=global_par_kdYp27*x(31)*compartment_X;

% Reaction: id = rxnY015
	reaction_rxnY015=global_par_ksYCyclinE*compartment_X;

% Reaction: id = rxnY016
	reaction_rxnY016=global_par_kdYCyclinE*x(40)*compartment_X;

% Reaction: id = rxnY017
	reaction_rxnY017=global_par_kdYCyclinE*x(17)*compartment_X;

% Reaction: id = rxnY018
	reaction_rxnY018=global_par_kdYCyclinE*x(27)*compartment_X;

% Reaction: id = rxnY019
	reaction_rxnY019=global_par_kdYCyclinE*x(20)*compartment_X;

% Reaction: id = rxnY020
	reaction_rxnY020=global_par_kdYCyclinE*x(30)*compartment_X;

% Reaction: id = rxnY021
	reaction_rxnY021=global_par_ksYCyclinA*compartment_X;

% Reaction: id = rxnY022
	reaction_rxnY022=global_par_kdYCyclinA*x(38)*compartment_X;

% Reaction: id = rxnY023
	reaction_rxnY023=global_par_kdYCyclinA*x(11)*compartment_X;

% Reaction: id = rxnY024
	reaction_rxnY024=global_par_kdYCyclinA*x(13)*compartment_X;

% Reaction: id = rxnY025
	reaction_rxnY025=global_par_kdYCyclinA*x(18)*compartment_X;

% Reaction: id = rxnY026
	reaction_rxnY026=global_par_kdYCyclinA*x(28)*compartment_X;

% Reaction: id = rxnY027
	reaction_rxnY027=global_par_kdYCyclinA*x(23)*compartment_X;

% Reaction: id = rxnY028
	reaction_rxnY028=global_par_kdYCyclinA*x(31)*compartment_X;

% Reaction: id = rxnY029
	reaction_rxnY029=global_par_ksYE2F*compartment_X;

% Reaction: id = rxnY030
	reaction_rxnY030=global_par_kd0YE2F*x(41)*compartment_X;

% Reaction: id = rxnY031
	reaction_rxnY031=global_par_kdYE2F*x(45)*compartment_X;

% Reaction: id = rxnY032
	reaction_rxnY032=global_par_kdYE2F*x(47)*compartment_X;

% Reaction: id = rxnY033
	reaction_rxnY033=global_par_kdYE2F*x(49)*compartment_X;

% Reaction: id = rxnY034
	reaction_rxnY034=global_par_ksYEmi1*compartment_X;

% Reaction: id = rxnY035
	reaction_rxnY035=global_par_kdYEmi1*x(42)*compartment_X;

% Reaction: id = rxnY036
	reaction_rxnY036=global_par_kdYEmi1*x(9)*compartment_X;

% Reaction: id = rxnY037
	reaction_rxnY037=global_par_kbYCyclinDYYCdk4*x(32)*x(39)*compartment_X;

% Reaction: id = rxnY038
	reaction_rxnY038=global_par_kuYCyclinDYYCdk4*x(33)*compartment_X;

% Reaction: id = rxnY039
	reaction_rxnY039=global_par_kbYCyclinDYYCdk4*x(36)*x(39)*compartment_X;

% Reaction: id = rxnY040
	reaction_rxnY040=global_par_kuYCyclinDYYCdk4*x(37)*compartment_X;

% Reaction: id = rxnY041
	reaction_rxnY041=global_par_kbYp27YYCdk4*x(32)*x(43)*compartment_X;

% Reaction: id = rxnY042
	reaction_rxnY042=global_par_kuYp27YYCdk4*x(36)*compartment_X;

% Reaction: id = rxnY043
	reaction_rxnY043=global_par_kbYp27YYCdk4*x(33)*x(43)*compartment_X;

% Reaction: id = rxnY044
	reaction_rxnY044=global_par_kuYp27YYCdk4*x(37)*compartment_X;

% Reaction: id = rxnY045
	reaction_rxnY045=global_par_kbYp27YYCdk2*x(16)*x(43)*compartment_X;

% Reaction: id = rxnY046
	reaction_rxnY046=global_par_kuYp27YYCdk2*x(26)*compartment_X;

% Reaction: id = rxnY047
	reaction_rxnY047=global_par_kbYp27YYCdk2*x(17)*x(43)*compartment_X;

% Reaction: id = rxnY048
	reaction_rxnY048=global_par_kuYp27YYCdk2*x(27)*compartment_X;

% Reaction: id = rxnY049
	reaction_rxnY049=global_par_kbYp27YYCdk2*x(18)*x(43)*compartment_X;

% Reaction: id = rxnY050
	reaction_rxnY050=global_par_kuYp27YYCdk2*x(28)*compartment_X;

% Reaction: id = rxnY051
	reaction_rxnY051=global_par_kbYp27YYCdk2*x(19)*x(43)*compartment_X;

% Reaction: id = rxnY052
	reaction_rxnY052=global_par_kuYp27YYCdk2*x(29)*compartment_X;

% Reaction: id = rxnY053
	reaction_rxnY053=global_par_kbYp27YYCdk2*x(20)*x(43)*compartment_X;

% Reaction: id = rxnY054
	reaction_rxnY054=global_par_kuYp27YYCdk2*x(30)*compartment_X;

% Reaction: id = rxnY055
	reaction_rxnY055=global_par_kbYp27YYCdk2*x(23)*x(43)*compartment_X;

% Reaction: id = rxnY056
	reaction_rxnY056=global_par_kuYp27YYCdk2*x(31)*compartment_X;

% Reaction: id = rxnY057
	reaction_rxnY057=global_par_kYact*x(16)*compartment_X;

% Reaction: id = rxnY058
	reaction_rxnY058=global_par_kYact*x(26)*compartment_X;

% Reaction: id = rxnY059
	reaction_rxnY059=global_par_kYact*x(17)*compartment_X;

% Reaction: id = rxnY060
	reaction_rxnY060=global_par_kYact*x(27)*compartment_X;

% Reaction: id = rxnY061
	reaction_rxnY061=global_par_kYact*x(18)*compartment_X;

% Reaction: id = rxnY062
	reaction_rxnY062=global_par_kYact*x(28)*compartment_X;

% Reaction: id = rxnY063
	reaction_rxnY063=global_par_kbYCyclinEYYCdk2*x(16)*x(40)*compartment_X;

% Reaction: id = rxnY064
	reaction_rxnY064=global_par_kuYCyclinEYYCdk2*x(17)*compartment_X;

% Reaction: id = rxnY065
	reaction_rxnY065=global_par_kbYCyclinEYYCdk2*x(26)*x(40)*compartment_X;

% Reaction: id = rxnY066
	reaction_rxnY066=global_par_kuYCyclinEYYCdk2*x(27)*compartment_X;

% Reaction: id = rxnY067
	reaction_rxnY067=global_par_kbYCyclinEYYCdk2*x(19)*x(40)*compartment_X;

% Reaction: id = rxnY068
	reaction_rxnY068=global_par_kuYCyclinEYYCdk2*x(20)*compartment_X;

% Reaction: id = rxnY069
	reaction_rxnY069=global_par_kbYCyclinEYYCdk2*x(29)*x(40)*compartment_X;

% Reaction: id = rxnY070
	reaction_rxnY070=global_par_kuYCyclinEYYCdk2*x(30)*compartment_X;

% Reaction: id = rxnY071
	reaction_rxnY071=global_par_kbYCyclinAYYCdk2*x(16)*x(38)*compartment_X;

% Reaction: id = rxnY072
	reaction_rxnY072=global_par_kuYCyclinAYYCdk2*x(18)*compartment_X;

% Reaction: id = rxnY073
	reaction_rxnY073=global_par_kbYCyclinAYYCdk2*x(26)*x(38)*compartment_X;

% Reaction: id = rxnY074
	reaction_rxnY074=compartment_X*global_par_kuYCyclinAYYCdk2*x(28);

% Reaction: id = rxnY075
	reaction_rxnY075=compartment_X*global_par_kbYCyclinAYYCdk2*x(19)*x(38);

% Reaction: id = rxnY076
	reaction_rxnY076=compartment_X*global_par_kuYCyclinAYYCdk2*x(23);

% Reaction: id = rxnY077
	reaction_rxnY077=compartment_X*global_par_kbYCyclinAYYCdk2*x(29)*x(38);

% Reaction: id = rxnY078
	reaction_rxnY078=compartment_X*global_par_kuYCyclinAYYCdk2*x(31);

% Reaction: id = rxnY079
	reaction_rxnY079=compartment_X*global_par_kYact*x(10);

% Reaction: id = rxnY080
	reaction_rxnY080=compartment_X*global_par_kYact*x(11);

% Reaction: id = rxnY081
	reaction_rxnY081=compartment_X*global_par_kbYCyclinAYYCdk1*x(10)*x(38);

% Reaction: id = rxnY082
	reaction_rxnY082=compartment_X*global_par_kuYCyclinAYYCdk1*x(11);

% Reaction: id = rxnY083
	reaction_rxnY083=compartment_X*global_par_kbYCyclinAYYCdk1*x(12)*x(38);

% Reaction: id = rxnY084
	reaction_rxnY084=compartment_X*global_par_kuYCyclinAYYCdk1*x(13);

% Reaction: id = rxnY085
	reaction_rxnY085=compartment_X*global_par_kbYD4YYpRb*x(44)*x(33);

% Reaction: id = rxnY086
	reaction_rxnY086=compartment_X*global_par_kuYD4YYpRb*x(34);

% Reaction: id = rxnY087
	reaction_rxnY087=compartment_X*global_par_kupYD4YYpRb*x(34);

% Reaction: id = rxnY088
	reaction_rxnY088=compartment_X*global_par_kbYD4YYpRb*x(45)*x(33);

% Reaction: id = rxnY089
	reaction_rxnY089=compartment_X*global_par_kuYD4YYpRb*x(35);

% Reaction: id = rxnY090
	reaction_rxnY090=compartment_X*global_par_kupYD4YYpRb*x(35);

% Reaction: id = rxnY091
	reaction_rxnY091=compartment_X*global_par_kbYE2YYpRb*x(46)*x(20);

% Reaction: id = rxnY092
	reaction_rxnY092=compartment_X*global_par_kuYE2YYpRb*x(21);

% Reaction: id = rxnY093
	reaction_rxnY093=compartment_X*global_par_kupYE2YYpRb*x(21);

% Reaction: id = rxnY094
	reaction_rxnY094=compartment_X*global_par_kbYE2YYpRb*x(47)*x(20);

% Reaction: id = rxnY095
	reaction_rxnY095=compartment_X*global_par_kuYE2YYpRb*x(22);

% Reaction: id = rxnY096
	reaction_rxnY096=compartment_X*global_par_kupYE2YYpRb*x(22);

% Reaction: id = rxnY097
	reaction_rxnY097=compartment_X*global_par_kbYA2YYpRb*x(46)*x(23);

% Reaction: id = rxnY098
	reaction_rxnY098=compartment_X*global_par_kuYA2YYpRb*x(24);

% Reaction: id = rxnY099
	reaction_rxnY099=compartment_X*global_par_kupYA2YYpRb*x(24);

% Reaction: id = rxnY100
	reaction_rxnY100=compartment_X*global_par_kbYA2YYpRb*x(47)*x(23);

% Reaction: id = rxnY101
	reaction_rxnY101=compartment_X*global_par_kuYA2YYpRb*x(25);

% Reaction: id = rxnY102
	reaction_rxnY102=compartment_X*global_par_kupYA2YYpRb*x(25);

% Reaction: id = rxnY103
	reaction_rxnY103=compartment_X*global_par_kbYA1YYpRb*x(46)*x(13);

% Reaction: id = rxnY104
	reaction_rxnY104=compartment_X*global_par_kuYA1YYpRb*x(14);

% Reaction: id = rxnY105
	reaction_rxnY105=compartment_X*global_par_kupYA1YYpRb*x(14);

% Reaction: id = rxnY106
	reaction_rxnY106=compartment_X*global_par_kbYA1YYpRb*x(46)*x(13);

% Reaction: id = rxnY107
	reaction_rxnY107=compartment_X*global_par_kuYA1YYpRb*x(15);

% Reaction: id = rxnY108
	reaction_rxnY108=compartment_X*global_par_kupYA1YYpRb*x(15);

% Reaction: id = rxnY109
	reaction_rxnY109=compartment_X*global_par_ktYpRbYYDephos*x(48);

% Reaction: id = rxnY110
	reaction_rxnY110=compartment_X*global_par_ktYpRbYYDephos*x(49);

% Reaction: id = rxnY111
	reaction_rxnY111=compartment_X*global_par_kbYE2FYYpRb*x(44)*x(41);

% Reaction: id = rxnY112
	reaction_rxnY112=compartment_X*global_par_kuYE2FYYpRb*x(45);

% Reaction: id = rxnY113
	reaction_rxnY113=compartment_X*global_par_kbYE2FYYpRb*x(46)*x(41);

% Reaction: id = rxnY114
	reaction_rxnY114=compartment_X*global_par_kuYE2FYYpRb*x(47);

% Reaction: id = rxnY115
	reaction_rxnY115=compartment_X*global_par_kuYE2FYYpRb*x(49);

% Reaction: id = rxnY116
	reaction_rxnY116=compartment_X*global_par_kbYEmi1YYAPCC*x(1)*x(42);

% Reaction: id = rxnY117
	reaction_rxnY117=compartment_X*global_par_kuYEmi1YYAPCC*x(9);

% Reaction: id = rxnY118
	reaction_rxnY118=compartment_X*global_par_kbYAPCCYYCyclinA*x(38)*x(1);

% Reaction: id = rxnY119
	reaction_rxnY119=compartment_X*global_par_kuYAPCCYYCyclinA*x(8);

% Reaction: id = rxnY120
	reaction_rxnY120=compartment_X*global_par_kudYAPCCYYCyclinA*x(8);

% Reaction: id = rxnY121
	reaction_rxnY121=compartment_X*global_par_kbYAPCCYYCyclinA*x(18)*x(1);

% Reaction: id = rxnY122
	reaction_rxnY122=compartment_X*global_par_kuYAPCCYYCyclinA*x(4);

% Reaction: id = rxnY123
	reaction_rxnY123=compartment_X*global_par_kudYAPCCYYCyclinA*x(4);

% Reaction: id = rxnY124
	reaction_rxnY124=compartment_X*global_par_kbYAPCCYYCyclinA*x(28)*x(1);

% Reaction: id = rxnY125
	reaction_rxnY125=compartment_X*global_par_kuYAPCCYYCyclinA*x(6);

% Reaction: id = rxnY126
	reaction_rxnY126=compartment_X*global_par_kudYAPCCYYCyclinA*x(6);

% Reaction: id = rxnY127
	reaction_rxnY127=compartment_X*global_par_kbYAPCCYYCyclinA*x(28)*x(1);

% Reaction: id = rxnY128
	reaction_rxnY128=compartment_X*global_par_kuYAPCCYYCyclinA*x(5);

% Reaction: id = rxnY129
	reaction_rxnY129=compartment_X*global_par_kudYAPCCYYCyclinA*x(5);

% Reaction: id = rxnY130
	reaction_rxnY130=compartment_X*global_par_kbYAPCCYYCyclinA*x(31)*x(1);

% Reaction: id = rxnY131
	reaction_rxnY131=compartment_X*global_par_kuYAPCCYYCyclinA*x(7);

% Reaction: id = rxnY132
	reaction_rxnY132=compartment_X*global_par_kudYAPCCYYCyclinA*x(7);

% Reaction: id = rxnY133
	reaction_rxnY133=compartment_X*global_par_kbYAPCCYYCyclinA*x(11)*x(1);

% Reaction: id = rxnY134
	reaction_rxnY134=compartment_X*global_par_kuYAPCCYYCyclinA*x(2);

% Reaction: id = rxnY135
	reaction_rxnY135=compartment_X*global_par_kudYAPCCYYCyclinA*x(2);

% Reaction: id = rxnY136
	reaction_rxnY136=compartment_X*global_par_kbYAPCCYYCyclinA*x(13)*x(1);

% Reaction: id = rxnY137
	reaction_rxnY137=compartment_X*global_par_kuYAPCCYYCyclinA*x(3);

% Reaction: id = rxnY138
	reaction_rxnY138=compartment_X*global_par_kudYAPCCYYCyclinA*x(3);

%Event: id=
	event_=time > 240.0637;

	if(event_) 
		global_par_kYact=global_par_k1Yact;
	end

	xdot=zeros(57,1);
	
% Species:   id = APCC, name = APCC, affected by kineticLaw
	xdot(1) = (1/(compartment_X))*(( 1.0 * reaction_rxnY036) + (-1.0 * reaction_rxnY116) + ( 1.0 * reaction_rxnY117) + (-1.0 * reaction_rxnY118) + ( 1.0 * reaction_rxnY119) + ( 1.0 * reaction_rxnY120) + (-1.0 * reaction_rxnY121) + ( 1.0 * reaction_rxnY122) + ( 1.0 * reaction_rxnY123) + (-1.0 * reaction_rxnY124) + ( 1.0 * reaction_rxnY125) + ( 1.0 * reaction_rxnY126) + (-1.0 * reaction_rxnY127) + ( 1.0 * reaction_rxnY128) + ( 1.0 * reaction_rxnY129) + (-1.0 * reaction_rxnY130) + ( 1.0 * reaction_rxnY131) + ( 1.0 * reaction_rxnY132) + (-1.0 * reaction_rxnY133) + (-1.0 * reaction_rxnY134) + ( 1.0 * reaction_rxnY135) + (-1.0 * reaction_rxnY136) + (-1.0 * reaction_rxnY137) + ( 1.0 * reaction_rxnY138));
	
% Species:   id = APCCYCdk1Y00YCdk1Y01YInt, name = APCCYCdk1Y00YCdk1Y01YInt, affected by kineticLaw
	xdot(2) = (1/(compartment_X))*(( 1.0 * reaction_rxnY133) + (-1.0 * reaction_rxnY134) + (-1.0 * reaction_rxnY135));
	
% Species:   id = APCCYCdk1Y10YCdk1Y11YInt, name = APCCYCdk1Y10YCdk1Y11YInt, affected by kineticLaw
	xdot(3) = (1/(compartment_X))*(( 1.0 * reaction_rxnY136) + (-1.0 * reaction_rxnY137) + (-1.0 * reaction_rxnY138));
	
% Species:   id = APCCYCdk2Y000YCdk2Y002YInt, name = APCCYCdk2Y000YCdk2Y002YInt, affected by kineticLaw
	xdot(4) = (1/(compartment_X))*(( 1.0 * reaction_rxnY121) + (-1.0 * reaction_rxnY122) + (-1.0 * reaction_rxnY123));
	
% Species:   id = APCCYCdk2Y010YCdk2Y012YInt, name = APCCYCdk2Y010YCdk2Y012YInt, affected by kineticLaw
	xdot(5) = (1/(compartment_X))*(( 1.0 * reaction_rxnY127) + (-1.0 * reaction_rxnY128) + (-1.0 * reaction_rxnY129));
	
% Species:   id = APCCYCdk2Y100YCdk2Y102YInt, name = APCCYCdk2Y100YCdk2Y102YInt, affected by kineticLaw
	xdot(6) = (1/(compartment_X))*(( 1.0 * reaction_rxnY124) + (-1.0 * reaction_rxnY125) + (-1.0 * reaction_rxnY126));
	
% Species:   id = APCCYCdk2Y110YCdk2Y112YInt, name = APCCYCdk2Y110YCdk2Y112YInt, affected by kineticLaw
	xdot(7) = (1/(compartment_X))*(( 1.0 * reaction_rxnY130) + (-1.0 * reaction_rxnY131) + (-1.0 * reaction_rxnY132));
	
% Species:   id = APCCYCyclinAYInt, name = APCCYCyclinAYInt, affected by kineticLaw
	xdot(8) = (1/(compartment_X))*(( 1.0 * reaction_rxnY118) + (-1.0 * reaction_rxnY119) + (-1.0 * reaction_rxnY120));
	
% Species:   id = APCCYEmi1, name = APCCYEmi1, affected by kineticLaw
	xdot(9) = (1/(compartment_X))*((-1.0 * reaction_rxnY036) + ( 1.0 * reaction_rxnY116) + (-1.0 * reaction_rxnY117));
	
% Species:   id = Cdk1Y00, name = Cdk1Y00, affected by kineticLaw
	xdot(10) = (1/(compartment_X))*(( 1.0 * reaction_rxnY023) + (-1.0 * reaction_rxnY079) + (-1.0 * reaction_rxnY081) + ( 1.0 * reaction_rxnY082) + ( 1.0 * reaction_rxnY135));
	
% Species:   id = Cdk1Y01, name = Cdk1Y01, affected by kineticLaw
	xdot(11) = (1/(compartment_X))*((-1.0 * reaction_rxnY023) + (-1.0 * reaction_rxnY080) + ( 1.0 * reaction_rxnY081) + (-1.0 * reaction_rxnY082) + (-1.0 * reaction_rxnY133) + ( 1.0 * reaction_rxnY134));
	
% Species:   id = Cdk1Y10, name = Cdk1Y10, affected by kineticLaw
	xdot(12) = (1/(compartment_X))*(( 1.0 * reaction_rxnY024) + ( 1.0 * reaction_rxnY079) + (-1.0 * reaction_rxnY083) + ( 1.0 * reaction_rxnY084) + ( 1.0 * reaction_rxnY138));
	
% Species:   id = Cdk1Y11, name = Cdk1Y11, affected by kineticLaw
	xdot(13) = (1/(compartment_X))*((-1.0 * reaction_rxnY024) + ( 1.0 * reaction_rxnY080) + ( 1.0 * reaction_rxnY083) + (-1.0 * reaction_rxnY084) + (-1.0 * reaction_rxnY103) + ( 1.0 * reaction_rxnY104) + ( 1.0 * reaction_rxnY105) + (-1.0 * reaction_rxnY106) + ( 1.0 * reaction_rxnY107) + ( 1.0 * reaction_rxnY108) + (-1.0 * reaction_rxnY136) + ( 1.0 * reaction_rxnY137));
	
% Species:   id = Cdk1Y11YpRbY10YpRbY20YInt, name = Cdk1Y11YpRbY10YpRbY20YInt, affected by kineticLaw
	xdot(14) = (1/(compartment_X))*(( 1.0 * reaction_rxnY103) + (-1.0 * reaction_rxnY104) + (-1.0 * reaction_rxnY105));
	
% Species:   id = Cdk1Y11YpRbY11YpRbY21YInt, name = Cdk1Y11YpRbY11YpRbY21YInt, affected by kineticLaw
	xdot(15) = (1/(compartment_X))*(( 1.0 * reaction_rxnY106) + (-1.0 * reaction_rxnY107) + (-1.0 * reaction_rxnY108));
	
% Species:   id = Cdk2Y000, name = Cdk2Y000, affected by kineticLaw
	xdot(16) = (1/(compartment_X))*(( 1.0 * reaction_rxnY009) + ( 1.0 * reaction_rxnY017) + ( 1.0 * reaction_rxnY025) + (-1.0 * reaction_rxnY045) + ( 1.0 * reaction_rxnY046) + (-1.0 * reaction_rxnY057) + (-1.0 * reaction_rxnY063) + ( 1.0 * reaction_rxnY064) + (-1.0 * reaction_rxnY071) + ( 1.0 * reaction_rxnY072) + ( 1.0 * reaction_rxnY123));
	
% Species:   id = Cdk2Y001, name = Cdk2Y001, affected by kineticLaw
	xdot(17) = (1/(compartment_X))*(( 1.0 * reaction_rxnY010) + (-1.0 * reaction_rxnY017) + (-1.0 * reaction_rxnY047) + ( 1.0 * reaction_rxnY048) + (-1.0 * reaction_rxnY059) + ( 1.0 * reaction_rxnY063) + (-1.0 * reaction_rxnY064));
	
% Species:   id = Cdk2Y002, name = Cdk2Y002, affected by kineticLaw
	xdot(18) = (1/(compartment_X))*(( 1.0 * reaction_rxnY011) + (-1.0 * reaction_rxnY025) + (-1.0 * reaction_rxnY049) + ( 1.0 * reaction_rxnY050) + (-1.0 * reaction_rxnY061) + ( 1.0 * reaction_rxnY071) + (-1.0 * reaction_rxnY072) + (-1.0 * reaction_rxnY121) + ( 1.0 * reaction_rxnY122));
	
% Species:   id = Cdk2Y010, name = Cdk2Y010, affected by kineticLaw
	xdot(19) = (1/(compartment_X))*(( 1.0 * reaction_rxnY012) + ( 1.0 * reaction_rxnY019) + ( 1.0 * reaction_rxnY027) + (-1.0 * reaction_rxnY051) + ( 1.0 * reaction_rxnY052) + ( 1.0 * reaction_rxnY057) + (-1.0 * reaction_rxnY067) + ( 1.0 * reaction_rxnY068) + (-1.0 * reaction_rxnY075) + ( 1.0 * reaction_rxnY076) + ( 1.0 * reaction_rxnY129));
	
% Species:   id = Cdk2Y011, name = Cdk2Y011, affected by kineticLaw
	xdot(20) = (1/(compartment_X))*(( 1.0 * reaction_rxnY013) + (-1.0 * reaction_rxnY019) + (-1.0 * reaction_rxnY053) + ( 1.0 * reaction_rxnY054) + ( 1.0 * reaction_rxnY059) + ( 1.0 * reaction_rxnY067) + (-1.0 * reaction_rxnY068) + (-1.0 * reaction_rxnY091) + ( 1.0 * reaction_rxnY092) + ( 1.0 * reaction_rxnY093) + (-1.0 * reaction_rxnY094) + ( 1.0 * reaction_rxnY095) + ( 1.0 * reaction_rxnY096));
	
% Species:   id = Cdk2Y011YpRbY10YpRbY20YInt, name = Cdk2Y011YpRbY10YpRbY20YInt, affected by kineticLaw
	xdot(21) = (1/(compartment_X))*(( 1.0 * reaction_rxnY091) + (-1.0 * reaction_rxnY092) + (-1.0 * reaction_rxnY093));
	
% Species:   id = Cdk2Y011YpRbY11YpRbY21YInt, name = Cdk2Y011YpRbY11YpRbY21YInt, affected by kineticLaw
	xdot(22) = (1/(compartment_X))*(( 1.0 * reaction_rxnY094) + (-1.0 * reaction_rxnY095) + (-1.0 * reaction_rxnY096));
	
% Species:   id = Cdk2Y012, name = Cdk2Y012, affected by kineticLaw
	xdot(23) = (1/(compartment_X))*(( 1.0 * reaction_rxnY014) + (-1.0 * reaction_rxnY027) + (-1.0 * reaction_rxnY055) + ( 1.0 * reaction_rxnY056) + ( 1.0 * reaction_rxnY061) + ( 1.0 * reaction_rxnY075) + (-1.0 * reaction_rxnY076) + (-1.0 * reaction_rxnY097) + ( 1.0 * reaction_rxnY098) + ( 1.0 * reaction_rxnY099) + (-1.0 * reaction_rxnY100) + ( 1.0 * reaction_rxnY101) + ( 1.0 * reaction_rxnY102) + (-1.0 * reaction_rxnY127) + ( 1.0 * reaction_rxnY128));
	
% Species:   id = Cdk2Y012YpRbY10YpRbY20YInt, name = Cdk2Y012YpRbY10YpRbY20YInt, affected by kineticLaw
	xdot(24) = (1/(compartment_X))*(( 1.0 * reaction_rxnY097) + (-1.0 * reaction_rxnY098) + (-1.0 * reaction_rxnY099));
	
% Species:   id = Cdk2Y012YpRbY11YpRbY21YInt, name = Cdk2Y012YpRbY11YpRbY21YInt, affected by kineticLaw
	xdot(25) = (1/(compartment_X))*(( 1.0 * reaction_rxnY100) + (-1.0 * reaction_rxnY101) + (-1.0 * reaction_rxnY102));
	
% Species:   id = Cdk2Y100, name = Cdk2Y100, affected by kineticLaw
	xdot(26) = (1/(compartment_X))*((-1.0 * reaction_rxnY009) + ( 1.0 * reaction_rxnY018) + ( 1.0 * reaction_rxnY026) + ( 1.0 * reaction_rxnY045) + (-1.0 * reaction_rxnY046) + (-1.0 * reaction_rxnY058) + (-1.0 * reaction_rxnY065) + ( 1.0 * reaction_rxnY066) + (-1.0 * reaction_rxnY073) + ( 1.0 * reaction_rxnY074) + ( 1.0 * reaction_rxnY126));
	
% Species:   id = Cdk2Y101, name = Cdk2Y101, affected by kineticLaw
	xdot(27) = (1/(compartment_X))*((-1.0 * reaction_rxnY010) + (-1.0 * reaction_rxnY018) + ( 1.0 * reaction_rxnY047) + (-1.0 * reaction_rxnY048) + (-1.0 * reaction_rxnY060) + ( 1.0 * reaction_rxnY065) + (-1.0 * reaction_rxnY066));
	
% Species:   id = Cdk2Y102, name = Cdk2Y102, affected by kineticLaw
	xdot(28) = (1/(compartment_X))*((-1.0 * reaction_rxnY011) + (-1.0 * reaction_rxnY026) + ( 1.0 * reaction_rxnY049) + (-1.0 * reaction_rxnY050) + (-1.0 * reaction_rxnY062) + ( 1.0 * reaction_rxnY073) + (-1.0 * reaction_rxnY074) + (-1.0 * reaction_rxnY124) + ( 1.0 * reaction_rxnY125));
	
% Species:   id = Cdk2Y110, name = Cdk2Y110, affected by kineticLaw
	xdot(29) = (1/(compartment_X))*((-1.0 * reaction_rxnY012) + ( 1.0 * reaction_rxnY020) + ( 1.0 * reaction_rxnY028) + ( 1.0 * reaction_rxnY051) + (-1.0 * reaction_rxnY052) + ( 1.0 * reaction_rxnY058) + (-1.0 * reaction_rxnY069) + ( 1.0 * reaction_rxnY070) + (-1.0 * reaction_rxnY077) + ( 1.0 * reaction_rxnY078) + ( 1.0 * reaction_rxnY132));
	
% Species:   id = Cdk2Y111, name = Cdk2Y111, affected by kineticLaw
	xdot(30) = (1/(compartment_X))*((-1.0 * reaction_rxnY013) + (-1.0 * reaction_rxnY020) + ( 1.0 * reaction_rxnY053) + (-1.0 * reaction_rxnY054) + ( 1.0 * reaction_rxnY060) + ( 1.0 * reaction_rxnY069) + (-1.0 * reaction_rxnY070));
	
% Species:   id = Cdk2Y112, name = Cdk2Y112, affected by kineticLaw
	xdot(31) = (1/(compartment_X))*((-1.0 * reaction_rxnY014) + (-1.0 * reaction_rxnY028) + ( 1.0 * reaction_rxnY055) + (-1.0 * reaction_rxnY056) + ( 1.0 * reaction_rxnY062) + ( 1.0 * reaction_rxnY077) + (-1.0 * reaction_rxnY078) + (-1.0 * reaction_rxnY130) + ( 1.0 * reaction_rxnY131));
	
% Species:   id = Cdk4Y00, name = Cdk4Y00, affected by kineticLaw
	xdot(32) = (1/(compartment_X))*(( 1.0 * reaction_rxnY003) + ( 1.0 * reaction_rxnY007) + (-1.0 * reaction_rxnY037) + ( 1.0 * reaction_rxnY038) + (-1.0 * reaction_rxnY041) + ( 1.0 * reaction_rxnY042));
	
% Species:   id = Cdk4Y01, name = Cdk4Y01, affected by kineticLaw
	xdot(33) = (1/(compartment_X))*((-1.0 * reaction_rxnY003) + ( 1.0 * reaction_rxnY008) + ( 1.0 * reaction_rxnY037) + (-1.0 * reaction_rxnY038) + (-1.0 * reaction_rxnY043) + ( 1.0 * reaction_rxnY044) + (-1.0 * reaction_rxnY085) + ( 1.0 * reaction_rxnY086) + ( 1.0 * reaction_rxnY087) + (-1.0 * reaction_rxnY088) + ( 1.0 * reaction_rxnY089) + ( 1.0 * reaction_rxnY090));
	
% Species:   id = Cdk4Y01YpRbY00YpRbY10YInt, name = Cdk4Y01YpRbY00YpRbY10YInt, affected by kineticLaw
	xdot(34) = (1/(compartment_X))*(( 1.0 * reaction_rxnY085) + (-1.0 * reaction_rxnY086) + (-1.0 * reaction_rxnY087));
	
% Species:   id = Cdk4Y01YpRbY01YpRbY11YInt, name = Cdk4Y01YpRbY01YpRbY11YInt, affected by kineticLaw
	xdot(35) = (1/(compartment_X))*(( 1.0 * reaction_rxnY088) + (-1.0 * reaction_rxnY089) + (-1.0 * reaction_rxnY090));
	
% Species:   id = Cdk4Y10, name = Cdk4Y10, affected by kineticLaw
	xdot(36) = (1/(compartment_X))*(( 1.0 * reaction_rxnY004) + (-1.0 * reaction_rxnY007) + (-1.0 * reaction_rxnY039) + ( 1.0 * reaction_rxnY040) + ( 1.0 * reaction_rxnY041) + (-1.0 * reaction_rxnY042));
	
% Species:   id = Cdk4Y11, name = Cdk4Y11, affected by kineticLaw
	xdot(37) = (1/(compartment_X))*((-1.0 * reaction_rxnY004) + (-1.0 * reaction_rxnY008) + ( 1.0 * reaction_rxnY039) + (-1.0 * reaction_rxnY040) + ( 1.0 * reaction_rxnY043) + (-1.0 * reaction_rxnY044));
	
% Species:   id = CyclinA, name = CyclinA, affected by kineticLaw
	xdot(38) = (1/(compartment_X))*(( 1.0 * reaction_rxnY021) + (-1.0 * reaction_rxnY022) + (-1.0 * reaction_rxnY071) + ( 1.0 * reaction_rxnY072) + (-1.0 * reaction_rxnY073) + ( 1.0 * reaction_rxnY074) + (-1.0 * reaction_rxnY075) + ( 1.0 * reaction_rxnY076) + (-1.0 * reaction_rxnY077) + ( 1.0 * reaction_rxnY078) + (-1.0 * reaction_rxnY081) + ( 1.0 * reaction_rxnY082) + (-1.0 * reaction_rxnY083) + ( 1.0 * reaction_rxnY084) + (-1.0 * reaction_rxnY118) + ( 1.0 * reaction_rxnY119));
	
% Species:   id = CyclinD, name = CyclinD, affected by kineticLaw
	xdot(39) = (1/(compartment_X))*(( 1.0 * reaction_rxnY001) + (-1.0 * reaction_rxnY002) + (-1.0 * reaction_rxnY037) + ( 1.0 * reaction_rxnY038) + (-1.0 * reaction_rxnY039) + ( 1.0 * reaction_rxnY040));
	
% Species:   id = CyclinE, name = CyclinE, affected by kineticLaw
	xdot(40) = (1/(compartment_X))*(( 1.0 * reaction_rxnY015) + (-1.0 * reaction_rxnY016) + (-1.0 * reaction_rxnY063) + ( 1.0 * reaction_rxnY064) + (-1.0 * reaction_rxnY065) + ( 1.0 * reaction_rxnY066) + (-1.0 * reaction_rxnY067) + ( 1.0 * reaction_rxnY068) + (-1.0 * reaction_rxnY069) + ( 1.0 * reaction_rxnY070));
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(41) = (1/(compartment_X))*(( 1.0 * reaction_rxnY029) + (-1.0 * reaction_rxnY030) + (-1.0 * reaction_rxnY111) + ( 1.0 * reaction_rxnY112) + (-1.0 * reaction_rxnY113) + ( 1.0 * reaction_rxnY114) + ( 1.0 * reaction_rxnY115));
	
% Species:   id = Emi1, name = Emi1, affected by kineticLaw
	xdot(42) = (1/(compartment_X))*(( 1.0 * reaction_rxnY034) + (-1.0 * reaction_rxnY035) + (-1.0 * reaction_rxnY116) + ( 1.0 * reaction_rxnY117));
	
% Species:   id = p27, name = p27, affected by kineticLaw
	xdot(43) = (1/(compartment_X))*(( 1.0 * reaction_rxnY005) + (-1.0 * reaction_rxnY006) + (-1.0 * reaction_rxnY041) + ( 1.0 * reaction_rxnY042) + (-1.0 * reaction_rxnY043) + ( 1.0 * reaction_rxnY044) + (-1.0 * reaction_rxnY045) + ( 1.0 * reaction_rxnY046) + (-1.0 * reaction_rxnY047) + ( 1.0 * reaction_rxnY048) + (-1.0 * reaction_rxnY049) + ( 1.0 * reaction_rxnY050) + (-1.0 * reaction_rxnY051) + ( 1.0 * reaction_rxnY052) + (-1.0 * reaction_rxnY053) + ( 1.0 * reaction_rxnY054) + (-1.0 * reaction_rxnY055) + ( 1.0 * reaction_rxnY056));
	
% Species:   id = pRbY00, name = pRbY00, affected by kineticLaw
	xdot(44) = (1/(compartment_X))*(( 1.0 * reaction_rxnY031) + (-1.0 * reaction_rxnY085) + ( 1.0 * reaction_rxnY086) + ( 1.0 * reaction_rxnY109) + (-1.0 * reaction_rxnY111) + ( 1.0 * reaction_rxnY112));
	
% Species:   id = pRbY01, name = pRbY01, affected by kineticLaw
	xdot(45) = (1/(compartment_X))*((-1.0 * reaction_rxnY031) + (-1.0 * reaction_rxnY088) + ( 1.0 * reaction_rxnY089) + ( 1.0 * reaction_rxnY110) + ( 1.0 * reaction_rxnY111) + (-1.0 * reaction_rxnY112));
	
% Species:   id = pRbY10, name = pRbY10, affected by kineticLaw
	xdot(46) = (1/(compartment_X))*(( 1.0 * reaction_rxnY032) + ( 1.0 * reaction_rxnY087) + (-1.0 * reaction_rxnY091) + ( 1.0 * reaction_rxnY092) + (-1.0 * reaction_rxnY097) + ( 1.0 * reaction_rxnY098) + (-1.0 * reaction_rxnY103) + ( 1.0 * reaction_rxnY104) + (-1.0 * reaction_rxnY113) + ( 1.0 * reaction_rxnY114));
	
% Species:   id = pRbY11, name = pRbY11, affected by kineticLaw
	xdot(47) = (1/(compartment_X))*((-1.0 * reaction_rxnY032) + ( 1.0 * reaction_rxnY090) + (-1.0 * reaction_rxnY094) + ( 1.0 * reaction_rxnY095) + (-1.0 * reaction_rxnY100) + ( 1.0 * reaction_rxnY101) + (-1.0 * reaction_rxnY106) + ( 1.0 * reaction_rxnY107) + ( 1.0 * reaction_rxnY113) + (-1.0 * reaction_rxnY114));
	
% Species:   id = pRbY20, name = pRbY20, affected by kineticLaw
	xdot(48) = (1/(compartment_X))*(( 1.0 * reaction_rxnY033) + ( 1.0 * reaction_rxnY093) + ( 1.0 * reaction_rxnY099) + ( 1.0 * reaction_rxnY105) + (-1.0 * reaction_rxnY109) + ( 1.0 * reaction_rxnY115));
	
% Species:   id = pRbY21, name = pRbY21, affected by kineticLaw
	xdot(49) = (1/(compartment_X))*((-1.0 * reaction_rxnY033) + ( 1.0 * reaction_rxnY096) + ( 1.0 * reaction_rxnY102) + ( 1.0 * reaction_rxnY108) + (-1.0 * reaction_rxnY110) + (-1.0 * reaction_rxnY115));
	
% Species:   id = totalYCyclinYD, name = totalYCyclinYD, defined in a rule 	xdot(50) = x(50);
	
% Species:   id = totalYCyclinYE, name = totalYCyclinYE, defined in a rule 	xdot(51) = x(51);
	
% Species:   id = totalYCyclinYA, name = totalYCyclinYA, defined in a rule 	xdot(52) = x(52);
	
% Species:   id = totalYp27, name = totalYp27, defined in a rule 	xdot(53) = x(53);
	
% Species:   id = hypophosphorylatedYpRb, name = hypophosphorylatedYpRb, defined in a rule 	xdot(54) = x(54);
	
% Species:   id = hyperphosphorylatedYpRb, name = hyperphosphorylatedYpRb, defined in a rule 	xdot(55) = x(55);
	
% Species:   id = totalYEmi1, name = totalYEmi1, defined in a rule 	xdot(56) = x(56);
	
% Species:   id = activeYCdk2, name = activeYCdk2, defined in a rule 	xdot(57) = x(57);
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


