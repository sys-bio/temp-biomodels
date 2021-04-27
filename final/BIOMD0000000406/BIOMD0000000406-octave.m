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
% Model name = Moriya2011_CellCycle_FissionYeast
%
% is http://identifiers.org/biomodels.db/MODEL1111040000
% is http://identifiers.org/biomodels.db/BIOMD0000000406
% isDescribedBy http://identifiers.org/pubmed/22146300
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1011020000
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 0.0;
	x0(2) = 0.00239076;
	x0(3) = 6.33821E-5;
	x0(4) = 0.0;
	x0(5) = 0.00127807;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0439902;
	x0(10) = 0.0;
	x0(11) = 0.1147007;
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
	x0(41) = 0.0432273;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0165018;
	x0(45) = 0.0;


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
% Parameter:   id =  ksc18_dash, name = ksc18'
	global_par_ksc18_dash=0.075;
% Parameter:   id =  ksc18, name = ksc18
	global_par_ksc18=0.005;
% Parameter:   id =  kdc18, name = kdc18
	global_par_kdc18=0.001;
% Parameter:   id =  kdc18c13, name = kdc18c13
	global_par_kdc18c13=0.45;
% Parameter:   id =  kdc18cig, name = kdc18cig
	global_par_kdc18cig=1.0;
% Parameter:   id =  kdc18cig_dash, name = kdc18cig'
	global_par_kdc18cig_dash=0.0;
% Parameter:   id =  krepl, name = krepl
	global_par_krepl=2.0;
% Parameter:   id =  kini_dash, name = kini_dash
	global_par_kini_dash=10.0;
% Parameter:   id =  kini_dash2, name = kini''
	global_par_kini_dash2=10.0;
% Parameter:   id =  kini_dash3, name = kini'''
	global_par_kini_dash3=0.0;
% Parameter:   id =  ko18, name = ko18
	global_par_ko18=100.0;
% Parameter:   id =  ko18r, name = ko18r
	global_par_ko18r=1.0;
% Parameter:   id =  kori, name = kori
	global_par_kori=125.0;
% Parameter:   id =  kipre, name = kipre
	global_par_kipre=1.0;
% Parameter:   id =  kipre_dash, name = kipre'
	global_par_kipre_dash=1.0;
% Parameter:   id =  Jipre, name = Jipre
	global_par_Jipre=0.01;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  k, name = k
	global_par_k=0.1;
% Parameter:   id =  k_dash, name = k'
	global_par_k_dash=10.0;
% Parameter:   id =  kscyc, name = kscyc
	global_par_kscyc=0.03;
% Parameter:   id =  kdcyc, name = kdcyc
	global_par_kdcyc=0.018;
% Parameter:   id =  kdcycsrw, name = kdcycsrw
	global_par_kdcycsrw=1.0;
% Parameter:   id =  kdcycsrw_dash, name = kdcycsrw'
	global_par_kdcycsrw_dash=1.0E-4;
% Parameter:   id =  kdcycslp, name = kdcycslp
	global_par_kdcycslp=1.0;
% Parameter:   id =  kdcycslp_dash, name = kdcycslp'
	global_par_kdcycslp_dash=3.0E-4;
% Parameter:   id =  kasrw, name = kasrw
	global_par_kasrw=1.25;
% Parameter:   id =  kasrw_dash, name = kasrw'
	global_par_kasrw_dash=30.0;
% Parameter:   id =  kisrw, name = kisrw
	global_par_kisrw=1.5;
% Parameter:   id =  kisrw_dash, name = kisrw'
	global_par_kisrw_dash=40.0;
% Parameter:   id =  kisrw_dash2, name = kisrw''
	global_par_kisrw_dash2=1.0;
% Parameter:   id =  kisrw_dash3, name = kisrw'''
	global_par_kisrw_dash3=4.0;
% Parameter:   id =  kisrw_dash4, name = kisrw''''
	global_par_kisrw_dash4=4.0;
% Parameter:   id =  Jasrw, name = Jasrw
	global_par_Jasrw=0.01;
% Parameter:   id =  Jisrw, name = Jisrw
	global_par_Jisrw=0.01;
% Parameter:   id =  kaslp, name = kaslp
	global_par_kaslp=1.0;
% Parameter:   id =  kislp, name = kislp
	global_par_kislp=0.2;
% Parameter:   id =  Jaslp, name = Jaslp
	global_par_Jaslp=0.01;
% Parameter:   id =  Jislp, name = Jislp
	global_par_Jislp=0.01;
% Parameter:   id =  kaie, name = kaie
	global_par_kaie=0.0975;
% Parameter:   id =  kiie, name = kiie
	global_par_kiie=0.04;
% Parameter:   id =  Jaie, name = Jaie
	global_par_Jaie=0.01;
% Parameter:   id =  Jiie, name = Jiie
	global_par_Jiie=0.01;
% Parameter:   id =  ksrum, name = ksrum
	global_par_ksrum=1.0;
% Parameter:   id =  kdrum, name = kdrum
	global_par_kdrum=0.4;
% Parameter:   id =  kdrumpuc, name = kdrumpuc
	global_par_kdrumpuc=0.1;
% Parameter:   id =  kdrumci1, name = kdrumci1
	global_par_kdrumci1=1.0;
% Parameter:   id =  kdrumcig, name = kdrumcig
	global_par_kdrumcig=15.0;
% Parameter:   id =  kdrumcig_dash, name = kdrumcig_dash
	global_par_kdrumcig_dash=10.0;
% Parameter:   id =  kdrumc13, name = kdrumc13
	global_par_kdrumc13=50.0;
% Parameter:   id =  kdrumc13_dash, name = kdrumc13'
	global_par_kdrumc13_dash=5.0;
% Parameter:   id =  lp, name = lp
	global_par_lp=500.0;
% Parameter:   id =  lm, name = lm
	global_par_lm=100.0;
% Parameter:   id =  kscig_dash, name = kscig'
	global_par_kscig_dash=0.04;
% Parameter:   id =  kdcig, name = kdcig
	global_par_kdcig=0.02;
% Parameter:   id =  kdcig_dash, name = kdcig'
	global_par_kdcig_dash=1.0;
% Parameter:   id =  kac10, name = kac10
	global_par_kac10=0.125;
% Parameter:   id =  kic10, name = kic10
	global_par_kic10=0.01;
% Parameter:   id =  kic10_dash, name = kic10'
	global_par_kic10_dash=3.0;
% Parameter:   id =  Jac10, name = Jac10
	global_par_Jac10=0.01;
% Parameter:   id =  Jic10, name = Jic10
	global_par_Jic10=0.01;
% Parameter:   id =  kwee_dash, name = kwee'
	global_par_kwee_dash=0.01;
% Parameter:   id =  kwee_dash2, name = kwee''
	global_par_kwee_dash2=0.5;
% Parameter:   id =  Vawee_dash, name = Vawee'
	global_par_Vawee_dash=0.24;
% Parameter:   id =  Vawee_dash2, name = Vawee''
	global_par_Vawee_dash2=1.0;
% Parameter:   id =  Viwee_dash, name = Viwee'
	global_par_Viwee_dash=0.0;
% Parameter:   id =  Viwee_dash2, name = Viwee''
	global_par_Viwee_dash2=1.0;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.04;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.03;
% Parameter:   id =  k25_dash, name = k25'
	global_par_k25_dash=0.01;
% Parameter:   id =  k25_dash2, name = k25''
	global_par_k25_dash2=1.0;
% Parameter:   id =  Va25_dash2, name = Va25''
	global_par_Va25_dash2=1.0;
% Parameter:   id =  Vi25_dash2, name = Vi25''
	global_par_Vi25_dash2=1.0;
% Parameter:   id =  Vi25_dash, name = Vi25'
	global_par_Vi25_dash=0.24;
% Parameter:   id =  Vi25, name = Vi25
	global_par_Vi25=0.3;
% Parameter:   id =  Ja25, name = Ja25
	global_par_Ja25=0.03;
% Parameter:   id =  Ji25, name = Ji25
	global_par_Ji25=0.03;
% Parameter:   id =  lcp, name = lcp
	global_par_lcp=3.0;
% Parameter:   id =  lcm, name = lcm
	global_par_lcm=1.0;
% Parameter:   id =  kmik_dash, name = kmik'
	global_par_kmik_dash=0.01;
% Parameter:   id =  kmik_dash2, name = kmik''
	global_par_kmik_dash2=4.0;
% Parameter:   id =  Vamik, name = Vamik
	global_par_Vamik=0.25;
% Parameter:   id =  Vimik, name = Vimik
	global_par_Vimik=0.75;
% Parameter:   id =  Vimik_dash, name = Vimik'
	global_par_Vimik_dash=10.0;
% Parameter:   id =  Vimik_dash2, name = Vimik''
	global_par_Vimik_dash2=10.0;
% Parameter:   id =  Vimik_dash3, name = Vimik'''
	global_par_Vimik_dash3=0.25;
% Parameter:   id =  kpyp, name = kpyp
	global_par_kpyp=0.6;
% Parameter:   id =  ksflp, name = ksflp
	global_par_ksflp=0.0015;
% Parameter:   id =  ksflp_dash, name = ksflp'
	global_par_ksflp_dash=0.015;
% Parameter:   id =  kdflp, name = kdflp
	global_par_kdflp=0.1;
% Parameter:   id =  ksci1, name = ksci1
	global_par_ksci1=0.0015;
% Parameter:   id =  kdci1, name = kdci1
	global_par_kdci1=0.1;
% Parameter:   id =  kdci1_dash, name = kdci1'
	global_par_kdci1_dash=5.0;
% Parameter:   id =  kdci1_dash2, name = kdci1''
	global_par_kdci1_dash2=0.2;
% Parameter:   id =  k255, name = k255
	global_par_k255=0.1;
% Parameter:   id =  kpyp2, name = kpyp2
	global_par_kpyp2=0.01;
% Parameter:   id =  kscig, name = kscig
	global_par_kscig=0.002;
% Parameter:   id =  oriT, name = oriT
	global_par_oriT=1.0;
% Parameter:   id =  BB, name = BB
% Parameter:   id =  chrom, name = chrom
% Parameter:   id =  UDNA, name = UDNA
% Parameter:   id =  kmik, name = kmik
% Warning parameter kmik is not constant, it should be controlled by a Rule and/or events
	global_par_kmik=0.0;
% Parameter:   id =  Vdrum, name = Vdrum
% Parameter:   id =  Vdcyc, name = Vdcyc
% Parameter:   id =  Vdc18, name = Vdc18
% Parameter:   id =  k25, name = k25
% Parameter:   id =  Vamik_dash, name = Vamik'
	global_par_Vamik_dash=0.75;
% Parameter:   id =  preRC, name = preRC
% Parameter:   id =  Rad3, name = Rad3
	global_par_Rad3=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=10.0;
% Parameter:   id =  Puc1, name = Puc1
	global_par_Puc1=1.0;
% Parameter:   id =  Srw1T, name = Srw1T
	global_par_Srw1T=1.0;
% Parameter:   id =  Slp1T, name = Slp1T
	global_par_Slp1T=1.0;
% Parameter:   id =  Cdc10T, name = Cdc10T
	global_par_Cdc10T=1.0;
% Parameter:   id =  Cdc25T, name = Cdc25T
	global_par_Cdc25T=1.0;
% Parameter:   id =  Wee1T, name = Wee1T
	global_par_Wee1T=1.0;
% Parameter:   id =  kaie_dash, name = kaie'
	global_par_kaie_dash=0.05;
% Parameter:   id =  Cdc18, name = Cdc18
% Parameter:   id =  kwee, name = kwee
% assignmentRule: variable = BB
	global_par_BB=global_par_oriT+x(31)+(global_par_ko18r+global_par_Vdc18)/global_par_ko18;
% assignmentRule: variable = kwee
	global_par_kwee=global_par_kwee_dash*global_par_Wee1T+(global_par_kwee_dash2-global_par_kwee_dash)*x(27);
% assignmentRule: variable = Vdrum
	global_par_Vdrum=global_par_kdrum+global_par_kdrumpuc*global_par_Puc1+global_par_kdrumci1*x(23)+global_par_kdrumcig*x(17)+global_par_kdrumcig_dash*x(13)+global_par_kdrumc13*x(9)+global_par_kdrumc13_dash*x(11);
% assignmentRule: variable = Vdcyc
	global_par_Vdcyc=global_par_kdcyc+global_par_kdcycsrw*x(2)+global_par_kdcycsrw_dash*global_par_Srw1T+global_par_kdcycslp*x(3)+global_par_kdcycslp_dash*global_par_Slp1T;
% assignmentRule: variable = Vdc18
	global_par_Vdc18=global_par_kdc18+global_par_kdc18c13*x(9)+global_par_kdc18cig*x(17)+global_par_kdc18cig_dash*x(13);
% assignmentRule: variable = k25
	global_par_k25=global_par_k25_dash*global_par_Cdc25T+(global_par_k25_dash2-global_par_k25_dash)*x(30);
% assignmentRule: variable = chrom
	global_par_chrom=2*global_par_oriT*x(31)/(global_par_BB+(global_par_BB^2-4*global_par_oriT*x(31))^(0.5));
% assignmentRule: variable = preRC
	global_par_preRC=(global_par_oriT-x(35)-x(36))*global_par_Cdc18/((global_par_ko18r+global_par_Vdc18)/global_par_ko18+global_par_Cdc18);
% assignmentRule: variable = Cdc18
	global_par_Cdc18=x(31)-global_par_chrom;
% assignmentRule: variable = UDNA
	global_par_UDNA=global_par_Rad3*(global_par_k*x(31)+global_par_k_dash*x(35)*global_par_Cdc18/((global_par_ko18r+global_par_Vdc18)/global_par_ko18+global_par_Cdc18));

% Reaction: id = re3
	reaction_re3=(global_par_kasrw+global_par_kasrw_dash*x(3))*(global_par_Srw1T-x(2))/(global_par_Jasrw+(global_par_Srw1T-x(2)));

% Reaction: id = re4
	reaction_re4=(global_par_kisrw+global_par_kisrw_dash*x(17)+global_par_kisrw_dash2*x(9)+global_par_kisrw_dash3*global_par_Puc1+global_par_kisrw_dash4*x(23))*x(2)/(global_par_Jisrw+x(2));

% Reaction: id = re5
	reaction_re5=(global_par_kaie*x(9)+global_par_kaie_dash*x(23))*(1-x(5))/(global_par_Jaie+(1-x(5)));

% Reaction: id = re6
	reaction_re6=global_par_kiie*x(5)/(global_par_Jiie+x(5));

% Reaction: id = re7
	reaction_re7=global_par_kaslp*x(5)*(global_par_Slp1T-x(3))/(global_par_Jaslp+(global_par_Slp1T-x(3)));

% Reaction: id = re8
	reaction_re8=global_par_kislp*x(3)/(global_par_Jislp+x(3));

% Reaction: id = re12, name = Cdc13_Synthesis
	reaction_re12=global_par_kscyc;

% Reaction: id = re14, name = Trim_Dissociation_Rum1degradation
	reaction_re14=global_par_Vdrum*x(41);

% Reaction: id = re15
	reaction_re15=global_par_Vdcyc*x(44);

% Reaction: id = re16, name = Trim_Dissociation_Rum1degradation
	reaction_re16=global_par_Vdrum*x(44);

% Reaction: id = re17
	reaction_re17=global_par_Vdcyc*x(41);

% Reaction: id = re18, name = Cdc13_Dephosphorylation
	reaction_re18=(global_par_kpyp2+global_par_k25)*x(41);

% Reaction: id = re19, name = Cdc13_Synthesis
	reaction_re19=global_par_kscig*global_par_Cdc10T+global_par_kscig_dash*x(19);

% Reaction: id = re20, name = Cdc13_Phosphorylation
	reaction_re20=global_par_kmik_dash2*x(20)*x(17);

% Reaction: id = re21, name = Cdc13_Dephosphorylation
	reaction_re21=global_par_k25*global_par_k255*x(13)+global_par_kpyp*x(13)/(1+global_par_beta*global_par_UDNA);

% Reaction: id = re22, name = Rum1+Cdc13_association
	reaction_re22=global_par_lcp*x(17)*x(45)-global_par_lcm*x(42);

% Reaction: id = re23
	reaction_re23=(global_par_kdcig+global_par_kdcig_dash*x(3))*x(42);

% Reaction: id = re24, name = Rum1+Cdc13_association
	reaction_re24=global_par_lcp*x(13)*x(45)-global_par_lcm*x(43);

% Reaction: id = re25
	reaction_re25=(global_par_kdcig+global_par_kdcig_dash*x(3))*x(43);

% Reaction: id = re27, name = Cdc13_Dephosphorylation
	reaction_re27=global_par_k25*global_par_k255*x(43)+global_par_kpyp*x(43)/(1+global_par_beta*global_par_UDNA);

% Reaction: id = re28
	reaction_re28=(global_par_kdcig+global_par_kdcig_dash*x(3))*x(17);

% Reaction: id = re29
	reaction_re29=global_par_Vdrum*x(43);

% Reaction: id = re30
	reaction_re30=global_par_Vdrum*x(42);

% Reaction: id = re31
	reaction_re31=(global_par_kdcig+global_par_kdcig_dash*x(3))*x(13);

% Reaction: id = re32
	reaction_re32=(global_par_kic10+global_par_kic10_dash*x(17))*x(19)/(global_par_Jic10+x(19));

% Reaction: id = re33
	reaction_re33=global_par_kac10*(global_par_Cdc10T-x(19))/(global_par_Jac10+(global_par_Cdc10T-x(19)));

% Reaction: id = re34
	reaction_re34=global_par_Vamik*global_par_Cdc10T+global_par_Vamik_dash*x(19);

% Reaction: id = re35
	reaction_re35=(global_par_Vimik+global_par_Vimik_dash*x(17)+global_par_Vimik_dash2*x(9)+global_par_Vimik_dash3*x(11))*x(20);

% Reaction: id = re36
	reaction_re36=global_par_ksci1;

% Reaction: id = re37
	reaction_re37=(global_par_kdci1+global_par_kdci1_dash*x(3)+global_par_kdci1_dash2*x(2))*x(23);

% Reaction: id = re38
	reaction_re38=global_par_ksflp+global_par_ksflp_dash*x(3);

% Reaction: id = re39
	reaction_re39=(global_par_Vawee_dash+global_par_Vawee_dash2*x(28))*(global_par_Wee1T-x(27))/(global_par_Jawee+(global_par_Wee1T-x(27)));

% Reaction: id = re40
	reaction_re40=(global_par_Viwee_dash+global_par_Viwee_dash2*x(9))*x(27)/(global_par_Jiwee+x(27));

% Reaction: id = re41
	reaction_re41=global_par_Vdcyc*x(11);

% Reaction: id = re42
	reaction_re42=global_par_Vdcyc*x(9);

% Reaction: id = re43
	reaction_re43=(global_par_kmik_dash*x(20)+global_par_kwee)*x(44);

% Reaction: id = re44
	reaction_re44=global_par_kmik_dash2*x(20)*x(42);

% Reaction: id = re45
	reaction_re45=global_par_Va25_dash2*x(9)*(global_par_Cdc25T-x(30))/(global_par_Ja25+(global_par_Cdc25T-x(30)));

% Reaction: id = re46
	reaction_re46=(global_par_Vi25_dash+global_par_Vi25_dash2*x(28)+global_par_Vi25*global_par_UDNA)*x(30)/(global_par_Ji25+x(30));

% Reaction: id = re47
	reaction_re47=global_par_ksc18*(global_par_Cdc10T-x(19)+x(19))+global_par_ksc18_dash*x(19);

% Reaction: id = re48
	reaction_re48=global_par_Vdc18*x(31);

% Reaction: id = re53
	reaction_re53=global_par_kdflp*x(28);

% Reaction: id = re54
	reaction_re54=global_par_lp*x(9)*x(45)-global_par_lm*x(44);

% Reaction: id = re56
	reaction_re56=(global_par_kpyp2+global_par_k25)*x(11);

% Reaction: id = re57
	reaction_re57=(global_par_kmik_dash*x(20)+global_par_kwee)*x(9);

% Reaction: id = re58
	reaction_re58=global_par_lp*x(11)*x(45)-global_par_lm*x(41);

% Reaction: id = re60
	reaction_re60=global_par_Vdrum*x(45);

% Reaction: id = re62
	reaction_re62=global_par_ksrum;

% Reaction: id = re66
	reaction_re66=(global_par_kini_dash*x(9)+global_par_kini_dash2*x(17)+global_par_kini_dash3*x(13))*global_par_preRC;

% Reaction: id = re67
	reaction_re67=global_par_kori/(1+((global_par_kipre*x(9)+global_par_kipre_dash*x(17))/global_par_Jipre)^global_par_n)*x(36);

% Reaction: id = re68
	reaction_re68=global_par_krepl*x(35);

% Species:   id = s4, name = Vdrum, constant	const_species_s4=0.0;

% Species:   id = s9, name = Vdcyc, constant	const_species_s9=0.0;

% Species:   id = s79, name = iWee1, constant	const_species_s79=0.0;

% Species:   id = s157, name = UDNA, constant	const_species_s157=0.0;

	xdot=zeros(45,1);
	
% Species:   id = s46, name = sa4_degraded
%WARNING speciesID: s46, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = s47, name = Srw1, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re3) + (-1.0 * reaction_re4));
	
% Species:   id = s48, name = Slp1A, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re7) + (-1.0 * reaction_re8));
	
% Species:   id = s49, name = Puc1
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = s50, name = IE, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re6));
	
% Species:   id = s51, name = iIE
%WARNING speciesID: s51, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = s52, name = rum1+
%WARNING speciesID: s52, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = s55, name = cig2+
%WARNING speciesID: s55, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = s56, name = Cdc13, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re12) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re42) + (-1.0 * reaction_re54) + ( 1.0 * reaction_re56) + (-1.0 * reaction_re57));
	
% Species:   id = s57, name = cdc13+
%WARNING speciesID: s57, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = s60, name = pCdc13, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re14) + (-1.0 * reaction_re41) + (-1.0 * reaction_re56) + ( 1.0 * reaction_re57) + (-1.0 * reaction_re58));
	
% Species:   id = s61, name = sa161_degraded
%WARNING speciesID: s61, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = s63, name = Cig2p, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re20) + (-1.0 * reaction_re21) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re29) + (-1.0 * reaction_re31));
	
% Species:   id = s64, name = Pyp3
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = s65, name = iSrw1
%WARNING speciesID: s65, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = s66, name = iSlp1
%WARNING speciesID: s66, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = s67, name = Cig2, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_re19) + (-1.0 * reaction_re20) + ( 1.0 * reaction_re21) + (-1.0 * reaction_re22) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re30));
	
% Species:   id = s70, name = iCdc10
%WARNING speciesID: s70, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
	
% Species:   id = s71, name = Cdc10, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_re32) + ( 1.0 * reaction_re33));
	
% Species:   id = s72, name = Mik1, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_re34) + (-1.0 * reaction_re35));
	
% Species:   id = s73, name = mik1+
%WARNING speciesID: s73, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = s74, name = sa347_degraded
%WARNING speciesID: s74, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = s75, name = Cig1, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_re36) + (-1.0 * reaction_re37));
	
% Species:   id = s76, name = cig1+
%WARNING speciesID: s76, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = s77, name = sa353_degraded
%WARNING speciesID: s77, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = s78, name = Clp1+
%WARNING speciesID: s78, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(26) = 0.0;
	
% Species:   id = s80, name = Wee1, affected by kineticLaw
	xdot(27) = (1/(compartment_default))*(( 1.0 * reaction_re39) + (-1.0 * reaction_re40));
	
% Species:   id = s81, name = Clp1, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*(( 1.0 * reaction_re38) + (-1.0 * reaction_re53));
	
% Species:   id = s82, name = iCdc25
%WARNING speciesID: s82, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(29) = 0.0;
	
% Species:   id = s83, name = Cdc25, affected by kineticLaw
	xdot(30) = (1/(compartment_default))*(( 1.0 * reaction_re45) + (-1.0 * reaction_re46));
	
% Species:   id = s84, name = Cdc18T, affected by kineticLaw
	xdot(31) = (1/(compartment_default))*(( 1.0 * reaction_re47) + (-1.0 * reaction_re48));
	
% Species:   id = s85, name = cdc18+
%WARNING speciesID: s85, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(32) = 0.0;
	
% Species:   id = s88, name = sa386_degraded
%WARNING speciesID: s88, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(33) = 0.0;
	
% Species:   id = s89, name = preRC
%WARNING speciesID: s89, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(34) = 0.0;
	
% Species:   id = s90, name = postRC, affected by kineticLaw
	xdot(35) = (1/(compartment_default))*(( 1.0 * reaction_re66) + (-1.0 * reaction_re68));
	
% Species:   id = s91, name = repldna, affected by kineticLaw
	xdot(36) = (1/(compartment_default))*((-1.0 * reaction_re67) + ( 1.0 * reaction_re68));
	
% Species:   id = s92, name = irepldna
%WARNING speciesID: s92, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(37) = 0.0;
	
% Species:   id = s93, name = sa370_degraded
%WARNING speciesID: s93, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(38) = 0.0;
	
% Species:   id = s94, name = sa44_degraded
%WARNING speciesID: s94, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(39) = 0.0;
	
% Species:   id = s130, name = Vdc18
% Warning species is not changed by either rules or reactions
	xdot(40) = ;
	
% Species:   id = s137, name = Cdc13p-Rum1, affected by kineticLaw
	xdot(41) = (1/(compartment_default))*((-1.0 * reaction_re14) + (-1.0 * reaction_re17) + (-1.0 * reaction_re18) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re58));
	
% Species:   id = s149, name = Cig2-Rum1, affected by kineticLaw
	xdot(42) = (1/(compartment_default))*(( 1.0 * reaction_re22) + (-1.0 * reaction_re23) + ( 1.0 * reaction_re27) + (-1.0 * reaction_re30) + (-1.0 * reaction_re44));
	
% Species:   id = s153, name = Cig2p-Rum1, affected by kineticLaw
	xdot(43) = (1/(compartment_default))*(( 1.0 * reaction_re24) + (-1.0 * reaction_re25) + (-1.0 * reaction_re27) + (-1.0 * reaction_re29) + ( 1.0 * reaction_re44));
	
% Species:   id = s161, name = Cdc13-Rum1, affected by kineticLaw
	xdot(44) = (1/(compartment_default))*((-1.0 * reaction_re15) + (-1.0 * reaction_re16) + ( 1.0 * reaction_re18) + (-1.0 * reaction_re43) + ( 1.0 * reaction_re54));
	
% Species:   id = s166, name = Rum1, affected by kineticLaw
	xdot(45) = (1/(compartment_default))*(( 1.0 * reaction_re15) + ( 1.0 * reaction_re17) + (-1.0 * reaction_re22) + ( 1.0 * reaction_re23) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re25) + (-1.0 * reaction_re54) + (-1.0 * reaction_re58) + (-1.0 * reaction_re60) + ( 1.0 * reaction_re62));
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


