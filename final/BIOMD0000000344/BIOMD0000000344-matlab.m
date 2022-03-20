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
% Model name = Proctor2011_ProteinHomeostasis_NormalCondition
%
% is http://identifiers.org/biomodels.db/MODEL1005280000
% is http://identifiers.org/biomodels.db/BIOMD0000000344
% isDescribedBy http://identifiers.org/pubmed/21779370
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000091
%


function main()
%Initial conditions vector
	x0=zeros(54,1);
	x0(1) = 17600.0;
	x0(2) = 0.0;
	x0(3) = 1400.0;
	x0(4) = 1850.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 490.0;
	x0(10) = 590.0;
	x0(11) = 10.0;
	x0(12) = 10.0;
	x0(13) = 340.0;
	x0(14) = 30.0;
	x0(15) = 255.0;
	x0(16) = 80.0;
	x0(17) = 0.0;
	x0(18) = 5.0;
	x0(19) = 95.0;
	x0(20) = 470.0;
	x0(21) = 410.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 2.0;
	x0(26) = 2.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 100.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 100.0;
	x0(36) = 0.0;
	x0(37) = 100.0;
	x0(38) = 100.0;
	x0(39) = 100.0;
	x0(40) = 0.0;
	x0(41) = 500.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 10.0;
	x0(47) = 10000.0;
	x0(48) = 1000.0;
	x0(49) = 1.0;
	x0(50) = 1.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;


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
% Parameter:   id =  ksynNatP, name = ksynNatP
	global_par_ksynNatP=0.042;
% Parameter:   id =  kmisfold, name = kmisfold
	global_par_kmisfold=2.0E-6;
% Parameter:   id =  kbinMisPProt, name = kbinMisPProt
	global_par_kbinMisPProt=1.0E-7;
% Parameter:   id =  kdegMisP, name = kdegMisP
	global_par_kdegMisP=0.01;
% Parameter:   id =  kagg, name = kagg
	global_par_kagg=1.0E-8;
% Parameter:   id =  kseqagg, name = kseqagg
	global_par_kseqagg=7.0E-7;
% Parameter:   id =  kbinAggPProt, name = kbinAggPProt
	global_par_kbinAggPProt=1.0E-5;
% Parameter:   id =  kbinHspMisp, name = kbinHspMisp
	global_par_kbinHspMisp=8.0E-6;
% Parameter:   id =  krelHspMisp, name = krelHspMisp
	global_par_krelHspMisp=8.0E-5;
% Parameter:   id =  krefold, name = krefold
	global_par_krefold=5.5E-4;
% Parameter:   id =  kbinHsf1Hsp90, name = kbinHsf1Hsp90
% Warning parameter kbinHsf1Hsp90 is not constant, it should be controlled by a Rule and/or events
	global_par_kbinHsf1Hsp90=0.02;
% Parameter:   id =  krelHsf1Hsp90, name = krelHsf1Hsp90
	global_par_krelHsf1Hsp90=0.5;
% Parameter:   id =  kdimerHsf1, name = kdimerHsf1
	global_par_kdimerHsf1=8.0E-5;
% Parameter:   id =  ktrimerHsf1, name = ktrimerHsf1
	global_par_ktrimerHsf1=0.01;
% Parameter:   id =  kdetrimerHsf1, name = kdetrimerHsf1
	global_par_kdetrimerHsf1=0.5;
% Parameter:   id =  kdedimerHsf1, name = kdedimerHsf1
	global_par_kdedimerHsf1=0.5;
% Parameter:   id =  kbinHSEHsf1, name = kbinHSEHsf1
	global_par_kbinHSEHsf1=0.05;
% Parameter:   id =  krelHSEHsf1, name = krelHSEHsf1
	global_par_krelHSEHsf1=0.08;
% Parameter:   id =  kupregHsp, name = kupregHsp
	global_par_kupregHsp=0.2;
% Parameter:   id =  kbasalsynHsp70, name = kbasalsynHsp70
	global_par_kbasalsynHsp70=0.008;
% Parameter:   id =  kbasalsynHsp90, name = kbasalsynHsp90
	global_par_kbasalsynHsp90=0.008;
% Parameter:   id =  kbinHsp70Prot, name = kbinHsp70Prot
	global_par_kbinHsp70Prot=1.2E-8;
% Parameter:   id =  kbinHsp90Prot, name = kbinHsp90Prot
	global_par_kbinHsp90Prot=1.0E-8;
% Parameter:   id =  kdegHsp70, name = kdegHsp70
	global_par_kdegHsp70=0.01;
% Parameter:   id =  kdegHsp90, name = kdegHsp90
	global_par_kdegHsp90=0.01;
% Parameter:   id =  kgenROS, name = kgenROS
% Warning parameter kgenROS is not constant, it should be controlled by a Rule and/or events
	global_par_kgenROS=0.01;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=0.001;
% Parameter:   id =  kbinHsp70client, name = kbinHsp70client
	global_par_kbinHsp70client=2.0E-4;
% Parameter:   id =  krelHsp70client, name = krelHsp70client
	global_par_krelHsp70client=5.0;
% Parameter:   id =  kbinHsp90client, name = kbinHsp90client
	global_par_kbinHsp90client=2.0E-4;
% Parameter:   id =  krelHsp90client, name = krelHsp90client
% Warning parameter krelHsp90client is not constant, it should be controlled by a Rule and/or events
	global_par_krelHsp90client=5.0;
% Parameter:   id =  kphosJnk, name = kphosJnk
	global_par_kphosJnk=0.02;
% Parameter:   id =  kdephosJnkMkp1, name = kdephosJnkMkp1
	global_par_kdephosJnkMkp1=0.05;
% Parameter:   id =  kbinHsp70Ppx, name = kbinHsp70Ppx
	global_par_kbinHsp70Ppx=0.2;
% Parameter:   id =  krelHsp70Ppx, name = krelHsp70Ppx
	global_par_krelHsp70Ppx=5.0;
% Parameter:   id =  kphosHsf1, name = kphosHsf1
	global_par_kphosHsf1=0.03;
% Parameter:   id =  kdephosHsf1, name = kdephosHsf1
	global_par_kdephosHsf1=0.01;
% Parameter:   id =  kbinHSEPhosTriH, name = kbinHSEPhosTriH
	global_par_kbinHSEPhosTriH=0.1;
% Parameter:   id =  krelHSEPhosTriH, name = krelHSEPhosTriH
	global_par_krelHSEPhosTriH=0.08;
% Parameter:   id =  kphosp38, name = kphosp38
	global_par_kphosp38=0.02;
% Parameter:   id =  kdephosp38Mkp1, name = kdephosp38Mkp1
	global_par_kdephosp38Mkp1=0.05;
% Parameter:   id =  kgenROSAggP, name = kgenROSAggP
	global_par_kgenROSAggP=1.0E-6;
% Parameter:   id =  ksynAkt, name = ksynAkt
	global_par_ksynAkt=0.0015;
% Parameter:   id =  kbinAktHsp90, name = kbinAktHsp90
	global_par_kbinAktHsp90=3.7E-4;
% Parameter:   id =  krelAktHsp90, name = krelAktHsp90
% Warning parameter krelAktHsp90 is not constant, it should be controlled by a Rule and/or events
	global_par_krelAktHsp90=7.0;
% Parameter:   id =  kbinAktProt, name = kbinAktProt
	global_par_kbinAktProt=6.0E-8;
% Parameter:   id =  krelAktProt, name = krelAktProt
	global_par_krelAktProt=1.0E-8;
% Parameter:   id =  kdegAkt, name = kdegAkt
	global_par_kdegAkt=0.01;
% Parameter:   id =  kbinCHIP, name = kbinCHIP
	global_par_kbinCHIP=2.0E-7;
% Parameter:   id =  krelCHIP, name = krelCHIP
	global_par_krelCHIP=1.0E-8;
% Parameter:   id =  ksynMkp1, name = ksynMkp1
	global_par_ksynMkp1=1.0E-5;
% Parameter:   id =  kbinMkp1Prot, name = kbinMkp1Prot
	global_par_kbinMkp1Prot=9.6E-9;
% Parameter:   id =  kdegMkp1, name = kdegMkp1
	global_par_kdegMkp1=0.01;
% Parameter:   id =  kphosMkp1, name = kphosMkp1
	global_par_kphosMkp1=0.02;
% Parameter:   id =  kdephosMkp1, name = kdephosMkp1
	global_par_kdephosMkp1=0.001;
% Parameter:   id =  kgenROSp38, name = kgenROSp38
	global_par_kgenROSp38=1.0E-4;
% Parameter:   id =  kdamHsp, name = kdamHsp
	global_par_kdamHsp=1.0E-8;
% Parameter:   id =  kp38death, name = kp38death
	global_par_kp38death=1.5E-7;
% Parameter:   id =  kJnkdeath, name = kJnkdeath
	global_par_kJnkdeath=1.5E-7;
% Parameter:   id =  kPIdeath, name = kPIdeath
	global_par_kPIdeath=2.0E-8;
% Parameter:   id =  kp38act, name = kp38act
% Warning parameter kp38act is not constant, it should be controlled by a Rule and/or events
	global_par_kp38act=1.0;
% Parameter:   id =  kalive, name = kalive
	global_par_kalive=1.0;
% Parameter:   id =  tot_Hsp90, name = tot_Hsp90
% Parameter:   id =  tot_Hsp70, name = tot_Hsp70
% Parameter:   id =  tot_MisP, name = tot_MisP
% assignmentRule: variable = tot_Hsp90
	global_par_tot_Hsp90=x(4)+x(6)+x(7)+x(12)+x(14)+x(16)+x(19)+x(20);
% assignmentRule: variable = tot_Hsp70
	global_par_tot_Hsp70=x(3)+x(5)+x(8)+x(11)+x(21)+x(37);
% assignmentRule: variable = tot_MisP
	global_par_tot_MisP=x(2)+x(21)+x(20);

% Reaction: id = ProteinSynthesis
	reaction_ProteinSynthesis=global_par_ksynNatP*x(49)*global_par_kalive;

% Reaction: id = Misfolding
	reaction_Misfolding=global_par_kmisfold*x(1)*x(46)*global_par_kalive;

% Reaction: id = Hsp90MisPBinding
	reaction_Hsp90MisPBinding=global_par_kbinHspMisp*x(2)*x(4)*global_par_kalive;

% Reaction: id = Hsp90unsuccessulRefolding
	reaction_Hsp90unsuccessulRefolding=global_par_krelHspMisp*x(20)*global_par_kalive;

% Reaction: id = Hsp90refolding
	reaction_Hsp90refolding=global_par_krefold*x(20)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = Hsp70MisPBinding
	reaction_Hsp70MisPBinding=global_par_kbinHspMisp*x(2)*x(3)*global_par_kalive;

% Reaction: id = Hsp70unsuccessulRefolding
	reaction_Hsp70unsuccessulRefolding=global_par_krelHspMisp*x(21)*global_par_kalive;

% Reaction: id = Hsp70refolding
	reaction_Hsp70refolding=global_par_krefold*x(21)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = Hsp70ClientBinding
	reaction_Hsp70ClientBinding=global_par_kbinHsp70client*x(3)*x(9)*global_par_kalive;

% Reaction: id = Hsp70ClientRelease
	reaction_Hsp70ClientRelease=global_par_krelHsp70client*x(11)*global_par_kalive;

% Reaction: id = Hsp90ClientBinding
	reaction_Hsp90ClientBinding=global_par_kbinHsp90client*x(4)*x(10)*global_par_kalive;

% Reaction: id = Hsp90ClientRelease
	reaction_Hsp90ClientRelease=global_par_krelHsp90client*x(12)*global_par_kalive;

% Reaction: id = Hsp90HSF1Binding
	reaction_Hsp90HSF1Binding=global_par_kbinHsf1Hsp90*x(4)*x(18)*global_par_kalive;

% Reaction: id = Hsp90HSF1Release
	reaction_Hsp90HSF1Release=global_par_krelHsf1Hsp90*x(19)*global_par_kalive;

% Reaction: id = dimerisation
	reaction_dimerisation=(x(18)-1)*global_par_kdimerHsf1*global_par_kalive*x(18)/2;

% Reaction: id = trimerisation
	reaction_trimerisation=global_par_ktrimerHsf1*x(18)*x(24)*global_par_kalive;

% Reaction: id = deTrimerisation
	reaction_deTrimerisation=global_par_kdetrimerHsf1*x(22)*global_par_kalive;

% Reaction: id = deDimerisation
	reaction_deDimerisation=global_par_kdedimerHsf1*x(24)*global_par_kalive;

% Reaction: id = HSE70TriHBinding
	reaction_HSE70TriHBinding=global_par_kbinHSEHsf1*x(25)*x(22)*global_par_kalive;

% Reaction: id = HSE70TriHRelease
	reaction_HSE70TriHRelease=global_par_krelHSEHsf1*x(27)*global_par_kalive;

% Reaction: id = HSE90TriHBinding
	reaction_HSE90TriHBinding=global_par_kbinHSEHsf1*x(26)*x(22)*global_par_kalive;

% Reaction: id = HSE90TriHRelease
	reaction_HSE90TriHRelease=global_par_krelHSEHsf1*x(29)*global_par_kalive;

% Reaction: id = Hsf1_Hsf1_Hsf1Phosphorylation
	reaction_Hsf1_Hsf1_Hsf1Phosphorylation=global_par_kphosHsf1*x(22)*x(38)*global_par_kalive;

% Reaction: id = Hsf1_Hsf1_Hsf1DePhosphorylation
	reaction_Hsf1_Hsf1_Hsf1DePhosphorylation=global_par_kdephosHsf1*x(23)*x(37)*global_par_kalive;

% Reaction: id = HSE70PhosTriHBinding
	reaction_HSE70PhosTriHBinding=global_par_kbinHSEPhosTriH*x(25)*x(23)*global_par_kalive;

% Reaction: id = HSE70PhosTriHRelease
	reaction_HSE70PhosTriHRelease=global_par_krelHSEPhosTriH*x(28)*global_par_kalive;

% Reaction: id = HSE90PhosTriHBinding
	reaction_HSE90PhosTriHBinding=global_par_kbinHSEPhosTriH*x(26)*x(23)*global_par_kalive;

% Reaction: id = HSE90PhosTriHRelease
	reaction_HSE90PhosTriHRelease=global_par_krelHSEPhosTriH*x(30)*global_par_kalive;

% Reaction: id = Hsp90BasalSynthesis
	reaction_Hsp90BasalSynthesis=global_par_kbasalsynHsp90*global_par_kalive;

% Reaction: id = Hsp90Upregulation
	reaction_Hsp90Upregulation=global_par_kupregHsp*x(30)*global_par_kalive;

% Reaction: id = Hsp90ProteasomeBinding
	reaction_Hsp90ProteasomeBinding=global_par_kbinHsp90Prot*x(4)*x(41)*global_par_kalive;

% Reaction: id = Hsp90Degradation
	reaction_Hsp90Degradation=global_par_kdegHsp90*x(7)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = Hsp70BasalSynthesis
	reaction_Hsp70BasalSynthesis=global_par_kbasalsynHsp70*global_par_kalive;

% Reaction: id = Hsp70Upregulation
	reaction_Hsp70Upregulation=global_par_kupregHsp*x(28)*global_par_kalive;

% Reaction: id = Hsp70ProteasomeBinding
	reaction_Hsp70ProteasomeBinding=global_par_kbinHsp70Prot*x(3)*x(41)*global_par_kalive;

% Reaction: id = Hsp70Degradation
	reaction_Hsp70Degradation=global_par_kdegHsp70*x(8)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = MisPProteasomeBinding1
	reaction_MisPProteasomeBinding1=global_par_kbinMisPProt*x(21)*x(41)*global_par_kalive;

% Reaction: id = MisPProteasomeBinding2
	reaction_MisPProteasomeBinding2=global_par_kbinMisPProt*x(20)*x(41)*global_par_kalive;

% Reaction: id = MisPDegradation
	reaction_MisPDegradation=global_par_kdegMisP*x(42)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = radicalFormation, name = radicalFormation
	reaction_radicalFormation=global_par_kgenROS*x(49)*global_par_kalive;

% Reaction: id = radicalScavenging, name = radicalScavenging
	reaction_radicalScavenging=global_par_kremROS*x(46)*global_par_kalive;

% Reaction: id = Hsp70_PpxBinding
	reaction_Hsp70_PpxBinding=global_par_kbinHsp70Ppx*x(3)*x(33)*global_par_kalive;

% Reaction: id = Hsp70_PPXRelease
	reaction_Hsp70_PPXRelease=global_par_krelHsp70Ppx*x(37)*global_par_kalive;

% Reaction: id = JnkPhosphorylation
	reaction_JnkPhosphorylation=global_par_kphosJnk*x(31)*x(46)*global_par_kalive;

% Reaction: id = JNKDephosphorylatioByMkp1
	reaction_JNKDephosphorylatioByMkp1=global_par_kdephosJnkMkp1*x(32)*x(35)*global_par_kalive;

% Reaction: id = p38Phosphorylation
	reaction_p38Phosphorylation=global_par_kphosp38*x(46)*x(39)*global_par_kalive;

% Reaction: id = p38DePhosphorylationByMkp1
	reaction_p38DePhosphorylationByMkp1=global_par_kdephosp38Mkp1*x(40)*x(35)*global_par_kalive;

% Reaction: id = Aggregation1
	reaction_Aggregation1=global_par_kagg*x(2)*(x(2)-1)*0.5*global_par_kalive;

% Reaction: id = SequesteringOfAggregate
	reaction_SequesteringOfAggregate=global_par_kagg*x(2)*x(43)*global_par_kalive;

% Reaction: id = InclusionGrowth
	reaction_InclusionGrowth=global_par_kseqagg*x(44)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibtion
	reaction_ProteasomeInhibtion=global_par_kbinAggPProt*x(43)*x(41)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP
	reaction_ROSgenerationSmallAggP=global_par_kgenROSAggP*x(43)*global_par_kalive;

% Reaction: id = ROSgenerationAggPProteasome
	reaction_ROSgenerationAggPProteasome=global_par_kgenROSAggP*x(45)*global_par_kalive;

% Reaction: id = AktSynthesis
	reaction_AktSynthesis=global_par_ksynAkt*x(49)*global_par_kalive;

% Reaction: id = Hsp90AktBinding
	reaction_Hsp90AktBinding=global_par_kbinAktHsp90*x(4)*x(13)*global_par_kalive;

% Reaction: id = Hsp90AktRelease
	reaction_Hsp90AktRelease=global_par_krelAktHsp90*x(14)*global_par_kalive;

% Reaction: id = CHIPbinding
	reaction_CHIPbinding=global_par_kbinCHIP*x(15)*x(14)*global_par_kalive;

% Reaction: id = CHIPrelease
	reaction_CHIPrelease=global_par_krelCHIP*x(16)*global_par_kalive;

% Reaction: id = AktProteasomeBinding
	reaction_AktProteasomeBinding=global_par_kbinAktProt*x(16)*x(41)*global_par_kalive;

% Reaction: id = AktProteasomeRelease
	reaction_AktProteasomeRelease=global_par_krelAktProt*x(17)*global_par_kalive;

% Reaction: id = AktDegradation
	reaction_AktDegradation=global_par_kdegAkt*x(17)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = Mkp1Synthesis
	reaction_Mkp1Synthesis=global_par_ksynMkp1*x(49)*global_par_kalive;

% Reaction: id = Mkp1ProteasomeBinding
	reaction_Mkp1ProteasomeBinding=global_par_kbinMkp1Prot*x(34)*x(41)*global_par_kalive;

% Reaction: id = Mkp1Degradation
	reaction_Mkp1Degradation=global_par_kdegMkp1*x(36)*global_par_kalive*x(47)/(5000+x(47));

% Reaction: id = Mkp1Phosphorylation
	reaction_Mkp1Phosphorylation=global_par_kphosMkp1*x(34)*x(3)*global_par_kalive;

% Reaction: id = Mkp1Dephosphorylation
	reaction_Mkp1Dephosphorylation=global_par_kdephosMkp1*x(35)*x(46)*global_par_kalive;

% Reaction: id = p38ROSproduction
	reaction_p38ROSproduction=global_par_kgenROSp38*x(40)*global_par_kalive*global_par_kp38act;

% Reaction: id = Hsp70Damage
	reaction_Hsp70Damage=global_par_kdamHsp*x(3)*x(46)*global_par_kalive;

% Reaction: id = Hsp90Damage
	reaction_Hsp90Damage=global_par_kdamHsp*x(4)*x(46)*global_par_kalive;

% Reaction: id = Hsp70DamProteasomeBinding
	reaction_Hsp70DamProteasomeBinding=global_par_kbinHsp70Prot*x(5)*x(41)*global_par_kalive;

% Reaction: id = Hsp90DamProteasomeBinding
	reaction_Hsp90DamProteasomeBinding=global_par_kbinHsp90Prot*x(6)*x(41)*global_par_kalive;

% Reaction: id = Hsp70DamAggregation1
	reaction_Hsp70DamAggregation1=global_par_kagg*x(5)*(x(5)-1)*0.5*global_par_kalive;

% Reaction: id = Hsp70DamInclusionFormation
	reaction_Hsp70DamInclusionFormation=global_par_kagg*x(5)*x(43)*global_par_kalive;

% Reaction: id = Hsp90DamAggregation
	reaction_Hsp90DamAggregation=global_par_kagg*x(6)*(x(6)-1)*0.5*global_par_kalive;

% Reaction: id = Hsp90DamInclusionFormation
	reaction_Hsp90DamInclusionFormation=global_par_kagg*x(6)*x(43)*global_par_kalive;

% Reaction: id = Hsp70DamSequestering
	reaction_Hsp70DamSequestering=global_par_kseqagg*x(5)*x(44)*global_par_kalive;

% Reaction: id = Hsp90DamSequestering
	reaction_Hsp90DamSequestering=global_par_kseqagg*x(6)*x(44)*global_par_kalive;

% Reaction: id = p38CellDeath
	reaction_p38CellDeath=global_par_kp38death*x(40)*global_par_kalive*global_par_kp38act;

% Reaction: id = JnkCellDeath
	reaction_JnkCellDeath=global_par_kJnkdeath*x(32)*global_par_kalive;

% Reaction: id = PICellDeath
	reaction_PICellDeath=global_par_kPIdeath*x(45)*global_par_kalive;

%Event: id=DeathOfCell
	event_DeathOfCell=x(54) >= 1;

	if(event_DeathOfCell) 
		global_par_kalive=0;
	end

	xdot=zeros(54,1);
	
% Species:   id = NatP, name = NatP, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_ProteinSynthesis) + (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Hsp90refolding) + ( 1.0 * reaction_Hsp70refolding);
	
% Species:   id = MisP, name = MisP, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Misfolding) + (-1.0 * reaction_Hsp90MisPBinding) + ( 1.0 * reaction_Hsp90unsuccessulRefolding) + (-1.0 * reaction_Hsp70MisPBinding) + ( 1.0 * reaction_Hsp70unsuccessulRefolding) + (-2.0 * reaction_Aggregation1) + (-1.0 * reaction_SequesteringOfAggregate) + (-1.0 * reaction_InclusionGrowth);
	
% Species:   id = Hsp70, name = Hsp70, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_Hsp70MisPBinding) + ( 1.0 * reaction_Hsp70unsuccessulRefolding) + ( 1.0 * reaction_Hsp70refolding) + (-1.0 * reaction_Hsp70ClientBinding) + ( 1.0 * reaction_Hsp70ClientRelease) + ( 1.0 * reaction_Hsp70BasalSynthesis) + ( 1.0 * reaction_Hsp70Upregulation) + (-1.0 * reaction_Hsp70ProteasomeBinding) + ( 1.0 * reaction_MisPProteasomeBinding1) + (-1.0 * reaction_Hsp70_PpxBinding) + ( 1.0 * reaction_Hsp70_PPXRelease) + (-1.0 * reaction_Mkp1Phosphorylation) + ( 1.0 * reaction_Mkp1Phosphorylation) + (-1.0 * reaction_Hsp70Damage);
	
% Species:   id = Hsp90, name = Hsp90, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Hsp90MisPBinding) + ( 1.0 * reaction_Hsp90unsuccessulRefolding) + ( 1.0 * reaction_Hsp90refolding) + (-1.0 * reaction_Hsp90ClientBinding) + ( 1.0 * reaction_Hsp90ClientRelease) + (-1.0 * reaction_Hsp90HSF1Binding) + ( 1.0 * reaction_Hsp90HSF1Release) + ( 1.0 * reaction_Hsp90BasalSynthesis) + ( 1.0 * reaction_Hsp90Upregulation) + (-1.0 * reaction_Hsp90ProteasomeBinding) + ( 1.0 * reaction_MisPProteasomeBinding2) + (-1.0 * reaction_Hsp90AktBinding) + ( 1.0 * reaction_Hsp90AktRelease) + ( 1.0 * reaction_AktProteasomeBinding) + (-1.0 * reaction_Hsp90Damage);
	
% Species:   id = Hsp70_dam, name = Hsp70_dam, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Hsp70Damage) + (-1.0 * reaction_Hsp70DamProteasomeBinding) + (-2.0 * reaction_Hsp70DamAggregation1) + (-1.0 * reaction_Hsp70DamInclusionFormation) + (-1.0 * reaction_Hsp70DamSequestering);
	
% Species:   id = Hsp90_dam, name = Hsp90_dam, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Hsp90Damage) + (-1.0 * reaction_Hsp90DamProteasomeBinding) + (-2.0 * reaction_Hsp90DamAggregation) + (-1.0 * reaction_Hsp90DamInclusionFormation) + (-1.0 * reaction_Hsp90DamSequestering);
	
% Species:   id = Hsp90_Proteasome, name = Hsp90_Proteasome, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Hsp90ProteasomeBinding) + (-1.0 * reaction_Hsp90Degradation) + ( 1.0 * reaction_Hsp90DamProteasomeBinding);
	
% Species:   id = Hsp70_Proteasome, name = Hsp70_Proteasome, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_Hsp70ProteasomeBinding) + (-1.0 * reaction_Hsp70Degradation) + ( 1.0 * reaction_Hsp70DamProteasomeBinding);
	
% Species:   id = Hsp70Client, name = Hsp70Client, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_Hsp70ClientBinding) + ( 1.0 * reaction_Hsp70ClientRelease);
	
% Species:   id = Hsp90Client, name = Hsp90Client, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_Hsp90ClientBinding) + ( 1.0 * reaction_Hsp90ClientRelease);
	
% Species:   id = Hsp70_Hsp70Client, name = Hsp70_Hsp70Client, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_Hsp70ClientBinding) + (-1.0 * reaction_Hsp70ClientRelease);
	
% Species:   id = Hsp90_Hsp90Client, name = Hsp90_Hsp90Client, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_Hsp90ClientBinding) + (-1.0 * reaction_Hsp90ClientRelease);
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_AktSynthesis) + (-1.0 * reaction_Hsp90AktBinding) + ( 1.0 * reaction_Hsp90AktRelease) + ( 1.0 * reaction_AktProteasomeRelease);
	
% Species:   id = Akt_Hsp90, name = Akt_Hsp90, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Hsp90AktBinding) + (-1.0 * reaction_Hsp90AktRelease) + (-1.0 * reaction_CHIPbinding) + ( 1.0 * reaction_CHIPrelease);
	
% Species:   id = CHIP, name = CHIP, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_CHIPbinding) + ( 1.0 * reaction_CHIPrelease) + ( 1.0 * reaction_AktProteasomeBinding);
	
% Species:   id = Akt_CHIP_Hsp90, name = Akt_CHIP_Hsp90, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_CHIPbinding) + (-1.0 * reaction_CHIPrelease) + (-1.0 * reaction_AktProteasomeBinding);
	
% Species:   id = Akt_Proteasome, name = Akt_Proteasome, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_AktProteasomeBinding) + (-1.0 * reaction_AktProteasomeRelease) + (-1.0 * reaction_AktDegradation);
	
% Species:   id = Hsf1, name = Hsf1, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_Hsp90HSF1Binding) + ( 1.0 * reaction_Hsp90HSF1Release) + (-2.0 * reaction_dimerisation) + (-1.0 * reaction_trimerisation) + ( 1.0 * reaction_deTrimerisation) + ( 2.0 * reaction_deDimerisation);
	
% Species:   id = Hsf1_Hsp90, name = Hsf1_Hsp90, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Hsp90HSF1Binding) + (-1.0 * reaction_Hsp90HSF1Release);
	
% Species:   id = Hsp90_MisP, name = Hsp90_MisP, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Hsp90MisPBinding) + (-1.0 * reaction_Hsp90unsuccessulRefolding) + (-1.0 * reaction_Hsp90refolding) + (-1.0 * reaction_MisPProteasomeBinding2);
	
% Species:   id = Hsp70_MisP, name = Hsp70_MisP, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_Hsp70MisPBinding) + (-1.0 * reaction_Hsp70unsuccessulRefolding) + (-1.0 * reaction_Hsp70refolding) + (-1.0 * reaction_MisPProteasomeBinding1);
	
% Species:   id = Hsf1_Hsf1_Hsf1, name = Hsf1_Hsf1_Hsf1, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_trimerisation) + (-1.0 * reaction_deTrimerisation) + (-1.0 * reaction_HSE70TriHBinding) + ( 1.0 * reaction_HSE70TriHRelease) + (-1.0 * reaction_HSE90TriHBinding) + ( 1.0 * reaction_HSE90TriHRelease) + (-1.0 * reaction_Hsf1_Hsf1_Hsf1Phosphorylation) + ( 1.0 * reaction_Hsf1_Hsf1_Hsf1DePhosphorylation);
	
% Species:   id = Hsf1_Hsf1_Hsf1_P, name = Hsf1_Hsf1_Hsf1_P, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_Hsf1_Hsf1_Hsf1Phosphorylation) + (-1.0 * reaction_Hsf1_Hsf1_Hsf1DePhosphorylation) + (-1.0 * reaction_HSE70PhosTriHBinding) + ( 1.0 * reaction_HSE70PhosTriHRelease) + (-1.0 * reaction_HSE90PhosTriHBinding) + ( 1.0 * reaction_HSE90PhosTriHRelease);
	
% Species:   id = Hsf1_Hsf1, name = Hsf1_Hsf1, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_dimerisation) + (-1.0 * reaction_trimerisation) + ( 1.0 * reaction_deTrimerisation) + (-1.0 * reaction_deDimerisation);
	
% Species:   id = HSEHsp70, name = HSEHsp70, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_HSE70TriHBinding) + ( 1.0 * reaction_HSE70TriHRelease) + (-1.0 * reaction_HSE70PhosTriHBinding) + ( 1.0 * reaction_HSE70PhosTriHRelease);
	
% Species:   id = HSEHsp90, name = HSEHsp90, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_HSE90TriHBinding) + ( 1.0 * reaction_HSE90TriHRelease) + (-1.0 * reaction_HSE90PhosTriHBinding) + ( 1.0 * reaction_HSE90PhosTriHRelease);
	
% Species:   id = HSEHsp70_Hsf1_Hsf1_Hsf1, name = HSEHsp70_Hsf1_Hsf1_Hsf1, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_HSE70TriHBinding) + (-1.0 * reaction_HSE70TriHRelease);
	
% Species:   id = HSEHsp70_Hsf1_Hsf1_Hsf1_P, name = HSEHsp70_Hsf1_Hsf1_Hsf1_P, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_HSE70PhosTriHBinding) + (-1.0 * reaction_HSE70PhosTriHRelease) + (-1.0 * reaction_Hsp70Upregulation) + ( 1.0 * reaction_Hsp70Upregulation);
	
% Species:   id = HSEHsp90_Hsf1_Hsf1_Hsf1, name = HSEHsp90_Hsf1_Hsf1_Hsf1, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_HSE90TriHBinding) + (-1.0 * reaction_HSE90TriHRelease);
	
% Species:   id = HSEHsp90_Hsf1_Hsf1_Hsf1_P, name = HSEHsp90_Hsf1_Hsf1_Hsf1_P, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_HSE90PhosTriHBinding) + (-1.0 * reaction_HSE90PhosTriHRelease) + (-1.0 * reaction_Hsp90Upregulation) + ( 1.0 * reaction_Hsp90Upregulation);
	
% Species:   id = Jnk, name = Jnk, affected by kineticLaw
	xdot(31) = (-1.0 * reaction_JnkPhosphorylation) + ( 1.0 * reaction_JNKDephosphorylatioByMkp1);
	
% Species:   id = Jnk_P, name = Jnk_P, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_JnkPhosphorylation) + (-1.0 * reaction_JNKDephosphorylatioByMkp1) + (-1.0 * reaction_JnkCellDeath) + ( 1.0 * reaction_JnkCellDeath);
	
% Species:   id = Ppx, name = Ppx, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_Hsp70_PpxBinding) + ( 1.0 * reaction_Hsp70_PPXRelease);
	
% Species:   id = Mkp1, name = Mkp1, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_Mkp1Synthesis) + (-1.0 * reaction_Mkp1ProteasomeBinding) + (-1.0 * reaction_Mkp1Phosphorylation) + ( 1.0 * reaction_Mkp1Dephosphorylation);
	
% Species:   id = Mkp1_P, name = Mkp1_P, affected by kineticLaw
	xdot(35) = (-1.0 * reaction_JNKDephosphorylatioByMkp1) + ( 1.0 * reaction_JNKDephosphorylatioByMkp1) + (-1.0 * reaction_p38DePhosphorylationByMkp1) + ( 1.0 * reaction_p38DePhosphorylationByMkp1) + ( 1.0 * reaction_Mkp1Phosphorylation) + (-1.0 * reaction_Mkp1Dephosphorylation);
	
% Species:   id = Mkp1_Proteasome, name = Mkp1_Proteasome, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_Mkp1ProteasomeBinding) + (-1.0 * reaction_Mkp1Degradation);
	
% Species:   id = Hsp70_Ppx, name = Hsp70_Ppx, affected by kineticLaw
	xdot(37) = (-1.0 * reaction_Hsf1_Hsf1_Hsf1DePhosphorylation) + ( 1.0 * reaction_Hsf1_Hsf1_Hsf1DePhosphorylation) + ( 1.0 * reaction_Hsp70_PpxBinding) + (-1.0 * reaction_Hsp70_PPXRelease);
	
% Species:   id = Pkc, name = Pkc, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_Hsf1_Hsf1_Hsf1Phosphorylation) + ( 1.0 * reaction_Hsf1_Hsf1_Hsf1Phosphorylation);
	
% Species:   id = p38, name = p38, affected by kineticLaw
	xdot(39) = (-1.0 * reaction_p38Phosphorylation) + ( 1.0 * reaction_p38DePhosphorylationByMkp1);
	
% Species:   id = p38_P, name = p38_P, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_p38Phosphorylation) + (-1.0 * reaction_p38DePhosphorylationByMkp1) + (-1.0 * reaction_p38ROSproduction) + ( 1.0 * reaction_p38ROSproduction) + (-1.0 * reaction_p38CellDeath) + ( 1.0 * reaction_p38CellDeath);
	
% Species:   id = Proteasome, name = Proteasome, affected by kineticLaw
	xdot(41) = (-1.0 * reaction_Hsp90ProteasomeBinding) + ( 1.0 * reaction_Hsp90Degradation) + (-1.0 * reaction_Hsp70ProteasomeBinding) + ( 1.0 * reaction_Hsp70Degradation) + (-1.0 * reaction_MisPProteasomeBinding1) + (-1.0 * reaction_MisPProteasomeBinding2) + ( 1.0 * reaction_MisPDegradation) + (-1.0 * reaction_ProteasomeInhibtion) + (-1.0 * reaction_AktProteasomeBinding) + ( 1.0 * reaction_AktProteasomeRelease) + ( 1.0 * reaction_AktDegradation) + (-1.0 * reaction_Mkp1ProteasomeBinding) + ( 1.0 * reaction_Mkp1Degradation) + (-1.0 * reaction_Hsp70DamProteasomeBinding) + (-1.0 * reaction_Hsp90DamProteasomeBinding);
	
% Species:   id = MisP_Proteasome, name = MisP_Proteasome, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_MisPProteasomeBinding1) + ( 1.0 * reaction_MisPProteasomeBinding2) + (-1.0 * reaction_MisPDegradation);
	
% Species:   id = AggP, name = AggP, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_Aggregation1) + (-1.0 * reaction_SequesteringOfAggregate) + (-1.0 * reaction_ProteasomeInhibtion) + (-1.0 * reaction_ROSgenerationSmallAggP) + ( 1.0 * reaction_ROSgenerationSmallAggP) + ( 1.0 * reaction_Hsp70DamAggregation1) + (-1.0 * reaction_Hsp70DamInclusionFormation) + ( 1.0 * reaction_Hsp90DamAggregation) + (-1.0 * reaction_Hsp90DamInclusionFormation);
	
% Species:   id = SeqAggP, name = SeqAggP, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_SequesteringOfAggregate) + (-1.0 * reaction_InclusionGrowth) + ( 2.0 * reaction_InclusionGrowth) + ( 1.0 * reaction_Hsp70DamInclusionFormation) + ( 1.0 * reaction_Hsp90DamInclusionFormation) + (-1.0 * reaction_Hsp70DamSequestering) + ( 2.0 * reaction_Hsp70DamSequestering) + (-1.0 * reaction_Hsp90DamSequestering) + ( 2.0 * reaction_Hsp90DamSequestering);
	
% Species:   id = AggP_Proteasome, name = AggP_Proteasome, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_ProteasomeInhibtion) + (-1.0 * reaction_ROSgenerationAggPProteasome) + ( 1.0 * reaction_ROSgenerationAggPProteasome) + (-1.0 * reaction_PICellDeath) + ( 1.0 * reaction_PICellDeath);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(46) = (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Misfolding) + ( 1.0 * reaction_radicalFormation) + (-1.0 * reaction_radicalScavenging) + (-1.0 * reaction_JnkPhosphorylation) + ( 1.0 * reaction_JnkPhosphorylation) + (-1.0 * reaction_p38Phosphorylation) + ( 1.0 * reaction_p38Phosphorylation) + ( 1.0 * reaction_ROSgenerationSmallAggP) + ( 1.0 * reaction_ROSgenerationAggPProteasome) + (-1.0 * reaction_Mkp1Dephosphorylation) + ( 1.0 * reaction_Mkp1Dephosphorylation) + ( 1.0 * reaction_p38ROSproduction) + (-1.0 * reaction_Hsp70Damage) + ( 1.0 * reaction_Hsp70Damage) + (-1.0 * reaction_Hsp90Damage) + ( 1.0 * reaction_Hsp90Damage);
	
% Species:   id = ATP, name = ATP
%WARNING speciesID: ATP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(47) = 0.0;
	
% Species:   id = ADP, name = ADP
%WARNING speciesID: ADP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(48) = 0.0;
	
% Species:   id = Source, name = Source
%WARNING speciesID: Source, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(49) = 0.0;
	
% Species:   id = Sink, name = Sink
%WARNING speciesID: Sink, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(50) = 0.0;
	
% Species:   id = p38Death, name = p38Death, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_p38CellDeath);
	
% Species:   id = JNKDeath, name = JNKDeath, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_JnkCellDeath);
	
% Species:   id = PIDeath, name = PIDeath, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_PICellDeath);
	
% Species:   id = CellDeath, name = CellDeath, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_p38CellDeath) + ( 1.0 * reaction_JnkCellDeath) + ( 1.0 * reaction_PICellDeath);
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


