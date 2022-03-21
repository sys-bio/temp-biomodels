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
% Model name = Bruggeman2005_AmmoniumAssimilation
%
% is http://identifiers.org/biomodels.db/MODEL3579243073
% is http://identifiers.org/biomodels.db/BIOMD0000000217
% isDescribedBy http://identifiers.org/pubmed/15819889
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.003;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.014;
	x0(7) = 0.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 2.685;
	x0(11) = 2.685;
	x0(12) = 1.0;
	x0(13) = 10.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  UT, name = UT
	global_par_UT=6.0E-4;
% Parameter:   id =  kcatut, name = kcatut
	global_par_kcatut=137.0;
% Parameter:   id =  Kglnut, name = Kglnut
	global_par_Kglnut=0.07;
% Parameter:   id =  Kutipii, name = Kutipii
	global_par_Kutipii=0.0018;
% Parameter:   id =  Kutpii, name = Kutpii
	global_par_Kutpii=0.003;
% Parameter:   id =  Kutpiiump, name = Kutpiiump
	global_par_Kutpiiump=0.0035;
% Parameter:   id =  Kututp, name = Kututp
	global_par_Kututp=0.04;
% Parameter:   id =  Kutippi, name = Kutippi
	global_par_Kutippi=0.1135;
% Parameter:   id =  UR, name = UR
	global_par_UR=6.0E-4;
% Parameter:   id =  kcatur, name = kcatur
	global_par_kcatur=5.5;
% Parameter:   id =  Kurpiiump, name = Kurpiiump
	global_par_Kurpiiump=0.0023;
% Parameter:   id =  Kurump, name = Kurump
	global_par_Kurump=8.4;
% Parameter:   id =  Kglnur, name = Kglnur
	global_par_Kglnur=0.07;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.0E-22;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.5166;
% Parameter:   id =  c1, name = c1
	global_par_c1=0.5974;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.0387;
% Parameter:   id =  Vad, name = Vad
	global_par_Vad=0.5;
% Parameter:   id =  Kadpiikg, name = Kadpiikg
	global_par_Kadpiikg=1.052E-5;
% Parameter:   id =  Kadgln, name = Kadgln
	global_par_Kadgln=0.9714;
% Parameter:   id =  Kadgs, name = Kadgs
	global_par_Kadgs=0.001703;
% Parameter:   id =  e1, name = e1
	global_par_e1=1.0E-22;
% Parameter:   id =  f1, name = f1
	global_par_f1=2.766;
% Parameter:   id =  g1, name = g1
	global_par_g1=3.323;
% Parameter:   id =  h1, name = h1
	global_par_h1=0.2148;
% Parameter:   id =  i1, name = i1
	global_par_i1=1.0E-22;
% Parameter:   id =  j1, name = j1
	global_par_j1=1.0E-22;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E-22;
% Parameter:   id =  l1, name = l1
	global_par_l1=0.02316;
% Parameter:   id =  m1, name = m1
	global_par_m1=0.8821;
% Parameter:   id =  n1, name = n1
	global_par_n1=8.491;
% Parameter:   id =  o1, name = o1
	global_par_o1=0.8791;
% Parameter:   id =  Vdead, name = Vdead
	global_par_Vdead=0.5;
% Parameter:   id =  Kdeadpiikg, name = Kdeadpiikg
	global_par_Kdeadpiikg=2.274E-6;
% Parameter:   id =  Kdeadgln, name = Kdeadgln
	global_par_Kdeadgln=0.04444;
% Parameter:   id =  Kdeadpiiu, name = Kdeadpiiu
	global_par_Kdeadpiiu=1.805E-5;
% Parameter:   id =  Kdeadgsa, name = Kdeadgsa
	global_par_Kdeadgsa=2.015E-4;
% Parameter:   id =  Vgdh, name = Vgdh
	global_par_Vgdh=360.0;
% Parameter:   id =  Kgdhkg, name = Kgdhkg
	global_par_Kgdhkg=0.32;
% Parameter:   id =  Kgdhnh, name = Kgdhnh
	global_par_Kgdhnh=1.1;
% Parameter:   id =  Kgdhglu, name = Kgdhglu
	global_par_Kgdhglu=10.0;
% Parameter:   id =  Kgdhnadph, name = Kgdhnadph
	global_par_Kgdhnadph=0.04;
% Parameter:   id =  Kgdhnadp, name = Kgdhnadp
	global_par_Kgdhnadp=0.042;
% Parameter:   id =  Keqgdh, name = Keqgdh
	global_par_Keqgdh=1290.0;
% Parameter:   id =  Kgdhazglu, name = Kgdhazglu
	global_par_Kgdhazglu=2.5;
% Parameter:   id =  Vgog, name = Vgog
	global_par_Vgog=85.0;
% Parameter:   id =  Kgoggln, name = Kgoggln
	global_par_Kgoggln=0.175;
% Parameter:   id =  Kgogkg, name = Kgogkg
	global_par_Kgogkg=0.007;
% Parameter:   id =  Kgognadph, name = Kgognadph
	global_par_Kgognadph=0.0015;
% Parameter:   id =  Kgogglu, name = Kgogglu
	global_par_Kgogglu=11.0;
% Parameter:   id =  Kgognadp, name = Kgognadp
	global_par_Kgognadp=0.0037;
% Parameter:   id =  Kgogaz, name = Kgogaz
	global_par_Kgogaz=0.65;
% Parameter:   id =  Vgs, name = Vgs
	global_par_Vgs=600.0;
% Parameter:   id =  aamp, name = aamp
	global_par_aamp=10.0;
% Parameter:   id =  bamp, name = bamp
	global_par_bamp=2.3667;
% Parameter:   id =  camp, name = camp
	global_par_camp=0.1012;
% Parameter:   id =  damp, name = damp
	global_par_damp=10.8688;
% Parameter:   id =  n1amp, name = n1amp
	global_par_n1amp=1.1456;
% Parameter:   id =  n2amp, name = n2amp
	global_par_n2amp=19.2166;
% Parameter:   id =  Kgseq, name = Kgseq
	global_par_Kgseq=460.0;
% Parameter:   id =  Kgsatp, name = Kgsatp
	global_par_Kgsatp=0.35;
% Parameter:   id =  Kgsglu, name = Kgsglu
	global_par_Kgsglu=4.1;
% Parameter:   id =  Kgsnh, name = Kgsnh
	global_par_Kgsnh=0.1;
% Parameter:   id =  Kgsadp, name = Kgsadp
	global_par_Kgsadp=0.0585;
% Parameter:   id =  Kgspi, name = Kgspi
	global_par_Kgspi=3.7;
% Parameter:   id =  Kgsgln, name = Kgsgln
	global_par_Kgsgln=5.65;
% Parameter:   id =  Keq, name = Keq
	global_par_Keq=460.0;
% Parameter:   id =  Vgludem, name = Vgludem
	global_par_Vgludem=120.0;
% Parameter:   id =  Kgludemglu, name = Kgludemglu
	global_par_Kgludemglu=8.0;
% Parameter:   id =  Kgludemeq, name = Kgludemeq
	global_par_Kgludemeq=1.0E10;
% Parameter:   id =  Kgludemazglu, name = Kgludemazglu
	global_par_Kgludemazglu=0.5;
% Parameter:   id =  Vglndem, name = Vglndem
	global_par_Vglndem=70.0;
% Parameter:   id =  Kglndemgln, name = Kglndemgln
	global_par_Kglndemgln=2.0;
% Parameter:   id =  Kglndemeq, name = Kglndemeq
	global_par_Kglndemeq=1.0E10;
% Parameter:   id =  Kglndemazgln, name = Kglndemazgln
	global_par_Kglndemazgln=0.25;
% Parameter:   id =  Vazglndem, name = Vazglndem
	global_par_Vazglndem=20.0;
% Parameter:   id =  Kazglndemazgln, name = Kazglndemazgln
	global_par_Kazglndemazgln=1.0;
% Parameter:   id =  Kazglndemeq, name = Kazglndemeq
	global_par_Kazglndemeq=1.0E10;
% Parameter:   id =  Kazglndemazinter, name = Kazglndemazinter
	global_par_Kazglndemazinter=0.5;
% Parameter:   id =  Vazgludem, name = Vazgludem
	global_par_Vazgludem=30.0;
% Parameter:   id =  Kazgludemazglu, name = Kazgludemazglu
	global_par_Kazgludemazglu=0.3;
% Parameter:   id =  Kazgludemeq, name = Kazgludemeq
	global_par_Kazgludemeq=1.0E10;
% Parameter:   id =  Kazgludemazinter, name = Kazgludemazinter
	global_par_Kazgludemazinter=0.5;
% Parameter:   id =  Vadp, name = Vadp
	global_par_Vadp=100.0;
% Parameter:   id =  Kadp, name = Kadp
	global_par_Kadp=0.5;
% Parameter:   id =  ATPtot, name = ATPtot
	global_par_ATPtot=5.37;
% Parameter:   id =  GStot, name = GStot
	global_par_GStot=0.014;
% Parameter:   id =  PIItot, name = PIItot
	global_par_PIItot=0.003;
% Parameter:   id =  Kd1, name = Kd1
	global_par_Kd1=0.005;
% Parameter:   id =  Kd2, name = Kd2
	global_par_Kd2=0.15;
% Parameter:   id =  Kd3, name = Kd3
	global_par_Kd3=0.15;
% Parameter:   id =  Kd1piiump, name = Kd1piiump
	global_par_Kd1piiump=0.025;
% Parameter:   id =  Kd2piiump, name = Kd2piiump
	global_par_Kd2piiump=0.15;
% Parameter:   id =  Kd3piiump, name = Kd3piiump
	global_par_Kd3piiump=0.15;
% Parameter:   id =  vAPP_GS, name = maxRateGS
% Parameter:   id =  nAMP, name = AdenylationStateGS
% Parameter:   id =  PIIKG1, name = PIIKG1
% Parameter:   id =  PIIUMP3KG3, name = PIIUMP3KG3
% assignmentRule: variable = vAPP_GS
	global_par_vAPP_GS=global_par_aamp*global_par_camp/((1+12^global_par_n1amp*(x(7)/(global_par_bamp*global_par_GStot))^global_par_n1amp)*(1+12^global_par_n2amp*(x(7)/(global_par_damp*global_par_GStot))^global_par_n2amp))*global_par_Vgs;
% assignmentRule: variable = nAMP
	global_par_nAMP=12*x(7)/global_par_GStot;
% assignmentRule: variable = PIIKG1
	global_par_PIIKG1=3*x(1)*const_species_KG/global_par_Kd1/(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3));
% assignmentRule: variable = PIIUMP3KG3
	global_par_PIIUMP3KG3=x(5)*const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump)/(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump));

% Reaction: id = vut1, name = vut1
	reaction_vut1=compartment_compartment*global_par_kcatut*global_par_UT*const_species_UTP*x(1)/(global_par_Kutipii*global_par_Kututp*(1+x(3)/global_par_Kglnut)*(1+const_species_UTP/global_par_Kututp+(x(1)+x(2)+x(4))/global_par_Kutipii+const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kututp)+const_species_PPi*const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kutippi*global_par_Kututp)+global_par_Kutpii*(x(2)+x(4)+x(5))/(global_par_Kutipii*global_par_Kutpiiump)));

% Reaction: id = vur1, name = vur1
	reaction_vur1=compartment_compartment*global_par_kcatur*global_par_UR*x(2)/(global_par_Kurpiiump*(1+global_par_Kglnur/x(3))*(1+(1+const_species_UMP/global_par_Kurump)*(x(2)+x(4)+x(5))/global_par_Kurpiiump));

% Reaction: id = vut2, name = vut2
	reaction_vut2=compartment_compartment*global_par_kcatut*global_par_UT*const_species_UTP*x(2)/(global_par_Kutipii*global_par_Kututp*(1+x(3)/global_par_Kglnut)*(1+const_species_UTP/global_par_Kututp+(x(1)+x(2)+x(4))/global_par_Kutipii+const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kututp)+const_species_PPi*const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kutippi*global_par_Kututp)+global_par_Kutpii*(x(2)+x(4)+x(5))/(global_par_Kutipii*global_par_Kutpiiump)));

% Reaction: id = vur2, name = vur2
	reaction_vur2=compartment_compartment*global_par_kcatur*global_par_UR*x(4)/(global_par_Kurpiiump*(1+global_par_Kglnur/x(3))*(1+(1+const_species_UMP/global_par_Kurump)*(x(2)+x(4)+x(5))/global_par_Kurpiiump));

% Reaction: id = vut3, name = vut3
	reaction_vut3=compartment_compartment*global_par_kcatut*global_par_UT*const_species_UTP*x(4)/(global_par_Kutipii*global_par_Kututp*(1+x(3)/global_par_Kglnut)*(1+const_species_UTP/global_par_Kututp+(x(1)+x(2)+x(4))/global_par_Kutipii+const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kututp)+const_species_PPi*const_species_UTP*(x(1)+x(2)+x(4))/(global_par_Kutipii*global_par_Kutippi*global_par_Kututp)+global_par_Kutpii*(x(2)+x(4)+x(5))/(global_par_Kutipii*global_par_Kutpiiump)));

% Reaction: id = vur3, name = vur3
	reaction_vur3=compartment_compartment*global_par_kcatur*global_par_UR*x(5)/(global_par_Kurpiiump*(1+global_par_Kglnur/x(3))*(1+(1+const_species_UMP/global_par_Kurump)*(x(2)+x(4)+x(5))/global_par_Kurpiiump));

% Reaction: id = vad, name = vad
	reaction_vad=compartment_compartment*global_par_Vad*x(6)*(global_par_b1*x(3)/global_par_Kadgln+3*global_par_a1*const_species_KG*x(1)/(global_par_Kadpiikg*global_par_Kd1*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))+3*global_par_c1*const_species_KG*x(3)*x(1)/(global_par_Kadgln*global_par_Kadpiikg*global_par_Kd1*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))))/((global_par_Kadgs+x(6))*(1+x(3)/global_par_Kadgln+3*const_species_KG*x(1)/(global_par_Kadpiikg*global_par_Kd1*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))+3*const_species_KG*x(3)*x(1)/(global_par_d1*global_par_Kadgln*global_par_Kadpiikg*global_par_Kd1*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))));

% Reaction: id = vdead, name = vdead
	reaction_vdead=compartment_compartment*global_par_Vdead*x(7)*(global_par_f1*x(3)/global_par_Kdeadgln+3*global_par_e1*const_species_KG*x(1)/(global_par_Kd1*global_par_Kdeadpiikg*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))+3*global_par_h1*const_species_KG*x(3)*x(1)/(global_par_Kd1*global_par_Kdeadgln*global_par_Kdeadpiikg*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))+global_par_g1*const_species_KG^3*x(5)/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump)))+global_par_j1*const_species_KG^3*x(3)*x(5)/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadgln*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump)))+3*global_par_i1*const_species_KG^4*x(1)*x(5)/(global_par_Kd1*global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadpiikg*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump)))+3*global_par_k1*const_species_KG^4*x(3)*x(1)*x(5)/(global_par_Kd1*global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadgln*global_par_Kdeadpiikg*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump))))/((global_par_Kdeadgsa+x(7))*(1+x(3)/global_par_Kdeadgln+3*const_species_KG*x(1)/(global_par_Kd1*global_par_Kdeadpiikg*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3)))+3*const_species_KG*x(3)*x(1)/(global_par_Kd1*global_par_Kdeadgln*global_par_Kdeadpiikg*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))*global_par_l1)+const_species_KG^3*x(5)/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump)))+const_species_KG^3*x(3)*x(5)/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadgln*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump))*global_par_n1)+3*const_species_KG^4*x(1)*x(5)/(global_par_Kd1*global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadpiikg*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump))*global_par_m1)+3*const_species_KG^4*x(3)*x(1)*x(5)/(global_par_Kd1*global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump*global_par_Kdeadgln*global_par_Kdeadpiikg*global_par_Kdeadpiiu*(1+3*const_species_KG/global_par_Kd1+3*const_species_KG^2/(global_par_Kd1*global_par_Kd2)+const_species_KG^3/(global_par_Kd1*global_par_Kd2*global_par_Kd3))*(1+3*const_species_KG/global_par_Kd1piiump+3*const_species_KG^2/(global_par_Kd1piiump*global_par_Kd2piiump)+const_species_KG^3/(global_par_Kd1piiump*global_par_Kd2piiump*global_par_Kd3piiump))*global_par_o1)));

% Reaction: id = vgdh, name = vgdh
	reaction_vgdh=compartment_compartment*global_par_Vgdh*(const_species_KG*const_species_NADPH*const_species_NH4-const_species_NADP*x(8)/global_par_Keqgdh)/(global_par_Kgdhkg*global_par_Kgdhnadph*global_par_Kgdhnh*(1+const_species_NADP/global_par_Kgdhnadp+const_species_NADPH/global_par_Kgdhnadph)*(1+const_species_NH4/global_par_Kgdhnh)*(1+const_species_KG/global_par_Kgdhkg+x(8)/global_par_Kgdhglu));

% Reaction: id = vgog, name = vgog
	reaction_vgog=compartment_compartment*const_species_KG*const_species_NADPH*global_par_Vgog*x(3)/(global_par_Kgoggln*global_par_Kgogkg*global_par_Kgognadph*(1+const_species_NADP/global_par_Kgognadp+const_species_NADPH/global_par_Kgognadph)*(1+x(9)/global_par_Kgogaz)*(1+const_species_KG/global_par_Kgogkg+x(8)/global_par_Kgogglu)*(1+x(3)/global_par_Kgoggln+x(8)/global_par_Kgogglu));

% Reaction: id = vgs, name = vgs
	reaction_vgs=compartment_compartment*global_par_aamp*global_par_camp*global_par_Vgs*(-x(13)*x(11)*x(3)/global_par_Keq+const_species_NH4*x(10)*x(8))/(global_par_Kgsatp*global_par_Kgsglu*global_par_Kgsnh*(1+x(13)/global_par_Kgspi+x(11)/global_par_Kgsadp+x(13)*x(11)/(global_par_Kgsadp*global_par_Kgspi)+x(10)/global_par_Kgsatp)*(1+const_species_NH4/global_par_Kgsnh+x(3)/global_par_Kgsgln+const_species_NH4*x(3)/(global_par_Kgsgln*global_par_Kgsnh)+x(8)/global_par_Kgsglu+const_species_NH4*x(8)/(global_par_Kgsglu*global_par_Kgsnh))*(1+12^global_par_n1amp*(x(7)/(global_par_bamp*global_par_GStot))^global_par_n1amp)*(1+12^global_par_n2amp*(x(7)/(global_par_damp*global_par_GStot))^global_par_n2amp));

% Reaction: id = vgludem, name = vgludem
	reaction_vgludem=compartment_compartment*global_par_Vgludem*(-x(9)/global_par_Kgludemeq+x(8))/(global_par_Kgludemglu*(1+x(9)/global_par_Kgludemazglu+x(8)/global_par_Kgludemglu));

% Reaction: id = vazgludem, name = vazgludem
	reaction_vazgludem=compartment_compartment*global_par_Vazgludem*(-const_species_AZglu/global_par_Kazgludemeq+x(9))/(global_par_Kazgludemazglu*(1+const_species_AZglu/global_par_Kazgludemazinter+x(9)/global_par_Kazgludemazglu));

% Reaction: id = vglndem, name = vglndem
	reaction_vglndem=compartment_compartment*global_par_Vglndem*(-x(12)/global_par_Kglndemeq+x(3))/(global_par_Kglndemgln*(1+x(12)/global_par_Kglndemazgln+x(3)/global_par_Kglndemgln));

% Reaction: id = vazglndem, name = vazglndem
	reaction_vazglndem=compartment_compartment*global_par_Vazglndem*(-const_species_AZgln/global_par_Kazglndemeq+x(12))/(global_par_Kazglndemazgln*(1+const_species_AZgln/global_par_Kazglndemazinter+x(12)/global_par_Kazglndemazgln));

% Reaction: id = vatpase, name = vatpase
	reaction_vatpase=compartment_compartment*global_par_Vadp*x(11)/(global_par_Kadp+x(11));

% Species:   id = UTP, name = UTP, constant	const_species_UTP=0.5;

% Species:   id = PPi, name = PPi, constant	const_species_PPi=0.05;

% Species:   id = UMP, name = UMP, constant	const_species_UMP=0.01;

% Species:   id = NH4, name = NH4, constant	const_species_NH4=0.05;

% Species:   id = KG, name = KG, constant	const_species_KG=0.2;

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=0.15;

% Species:   id = NADP, name = NADP, constant	const_species_NADP=0.05;

% Species:   id = AZglu, name = AZglu, constant	const_species_AZglu=0.1;

% Species:   id = AZgln, name = AZgln, constant	const_species_AZgln=0.1;

	xdot=zeros(13,1);
	
% Species:   id = PII, name = PII, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_vut1) + ( 1.0 * reaction_vur1));
	
% Species:   id = PIIUMP, name = PIIUMP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_vut1) + (-1.0 * reaction_vur1) + (-1.0 * reaction_vut2) + ( 1.0 * reaction_vur2));
	
% Species:   id = GLN, name = GLN, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_vgog) + ( 1.0 * reaction_vgs) + (-1.0 * reaction_vglndem));
	
% Species:   id = PIIUMP2, name = PIIUMP2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_vut2) + (-1.0 * reaction_vur2) + (-1.0 * reaction_vut3) + ( 1.0 * reaction_vur3));
	
% Species:   id = PIIUMP3, name = PIIUMP3, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_vut3) + (-1.0 * reaction_vur3));
	
% Species:   id = GS, name = GS, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_vad) + ( 1.0 * reaction_vdead));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_vad) + (-1.0 * reaction_vdead));
	
% Species:   id = GLU, name = GLU, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_vgdh) + ( 2.0 * reaction_vgog) + (-1.0 * reaction_vgs) + (-1.0 * reaction_vgludem));
	
% Species:   id = AZGLU, name = AZGLU, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_vgludem) + (-1.0 * reaction_vazgludem));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_vgs) + ( 1.0 * reaction_vatpase));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_vgs) + (-1.0 * reaction_vatpase));
	
% Species:   id = AZGLN, name = AZGLN, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_vglndem) + (-1.0 * reaction_vazglndem));
	
% Species:   id = P_i, name = P_i
%WARNING speciesID: P_i, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
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


