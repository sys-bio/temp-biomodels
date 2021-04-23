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
% Model name = Hatakeyama2003_MAPK
%
% is http://identifiers.org/biomodels.db/MODEL8256371999
% is http://identifiers.org/biomodels.db/BIOMD0000000146
% isDescribedBy http://identifiers.org/pubmed/12691603
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000048
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000010
% isDerivedFrom http://identifiers.org/pubmed/11772030
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1000.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 10.0;
	x0(9) = 330.0;
	x0(10) = 120.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 10.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 80.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 100.0;
	x0(26) = 0.0;
	x0(27) = 120.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 1000.0;
	x0(32) = 800.0;
	x0(33) = 0.0;


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

% Compartment: id = compartment_0000001, name = cell, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0012;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.01;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=20.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=60.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=2040.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=40.8;
% Parameter:   id =  V10, name = V10
	global_par_V10=0.0154;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.222;
% Parameter:   id =  V12, name = V12
	global_par_V12=0.289;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.53;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.00673;
% Parameter:   id =  k15, name = k15
	global_par_k15=3.5;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.058;
% Parameter:   id =  k17, name = k17
	global_par_k17=2.9;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.3;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.058;
% Parameter:   id =  k19, name = k19
	global_par_k19=9.5;
% Parameter:   id =  k21, name = k21
	global_par_k21=16.0;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.27;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.1;
% Parameter:   id =  k24, name = k24
	global_par_k24=9.85;
% Parameter:   id =  k25, name = k25
	global_par_k25=45.8;
% Parameter:   id =  k27, name = k27
	global_par_k27=16.9;
% Parameter:   id =  V26, name = V26
	global_par_V26=2620.0;
% Parameter:   id =  V28, name = V28
	global_par_V28=17000.0;
% Parameter:   id =  k29, name = k29
	global_par_k29=507.0;
% Parameter:   id =  V30, name = V30
	global_par_V30=20000.0;
% Parameter:   id =  k31, name = k31
	global_par_k31=0.107;
% Parameter:   id =  V32, name = V32
	global_par_V32=20000.0;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.211;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.001;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=7.6E-4;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.1;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=0.01;
% Parameter:   id =  K4, name = K4
	global_par_K4=50.0;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=1.0;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=5.0;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=546.0;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=15700.0;
% Parameter:   id =  k_9, name = k_9
	global_par_k_9=0.0;
% Parameter:   id =  K10, name = K10
	global_par_K10=340.0;
% Parameter:   id =  K11, name = K11
	global_par_K11=0.181;
% Parameter:   id =  K12, name = K12
	global_par_K12=0.0571;
% Parameter:   id =  K13, name = K13
	global_par_K13=11.7;
% Parameter:   id =  K14, name = K14
	global_par_K14=8.07;
% Parameter:   id =  K15, name = K15
	global_par_K15=317.0;
% Parameter:   id =  K18, name = K18
	global_par_K18=60.0;
% Parameter:   id =  K19, name = K19
	global_par_K19=146000.0;
% Parameter:   id =  K20, name = K20
	global_par_K20=160.0;
% Parameter:   id =  K21, name = K21
	global_par_K21=146000.0;
% Parameter:   id =  K22, name = K22
	global_par_K22=60.0;
% Parameter:   id =  k_23, name = k_23
	global_par_k_23=2.0;
% Parameter:   id =  k_24, name = k_24
	global_par_k_24=0.0985;
% Parameter:   id =  k_25, name = k_25
	global_par_k_25=0.047;
% Parameter:   id =  K26, name = K26
	global_par_K26=3680.0;
% Parameter:   id =  K27, name = K27
	global_par_K27=39.1;
% Parameter:   id =  K28, name = K28
	global_par_K28=9.02;
% Parameter:   id =  K30, name = K30
	global_par_K30=80000.0;
% Parameter:   id =  K31, name = K31
	global_par_K31=4.35;
% Parameter:   id =  K32, name = K32
	global_par_K32=80000.0;
% Parameter:   id =  K33, name = K33
	global_par_K33=12.0;
% Parameter:   id =  k_34, name = k_34
	global_par_k_34=0.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=62.5;
% Parameter:   id =  K17, name = K17
	global_par_K17=317.0;
% Parameter:   id =  K16, name = K16
	global_par_K16=2200.0;
% Parameter:   id =  k_29, name = k_29
	global_par_k_29=234.0;
% Parameter:   id =  RP_percent, name = RP_percent
% Parameter:   id =  AktPP_percent, name = AktPP_percent
% Parameter:   id =  MEKPP_percent, name = MEKPP_percent
% Parameter:   id =  ERKPP_percent, name = ERKPP_percent
% Parameter:   id =  Rafstar_percent, name = Rafstar_percent
% Parameter:   id =  ShP_percent, name = ShP_percent
% Parameter:   id =  PI3Kstar_percent, name = PI3Kstar_percent
% assignmentRule: variable = RP_percent
	global_par_RP_percent=(x(17)+x(20)+x(21)+x(22)+x(23)+x(24))*200/80;
% assignmentRule: variable = ERKPP_percent
	global_par_ERKPP_percent=x(7)*100/1000;
% assignmentRule: variable = AktPP_percent
	global_par_AktPP_percent=x(4)*100/10;
% assignmentRule: variable = MEKPP_percent
	global_par_MEKPP_percent=x(12)*100/120;
% assignmentRule: variable = ShP_percent
	global_par_ShP_percent=x(30)*100/1000;
% assignmentRule: variable = PI3Kstar_percent
	global_par_PI3Kstar_percent=x(14)*100/10;
% assignmentRule: variable = Rafstar_percent
	global_par_Rafstar_percent=x(26)*100/100;

% Reaction: id = reaction_0000001
	reaction_reaction_0000001=compartment_compartment_0000001*(global_par_k1*x(16)*x(9)-global_par_k_1*x(18));

% Reaction: id = reaction_0000002
	reaction_reaction_0000002=compartment_compartment_0000001*(global_par_k2*x(18)^2-global_par_k_2*x(19));

% Reaction: id = reaction_0000003
	reaction_reaction_0000003=compartment_compartment_0000001*(global_par_k3*x(19)-global_par_k_3*x(17));

% Reaction: id = reaction_0000004
	reaction_reaction_0000004=compartment_compartment_0000001*global_par_V4*x(17)/(global_par_K4+x(17));

% Reaction: id = reaction_0000005
	reaction_reaction_0000005=compartment_compartment_0000001*(global_par_k5*x(17)*x(31)-global_par_k_5*x(24));

% Reaction: id = reaction_0000006
	reaction_reaction_0000006=compartment_compartment_0000001*(global_par_k6*x(24)-global_par_k_6*x(23));

% Reaction: id = reaction_0000007
	reaction_reaction_0000007=compartment_compartment_0000001*(global_par_k7*x(23)*x(8)-global_par_k_7*x(22));

% Reaction: id = reaction_0000008
	reaction_reaction_0000008=compartment_compartment_0000001*(global_par_k8*x(22)-global_par_k_8*x(29)*x(17));

% Reaction: id = reaction_0000009
	reaction_reaction_0000009=compartment_compartment_0000001*(global_par_k9*x(29)-global_par_k_9*x(8)*x(30));

% Reaction: id = reaction_0000010
	reaction_reaction_0000010=compartment_compartment_0000001*global_par_V10*x(30)/(global_par_K10+x(30));

% Reaction: id = reaction_0000011
	reaction_reaction_0000011=compartment_compartment_0000001*global_par_k11*x(29)*x(27)/(global_par_K11+x(27));

% Reaction: id = reaction_0000012
	reaction_reaction_0000012=compartment_compartment_0000001*global_par_V12*x(28)/(global_par_K12+x(28));

% Reaction: id = reaction_0000013
	reaction_reaction_0000013=compartment_compartment_0000001*global_par_k13*x(28)*x(25)/(global_par_K13+x(25));

% Reaction: id = reaction_0000014
	reaction_reaction_0000014=compartment_compartment_0000001*global_par_k14*(x(4)+const_species_E)*x(26)/(global_par_K14+x(26));

% Reaction: id = reaction_0000015
	reaction_reaction_0000015=compartment_compartment_0000001*global_par_k15*x(26)*x(10)/(global_par_K15*(1+x(11)/global_par_K17)+x(10));

% Reaction: id = reaction_0000016
	reaction_reaction_0000016=compartment_compartment_0000001*global_par_k16*const_species_PP2A*x(11)/(global_par_K16*(1+x(12)/global_par_K18+x(3)/global_par_K31+x(4)/global_par_K33)+x(11));

% Reaction: id = reaction_0000017
	reaction_reaction_0000017=compartment_compartment_0000001*global_par_k17*x(26)*x(11)/(global_par_K17*(1+x(10)/global_par_K15)+x(11));

% Reaction: id = reaction_0000018
	reaction_reaction_0000018=compartment_compartment_0000001*global_par_k18*const_species_PP2A*x(12)/(global_par_K18*(1+x(11)/global_par_K16+x(4)/global_par_K31+x(4)/global_par_K33)+x(12));

% Reaction: id = reaction_0000019
	reaction_reaction_0000019=compartment_compartment_0000001*global_par_k19*x(12)*x(5)/(global_par_K19*(1+x(6)/global_par_K21)+x(5));

% Reaction: id = reaction_0000020
	reaction_reaction_0000020=compartment_compartment_0000001*global_par_k20*const_species_MKP3*x(6)/(global_par_K20*(1+x(7)/global_par_K22)+x(6));

% Reaction: id = reaction_0000021
	reaction_reaction_0000021=compartment_compartment_0000001*global_par_k21*x(12)*x(6)/(global_par_K21*(1+x(5)/global_par_K19)+x(6));

% Reaction: id = reaction_0000022
	reaction_reaction_0000022=compartment_compartment_0000001*global_par_k22*const_species_MKP3*x(7)/(global_par_K22*(1+x(6)/global_par_K20)+x(7));

% Reaction: id = reaction_0000023
	reaction_reaction_0000023=compartment_compartment_0000001*(global_par_k23*x(17)*x(13)-global_par_k_23*x(20));

% Reaction: id = reaction_0000024
	reaction_reaction_0000024=compartment_compartment_0000001*(global_par_k24*x(20)-global_par_k_24*x(21));

% Reaction: id = reaction_0000025
	reaction_reaction_0000025=compartment_compartment_0000001*(global_par_k25*x(21)-global_par_k_25*x(17)*x(14));

% Reaction: id = reaction_0000026
	reaction_reaction_0000026=compartment_compartment_0000001*global_par_V26*x(14)/(global_par_K26+x(14));

% Reaction: id = reaction_0000029
	reaction_reaction_0000029=compartment_compartment_0000001*(global_par_k29*x(15)*x(1)-global_par_k_29*x(2));

% Reaction: id = reaction_0000028
	reaction_reaction_0000028=compartment_compartment_0000001*global_par_V28*x(15)/(global_par_K28+x(15));

% Reaction: id = reaction_0000027
	reaction_reaction_0000027=compartment_compartment_0000001*global_par_k27*x(14)*x(32)/(global_par_K27+x(32));

% Reaction: id = reaction_0000030
	reaction_reaction_0000030=compartment_compartment_0000001*global_par_V30*x(2)/(global_par_K30*(1+x(3)/global_par_K32)+x(2));

% Reaction: id = reaction_0000031
	reaction_reaction_0000031=compartment_compartment_0000001*global_par_k31*const_species_PP2A*x(3)/(global_par_K31*(1+x(11)/global_par_K16+x(12)/global_par_K18+x(4)/global_par_K33)+x(3));

% Reaction: id = reaction_0000032
	reaction_reaction_0000032=compartment_compartment_0000001*global_par_V32*x(3)/(global_par_K32*(1+x(2)/global_par_K30)+x(3));

% Reaction: id = reaction_0000033
	reaction_reaction_0000033=compartment_compartment_0000001*global_par_k33*const_species_PP2A*x(4)/(global_par_K33*(1+x(11)/global_par_K16+x(12)/global_par_K18+x(3)/global_par_K31)+x(4));

% Reaction: id = reaction_0000034
	reaction_reaction_0000034=compartment_compartment_0000001*(global_par_k34*x(17)-global_par_k_34*x(33));

% Species:   id = E, name = E, constant	const_species_E=7.0;

% Species:   id = MKP3, name = MKP3, constant	const_species_MKP3=2.4;

% Species:   id = PP2A, name = PP2A, constant	const_species_PP2A=11.4;

	xdot=zeros(33,1);
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000029));
	
% Species:   id = AktPIP3, name = AktPIP3, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000029) + (-1.0 * reaction_reaction_0000030) + ( 1.0 * reaction_reaction_0000031));
	
% Species:   id = AktPIP, name = AktPIP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000030) + (-1.0 * reaction_reaction_0000031) + (-1.0 * reaction_reaction_0000032) + ( 1.0 * reaction_reaction_0000033));
	
% Species:   id = AktPIPP, name = AktPIPP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000032) + (-1.0 * reaction_reaction_0000033));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000019) + ( 1.0 * reaction_reaction_0000020));
	
% Species:   id = ERKP, name = ERKP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000019) + (-1.0 * reaction_reaction_0000020) + (-1.0 * reaction_reaction_0000021) + ( 1.0 * reaction_reaction_0000022));
	
% Species:   id = ERKPP, name = ERKPP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000021) + (-1.0 * reaction_reaction_0000022));
	
% Species:   id = GS, name = GS, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000007) + ( 1.0 * reaction_reaction_0000009));
	
% Species:   id = HRG, name = HRG, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000001));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000015) + ( 1.0 * reaction_reaction_0000016));
	
% Species:   id = MEKP, name = MEKP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000015) + (-1.0 * reaction_reaction_0000016) + (-1.0 * reaction_reaction_0000017) + ( 1.0 * reaction_reaction_0000018));
	
% Species:   id = MEKPP, name = MEKPP, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000017) + (-1.0 * reaction_reaction_0000018));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000023) + ( 1.0 * reaction_reaction_0000026));
	
% Species:   id = PI3Kstar, name = PI3Kstar, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000025) + (-1.0 * reaction_reaction_0000026));
	
% Species:   id = PIP3, name = PIP3, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000029) + (-1.0 * reaction_reaction_0000028) + ( 1.0 * reaction_reaction_0000027));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000001));
	
% Species:   id = RP, name = RP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000005) + ( 1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000023) + ( 1.0 * reaction_reaction_0000025) + (-1.0 * reaction_reaction_0000034));
	
% Species:   id = RHRG, name = RHRG, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000001) + (-2.0 * reaction_reaction_0000002));
	
% Species:   id = RHRG2, name = RHRG2, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + ( 1.0 * reaction_reaction_0000004));
	
% Species:   id = RPI3K, name = RPI3K, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000023) + (-1.0 * reaction_reaction_0000024));
	
% Species:   id = RPI3Kstar, name = RPI3Kstar, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000024) + (-1.0 * reaction_reaction_0000025));
	
% Species:   id = RShGS, name = RShGS, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000007) + (-1.0 * reaction_reaction_0000008));
	
% Species:   id = RShP, name = RShP, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000007));
	
% Species:   id = RShc, name = RShc, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000005) + (-1.0 * reaction_reaction_0000006));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000013) + ( 1.0 * reaction_reaction_0000014));
	
% Species:   id = Rafstar, name = Rafstar, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000013) + (-1.0 * reaction_reaction_0000014));
	
% Species:   id = RasGDP, name = RasGDP, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000011) + ( 1.0 * reaction_reaction_0000012));
	
% Species:   id = RasGTP, name = RasGTP, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000012));
	
% Species:   id = ShGS, name = ShGS, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000009));
	
% Species:   id = ShP, name = ShP, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000010));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0000005) + ( 1.0 * reaction_reaction_0000010));
	
% Species:   id = P_I, name = P_I, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000028) + (-1.0 * reaction_reaction_0000027));
	
% Species:   id = internalization, name = internalization, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000034));
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


