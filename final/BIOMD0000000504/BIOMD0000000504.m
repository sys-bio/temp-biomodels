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
% Model name = Proctor2013 - Cartilage breakdown, interventions to reduce collagen release
%
% is http://identifiers.org/biomodels.db/MODEL1305280001
% is http://identifiers.org/biomodels.db/BIOMD0000000504
% isDescribedBy http://identifiers.org/pubmed/24285357
%


function main()
%Initial conditions vector
	x0=zeros(73,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 100.0;
	x0(5) = 5.0;
	x0(6) = 0.0;
	x0(7) = 100.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 100.0;
	x0(11) = 0.0;
	x0(12) = 100.0;
	x0(13) = 0.0;
	x0(14) = 100.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 100.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 100.0;
	x0(29) = 0.0;
	x0(30) = 20.0;
	x0(31) = 20.0;
	x0(32) = 100.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 100000.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 100.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 1000.0;
	x0(53) = 200.0;
	x0(54) = 200.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 100.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 100.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 2.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Compartment: id = membrane, name = membrane, constant
	compartment_membrane=1.0;
% Compartment: id = ecm, name = ecm, constant
	compartment_ecm=1.0;
% Parameter:   id =  kactMMP13mmp3, name = kactMMP13mmp3
	global_par_kactMMP13mmp3=5.0E-8;
% Parameter:   id =  kactMMP1mat, name = kactMMP1mat
	global_par_kactMMP1mat=1.0E-9;
% Parameter:   id =  kactMMP1mmp3, name = kactMMP1mmp3
	global_par_kactMMP1mmp3=1.0E-8;
% Parameter:   id =  kactMMP3mat, name = kactMMP3mat
	global_par_kactMMP3mat=4.0E-6;
% Parameter:   id =  kAP1activity, name = kAP1activity
	global_par_kAP1activity=1.0;
% Parameter:   id =  kbincFoscJun, name = kbincFoscJun
	global_par_kbincFoscJun=5.0E-5;
% Parameter:   id =  kbinIL1IL1R, name = kbinIL1IL1R
	global_par_kbinIL1IL1R=1.0E-4;
% Parameter:   id =  kbinIL1IL1Ra, name = kbinIL1IL1Ra
	global_par_kbinIL1IL1Ra=1.0E-4;
% Parameter:   id =  kbinIRAK2, name = kbinIRAK2
	global_par_kbinIRAK2=5.0E-5;
% Parameter:   id =  kbinOSMOSMR, name = kbinOSMOSMR
	global_par_kbinOSMOSMR=1.0E-5;
% Parameter:   id =  kbinOSMOSMRa, name = kbinOSMOSMRa
	global_par_kbinOSMOSMRa=1.0E-4;
% Parameter:   id =  kbinSOCS3OSMR, name = kbinSOCS3OSMR
	global_par_kbinSOCS3OSMR=0.005;
% Parameter:   id =  kbinSP1TIMP1DNA, name = kbinSP1TIMP1DNA
	global_par_kbinSP1TIMP1DNA=1.0E-5;
% Parameter:   id =  kbinTRAF6, name = kbinTRAF6
	global_par_kbinTRAF6=1.0E-5;
% Parameter:   id =  kcyt2nucSTAT3, name = kcyt2nucSTAT3
	global_par_kcyt2nucSTAT3=0.001;
% Parameter:   id =  kdedimercJun, name = kdedimercJun
	global_par_kdedimercJun=0.01;
% Parameter:   id =  kdegADAMTS4, name = kdegADAMTS4
	global_par_kdegADAMTS4=5.0E-5;
% Parameter:   id =  kdegADAMTS4mRNA, name = kdegADAMTS4mRNA
	global_par_kdegADAMTS4mRNA=1.4E-5;
% Parameter:   id =  kdegAggrecan, name = kdegAggrecan
	global_par_kdegAggrecan=3.0E-8;
% Parameter:   id =  kdegcFos, name = kdegcFos
	global_par_kdegcFos=2.0E-4;
% Parameter:   id =  kdegcFosmRNA, name = kdegcFosmRNA
	global_par_kdegcFosmRNA=0.003;
% Parameter:   id =  kdegcJun, name = kdegcJun
	global_par_kdegcJun=1.3E-4;
% Parameter:   id =  kdegcJunmRNA, name = kdegcJunmRNA
	global_par_kdegcJunmRNA=0.003;
% Parameter:   id =  kdegCollagen2mmp1, name = kdegCollagen2mmp1
	global_par_kdegCollagen2mmp1=5.0E-12;
% Parameter:   id =  kdegCollagen2mmp13, name = kdegCollagen2mmp13
	global_par_kdegCollagen2mmp13=5.0E-11;
% Parameter:   id =  kdegDUSP16, name = kdegDUSP16
	global_par_kdegDUSP16=1.3E-4;
% Parameter:   id =  kdegIL1, name = kdegIL1
	global_par_kdegIL1=2.0E-4;
% Parameter:   id =  kdegMatriptase, name = kdegMatriptase
	global_par_kdegMatriptase=8.0E-6;
% Parameter:   id =  kdegMKP1, name = kdegMKP1
	global_par_kdegMKP1=1.0E-4;
% Parameter:   id =  kdegMMP1, name = kdegMMP1
	global_par_kdegMMP1=1.0E-6;
% Parameter:   id =  kdegMMP13, name = kdegMMP13
	global_par_kdegMMP13=1.0E-6;
% Parameter:   id =  kdegMMP13mRNA, name = kdegMMP13mRNA
	global_par_kdegMMP13mRNA=6.4E-6;
% Parameter:   id =  kdegMMP1mRNA, name = kdegMMP1mRNA
	global_par_kdegMMP1mRNA=6.4E-6;
% Parameter:   id =  kdegMMP3, name = kdegMMP3
	global_par_kdegMMP3=1.0E-6;
% Parameter:   id =  kdegMMP3mRNA, name = kdegMMP3mRNA
	global_par_kdegMMP3mRNA=6.4E-6;
% Parameter:   id =  kdegOSM, name = kdegOSM
	global_par_kdegOSM=4.8E-5;
% Parameter:   id =  kdegPP4, name = kdegPP4
	global_par_kdegPP4=1.0E-4;
% Parameter:   id =  kdegPTPRT, name = kdegPTPRT
	global_par_kdegPTPRT=5.0E-5;
% Parameter:   id =  kdegSOCS3, name = kdegSOCS3
	global_par_kdegSOCS3=8.0E-4;
% Parameter:   id =  kdegSOCS3mRNA, name = kdegSOCS3mRNA
	global_par_kdegSOCS3mRNA=4.0E-4;
% Parameter:   id =  kdegSP1, name = kdegSP1
	global_par_kdegSP1=2.0E-5;
% Parameter:   id =  kdegTIMP1, name = kdegTIMP1
	global_par_kdegTIMP1=2.0E-5;
% Parameter:   id =  kdegTIMP1mRNA, name = kdegTIMP1mRNA
	global_par_kdegTIMP1mRNA=1.4E-5;
% Parameter:   id =  kdegTIMP3, name = kdegTIMP3
	global_par_kdegTIMP3=2.0E-5;
% Parameter:   id =  kdegTIMP3mRNA, name = kdegTIMP3mRNA
	global_par_kdegTIMP3mRNA=1.4E-5;
% Parameter:   id =  kdephoscFos, name = kdephoscFos
	global_par_kdephoscFos=1.0E-4;
% Parameter:   id =  kdephoscFosDUSP16, name = kdephoscFosDUSP16
	global_par_kdephoscFosDUSP16=1.0E-4;
% Parameter:   id =  kdephoscJun, name = kdephoscJun
	global_par_kdephoscJun=0.01;
% Parameter:   id =  kdephosJAK1, name = kdephosJAK1
	global_par_kdephosJAK1=4.0E-4;
% Parameter:   id =  kdephosJAK1PTPRT, name = kdephosJAK1PTPRT
	global_par_kdephosJAK1PTPRT=0.004;
% Parameter:   id =  kdephosJNK, name = kdephosJNK
	global_par_kdephosJNK=0.001;
% Parameter:   id =  kdephosJNKDUSP16, name = kdephosJNKDUSP16
	global_par_kdephosJNKDUSP16=0.001;
% Parameter:   id =  kdephosp38, name = kdephosp38
	global_par_kdephosp38=0.001;
% Parameter:   id =  kdephosp38MKP1, name = kdephosp38MKP1
	global_par_kdephosp38MKP1=1.0E-5;
% Parameter:   id =  kdephosSTAT3, name = kdephosSTAT3
	global_par_kdephosSTAT3=1.0E-5;
% Parameter:   id =  kdephosSTAT3nuc, name = kdephosSTAT3nuc
	global_par_kdephosSTAT3nuc=1.0E-7;
% Parameter:   id =  kdephosSTAT3nucPTPRT, name = kdephosSTAT3nucPTPRT
	global_par_kdephosSTAT3nucPTPRT=5.0E-4;
% Parameter:   id =  kdephosSTAT3PTPRT, name = kdephosSTAT3PTPRT
	global_par_kdephosSTAT3PTPRT=8.0E-4;
% Parameter:   id =  kdimercJun, name = kdimercJun
	global_par_kdimercJun=5.0E-5;
% Parameter:   id =  kinhibADAMTS4TIMP1, name = kinhibADAMTS4TIMP1
	global_par_kinhibADAMTS4TIMP1=3.0E-6;
% Parameter:   id =  kinhibADAMTS4TIMP3, name = kinhibADAMTS4TIMP3
	global_par_kinhibADAMTS4TIMP3=5.0E-4;
% Parameter:   id =  kinhibMMP13TIMP1, name = kinhibMMP13TIMP1
	global_par_kinhibMMP13TIMP1=3.0E-7;
% Parameter:   id =  kinhibMMP13TIMP3, name = kinhibMMP13TIMP3
	global_par_kinhibMMP13TIMP3=1.0E-8;
% Parameter:   id =  kinhibMMP1TIMP1, name = kinhibMMP1TIMP1
	global_par_kinhibMMP1TIMP1=3.0E-7;
% Parameter:   id =  kinhibMMP1TIMP3, name = kinhibMMP1TIMP3
	global_par_kinhibMMP1TIMP3=1.0E-8;
% Parameter:   id =  kinhibMMP3TIMP1, name = kinhibMMP3TIMP1
	global_par_kinhibMMP3TIMP1=3.0E-7;
% Parameter:   id =  kinhibMMP3TIMP3, name = kinhibMMP3TIMP3
	global_par_kinhibMMP3TIMP3=1.0E-8;
% Parameter:   id =  kinhibTRAF6, name = kinhibTRAF6
	global_par_kinhibTRAF6=0.5;
% Parameter:   id =  knuc2cytSTAT3, name = knuc2cytSTAT3
	global_par_knuc2cytSTAT3=0.001;
% Parameter:   id =  kphoscFos, name = kphoscFos
	global_par_kphoscFos=5.0E-7;
% Parameter:   id =  kphoscJun, name = kphoscJun
	global_par_kphoscJun=1.0E-4;
% Parameter:   id =  kphosJAK1, name = kphosJAK1
	global_par_kphosJAK1=1.0E-5;
% Parameter:   id =  kphosJNK, name = kphosJNK
	global_par_kphosJNK=1.0E-4;
% Parameter:   id =  kphosp38, name = kphosp38
	global_par_kphosp38=1.0E-4;
% Parameter:   id =  kphosSTAT3, name = kphosSTAT3
	global_par_kphosSTAT3=0.005;
% Parameter:   id =  krelADAMTS4TIMP1, name = krelADAMTS4TIMP1
	global_par_krelADAMTS4TIMP1=0.001;
% Parameter:   id =  krelADAMTS4TIMP3, name = krelADAMTS4TIMP3
	global_par_krelADAMTS4TIMP3=0.001;
% Parameter:   id =  krelcFoscJun, name = krelcFoscJun
	global_par_krelcFoscJun=4.0E-5;
% Parameter:   id =  krelIL1IL1R, name = krelIL1IL1R
	global_par_krelIL1IL1R=0.001;
% Parameter:   id =  krelIL1IL1Ra, name = krelIL1IL1Ra
	global_par_krelIL1IL1Ra=1.0E-4;
% Parameter:   id =  krelIRAK2, name = krelIRAK2
	global_par_krelIRAK2=0.001;
% Parameter:   id =  krelMMP1, name = krelMMP1
	global_par_krelMMP1=0.001;
% Parameter:   id =  krelMMP13, name = krelMMP13
	global_par_krelMMP13=0.001;
% Parameter:   id =  krelMMP13TIMP3, name = krelMMP13TIMP3
	global_par_krelMMP13TIMP3=0.001;
% Parameter:   id =  krelMMP1TIMP3, name = krelMMP1TIMP3
	global_par_krelMMP1TIMP3=0.001;
% Parameter:   id =  krelMMP3, name = krelMMP3
	global_par_krelMMP3=0.001;
% Parameter:   id =  krelMMP3TIMP3, name = krelMMP3TIMP3
	global_par_krelMMP3TIMP3=0.001;
% Parameter:   id =  krelOSMOSMR, name = krelOSMOSMR
	global_par_krelOSMOSMR=1.0E-5;
% Parameter:   id =  krelOSMOSMRa, name = krelOSMOSMRa
	global_par_krelOSMOSMRa=1.0E-5;
% Parameter:   id =  krelSOCS3OSMR, name = krelSOCS3OSMR
	global_par_krelSOCS3OSMR=1.0E-5;
% Parameter:   id =  krelSP1TIMP1DNA, name = krelSP1TIMP1DNA
	global_par_krelSP1TIMP1DNA=5.0E-6;
% Parameter:   id =  krelTRAF6, name = krelTRAF6
	global_par_krelTRAF6=1.0E-4;
% Parameter:   id =  krelTRAF6PP4, name = krelTRAF6PP4
	global_par_krelTRAF6PP4=1.0E-6;
% Parameter:   id =  ksynADAMTS4, name = ksynADAMTS4
	global_par_ksynADAMTS4=5.0E-4;
% Parameter:   id =  ksynADAMTS4mRNA, name = ksynADAMTS4mRNA
	global_par_ksynADAMTS4mRNA=5.0E-4;
% Parameter:   id =  ksynADAMTS4mRNAcJun, name = ksynADAMTS4mRNAcJun
	global_par_ksynADAMTS4mRNAcJun=4.0E-6;
% Parameter:   id =  ksynbasalcJunmRNA, name = ksynbasalcJunmRNA
	global_par_ksynbasalcJunmRNA=0.015;
% Parameter:   id =  ksynbasalTIMP1mRNA, name = ksynbasalTIMP1mRNA
	global_par_ksynbasalTIMP1mRNA=1.4E-4;
% Parameter:   id =  ksynbasalTIMP3mRNA, name = ksynbasalTIMP3mRNA
	global_par_ksynbasalTIMP3mRNA=2.8E-4;
% Parameter:   id =  ksyncFos, name = ksyncFos
	global_par_ksyncFos=0.001;
% Parameter:   id =  ksyncFosmRNA, name = ksyncFosmRNA
	global_par_ksyncFosmRNA=5.0E-6;
% Parameter:   id =  ksyncFosmRNAStat3, name = ksyncFosmRNAStat3
	global_par_ksyncFosmRNAStat3=0.05;
% Parameter:   id =  ksyncJun, name = ksyncJun
	global_par_ksyncJun=0.0026;
% Parameter:   id =  ksyncJunmRNA, name = ksyncJunmRNA
	global_par_ksyncJunmRNA=0.0125;
% Parameter:   id =  ksyncJunmRNAcJun, name = ksyncJunmRNAcJun
	global_par_ksyncJunmRNAcJun=0.005;
% Parameter:   id =  ksynDUSP16, name = ksynDUSP16
	global_par_ksynDUSP16=0.005;
% Parameter:   id =  ksynDUSP16cJun, name = ksynDUSP16cJun
	global_par_ksynDUSP16cJun=2.0E-4;
% Parameter:   id =  ksynMatriptase, name = ksynMatriptase
	global_par_ksynMatriptase=9.0E-10;
% Parameter:   id =  ksynMKP1, name = ksynMKP1
	global_par_ksynMKP1=2.5E-5;
% Parameter:   id =  ksynMKP1cJun, name = ksynMKP1cJun
	global_par_ksynMKP1cJun=1.0E-6;
% Parameter:   id =  ksynMMP1, name = ksynMMP1
	global_par_ksynMMP1=1.5E-4;
% Parameter:   id =  ksynMMP13, name = ksynMMP13
	global_par_ksynMMP13=1.5E-5;
% Parameter:   id =  ksynMMP13mRNA, name = ksynMMP13mRNA
	global_par_ksynMMP13mRNA=5.0E-4;
% Parameter:   id =  ksynMMP13mRNAcJun, name = ksynMMP13mRNAcJun
	global_par_ksynMMP13mRNAcJun=2.0E-5;
% Parameter:   id =  ksynMMP1mRNA, name = ksynMMP1mRNA
	global_par_ksynMMP1mRNA=0.005;
% Parameter:   id =  ksynMMP1mRNAcJun, name = ksynMMP1mRNAcJun
	global_par_ksynMMP1mRNAcJun=2.0E-4;
% Parameter:   id =  ksynMMP3, name = ksynMMP3
	global_par_ksynMMP3=3.0E-5;
% Parameter:   id =  ksynMMP3mRNA, name = ksynMMP3mRNA
	global_par_ksynMMP3mRNA=0.005;
% Parameter:   id =  ksynMMP3mRNAcJun, name = ksynMMP3mRNAcJun
	global_par_ksynMMP3mRNAcJun=2.0E-4;
% Parameter:   id =  ksynPP4, name = ksynPP4
	global_par_ksynPP4=0.005;
% Parameter:   id =  ksynPP4cJun, name = ksynPP4cJun
	global_par_ksynPP4cJun=2.0E-4;
% Parameter:   id =  ksynPTPRT, name = ksynPTPRT
	global_par_ksynPTPRT=1.0E-4;
% Parameter:   id =  ksynSOCS3, name = ksynSOCS3
	global_par_ksynSOCS3=0.001;
% Parameter:   id =  ksynSOCS3mRNA, name = ksynSOCS3mRNA
	global_par_ksynSOCS3mRNA=0.006;
% Parameter:   id =  ksynSP1, name = ksynSP1
	global_par_ksynSP1=2.0E-5;
% Parameter:   id =  ksynTIMP1, name = ksynTIMP1
	global_par_ksynTIMP1=2.0E-4;
% Parameter:   id =  ksynTIMP1mRNA, name = ksynTIMP1mRNA
	global_par_ksynTIMP1mRNA=5.0E-7;
% Parameter:   id =  ksynTIMP1mRNAStat3, name = ksynTIMP1mRNAStat3
	global_par_ksynTIMP1mRNAStat3=4.0E-5;
% Parameter:   id =  ksynTIMP3, name = ksynTIMP3
	global_par_ksynTIMP3=4.0E-4;
% Parameter:   id =  ksynTIMP3mRNA, name = ksynTIMP3mRNA
	global_par_ksynTIMP3mRNA=5.0E-7;
% Parameter:   id =  ksynTIMP3mRNAStat3, name = ksynTIMP3mRNAStat3
	global_par_ksynTIMP3mRNAStat3=4.0E-5;

% Reaction: id = IL1binding
	reaction_IL1binding=global_par_kbinIL1IL1R*x(42)*x(58);

% Reaction: id = IL1release
	reaction_IL1release=global_par_krelIL1IL1R*x(55);

% Reaction: id = IL1antagonistbinding
	reaction_IL1antagonistbinding=global_par_kbinIL1IL1Ra*x(42)*x(59);

% Reaction: id = IL1antagonistrelease
	reaction_IL1antagonistrelease=global_par_krelIL1IL1Ra*x(56);

% Reaction: id = IL1degradation
	reaction_IL1degradation=global_par_kdegIL1*x(42);

% Reaction: id = IRAK2binding
	reaction_IRAK2binding=global_par_kbinIRAK2*x(55)*x(7);

% Reaction: id = IRAK2release
	reaction_IRAK2release=global_par_krelIRAK2*x(57);

% Reaction: id = TRAF6binding
	reaction_TRAF6binding=global_par_kbinTRAF6*x(57)*x(32);

% Reaction: id = TRAF6release
	reaction_TRAF6release=global_par_krelTRAF6*x(8);

% Reaction: id = JNKphosphorylation
	reaction_JNKphosphorylation=global_par_kphosJNK*x(12)*x(8);

% Reaction: id = JNKdephosphorylation
	reaction_JNKdephosphorylation=global_par_kdephosJNK*x(13);

% Reaction: id = JNKdephosphorylationByDUSP16
	reaction_JNKdephosphorylationByDUSP16=global_par_kdephosJNKDUSP16*x(13)*x(6);

% Reaction: id = cJunPhosphorylation
	reaction_cJunPhosphorylation=global_par_kphoscJun*x(4)*x(13);

% Reaction: id = cJunDephosphorylation
	reaction_cJunDephosphorylation=global_par_kdephoscJun*x(67);

% Reaction: id = cJunDimerisation
	reaction_cJunDimerisation=global_par_kdimercJun*x(67)*(x(67)-1)*0.5;

% Reaction: id = cJunDedimerisation
	reaction_cJunDedimerisation=global_par_kdedimercJun*x(68);

% Reaction: id = cJunTranscriptionAP1
	reaction_cJunTranscriptionAP1=global_par_ksyncJunmRNA*x(65)*global_par_kAP1activity;

% Reaction: id = cJunTranscriptioncJun
	reaction_cJunTranscriptioncJun=global_par_ksyncJunmRNAcJun*x(68);

% Reaction: id = cJunBasalTranscription
	reaction_cJunBasalTranscription=global_par_ksynbasalcJunmRNA*const_species_Source;

% Reaction: id = cJunmRNADegradation
	reaction_cJunmRNADegradation=global_par_kdegcJunmRNA*x(5);

% Reaction: id = cJunTranslation
	reaction_cJunTranslation=global_par_ksyncJun*x(5);

% Reaction: id = cJunDegradation
	reaction_cJunDegradation=global_par_kdegcJun*x(4);

% Reaction: id = p38phosphorylation
	reaction_p38phosphorylation=global_par_kphosp38*x(19)*x(8);

% Reaction: id = p38dephosphorylation
	reaction_p38dephosphorylation=global_par_kdephosp38*x(20);

% Reaction: id = p38dephosphorylationMKP1
	reaction_p38dephosphorylationMKP1=global_par_kdephosp38MKP1*x(20)*x(15);

% Reaction: id = MMP1Transcription_AP1
	reaction_MMP1Transcription_AP1=global_par_ksynMMP1mRNA*x(65)*global_par_kAP1activity;

% Reaction: id = MMP1Transcription_cJun_dimer
	reaction_MMP1Transcription_cJun_dimer=global_par_ksynMMP1mRNAcJun*x(68);

% Reaction: id = MMP1Translation
	reaction_MMP1Translation=global_par_ksynMMP1*x(16);

% Reaction: id = MMP1mRNADegradation
	reaction_MMP1mRNADegradation=global_par_kdegMMP1mRNA*x(16);

% Reaction: id = proMMP1cleavageByMatriptase
	reaction_proMMP1cleavageByMatriptase=global_par_kactMMP1mat*x(22)*x(14);

% Reaction: id = proMMP1cleavageByMMP3
	reaction_proMMP1cleavageByMMP3=global_par_kactMMP1mmp3*x(22)*x(46);

% Reaction: id = MMP1Degradation
	reaction_MMP1Degradation=global_par_kdegMMP1*x(43);

% Reaction: id = MMP3Transcription_AP1
	reaction_MMP3Transcription_AP1=global_par_ksynMMP3mRNA*x(65)*global_par_kAP1activity;

% Reaction: id = MMP3Transcription_cJun_dimer
	reaction_MMP3Transcription_cJun_dimer=global_par_ksynMMP3mRNAcJun*x(68);

% Reaction: id = MMP3Translation
	reaction_MMP3Translation=global_par_ksynMMP3*x(17);

% Reaction: id = MMP3mRNADegradation
	reaction_MMP3mRNADegradation=global_par_kdegMMP3mRNA*x(17);

% Reaction: id = proMMP3cleavageByMatriptase
	reaction_proMMP3cleavageByMatriptase=global_par_kactMMP3mat*x(23)*x(14);

% Reaction: id = MMP3Degradation
	reaction_MMP3Degradation=global_par_kdegMMP3*x(46);

% Reaction: id = MMP13Transcription_AP1
	reaction_MMP13Transcription_AP1=global_par_ksynMMP13mRNA*x(65)*global_par_kAP1activity;

% Reaction: id = MMP13Transcription_cJun_dimer
	reaction_MMP13Transcription_cJun_dimer=global_par_ksynMMP13mRNAcJun*x(68);

% Reaction: id = MMP13Translation
	reaction_MMP13Translation=global_par_ksynMMP13*x(18);

% Reaction: id = MMP13mRNADegradation
	reaction_MMP13mRNADegradation=global_par_kdegMMP13mRNA*x(18);

% Reaction: id = proMMP13cleavageByMMP3
	reaction_proMMP13cleavageByMMP3=global_par_kactMMP13mmp3*x(24)*x(46);

% Reaction: id = MMP13Degradation
	reaction_MMP13Degradation=global_par_kdegMMP13*x(49);

% Reaction: id = TIMP1Translation
	reaction_TIMP1Translation=global_par_ksynTIMP1*x(30);

% Reaction: id = TIMP1mRNADegradation
	reaction_TIMP1mRNADegradation=global_par_kdegTIMP1mRNA*x(30);

% Reaction: id = TIMP1Degradation
	reaction_TIMP1Degradation=global_par_kdegTIMP1*x(53);

% Reaction: id = ADAMTS4Transcription_AP1
	reaction_ADAMTS4Transcription_AP1=global_par_ksynADAMTS4mRNA*x(65)*global_par_kAP1activity;

% Reaction: id = ADAMTS4Transcription_cJun_dimer
	reaction_ADAMTS4Transcription_cJun_dimer=global_par_ksynADAMTS4mRNAcJun*x(68);

% Reaction: id = ADAMTS4Translation
	reaction_ADAMTS4Translation=global_par_ksynADAMTS4*x(1);

% Reaction: id = ADAMTS4mRNADegradation
	reaction_ADAMTS4mRNADegradation=global_par_kdegADAMTS4mRNA*x(1);

% Reaction: id = ADAMTS4Degradation
	reaction_ADAMTS4Degradation=global_par_kdegADAMTS4*x(34);

% Reaction: id = PP4Synthesis
	reaction_PP4Synthesis=global_par_ksynPP4*x(65)*global_par_kAP1activity;

% Reaction: id = PP4Synthesis_cJun_dimer
	reaction_PP4Synthesis_cJun_dimer=global_par_ksynPP4cJun*x(68);

% Reaction: id = DUSP16Synthesis
	reaction_DUSP16Synthesis=global_par_ksynDUSP16*x(65)*global_par_kAP1activity;

% Reaction: id = DUSP16Synthesis_cJun_dimer
	reaction_DUSP16Synthesis_cJun_dimer=global_par_ksynDUSP16cJun*x(68);

% Reaction: id = PP4Degradation
	reaction_PP4Degradation=global_par_kdegPP4*x(21);

% Reaction: id = DUSP16Degradation
	reaction_DUSP16Degradation=global_par_kdegDUSP16*x(6);

% Reaction: id = TRAF6Inhibition
	reaction_TRAF6Inhibition=global_par_kinhibTRAF6*x(32)*x(21);

% Reaction: id = BoundTRAF6Inhibition
	reaction_BoundTRAF6Inhibition=global_par_kinhibTRAF6*x(8)*x(21);

% Reaction: id = TRAF6PP4Disassociation
	reaction_TRAF6PP4Disassociation=global_par_krelTRAF6PP4*x(33);

% Reaction: id = IRAK2_TRAF6PP4Disassociation
	reaction_IRAK2_TRAF6PP4Disassociation=global_par_krelTRAF6PP4*x(9);

% Reaction: id = Transcription_cFos_byAP1
	reaction_Transcription_cFos_byAP1=global_par_ksyncFosmRNA*x(65)*global_par_kAP1activity;

% Reaction: id = cFosmRNA_Degradation
	reaction_cFosmRNA_Degradation=global_par_kdegcFosmRNA*x(3);

% Reaction: id = cFosSynthesis
	reaction_cFosSynthesis=global_par_ksyncFos*x(3);

% Reaction: id = cFosDegradation
	reaction_cFosDegradation=global_par_kdegcFos*x(2);

% Reaction: id = cFosPhosphorylation_p38
	reaction_cFosPhosphorylation_p38=global_par_kphoscFos*x(20)*x(2);

% Reaction: id = cFosDephosphorylation
	reaction_cFosDephosphorylation=global_par_kdephoscFos*x(66);

% Reaction: id = MKP1Synthesis
	reaction_MKP1Synthesis=global_par_ksynMKP1*x(65)*global_par_kAP1activity;

% Reaction: id = MKP1Synthesis_cJun_dimer
	reaction_MKP1Synthesis_cJun_dimer=global_par_ksynMKP1cJun*x(68);

% Reaction: id = MKP1Degradation
	reaction_MKP1Degradation=global_par_kdegMKP1*x(15);

% Reaction: id = cFosDephosphorylationByDusp16
	reaction_cFosDephosphorylationByDusp16=global_par_kdephoscFosDUSP16*x(66)*x(6);

% Reaction: id = cFoscJunBinding
	reaction_cFoscJunBinding=global_par_kbincFoscJun*x(66)*x(67);

% Reaction: id = cFoscJunRelease
	reaction_cFoscJunRelease=global_par_krelcFoscJun*x(65);

% Reaction: id = OSM_OSMR_binding
	reaction_OSM_OSMR_binding=global_par_kbinOSMOSMR*x(52)*x(63);

% Reaction: id = OSM_OSMR_release
	reaction_OSM_OSMR_release=global_par_krelOSMOSMR*x(60);

% Reaction: id = OSM_OSMRa_binding
	reaction_OSM_OSMRa_binding=global_par_kbinOSMOSMRa*x(52)*x(64);

% Reaction: id = OSM_OSMRa_release
	reaction_OSM_OSMRa_release=global_par_krelOSMOSMRa*x(61);

% Reaction: id = JAK1_Phosphorylation
	reaction_JAK1_Phosphorylation=global_par_kphosJAK1*x(10)*x(60);

% Reaction: id = JAK1_Dephosphorylation
	reaction_JAK1_Dephosphorylation=global_par_kdephosJAK1*x(11);

% Reaction: id = JAK1_DephosphorylationByPTPRT
	reaction_JAK1_DephosphorylationByPTPRT=global_par_kdephosJAK1PTPRT*x(11)*x(25);

% Reaction: id = STAT3_Phosphorylation
	reaction_STAT3_Phosphorylation=global_par_kphosSTAT3*x(28)*x(11);

% Reaction: id = STAT3_cyt_Dephosphorylation
	reaction_STAT3_cyt_Dephosphorylation=global_par_kdephosSTAT3*x(29);

% Reaction: id = STAT3_cyt_DephosphorylationByPTPRT
	reaction_STAT3_cyt_DephosphorylationByPTPRT=global_par_kdephosSTAT3PTPRT*x(29)*x(25);

% Reaction: id = STAT3_nuc_Dephosphorylation
	reaction_STAT3_nuc_Dephosphorylation=global_par_kdephosSTAT3nuc*x(72);

% Reaction: id = STAT3_nuc_DephosphorylationByPTPRT
	reaction_STAT3_nuc_DephosphorylationByPTPRT=global_par_kdephosSTAT3nucPTPRT*x(72)*x(25);

% Reaction: id = STAT3_transport_to_nucleus
	reaction_STAT3_transport_to_nucleus=global_par_kcyt2nucSTAT3*x(29);

% Reaction: id = STAT3_transport_from_nucleus
	reaction_STAT3_transport_from_nucleus=global_par_knuc2cytSTAT3*x(71);

% Reaction: id = cFos_induction_by_STAT3
	reaction_cFos_induction_by_STAT3=global_par_ksyncFosmRNAStat3*x(72);

% Reaction: id = PTPRT_induction_by_STAT3
	reaction_PTPRT_induction_by_STAT3=global_par_ksynPTPRT*x(72);

% Reaction: id = PTPRT_degradation
	reaction_PTPRT_degradation=global_par_kdegPTPRT*x(25);

% Reaction: id = STAT3_induction_of_SOCS3
	reaction_STAT3_induction_of_SOCS3=global_par_ksynSOCS3mRNA*x(72);

% Reaction: id = SOCS3mRNAdegradation
	reaction_SOCS3mRNAdegradation=global_par_kdegSOCS3mRNA*x(27);

% Reaction: id = SOCS3_translation
	reaction_SOCS3_translation=global_par_ksynSOCS3*x(27);

% Reaction: id = SOCS3_degradation
	reaction_SOCS3_degradation=global_par_kdegSOCS3*x(26);

% Reaction: id = SOCS3_OSMR_binding
	reaction_SOCS3_OSMR_binding=global_par_kbinSOCS3OSMR*x(26)*x(63);

% Reaction: id = SOCS3_OSMR_release
	reaction_SOCS3_OSMR_release=global_par_krelSOCS3OSMR*x(62);

% Reaction: id = OSM_degradation
	reaction_OSM_degradation=global_par_kdegOSM*x(52);

% Reaction: id = MMP1InhibtionByTIMP1
	reaction_MMP1InhibtionByTIMP1=global_par_kinhibMMP1TIMP1*x(43)*x(53);

% Reaction: id = MMP1_TIMP1release
	reaction_MMP1_TIMP1release=global_par_krelMMP1*x(44);

% Reaction: id = MMP3InhibtionByTIMP1
	reaction_MMP3InhibtionByTIMP1=global_par_kinhibMMP3TIMP1*x(46)*x(53);

% Reaction: id = MMP3_TIMP1release
	reaction_MMP3_TIMP1release=global_par_krelMMP3*x(47);

% Reaction: id = MMP13InhibtionByTIMP1
	reaction_MMP13InhibtionByTIMP1=global_par_kinhibMMP13TIMP1*x(49)*x(53);

% Reaction: id = MMP13_TIMP1release
	reaction_MMP13_TIMP1release=global_par_krelMMP13*x(50);

% Reaction: id = ADAMTS4InhibtionByTIMP1
	reaction_ADAMTS4InhibtionByTIMP1=global_par_kinhibADAMTS4TIMP1*x(34)*x(53);

% Reaction: id = ADAMTS4_TIMP1release
	reaction_ADAMTS4_TIMP1release=global_par_krelADAMTS4TIMP1*x(35);

% Reaction: id = Collagen2DegradationByMMP1
	reaction_Collagen2DegradationByMMP1=global_par_kdegCollagen2mmp1*x(41)*x(43);

% Reaction: id = Collagen2DegradationByMMP13
	reaction_Collagen2DegradationByMMP13=global_par_kdegCollagen2mmp13*x(41)*x(49);

% Reaction: id = AggrecanDegradationByADAMTS4
	reaction_AggrecanDegradationByADAMTS4=global_par_kdegAggrecan*x(38)*x(34);

% Reaction: id = MatriptaseSynthesis
	reaction_MatriptaseSynthesis=global_par_ksynMatriptase*x(65)*global_par_kAP1activity;

% Reaction: id = MatriptaseDegradation
	reaction_MatriptaseDegradation=global_par_kdegMatriptase*x(14);

% Reaction: id = SP1Synthesis
	reaction_SP1Synthesis=global_par_ksynSP1*x(65)*global_par_kAP1activity;

% Reaction: id = SP1Degradation
	reaction_SP1Degradation=global_par_kdegSP1*x(69);

% Reaction: id = SP1_TIMP1_DNAbinding
	reaction_SP1_TIMP1_DNAbinding=global_par_kbinSP1TIMP1DNA*x(69)*x(73);

% Reaction: id = SP1_TIMP1_DNArelease
	reaction_SP1_TIMP1_DNArelease=global_par_krelSP1TIMP1DNA*x(70);

% Reaction: id = TIMP1_transcription_STAT3
	reaction_TIMP1_transcription_STAT3=global_par_ksynTIMP1mRNAStat3*x(72)*x(73);

% Reaction: id = TIMP1BasalTranscription
	reaction_TIMP1BasalTranscription=global_par_ksynbasalTIMP1mRNA*x(73);

% Reaction: id = TIMP1Transcription_AP1
	reaction_TIMP1Transcription_AP1=global_par_ksynTIMP1mRNA*x(65)*x(73)*global_par_kAP1activity;

% Reaction: id = TIMP3BasalTranscriptionn
	reaction_TIMP3BasalTranscriptionn=global_par_ksynbasalTIMP3mRNA*const_species_Source;

% Reaction: id = TIMP3Transcription_AP1
	reaction_TIMP3Transcription_AP1=global_par_ksynTIMP3mRNA*x(65)*global_par_kAP1activity;

% Reaction: id = TIMP3Transcription_STAT3
	reaction_TIMP3Transcription_STAT3=global_par_ksynTIMP3mRNAStat3*x(72)*global_par_kAP1activity;

% Reaction: id = TIMP3Translation
	reaction_TIMP3Translation=global_par_ksynTIMP3*x(31);

% Reaction: id = TIMP3mRNADegradation
	reaction_TIMP3mRNADegradation=global_par_kdegTIMP3mRNA*x(31);

% Reaction: id = TIMP3Degradation
	reaction_TIMP3Degradation=global_par_kdegTIMP3*x(54);

% Reaction: id = ADAMTS4InhibitionByTimp3
	reaction_ADAMTS4InhibitionByTimp3=global_par_kinhibADAMTS4TIMP3*x(54)*x(34);

% Reaction: id = ADAMTS4_TIMP3release
	reaction_ADAMTS4_TIMP3release=global_par_krelADAMTS4TIMP3*x(36);

% Reaction: id = MMP1InhibtionByTIMP3
	reaction_MMP1InhibtionByTIMP3=global_par_kinhibMMP1TIMP3*x(43)*x(54);

% Reaction: id = MMP1_TIMP3release
	reaction_MMP1_TIMP3release=global_par_krelMMP1TIMP3*x(45);

% Reaction: id = MMP3InhibtionByTIMP3
	reaction_MMP3InhibtionByTIMP3=global_par_kinhibMMP3TIMP3*x(46)*x(54);

% Reaction: id = MMP3_TIMP3release
	reaction_MMP3_TIMP3release=global_par_krelMMP3TIMP3*x(48);

% Reaction: id = MMP13InhibtionByTIMP3
	reaction_MMP13InhibtionByTIMP3=global_par_kinhibMMP13TIMP3*x(49)*x(54);

% Reaction: id = MMP13_TIMP3release
	reaction_MMP13_TIMP3release=global_par_krelMMP13TIMP3*x(51);

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

	xdot=zeros(73,1);
	
% Species:   id = ADAMTS4_mRNA, name = ADAMTS4_mRNA, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_ADAMTS4Transcription_AP1) + ( 1.0 * reaction_ADAMTS4Transcription_cJun_dimer) + (-1.0 * reaction_ADAMTS4Translation) + ( 1.0 * reaction_ADAMTS4Translation) + (-1.0 * reaction_ADAMTS4mRNADegradation);
	
% Species:   id = cFos, name = cFos, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_cFosSynthesis) + (-1.0 * reaction_cFosDegradation) + (-1.0 * reaction_cFosPhosphorylation_p38) + ( 1.0 * reaction_cFosDephosphorylation) + ( 1.0 * reaction_cFosDephosphorylationByDusp16);
	
% Species:   id = cFos_mRNA, name = cFos_mRNA, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Transcription_cFos_byAP1) + (-1.0 * reaction_cFosmRNA_Degradation) + (-1.0 * reaction_cFosSynthesis) + ( 1.0 * reaction_cFosSynthesis) + ( 1.0 * reaction_cFos_induction_by_STAT3);
	
% Species:   id = cJun, name = cJun, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_cJunPhosphorylation) + ( 1.0 * reaction_cJunDephosphorylation) + ( 1.0 * reaction_cJunTranslation) + (-1.0 * reaction_cJunDegradation);
	
% Species:   id = cJun_mRNA, name = cJun_mRNA, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_cJunTranscriptionAP1) + ( 1.0 * reaction_cJunTranscriptioncJun) + ( 1.0 * reaction_cJunBasalTranscription) + (-1.0 * reaction_cJunmRNADegradation) + (-1.0 * reaction_cJunTranslation) + ( 1.0 * reaction_cJunTranslation);
	
% Species:   id = DUSP16, name = DUSP16, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_JNKdephosphorylationByDUSP16) + ( 1.0 * reaction_JNKdephosphorylationByDUSP16) + ( 1.0 * reaction_DUSP16Synthesis) + ( 1.0 * reaction_DUSP16Synthesis_cJun_dimer) + (-1.0 * reaction_DUSP16Degradation) + (-1.0 * reaction_cFosDephosphorylationByDusp16) + ( 1.0 * reaction_cFosDephosphorylationByDusp16);
	
% Species:   id = IRAK2, name = IRAK2, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_IRAK2binding) + ( 1.0 * reaction_IRAK2release) + ( 1.0 * reaction_TRAF6release);
	
% Species:   id = IRAK2_TRAF6, name = IRAK2_TRAF6, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_TRAF6binding) + (-1.0 * reaction_TRAF6release) + (-1.0 * reaction_JNKphosphorylation) + ( 1.0 * reaction_JNKphosphorylation) + (-1.0 * reaction_p38phosphorylation) + ( 1.0 * reaction_p38phosphorylation) + (-1.0 * reaction_BoundTRAF6Inhibition) + ( 1.0 * reaction_IRAK2_TRAF6PP4Disassociation);
	
% Species:   id = IRAK2_TRAF6_PP4, name = IRAK2_TRAF6_PP4, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_BoundTRAF6Inhibition) + (-1.0 * reaction_IRAK2_TRAF6PP4Disassociation);
	
% Species:   id = JAK1, name = JAK1, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_JAK1_Phosphorylation) + ( 1.0 * reaction_JAK1_Dephosphorylation) + ( 1.0 * reaction_JAK1_DephosphorylationByPTPRT);
	
% Species:   id = JAK1_P, name = JAK1_P, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_JAK1_Phosphorylation) + (-1.0 * reaction_JAK1_Dephosphorylation) + (-1.0 * reaction_JAK1_DephosphorylationByPTPRT) + (-1.0 * reaction_STAT3_Phosphorylation) + ( 1.0 * reaction_STAT3_Phosphorylation);
	
% Species:   id = JNK, name = JNK, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_JNKphosphorylation) + ( 1.0 * reaction_JNKdephosphorylation) + ( 1.0 * reaction_JNKdephosphorylationByDUSP16);
	
% Species:   id = JNK_P, name = JNK_P, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_JNKphosphorylation) + (-1.0 * reaction_JNKdephosphorylation) + (-1.0 * reaction_JNKdephosphorylationByDUSP16) + (-1.0 * reaction_cJunPhosphorylation) + ( 1.0 * reaction_cJunPhosphorylation);
	
% Species:   id = Matriptase, name = Matriptase, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_proMMP1cleavageByMatriptase) + ( 1.0 * reaction_proMMP1cleavageByMatriptase) + (-1.0 * reaction_proMMP3cleavageByMatriptase) + ( 1.0 * reaction_proMMP3cleavageByMatriptase) + ( 1.0 * reaction_MatriptaseSynthesis) + (-1.0 * reaction_MatriptaseDegradation);
	
% Species:   id = MKP1, name = MKP1, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_p38dephosphorylationMKP1) + ( 1.0 * reaction_p38dephosphorylationMKP1) + ( 1.0 * reaction_MKP1Synthesis) + ( 1.0 * reaction_MKP1Synthesis_cJun_dimer) + (-1.0 * reaction_MKP1Degradation);
	
% Species:   id = MMP1_mRNA, name = MMP1_mRNA, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_MMP1Transcription_AP1) + ( 1.0 * reaction_MMP1Transcription_cJun_dimer) + (-1.0 * reaction_MMP1Translation) + ( 1.0 * reaction_MMP1Translation) + (-1.0 * reaction_MMP1mRNADegradation);
	
% Species:   id = MMP3_mRNA, name = MMP3_mRNA, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_MMP3Transcription_AP1) + ( 1.0 * reaction_MMP3Transcription_cJun_dimer) + (-1.0 * reaction_MMP3Translation) + ( 1.0 * reaction_MMP3Translation) + (-1.0 * reaction_MMP3mRNADegradation);
	
% Species:   id = MMP13_mRNA, name = MMP13_mRNA, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_MMP13Transcription_AP1) + ( 1.0 * reaction_MMP13Transcription_cJun_dimer) + (-1.0 * reaction_MMP13Translation) + ( 1.0 * reaction_MMP13Translation) + (-1.0 * reaction_MMP13mRNADegradation);
	
% Species:   id = p38, name = p38, affected by kineticLaw
	xdot(19) = (-1.0 * reaction_p38phosphorylation) + ( 1.0 * reaction_p38dephosphorylation) + ( 1.0 * reaction_p38dephosphorylationMKP1);
	
% Species:   id = p38_P, name = p38_P, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_p38phosphorylation) + (-1.0 * reaction_p38dephosphorylation) + (-1.0 * reaction_p38dephosphorylationMKP1) + (-1.0 * reaction_cFosPhosphorylation_p38) + ( 1.0 * reaction_cFosPhosphorylation_p38);
	
% Species:   id = PP4, name = PP4, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_PP4Synthesis) + ( 1.0 * reaction_PP4Synthesis_cJun_dimer) + (-1.0 * reaction_PP4Degradation) + (-1.0 * reaction_TRAF6Inhibition) + (-1.0 * reaction_BoundTRAF6Inhibition) + ( 1.0 * reaction_TRAF6PP4Disassociation) + ( 1.0 * reaction_IRAK2_TRAF6PP4Disassociation);
	
% Species:   id = proMMP1, name = proMMP1, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_MMP1Translation) + (-1.0 * reaction_proMMP1cleavageByMatriptase) + (-1.0 * reaction_proMMP1cleavageByMMP3);
	
% Species:   id = proMMP3, name = proMMP3, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_MMP3Translation) + (-1.0 * reaction_proMMP3cleavageByMatriptase);
	
% Species:   id = proMMP13, name = proMMP13, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_MMP13Translation) + (-1.0 * reaction_proMMP13cleavageByMMP3);
	
% Species:   id = PTPRT, name = PTPRT, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_JAK1_DephosphorylationByPTPRT) + ( 1.0 * reaction_JAK1_DephosphorylationByPTPRT) + (-1.0 * reaction_STAT3_cyt_DephosphorylationByPTPRT) + ( 1.0 * reaction_STAT3_cyt_DephosphorylationByPTPRT) + (-1.0 * reaction_STAT3_nuc_DephosphorylationByPTPRT) + ( 1.0 * reaction_STAT3_nuc_DephosphorylationByPTPRT) + ( 1.0 * reaction_PTPRT_induction_by_STAT3) + (-1.0 * reaction_PTPRT_degradation);
	
% Species:   id = SOCS3, name = SOCS3, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_SOCS3_translation) + (-1.0 * reaction_SOCS3_degradation) + (-1.0 * reaction_SOCS3_OSMR_binding) + ( 1.0 * reaction_SOCS3_OSMR_release);
	
% Species:   id = SOCS3_mRNA, name = SOCS3_mRNA, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_STAT3_induction_of_SOCS3) + (-1.0 * reaction_SOCS3mRNAdegradation) + (-1.0 * reaction_SOCS3_translation) + ( 1.0 * reaction_SOCS3_translation);
	
% Species:   id = STAT3_cyt, name = STAT3_cyt, affected by kineticLaw
	xdot(28) = (-1.0 * reaction_STAT3_Phosphorylation) + ( 1.0 * reaction_STAT3_cyt_Dephosphorylation) + ( 1.0 * reaction_STAT3_cyt_DephosphorylationByPTPRT) + ( 1.0 * reaction_STAT3_transport_from_nucleus);
	
% Species:   id = STAT3_P_cyt, name = STAT3_P_cyt, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_STAT3_Phosphorylation) + (-1.0 * reaction_STAT3_cyt_Dephosphorylation) + (-1.0 * reaction_STAT3_cyt_DephosphorylationByPTPRT) + (-1.0 * reaction_STAT3_transport_to_nucleus);
	
% Species:   id = TIMP1_mRNA, name = TIMP1_mRNA, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_TIMP1Translation) + ( 1.0 * reaction_TIMP1Translation) + (-1.0 * reaction_TIMP1mRNADegradation) + ( 1.0 * reaction_TIMP1_transcription_STAT3) + ( 1.0 * reaction_TIMP1BasalTranscription) + ( 1.0 * reaction_TIMP1Transcription_AP1);
	
% Species:   id = TIMP3_mRNA, name = TIMP3_mRNA, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_TIMP3BasalTranscriptionn) + ( 1.0 * reaction_TIMP3Transcription_AP1) + ( 1.0 * reaction_TIMP3Transcription_STAT3) + (-1.0 * reaction_TIMP3Translation) + ( 1.0 * reaction_TIMP3Translation) + (-1.0 * reaction_TIMP3mRNADegradation);
	
% Species:   id = TRAF6, name = TRAF6, affected by kineticLaw
	xdot(32) = (-1.0 * reaction_TRAF6binding) + ( 1.0 * reaction_TRAF6release) + (-1.0 * reaction_TRAF6Inhibition) + ( 1.0 * reaction_TRAF6PP4Disassociation);
	
% Species:   id = TRAF6_PP4, name = TRAF6_PP4, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_TRAF6Inhibition) + (-1.0 * reaction_TRAF6PP4Disassociation);
	
% Species:   id = ADAMTS4, name = ADAMTS4, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_ADAMTS4Translation) + (-1.0 * reaction_ADAMTS4Degradation) + (-1.0 * reaction_ADAMTS4InhibtionByTIMP1) + ( 1.0 * reaction_ADAMTS4_TIMP1release) + (-1.0 * reaction_AggrecanDegradationByADAMTS4) + ( 1.0 * reaction_AggrecanDegradationByADAMTS4) + (-1.0 * reaction_ADAMTS4InhibitionByTimp3) + ( 1.0 * reaction_ADAMTS4_TIMP3release);
	
% Species:   id = ADAMTS4_TIMP1, name = ADAMTS4_TIMP1, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_ADAMTS4InhibtionByTIMP1) + (-1.0 * reaction_ADAMTS4_TIMP1release);
	
% Species:   id = ADAMTS4_TIMP3, name = ADAMTS4_TIMP3, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_ADAMTS4InhibitionByTimp3) + (-1.0 * reaction_ADAMTS4_TIMP3release);
	
% Species:   id = Aggrecan, name = Aggrecan
% Warning species is not changed by either rules or reactions
	xdot(37) = ;
	
% Species:   id = Aggrecan_Collagen2, name = Aggrecan_Collagen2, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_AggrecanDegradationByADAMTS4);
	
% Species:   id = AggFrag, name = AggFrag, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_AggrecanDegradationByADAMTS4);
	
% Species:   id = ColFrag, name = ColFrag, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_Collagen2DegradationByMMP1) + ( 1.0 * reaction_Collagen2DegradationByMMP13);
	
% Species:   id = Collagen2, name = Collagen2, affected by kineticLaw
	xdot(41) = (-1.0 * reaction_Collagen2DegradationByMMP1) + (-1.0 * reaction_Collagen2DegradationByMMP13) + ( 1.0 * reaction_AggrecanDegradationByADAMTS4);
	
% Species:   id = IL1, name = IL1, affected by kineticLaw
	xdot(42) = (-1.0 * reaction_IL1binding) + ( 1.0 * reaction_IL1release) + (-1.0 * reaction_IL1antagonistbinding) + ( 1.0 * reaction_IL1antagonistrelease) + (-1.0 * reaction_IL1degradation);
	
% Species:   id = MMP1, name = MMP1, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_proMMP1cleavageByMatriptase) + ( 1.0 * reaction_proMMP1cleavageByMMP3) + (-1.0 * reaction_MMP1Degradation) + (-1.0 * reaction_MMP1InhibtionByTIMP1) + ( 1.0 * reaction_MMP1_TIMP1release) + (-1.0 * reaction_Collagen2DegradationByMMP1) + ( 1.0 * reaction_Collagen2DegradationByMMP1) + (-1.0 * reaction_MMP1InhibtionByTIMP3) + ( 1.0 * reaction_MMP1_TIMP3release);
	
% Species:   id = MMP1_TIMP1, name = MMP1_TIMP1, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_MMP1InhibtionByTIMP1) + (-1.0 * reaction_MMP1_TIMP1release);
	
% Species:   id = MMP1_TIMP3, name = MMP1_TIMP3, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_MMP1InhibtionByTIMP3) + (-1.0 * reaction_MMP1_TIMP3release);
	
% Species:   id = MMP3, name = MMP3, affected by kineticLaw
	xdot(46) = (-1.0 * reaction_proMMP1cleavageByMMP3) + ( 1.0 * reaction_proMMP1cleavageByMMP3) + ( 1.0 * reaction_proMMP3cleavageByMatriptase) + (-1.0 * reaction_MMP3Degradation) + (-1.0 * reaction_proMMP13cleavageByMMP3) + ( 1.0 * reaction_proMMP13cleavageByMMP3) + (-1.0 * reaction_MMP3InhibtionByTIMP1) + ( 1.0 * reaction_MMP3_TIMP1release) + (-1.0 * reaction_MMP3InhibtionByTIMP3) + ( 1.0 * reaction_MMP3_TIMP3release);
	
% Species:   id = MMP3_TIMP1, name = MMP3_TIMP1, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_MMP3InhibtionByTIMP1) + (-1.0 * reaction_MMP3_TIMP1release);
	
% Species:   id = MMP3_TIMP3, name = MMP3_TIMP3, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_MMP3InhibtionByTIMP3) + (-1.0 * reaction_MMP3_TIMP3release);
	
% Species:   id = MMP13, name = MMP13, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_proMMP13cleavageByMMP3) + (-1.0 * reaction_MMP13Degradation) + (-1.0 * reaction_MMP13InhibtionByTIMP1) + ( 1.0 * reaction_MMP13_TIMP1release) + (-1.0 * reaction_Collagen2DegradationByMMP13) + ( 1.0 * reaction_Collagen2DegradationByMMP13) + (-1.0 * reaction_MMP13InhibtionByTIMP3) + ( 1.0 * reaction_MMP13_TIMP3release);
	
% Species:   id = MMP13_TIMP1, name = MMP13_TIMP1, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_MMP13InhibtionByTIMP1) + (-1.0 * reaction_MMP13_TIMP1release);
	
% Species:   id = MMP13_TIMP3, name = MMP13_TIMP3, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_MMP13InhibtionByTIMP3) + (-1.0 * reaction_MMP13_TIMP3release);
	
% Species:   id = OSM, name = OSM, affected by kineticLaw
	xdot(52) = (-1.0 * reaction_OSM_OSMR_binding) + ( 1.0 * reaction_OSM_OSMR_release) + (-1.0 * reaction_OSM_OSMRa_binding) + ( 1.0 * reaction_OSM_OSMRa_release) + (-1.0 * reaction_OSM_degradation);
	
% Species:   id = TIMP1, name = TIMP1, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_TIMP1Translation) + (-1.0 * reaction_TIMP1Degradation) + (-1.0 * reaction_MMP1InhibtionByTIMP1) + ( 1.0 * reaction_MMP1_TIMP1release) + (-1.0 * reaction_MMP3InhibtionByTIMP1) + ( 1.0 * reaction_MMP3_TIMP1release) + (-1.0 * reaction_MMP13InhibtionByTIMP1) + ( 1.0 * reaction_MMP13_TIMP1release) + (-1.0 * reaction_ADAMTS4InhibtionByTIMP1) + ( 1.0 * reaction_ADAMTS4_TIMP1release);
	
% Species:   id = TIMP3, name = TIMP3, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_TIMP3Translation) + (-1.0 * reaction_TIMP3Degradation) + (-1.0 * reaction_ADAMTS4InhibitionByTimp3) + ( 1.0 * reaction_ADAMTS4_TIMP3release) + (-1.0 * reaction_MMP1InhibtionByTIMP3) + ( 1.0 * reaction_MMP1_TIMP3release) + (-1.0 * reaction_MMP3InhibtionByTIMP3) + ( 1.0 * reaction_MMP3_TIMP3release) + (-1.0 * reaction_MMP13InhibtionByTIMP3) + ( 1.0 * reaction_MMP13_TIMP3release);
	
% Species:   id = IL1_IL1R, name = IL1_IL1R, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_IL1binding) + (-1.0 * reaction_IL1release) + (-1.0 * reaction_IRAK2binding) + ( 1.0 * reaction_IRAK2release) + ( 1.0 * reaction_TRAF6binding);
	
% Species:   id = IL1_IL1Ra, name = IL1_IL1Ra, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_IL1antagonistbinding) + (-1.0 * reaction_IL1antagonistrelease);
	
% Species:   id = IL1_IL1R_IRAK2, name = IL1_IL1R_IRAK2, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_IRAK2binding) + (-1.0 * reaction_IRAK2release) + (-1.0 * reaction_TRAF6binding);
	
% Species:   id = IL1R, name = IL1R, affected by kineticLaw
	xdot(58) = (-1.0 * reaction_IL1binding) + ( 1.0 * reaction_IL1release);
	
% Species:   id = IL1Ra, name = IL1Ra, affected by kineticLaw
	xdot(59) = (-1.0 * reaction_IL1antagonistbinding) + ( 1.0 * reaction_IL1antagonistrelease);
	
% Species:   id = OSM_OSMR, name = OSM_OSMR, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_OSM_OSMR_binding) + (-1.0 * reaction_OSM_OSMR_release) + (-1.0 * reaction_JAK1_Phosphorylation) + ( 1.0 * reaction_JAK1_Phosphorylation);
	
% Species:   id = OSM_OSMRa, name = OSM_OSMRa, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_OSM_OSMRa_binding) + (-1.0 * reaction_OSM_OSMRa_release);
	
% Species:   id = OSMR_SOCS3, name = OSMR_SOCS3, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_SOCS3_OSMR_binding) + (-1.0 * reaction_SOCS3_OSMR_release);
	
% Species:   id = OSMR, name = OSMR, affected by kineticLaw
	xdot(63) = (-1.0 * reaction_OSM_OSMR_binding) + ( 1.0 * reaction_OSM_OSMR_release) + (-1.0 * reaction_SOCS3_OSMR_binding) + ( 1.0 * reaction_SOCS3_OSMR_release);
	
% Species:   id = OSMRa, name = OSMRa, affected by kineticLaw
	xdot(64) = (-1.0 * reaction_OSM_OSMRa_binding) + ( 1.0 * reaction_OSM_OSMRa_release);
	
% Species:   id = cFos_cJun, name = cFos_cJun, affected by kineticLaw
	xdot(65) = (-1.0 * reaction_cJunTranscriptionAP1) + ( 1.0 * reaction_cJunTranscriptionAP1) + (-1.0 * reaction_MMP1Transcription_AP1) + ( 1.0 * reaction_MMP1Transcription_AP1) + (-1.0 * reaction_MMP3Transcription_AP1) + ( 1.0 * reaction_MMP3Transcription_AP1) + (-1.0 * reaction_MMP13Transcription_AP1) + ( 1.0 * reaction_MMP13Transcription_AP1) + (-1.0 * reaction_ADAMTS4Transcription_AP1) + ( 1.0 * reaction_ADAMTS4Transcription_AP1) + (-1.0 * reaction_PP4Synthesis) + ( 1.0 * reaction_PP4Synthesis) + (-1.0 * reaction_DUSP16Synthesis) + ( 1.0 * reaction_DUSP16Synthesis) + (-1.0 * reaction_Transcription_cFos_byAP1) + ( 1.0 * reaction_Transcription_cFos_byAP1) + (-1.0 * reaction_MKP1Synthesis) + ( 1.0 * reaction_MKP1Synthesis) + ( 1.0 * reaction_cFoscJunBinding) + (-1.0 * reaction_cFoscJunRelease) + (-1.0 * reaction_MatriptaseSynthesis) + ( 1.0 * reaction_MatriptaseSynthesis) + (-1.0 * reaction_SP1Synthesis) + ( 1.0 * reaction_SP1Synthesis) + (-1.0 * reaction_TIMP1Transcription_AP1) + ( 1.0 * reaction_TIMP1Transcription_AP1) + (-1.0 * reaction_TIMP3Transcription_AP1) + ( 1.0 * reaction_TIMP3Transcription_AP1);
	
% Species:   id = cFos_P, name = cFos_P, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_cFosPhosphorylation_p38) + (-1.0 * reaction_cFosDephosphorylation) + (-1.0 * reaction_cFosDephosphorylationByDusp16) + (-1.0 * reaction_cFoscJunBinding) + ( 1.0 * reaction_cFoscJunRelease);
	
% Species:   id = cJun_P, name = cJun_P, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_cJunPhosphorylation) + (-1.0 * reaction_cJunDephosphorylation) + (-2.0 * reaction_cJunDimerisation) + ( 2.0 * reaction_cJunDedimerisation) + (-1.0 * reaction_cFoscJunBinding) + ( 1.0 * reaction_cFoscJunRelease);
	
% Species:   id = cJun_dimer, name = cJun_dimer, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_cJunDimerisation) + (-1.0 * reaction_cJunDedimerisation) + (-1.0 * reaction_cJunTranscriptioncJun) + ( 1.0 * reaction_cJunTranscriptioncJun) + (-1.0 * reaction_MMP1Transcription_cJun_dimer) + ( 1.0 * reaction_MMP1Transcription_cJun_dimer) + (-1.0 * reaction_MMP3Transcription_cJun_dimer) + ( 1.0 * reaction_MMP3Transcription_cJun_dimer) + (-1.0 * reaction_MMP13Transcription_cJun_dimer) + ( 1.0 * reaction_MMP13Transcription_cJun_dimer) + (-1.0 * reaction_ADAMTS4Transcription_cJun_dimer) + ( 1.0 * reaction_ADAMTS4Transcription_cJun_dimer) + (-1.0 * reaction_PP4Synthesis_cJun_dimer) + ( 1.0 * reaction_PP4Synthesis_cJun_dimer) + (-1.0 * reaction_DUSP16Synthesis_cJun_dimer) + ( 1.0 * reaction_DUSP16Synthesis_cJun_dimer) + (-1.0 * reaction_MKP1Synthesis_cJun_dimer) + ( 1.0 * reaction_MKP1Synthesis_cJun_dimer);
	
% Species:   id = SP1, name = SP1, affected by kineticLaw
	xdot(69) = ( 1.0 * reaction_SP1Synthesis) + (-1.0 * reaction_SP1Degradation) + (-1.0 * reaction_SP1_TIMP1_DNAbinding) + ( 1.0 * reaction_SP1_TIMP1_DNArelease);
	
% Species:   id = SP1_TIMP1_DNA, name = SP1_TIMP1_DNA, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_SP1_TIMP1_DNAbinding) + (-1.0 * reaction_SP1_TIMP1_DNArelease);
	
% Species:   id = STAT3_nuc, name = STAT3_nuc, affected by kineticLaw
	xdot(71) = ( 1.0 * reaction_STAT3_nuc_Dephosphorylation) + ( 1.0 * reaction_STAT3_nuc_DephosphorylationByPTPRT) + (-1.0 * reaction_STAT3_transport_from_nucleus);
	
% Species:   id = STAT3_P_nuc, name = STAT3_P_nuc, affected by kineticLaw
	xdot(72) = (-1.0 * reaction_STAT3_nuc_Dephosphorylation) + (-1.0 * reaction_STAT3_nuc_DephosphorylationByPTPRT) + ( 1.0 * reaction_STAT3_transport_to_nucleus) + (-1.0 * reaction_cFos_induction_by_STAT3) + ( 1.0 * reaction_cFos_induction_by_STAT3) + (-1.0 * reaction_PTPRT_induction_by_STAT3) + ( 1.0 * reaction_PTPRT_induction_by_STAT3) + (-1.0 * reaction_STAT3_induction_of_SOCS3) + ( 1.0 * reaction_STAT3_induction_of_SOCS3) + (-1.0 * reaction_TIMP1_transcription_STAT3) + ( 1.0 * reaction_TIMP1_transcription_STAT3) + (-1.0 * reaction_TIMP3Transcription_STAT3) + ( 1.0 * reaction_TIMP3Transcription_STAT3);
	
% Species:   id = TIMP1_DNA, name = TIMP1_DNA, affected by kineticLaw
	xdot(73) = (-1.0 * reaction_SP1_TIMP1_DNAbinding) + ( 1.0 * reaction_SP1_TIMP1_DNArelease) + (-1.0 * reaction_TIMP1_transcription_STAT3) + ( 1.0 * reaction_TIMP1_transcription_STAT3) + (-1.0 * reaction_TIMP1BasalTranscription) + ( 1.0 * reaction_TIMP1BasalTranscription) + (-1.0 * reaction_TIMP1Transcription_AP1) + ( 1.0 * reaction_TIMP1Transcription_AP1);
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


