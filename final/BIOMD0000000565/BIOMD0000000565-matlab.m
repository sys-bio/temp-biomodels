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
% Model name = Machado2014 - Curcumin production pathway in Escherichia coli
%
% is http://identifiers.org/biomodels.db/MODEL1406060000
% is http://identifiers.org/biomodels.db/BIOMD0000000565
% isDescribedBy http://identifiers.org/pubmed/25218090
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000051
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 2.67;
	x0(2) = 55.5;
	x0(3) = 3.48;
	x0(4) = 2.67;
	x0(5) = 0.6;
	x0(6) = 0.653;
	x0(7) = 0.808;
	x0(8) = 0.272;
	x0(9) = 0.276;
	x0(10) = 0.218;
	x0(11) = 0.098;
	x0(12) = 0.138;
	x0(13) = 0.398;
	x0(14) = 0.167;
	x0(15) = 0.008;
	x0(16) = 2.13;
	x0(17) = 0.399;
	x0(18) = 0.111;
	x0(19) = 1.0;
	x0(20) = 1.0;
	x0(21) = 0.0;
	x0(22) = 271.5;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=65.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  catp, name = catp
	global_par_catp=4.27;
% Parameter:   id =  cadp, name = cadp
	global_par_cadp=0.595;
% Parameter:   id =  camp, name = camp
	global_par_camp=0.955;
% Parameter:   id =  cnadp, name = cnadp
	global_par_cnadp=0.195;
% Parameter:   id =  cnadph, name = cnadph
	global_par_cnadph=0.062;
% Parameter:   id =  cnad, name = cnad
	global_par_cnad=1.47;
% Parameter:   id =  cnadh, name = cnadh
	global_par_cnadh=0.1;
% Parameter:   id =  Dil, name = Dil
	global_par_Dil=0.0;

% Reaction: id = vPTS, name = Phosphotransferase system	% Local Parameter:   id =  rmaxPTS, name = rmaxPTS
	reaction_vPTS_rmaxPTS=7829.78;
	% Local Parameter:   id =  KPTSa1, name = KPTSa1
	reaction_vPTS_KPTSa1=3082.3;
	% Local Parameter:   id =  KPTSa2, name = KPTSa2
	reaction_vPTS_KPTSa2=0.01;
	% Local Parameter:   id =  KPTSa3, name = KPTSa3
	reaction_vPTS_KPTSa3=245.3;
	% Local Parameter:   id =  nPTSg6p, name = nPTSg6p
	reaction_vPTS_nPTSg6p=3.66;
	% Local Parameter:   id =  KPTSg6p, name = KPTSg6p
	reaction_vPTS_KPTSg6p=2.15;

	reaction_vPTS=compartment_extracellular*reaction_vPTS_rmaxPTS*x(2)*x(1)/x(4)/((reaction_vPTS_KPTSa1+reaction_vPTS_KPTSa2*x(1)/x(4)+reaction_vPTS_KPTSa3*x(2)+x(2)*x(1)/x(4))*(1+x(3)^reaction_vPTS_nPTSg6p/reaction_vPTS_KPTSg6p));

% Reaction: id = vPGI, name = Glucose-6-phosphate isomerase	% Local Parameter:   id =  rmaxPGI, name = rmaxPGI
	reaction_vPGI_rmaxPGI=650.9878687;
	% Local Parameter:   id =  KPGIeq, name = KPGIeq
	reaction_vPGI_KPGIeq=0.1725;
	% Local Parameter:   id =  KPGIg6p, name = KPGIg6p
	reaction_vPGI_KPGIg6p=2.9;
	% Local Parameter:   id =  KPGIf6p, name = KPGIf6p
	reaction_vPGI_KPGIf6p=0.266;
	% Local Parameter:   id =  KPGIf6ppginh, name = KPGIf6ppginh
	reaction_vPGI_KPGIf6ppginh=0.2;
	% Local Parameter:   id =  KPGIg6ppginh, name = KPGIg6ppginh
	reaction_vPGI_KPGIg6ppginh=0.2;

	reaction_vPGI=compartment_cytosol*reaction_vPGI_rmaxPGI*(x(3)-x(5)/reaction_vPGI_KPGIeq)/(reaction_vPGI_KPGIg6p*(1+x(5)/(reaction_vPGI_KPGIf6p*(1+x(7)/reaction_vPGI_KPGIf6ppginh))+x(7)/reaction_vPGI_KPGIg6ppginh)+x(3));

% Reaction: id = vPGM, name = Phosphoglucomutase	% Local Parameter:   id =  rmaxPGM, name = rmaxPGM
	reaction_vPGM_rmaxPGM=0.8398242773;
	% Local Parameter:   id =  KPGMeq, name = KPGMeq
	reaction_vPGM_KPGMeq=0.196;
	% Local Parameter:   id =  KPGMg6p, name = KPGMg6p
	reaction_vPGM_KPGMg6p=1.038;
	% Local Parameter:   id =  KPGMg1p, name = KPGMg1p
	reaction_vPGM_KPGMg1p=0.0136;

	reaction_vPGM=compartment_cytosol*reaction_vPGM_rmaxPGM*(x(3)-x(6)/reaction_vPGM_KPGMeq)/(reaction_vPGM_KPGMg6p*(1+x(6)/reaction_vPGM_KPGMg1p)+x(3));

% Reaction: id = vG6PDH, name = Glucose-6-phosphate dehydrogenase	% Local Parameter:   id =  rmaxG6PDH, name = rmaxG6PDH
	reaction_vG6PDH_rmaxG6PDH=1.380196955;
	% Local Parameter:   id =  KG6PDHg6p, name = KG6PDHg6p
	reaction_vG6PDH_KG6PDHg6p=14.4;
	% Local Parameter:   id =  KG6PDHnadphg6pinh, name = KG6PDHnadphg6pinh
	reaction_vG6PDH_KG6PDHnadphg6pinh=6.43;
	% Local Parameter:   id =  KG6PDHnadp, name = KG6PDHnadp
	reaction_vG6PDH_KG6PDHnadp=0.0246;
	% Local Parameter:   id =  KG6PDHnadphnadpinh, name = KG6PDHnadphnadpinh
	reaction_vG6PDH_KG6PDHnadphnadpinh=0.01;

	reaction_vG6PDH=compartment_cytosol*reaction_vG6PDH_rmaxG6PDH*x(3)*global_par_cnadp/((x(3)+reaction_vG6PDH_KG6PDHg6p)*(1+global_par_cnadph/reaction_vG6PDH_KG6PDHnadphg6pinh)*(reaction_vG6PDH_KG6PDHnadp*(1+global_par_cnadph/reaction_vG6PDH_KG6PDHnadphnadpinh)+global_par_cnadp));

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  rmaxPFK, name = rmaxPFK
	reaction_vPFK_rmaxPFK=1840.584747;
	% Local Parameter:   id =  KPFKatps, name = KPFKatps
	reaction_vPFK_KPFKatps=0.123;
	% Local Parameter:   id =  KPFKadpc, name = KPFKadpc
	reaction_vPFK_KPFKadpc=4.14;
	% Local Parameter:   id =  KPFKf6ps, name = KPFKf6ps
	reaction_vPFK_KPFKf6ps=0.325;
	% Local Parameter:   id =  KPFKpep, name = KPFKpep
	reaction_vPFK_KPFKpep=3.26;
	% Local Parameter:   id =  KPFKadpb, name = KPFKadpb
	reaction_vPFK_KPFKadpb=3.89;
	% Local Parameter:   id =  KPFKampb, name = KPFKampb
	reaction_vPFK_KPFKampb=3.2;
	% Local Parameter:   id =  KPFKadpa, name = KPFKadpa
	reaction_vPFK_KPFKadpa=128.0;
	% Local Parameter:   id =  KPFKampa, name = KPFKampa
	reaction_vPFK_KPFKampa=19.1;
	% Local Parameter:   id =  LPFK, name = LPFK
	reaction_vPFK_LPFK=5629067.0;
	% Local Parameter:   id =  nPFK, name = nPFK
	reaction_vPFK_nPFK=11.1;

	reaction_vPFK=compartment_cytosol*reaction_vPFK_rmaxPFK*global_par_catp*x(5)/((global_par_catp+reaction_vPFK_KPFKatps*(1+global_par_cadp/reaction_vPFK_KPFKadpc))*(x(5)+reaction_vPFK_KPFKf6ps*(1+x(1)/reaction_vPFK_KPFKpep+global_par_cadp/reaction_vPFK_KPFKadpb+global_par_camp/reaction_vPFK_KPFKampb)/(1+global_par_cadp/reaction_vPFK_KPFKadpa+global_par_camp/reaction_vPFK_KPFKampa))*(1+reaction_vPFK_LPFK/(1+x(5)*(1+global_par_cadp/reaction_vPFK_KPFKadpa+global_par_camp/reaction_vPFK_KPFKampa)/(reaction_vPFK_KPFKf6ps*(1+x(1)/reaction_vPFK_KPFKpep+global_par_cadp/reaction_vPFK_KPFKadpb+global_par_camp/reaction_vPFK_KPFKampb)))^reaction_vPFK_nPFK));

% Reaction: id = vTA, name = Transaldolase	% Local Parameter:   id =  rmaxTA, name = rmaxTA
	reaction_vTA_rmaxTA=10.87164108;
	% Local Parameter:   id =  KTAeq, name = KTAeq
	reaction_vTA_KTAeq=1.05;

	reaction_vTA=compartment_cytosol*reaction_vTA_rmaxTA*(x(10)*x(9)-x(11)*x(5)/reaction_vTA_KTAeq);

% Reaction: id = vTKA, name = Transketolase a	% Local Parameter:   id =  rmaxTKa, name = rmaxTKa
	reaction_vTKA_rmaxTKa=9.473384783;
	% Local Parameter:   id =  KTKaeq, name = KTKaeq
	reaction_vTKA_KTKaeq=1.2;

	reaction_vTKA=compartment_cytosol*reaction_vTKA_rmaxTKa*(x(13)*x(12)-x(9)*x(10)/reaction_vTKA_KTKaeq);

% Reaction: id = vTKB, name = Transketolase b	% Local Parameter:   id =  rmaxTKb, name = rmaxTKb
	reaction_vTKB_rmaxTKb=86.55855855;
	% Local Parameter:   id =  KTKbeq, name = KTKbeq
	reaction_vTKB_KTKbeq=10.0;

	reaction_vTKB=compartment_cytosol*reaction_vTKB_rmaxTKb*(x(12)*x(11)-x(5)*x(10)/reaction_vTKB_KTKbeq);

% Reaction: id = vMURSyNTH, name = Mureine synthesis	% Local Parameter:   id =  rmaxMurSynth, name = rmaxMurSynth
	reaction_vMURSyNTH_rmaxMurSynth=0.0;

	reaction_vMURSyNTH=compartment_cytosol*reaction_vMURSyNTH_rmaxMurSynth;

% Reaction: id = vALDO, name = Aldolase	% Local Parameter:   id =  rmaxALDO, name = rmaxALDO
	reaction_vALDO_rmaxALDO=17.41464425;
	% Local Parameter:   id =  kALDOeq, name = kALDOeq
	reaction_vALDO_kALDOeq=0.144;
	% Local Parameter:   id =  kALDOfdp, name = kALDOfdp
	reaction_vALDO_kALDOfdp=1.75;
	% Local Parameter:   id =  kALDOgap, name = kALDOgap
	reaction_vALDO_kALDOgap=0.088;
	% Local Parameter:   id =  VALDOblf, name = VALDOblf
	reaction_vALDO_VALDOblf=2.0;
	% Local Parameter:   id =  kALDOdhap, name = kALDOdhap
	reaction_vALDO_kALDOdhap=0.088;
	% Local Parameter:   id =  kALDOgapinh, name = kALDOgapinh
	reaction_vALDO_kALDOgapinh=0.6;

	reaction_vALDO=compartment_cytosol*reaction_vALDO_rmaxALDO*(x(8)-x(10)*x(14)/reaction_vALDO_kALDOeq)/(reaction_vALDO_kALDOfdp+x(8)+reaction_vALDO_kALDOgap*x(14)/(reaction_vALDO_kALDOeq*reaction_vALDO_VALDOblf)+reaction_vALDO_kALDOdhap*x(10)/(reaction_vALDO_kALDOeq*reaction_vALDO_VALDOblf)+x(8)*x(10)/reaction_vALDO_kALDOgapinh+x(10)*x(14)/(reaction_vALDO_VALDOblf*reaction_vALDO_kALDOeq));

% Reaction: id = vGAPDH, name = Glyceraldehyde-3-phosphate dehydrogenase	% Local Parameter:   id =  rmaxGAPDH, name = rmaxGAPDH
	reaction_vGAPDH_rmaxGAPDH=921.5942861;
	% Local Parameter:   id =  KGAPDHeq, name = KGAPDHeq
	reaction_vGAPDH_KGAPDHeq=0.63;
	% Local Parameter:   id =  KGAPDHgap, name = KGAPDHgap
	reaction_vGAPDH_KGAPDHgap=0.683;
	% Local Parameter:   id =  KGAPDHpgp, name = KGAPDHpgp
	reaction_vGAPDH_KGAPDHpgp=1.04E-5;
	% Local Parameter:   id =  KGAPDHnad, name = KGAPDHnad
	reaction_vGAPDH_KGAPDHnad=0.252;
	% Local Parameter:   id =  KGAPDHnadh, name = KGAPDHnadh
	reaction_vGAPDH_KGAPDHnadh=1.09;

	reaction_vGAPDH=compartment_cytosol*reaction_vGAPDH_rmaxGAPDH*(x(10)*global_par_cnad-x(15)*global_par_cnadh/reaction_vGAPDH_KGAPDHeq)/((reaction_vGAPDH_KGAPDHgap*(1+x(15)/reaction_vGAPDH_KGAPDHpgp)+x(10))*(reaction_vGAPDH_KGAPDHnad*(1+global_par_cnadh/reaction_vGAPDH_KGAPDHnadh)+global_par_cnad));

% Reaction: id = vTIS, name = Triosephosphate isomerase	% Local Parameter:   id =  rmaxTIS, name = rmaxTIS
	reaction_vTIS_rmaxTIS=68.67474392;
	% Local Parameter:   id =  kTISeq, name = kTISeq
	reaction_vTIS_kTISeq=1.39;
	% Local Parameter:   id =  kTISdhap, name = kTISdhap
	reaction_vTIS_kTISdhap=2.8;
	% Local Parameter:   id =  kTISgap, name = kTISgap
	reaction_vTIS_kTISgap=0.3;

	reaction_vTIS=compartment_cytosol*reaction_vTIS_rmaxTIS*(x(14)-x(10)/reaction_vTIS_kTISeq)/(reaction_vTIS_kTISdhap*(1+x(10)/reaction_vTIS_kTISgap)+x(14));

% Reaction: id = vTRPSYNTH, name = Tryptophan synthesis	% Local Parameter:   id =  rmaxTrpSynth, name = rmaxTrpSynth
	reaction_vTRPSYNTH_rmaxTrpSynth=0.001037;

	reaction_vTRPSYNTH=compartment_cytosol*reaction_vTRPSYNTH_rmaxTrpSynth;

% Reaction: id = vG3PDH, name = Glycerol-3-phosphate dehydrogenase	% Local Parameter:   id =  rmaxG3PDH, name = rmaxG3PDH
	reaction_vG3PDH_rmaxG3PDH=0.01162042696;
	% Local Parameter:   id =  KG3PDHdhap, name = KG3PDHdhap
	reaction_vG3PDH_KG3PDHdhap=1.0;

	reaction_vG3PDH=compartment_cytosol*reaction_vG3PDH_rmaxG3PDH*x(14)/(reaction_vG3PDH_KG3PDHdhap+x(14));

% Reaction: id = vPGK, name = Phosphoglycerate kinase	% Local Parameter:   id =  rmaxPGK, name = rmaxPGK
	reaction_vPGK_rmaxPGK=3021.773771;
	% Local Parameter:   id =  KPGKeq, name = KPGKeq
	reaction_vPGK_KPGKeq=1934.4;
	% Local Parameter:   id =  KPGKadp, name = KPGKadp
	reaction_vPGK_KPGKadp=0.185;
	% Local Parameter:   id =  KPGKatp, name = KPGKatp
	reaction_vPGK_KPGKatp=0.653;
	% Local Parameter:   id =  KPGKpgp, name = KPGKpgp
	reaction_vPGK_KPGKpgp=0.0468;
	% Local Parameter:   id =  KPGKpg3, name = KPGKpg3
	reaction_vPGK_KPGKpg3=0.473;

	reaction_vPGK=compartment_cytosol*reaction_vPGK_rmaxPGK*(global_par_cadp*x(15)-global_par_catp*x(16)/reaction_vPGK_KPGKeq)/((reaction_vPGK_KPGKadp*(1+global_par_catp/reaction_vPGK_KPGKatp)+global_par_cadp)*(reaction_vPGK_KPGKpgp*(1+x(16)/reaction_vPGK_KPGKpg3)+x(15)));

% Reaction: id = vsersynth, name = Serine synthesis	% Local Parameter:   id =  rmaxSerSynth, name = rmaxSerSynth
	reaction_vsersynth_rmaxSerSynth=0.025712107;
	% Local Parameter:   id =  KSerSynthpg3, name = KSerSynthpg3
	reaction_vsersynth_KSerSynthpg3=1.0;

	reaction_vsersynth=compartment_cytosol*reaction_vsersynth_rmaxSerSynth*x(16)/(reaction_vsersynth_KSerSynthpg3+x(16));

% Reaction: id = vrpGluMu, name = Phosphoglycerate mutase	% Local Parameter:   id =  rmaxPGluMu, name = rmaxPGluMu
	reaction_vrpGluMu_rmaxPGluMu=89.04965407;
	% Local Parameter:   id =  KPGluMueq, name = KPGluMueq
	reaction_vrpGluMu_KPGluMueq=0.188;
	% Local Parameter:   id =  KPGluMupg3, name = KPGluMupg3
	reaction_vrpGluMu_KPGluMupg3=0.2;
	% Local Parameter:   id =  KPGluMupg2, name = KPGluMupg2
	reaction_vrpGluMu_KPGluMupg2=0.369;

	reaction_vrpGluMu=compartment_cytosol*reaction_vrpGluMu_rmaxPGluMu*(x(16)-x(17)/reaction_vrpGluMu_KPGluMueq)/(reaction_vrpGluMu_KPGluMupg3*(1+x(17)/reaction_vrpGluMu_KPGluMupg2)+x(16));

% Reaction: id = vENO, name = Enolase	% Local Parameter:   id =  rmaxENO, name = rmaxENO
	reaction_vENO_rmaxENO=330.4476151;
	% Local Parameter:   id =  KENOeq, name = KENOeq
	reaction_vENO_KENOeq=6.73;
	% Local Parameter:   id =  KENOpg2, name = KENOpg2
	reaction_vENO_KENOpg2=0.1;
	% Local Parameter:   id =  KENOpep, name = KENOpep
	reaction_vENO_KENOpep=0.135;

	reaction_vENO=compartment_cytosol*reaction_vENO_rmaxENO*(x(17)-x(1)/reaction_vENO_KENOeq)/(reaction_vENO_KENOpg2*(1+x(1)/reaction_vENO_KENOpep)+x(17));

% Reaction: id = vPK, name = Pyruvate kinase	% Local Parameter:   id =  rmaxPK, name = rmaxPK
	reaction_vPK_rmaxPK=0.06113150238;
	% Local Parameter:   id =  KPKpep, name = KPKpep
	reaction_vPK_KPKpep=0.31;
	% Local Parameter:   id =  nPK, name = nPK
	reaction_vPK_nPK=4.0;
	% Local Parameter:   id =  LPK, name = LPK
	reaction_vPK_LPK=1000.0;
	% Local Parameter:   id =  KPKatp, name = KPKatp
	reaction_vPK_KPKatp=22.5;
	% Local Parameter:   id =  KPKfdp, name = KPKfdp
	reaction_vPK_KPKfdp=0.19;
	% Local Parameter:   id =  KPKamp, name = KPKamp
	reaction_vPK_KPKamp=0.2;
	% Local Parameter:   id =  KPKadp, name = KPKadp
	reaction_vPK_KPKadp=0.26;

	reaction_vPK=compartment_cytosol*reaction_vPK_rmaxPK*x(1)*(x(1)/reaction_vPK_KPKpep+1)^(reaction_vPK_nPK-1)*global_par_cadp/(reaction_vPK_KPKpep*(reaction_vPK_LPK*((1+global_par_catp/reaction_vPK_KPKatp)/(x(8)/reaction_vPK_KPKfdp+global_par_camp/reaction_vPK_KPKamp+1))^reaction_vPK_nPK+(x(1)/reaction_vPK_KPKpep+1)^reaction_vPK_nPK)*(global_par_cadp+reaction_vPK_KPKadp));

% Reaction: id = vpepCxylase, name = PEP carboxylase	% Local Parameter:   id =  rmaxpepCxylase, name = rmaxpepCxylase
	reaction_vpepCxylase_rmaxpepCxylase=0.1070205858;
	% Local Parameter:   id =  KpepCxylasefdp, name = KpepCxylasefdp
	reaction_vpepCxylase_KpepCxylasefdp=0.7;
	% Local Parameter:   id =  npepCxylasefdp, name = npepCxylasefdp
	reaction_vpepCxylase_npepCxylasefdp=4.21;
	% Local Parameter:   id =  KpepCxylasepep, name = KpepCxylasepep
	reaction_vpepCxylase_KpepCxylasepep=4.07;

	reaction_vpepCxylase=compartment_cytosol*reaction_vpepCxylase_rmaxpepCxylase*x(1)*(1+(x(8)/reaction_vpepCxylase_KpepCxylasefdp)^reaction_vpepCxylase_npepCxylasefdp)/(reaction_vpepCxylase_KpepCxylasepep+x(1));

% Reaction: id = vSynth1, name = Synthesis 1	% Local Parameter:   id =  rmaxSynth1, name = rmaxSynth1
	reaction_vSynth1_rmaxSynth1=0.01953897003;
	% Local Parameter:   id =  KSynth1pep, name = KSynth1pep
	reaction_vSynth1_KSynth1pep=1.0;

	reaction_vSynth1=compartment_cytosol*reaction_vSynth1_rmaxSynth1*x(1)/(reaction_vSynth1_KSynth1pep+x(1));

% Reaction: id = vSynth2, name = Synthesis 2	% Local Parameter:   id =  rmaxSynth2, name = rmaxSynth2
	reaction_vSynth2_rmaxSynth2=0.07361855055;
	% Local Parameter:   id =  KSynth2pyr, name = KSynth2pyr
	reaction_vSynth2_KSynth2pyr=1.0;

	reaction_vSynth2=compartment_cytosol*reaction_vSynth2_rmaxSynth2*x(4)/(reaction_vSynth2_KSynth2pyr+x(4));

% Reaction: id = vDAHPS, name = DAHP synthesis	% Local Parameter:   id =  rmaxDAHPS, name = rmaxDAHPS
	reaction_vDAHPS_rmaxDAHPS=0.1079531227;
	% Local Parameter:   id =  nDAHPSe4p, name = nDAHPSe4p
	reaction_vDAHPS_nDAHPSe4p=2.6;
	% Local Parameter:   id =  nDAHPSpep, name = nDAHPSpep
	reaction_vDAHPS_nDAHPSpep=2.2;
	% Local Parameter:   id =  KDAHPSe4p, name = KDAHPSe4p
	reaction_vDAHPS_KDAHPSe4p=0.035;
	% Local Parameter:   id =  KDAHPSpep, name = KDAHPSpep
	reaction_vDAHPS_KDAHPSpep=0.0053;

	reaction_vDAHPS=compartment_cytosol*reaction_vDAHPS_rmaxDAHPS*x(11)^reaction_vDAHPS_nDAHPSe4p*x(1)^reaction_vDAHPS_nDAHPSpep/((reaction_vDAHPS_KDAHPSe4p+x(11)^reaction_vDAHPS_nDAHPSe4p)*(reaction_vDAHPS_KDAHPSpep+x(1)^reaction_vDAHPS_nDAHPSpep));

% Reaction: id = vPDH, name = Pyruvate dehydrogenase	% Local Parameter:   id =  rmaxPDH, name = rmaxPDH
	reaction_vPDH_rmaxPDH=270.27734;
	% Local Parameter:   id =  nPDH, name = nPDH
	reaction_vPDH_nPDH=3.68;
	% Local Parameter:   id =  KPDHpyr, name = KPDHpyr
	reaction_vPDH_KPDHpyr=1159.0;
	% Local Parameter:   id =  Ki_PDH_accoa, name = Ki_PDH_accoa
	reaction_vPDH_Ki_PDH_accoa=0.0222222;

	reaction_vPDH=compartment_cytosol*reaction_vPDH_rmaxPDH*x(4)^reaction_vPDH_nPDH/(reaction_vPDH_KPDHpyr*(1+x(19)/reaction_vPDH_Ki_PDH_accoa)+x(4)^reaction_vPDH_nPDH);

% Reaction: id = vMethSynth, name = Methionine synthesis	% Local Parameter:   id =  rmaxMetSynth, name = rmaxMetSynth
	reaction_vMethSynth_rmaxMetSynth=0.0022627;

	reaction_vMethSynth=compartment_cytosol*reaction_vMethSynth_rmaxMetSynth;

% Reaction: id = vPGDH, name = 6-Phosphogluconate dehydrogenase	% Local Parameter:   id =  rmaxPGDH, name = rmaxPGDH
	reaction_vPGDH_rmaxPGDH=16.23235977;
	% Local Parameter:   id =  KPGDHpg, name = KPGDHpg
	reaction_vPGDH_KPGDHpg=37.5;
	% Local Parameter:   id =  KPGDHnadp, name = KPGDHnadp
	reaction_vPGDH_KPGDHnadp=0.0506;
	% Local Parameter:   id =  KPGDHnadphinh, name = KPGDHnadphinh
	reaction_vPGDH_KPGDHnadphinh=0.0138;
	% Local Parameter:   id =  KPGDHatpinh, name = KPGDHatpinh
	reaction_vPGDH_KPGDHatpinh=208.0;

	reaction_vPGDH=compartment_cytosol*reaction_vPGDH_rmaxPGDH*x(7)*global_par_cnadp/((x(7)+reaction_vPGDH_KPGDHpg)*(global_par_cnadp+reaction_vPGDH_KPGDHnadp*(1+global_par_cnadph/reaction_vPGDH_KPGDHnadphinh)*(1+global_par_catp/reaction_vPGDH_KPGDHatpinh)));

% Reaction: id = vR5PI, name = Ribose-phosphate isomerase	% Local Parameter:   id =  rmaxR5PI, name = rmaxR5PI
	reaction_vR5PI_rmaxR5PI=4.83841193;
	% Local Parameter:   id =  KR5PIeq, name = KR5PIeq
	reaction_vR5PI_KR5PIeq=4.0;

	reaction_vR5PI=compartment_cytosol*reaction_vR5PI_rmaxR5PI*(x(18)-x(13)/reaction_vR5PI_KR5PIeq);

% Reaction: id = vRu5P, name = Ribulose-phosphate epimerase	% Local Parameter:   id =  rmaxRu5P, name = rmaxRu5P
	reaction_vRu5P_rmaxRu5P=6.739029475;
	% Local Parameter:   id =  KRu5Peq, name = KRu5Peq
	reaction_vRu5P_KRu5Peq=1.4;

	reaction_vRu5P=compartment_cytosol*reaction_vRu5P_rmaxRu5P*(x(18)-x(12)/reaction_vRu5P_KRu5Peq);

% Reaction: id = vPPK, name = Ribose phosphate pyrophosphokinase	% Local Parameter:   id =  rmaxRPPK, name = rmaxRPPK
	reaction_vPPK_rmaxRPPK=0.01290045226;
	% Local Parameter:   id =  KRPPKrib5p, name = KRPPKrib5p
	reaction_vPPK_KRPPKrib5p=0.1;

	reaction_vPPK=compartment_cytosol*reaction_vPPK_rmaxRPPK*x(13)/(reaction_vPPK_KRPPKrib5p+x(13));

% Reaction: id = vG1PAT, name = Glucose-1-phosphate adenyltransferase	% Local Parameter:   id =  rmaxG1PAT, name = rmaxG1PAT
	reaction_vG1PAT_rmaxG1PAT=0.007525458026;
	% Local Parameter:   id =  KG1PATfdp, name = KG1PATfdp
	reaction_vG1PAT_KG1PATfdp=0.119;
	% Local Parameter:   id =  nG1PATfdp, name = nG1PATfdp
	reaction_vG1PAT_nG1PATfdp=1.2;
	% Local Parameter:   id =  KG1PATatp, name = KG1PATatp
	reaction_vG1PAT_KG1PATatp=4.42;
	% Local Parameter:   id =  KG1PATg1p, name = KG1PATg1p
	reaction_vG1PAT_KG1PATg1p=3.2;

	reaction_vG1PAT=compartment_cytosol*reaction_vG1PAT_rmaxG1PAT*x(6)*global_par_catp*(1+(x(8)/reaction_vG1PAT_KG1PATfdp)^reaction_vG1PAT_nG1PATfdp)/((reaction_vG1PAT_KG1PATatp+global_par_catp)*(reaction_vG1PAT_KG1PATg1p+x(6)));

% Reaction: id = vG6P, name = G6P degradation
	reaction_vG6P=compartment_cytosol*global_par_Dil*x(3);

% Reaction: id = vf6P, name = F6P degradation
	reaction_vf6P=compartment_cytosol*global_par_Dil*x(5);

% Reaction: id = vfdP, name = FDP degradation
	reaction_vfdP=compartment_cytosol*global_par_Dil*x(8);

% Reaction: id = vGAP, name = GAP degradation
	reaction_vGAP=compartment_cytosol*global_par_Dil*x(10);

% Reaction: id = vDHAP, name = DHAP degradation
	reaction_vDHAP=compartment_cytosol*global_par_Dil*x(14);

% Reaction: id = vPGP, name = PGP degradation
	reaction_vPGP=compartment_cytosol*global_par_Dil*x(15);

% Reaction: id = vPG3, name = PG3 degradation
	reaction_vPG3=compartment_cytosol*global_par_Dil*x(16);

% Reaction: id = vpg2, name = PG2 degradation
	reaction_vpg2=compartment_cytosol*global_par_Dil*x(17);

% Reaction: id = vPEP, name = PEP degradation
	reaction_vPEP=compartment_cytosol*global_par_Dil*x(1);

% Reaction: id = vRibu5p, name = Ribu5P dilution
	reaction_vRibu5p=compartment_cytosol*global_par_Dil*x(18);

% Reaction: id = vRIB5P, name = Rib5P dilution
	reaction_vRIB5P=compartment_cytosol*global_par_Dil*x(13);

% Reaction: id = vXYL5P, name = XYL5P dilution
	reaction_vXYL5P=compartment_cytosol*global_par_Dil*x(12);

% Reaction: id = vSED7P, name = SED7P dilution
	reaction_vSED7P=compartment_cytosol*global_par_Dil*x(9);

% Reaction: id = vpyr, name = Pyruvate dilution
	reaction_vpyr=compartment_cytosol*global_par_Dil*x(4);

% Reaction: id = vPG, name = PG dilution
	reaction_vPG=compartment_cytosol*global_par_Dil*x(7);

% Reaction: id = vE4P, name = E4P dilution
	reaction_vE4P=compartment_cytosol*global_par_Dil*x(11);

% Reaction: id = vGLP, name = GLP dilution
	reaction_vGLP=compartment_cytosol*global_par_Dil*x(6);

% Reaction: id = vEXTER, name = Extracellular glucose kinetics	% Local Parameter:   id =  cfeed_glc, name = cfeed_glc
	reaction_vEXTER_cfeed_glc=110.96;

	reaction_vEXTER=compartment_extracellular*global_par_Dil*(reaction_vEXTER_cfeed_glc-x(2));

% Reaction: id = ACCOAC	% Local Parameter:   id =  rmaxACCOAC, name = rmaxACCOAC
	reaction_ACCOAC_rmaxACCOAC=0.04634;
	% Local Parameter:   id =  K_ACCOAC_accoa, name = K_ACCOAC_accoa
	reaction_ACCOAC_K_ACCOAC_accoa=3.0E-4;
	% Local Parameter:   id =  Ki_ACCOAC_malcoa, name = Ki_ACCOAC_malcoa
	reaction_ACCOAC_Ki_ACCOAC_malcoa=0.1;

	reaction_ACCOAC=compartment_cytosol*reaction_ACCOAC_rmaxACCOAC*x(19)/(reaction_ACCOAC_K_ACCOAC_accoa*(1+x(20)/reaction_ACCOAC_Ki_ACCOAC_malcoa)+x(19));

% Reaction: id = Synth3, name = Synthesis 3	% Local Parameter:   id =  rmaxSynth3, name = rmaxSynth3
	reaction_Synth3_rmaxSynth3=0.284;
	% Local Parameter:   id =  KSynth3accoa, name = KSynth3accoa
	reaction_Synth3_KSynth3accoa=1.0;

	reaction_Synth3=compartment_cytosol*reaction_Synth3_rmaxSynth3*x(19)/(reaction_Synth3_KSynth3accoa+x(19));

% Reaction: id = Synth4, name = Synthesis 4	% Local Parameter:   id =  rmaxSynth4, name = rmaxSynth4
	reaction_Synth4_rmaxSynth4=0.092372;
	% Local Parameter:   id =  KSynth4malcoa, name = KSynth4malcoa
	reaction_Synth4_KSynth4malcoa=1.0;

	reaction_Synth4=compartment_cytosol*reaction_Synth4_rmaxSynth4*x(20)/(reaction_Synth4_KSynth4malcoa+x(20));

% Reaction: id = R4CL	% Local Parameter:   id =  E_4CL, name = E_4CL
	reaction_R4CL_E_4CL=100.0;
	% Local Parameter:   id =  kcat_4CL, name = kcat_4CL
	reaction_R4CL_kcat_4CL=9.572;
	% Local Parameter:   id =  Km_4CL, name = Km_4CL
	reaction_R4CL_Km_4CL=0.026;

	reaction_R4CL=reaction_R4CL_E_4CL*reaction_R4CL_kcat_4CL*x(21)/(reaction_R4CL_Km_4CL+x(21));

% Reaction: id = DCS	% Local Parameter:   id =  E_DCS, name = E_DCS
	reaction_DCS_E_DCS=100.0;
	% Local Parameter:   id =  kcat_DCS, name = kcat_DCS
	reaction_DCS_kcat_DCS=0.01343;
	% Local Parameter:   id =  Km_DCS_fercoa, name = Km_DCS_fercoa
	reaction_DCS_Km_DCS_fercoa=0.046;
	% Local Parameter:   id =  Km_DCS_malcoa, name = Km_DCS_malcoa
	reaction_DCS_Km_DCS_malcoa=0.0084;
	% Local Parameter:   id =  n_DCS_fercoa, name = n_DCS_fercoa
	reaction_DCS_n_DCS_fercoa=1.8;

	reaction_DCS=reaction_DCS_E_DCS*reaction_DCS_kcat_DCS*x(23)^reaction_DCS_n_DCS_fercoa/(reaction_DCS_Km_DCS_fercoa^reaction_DCS_n_DCS_fercoa+x(23)^reaction_DCS_n_DCS_fercoa)*x(20)/(reaction_DCS_Km_DCS_malcoa+x(20));

% Reaction: id = CURS	% Local Parameter:   id =  E_CURS, name = E_CURS
	reaction_CURS_E_CURS=100.0;
	% Local Parameter:   id =  kcat_CURS, name = kcat_CURS
	reaction_CURS_kcat_CURS=0.02163;
	% Local Parameter:   id =  Km_CURS_fercoa, name = Km_CURS_fercoa
	reaction_CURS_Km_CURS_fercoa=0.018;
	% Local Parameter:   id =  Km_CURS_ferdicoa, name = Km_CURS_ferdicoa
	reaction_CURS_Km_CURS_ferdicoa=0.018;

	reaction_CURS=reaction_CURS_E_CURS*reaction_CURS_kcat_CURS*x(23)/(reaction_CURS_Km_CURS_fercoa+x(23))*x(24)/(reaction_CURS_Km_CURS_ferdicoa+x(24));

% Reaction: id = FER_t	% Local Parameter:   id =  k_FER_t, name = k_FER_t
	reaction_FER_t_k_FER_t=1000.0;
	% Local Parameter:   id =  Keq_FER_t, name = Keq_FER_t
	reaction_FER_t_Keq_FER_t=1.0;

	reaction_FER_t=compartment_extracellular*reaction_FER_t_k_FER_t*(x(22)-x(21)/reaction_FER_t_Keq_FER_t);

% Reaction: id = CUR_t	% Local Parameter:   id =  k_CUR_t, name = k_CUR_t
	reaction_CUR_t_k_CUR_t=1000.0;
	% Local Parameter:   id =  Keq_CUR_t, name = Keq_CUR_t
	reaction_CUR_t_Keq_CUR_t=1.0;

	reaction_CUR_t=compartment_cytosol*reaction_CUR_t_k_CUR_t*(x(25)-x(26)/reaction_CUR_t_Keq_CUR_t);

% Reaction: id = EX_FER	% Local Parameter:   id =  cfeed_fer, name = cfeed_fer
	reaction_EX_FER_cfeed_fer=500.0;

	reaction_EX_FER=compartment_extracellular*global_par_Dil*(reaction_EX_FER_cfeed_fer-x(22));

% Reaction: id = EX_CUR
	reaction_EX_CUR=compartment_extracellular*global_par_Dil*x(26);

% Reaction: id = vACCOA, name = ACCOA dilution
	reaction_vACCOA=compartment_cytosol*global_par_Dil*x(19);

% Reaction: id = vMALCOA, name = MALCOA dilution
	reaction_vMALCOA=compartment_cytosol*global_par_Dil*x(20);

% Reaction: id = vFER, name = FER dilution
	reaction_vFER=compartment_cytosol*global_par_Dil*x(21);

% Reaction: id = vFERCOA, name = FERCOA dilution
	reaction_vFERCOA=compartment_cytosol*global_par_Dil*x(23);

% Reaction: id = vFERDICOA, name = FERDICOA dilution
	reaction_vFERDICOA=compartment_cytosol*global_par_Dil*x(24);

% Reaction: id = vCUR, name = CUR dilution
	reaction_vCUR=compartment_cytosol*global_par_Dil*x(25);

	xdot=zeros(26,1);
	
% Species:   id = cpep, name = Phosphoenol pyruvate, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_vPTS) + ( 1.0 * reaction_vENO) + (-1.0 * reaction_vPK) + (-1.0 * reaction_vpepCxylase) + (-1.0 * reaction_vSynth1) + (-1.0 * reaction_vDAHPS) + (-1.0 * reaction_vPEP));
	
% Species:   id = cglcex, name = Extracellular Glucose, affected by kineticLaw
	xdot(2) = (1/(compartment_extracellular))*((-1.0 * reaction_vPTS) + ( 1.0 * reaction_vEXTER));
	
% Species:   id = cg6p, name = Glucose-6-Phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPTS) + (-1.0 * reaction_vPGI) + (-1.0 * reaction_vPGM) + (-1.0 * reaction_vG6PDH) + (-1.0 * reaction_vG6P));
	
% Species:   id = cpyr, name = Pyruvate, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPTS) + ( 1.0 * reaction_vTRPSYNTH) + ( 1.0 * reaction_vPK) + (-1.0 * reaction_vSynth2) + (-1.0 * reaction_vPDH) + ( 1.0 * reaction_vMethSynth) + (-1.0 * reaction_vpyr));
	
% Species:   id = cf6p, name = Fructose-6-Phosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vTA) + ( 1.0 * reaction_vTKB) + (-2.0 * reaction_vMURSyNTH) + (-1.0 * reaction_vf6P));
	
% Species:   id = cg1p, name = Glucose-1-Phosphate, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGM) + (-1.0 * reaction_vG1PAT) + (-1.0 * reaction_vGLP));
	
% Species:   id = cpg, name = 6-Phosphogluconate, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_vG6PDH) + (-1.0 * reaction_vPGDH) + (-1.0 * reaction_vPG));
	
% Species:   id = cfdp, name = Fructose-1,6-bisphosphate, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALDO) + (-1.0 * reaction_vfdP));
	
% Species:   id = csed7p, name = sedoheptulose-7-phosphate, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*((-1.0 * reaction_vTA) + ( 1.0 * reaction_vTKA) + (-1.0 * reaction_vSED7P));
	
% Species:   id = cgap, name = Glyceraldehyde-3-Phosphate, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*((-1.0 * reaction_vTA) + ( 1.0 * reaction_vTKA) + ( 1.0 * reaction_vTKB) + ( 1.0 * reaction_vALDO) + (-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vTIS) + ( 1.0 * reaction_vTRPSYNTH) + (-1.0 * reaction_vGAP));
	
% Species:   id = ce4p, name = Erythrose-4-phosphate, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_vTA) + (-1.0 * reaction_vTKB) + (-1.0 * reaction_vDAHPS) + (-1.0 * reaction_vE4P));
	
% Species:   id = cxyl5p, name = Xylulose-5-phosphate, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*((-1.0 * reaction_vTKA) + (-1.0 * reaction_vTKB) + ( 1.0 * reaction_vRu5P) + (-1.0 * reaction_vXYL5P));
	
% Species:   id = crib5p, name = Ribose-5-phosphate, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*((-1.0 * reaction_vTKA) + ( 1.0 * reaction_vR5PI) + (-1.0 * reaction_vPPK) + (-1.0 * reaction_vRIB5P));
	
% Species:   id = cdhap, name = Dihydroxyacetonephosphate, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_vALDO) + (-1.0 * reaction_vTIS) + (-1.0 * reaction_vG3PDH) + (-1.0 * reaction_vDHAP));
	
% Species:   id = cpgp, name = 1,3-diphosphosphoglycerate, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vPGK) + (-1.0 * reaction_vPGP));
	
% Species:   id = cpg3, name = 3-Phosphoglycerate, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGK) + (-1.0 * reaction_vsersynth) + (-1.0 * reaction_vrpGluMu) + (-1.0 * reaction_vPG3));
	
% Species:   id = cpg2, name = 2-Phosphoglycerate, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_vrpGluMu) + (-1.0 * reaction_vENO) + (-1.0 * reaction_vpg2));
	
% Species:   id = cribu5p, name = Ribulose-5-phosphate, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGDH) + (-1.0 * reaction_vR5PI) + (-1.0 * reaction_vRu5P) + (-1.0 * reaction_vRibu5p));
	
% Species:   id = accoa, name = accoa, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPDH) + (-1.0 * reaction_ACCOAC) + (-1.0 * reaction_Synth3) + (-1.0 * reaction_vACCOA));
	
% Species:   id = malcoa, name = malcoa, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*(( 1.0 * reaction_ACCOAC) + (-1.0 * reaction_Synth4) + (-1.0 * reaction_DCS) + (-1.0 * reaction_vMALCOA));
	
% Species:   id = fer, name = fer, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol))*((-1.0 * reaction_R4CL) + ( 1.0 * reaction_FER_t) + (-1.0 * reaction_vFER));
	
% Species:   id = fer_ext, name = fer_ext, affected by kineticLaw
	xdot(22) = (1/(compartment_extracellular))*((-1.0 * reaction_FER_t) + ( 1.0 * reaction_EX_FER));
	
% Species:   id = fercoa, name = fercoa, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol))*(( 1.0 * reaction_R4CL) + (-1.0 * reaction_DCS) + (-1.0 * reaction_CURS) + (-1.0 * reaction_vFERCOA));
	
% Species:   id = ferdicoa, name = ferdicoa, affected by kineticLaw
	xdot(24) = (1/(compartment_cytosol))*(( 1.0 * reaction_DCS) + (-1.0 * reaction_CURS) + (-1.0 * reaction_vFERDICOA));
	
% Species:   id = cur, name = cur, affected by kineticLaw
	xdot(25) = (1/(compartment_cytosol))*(( 1.0 * reaction_CURS) + (-1.0 * reaction_CUR_t) + (-1.0 * reaction_vCUR));
	
% Species:   id = cur_ext, name = cur_ext, affected by kineticLaw
	xdot(26) = (1/(compartment_extracellular))*(( 1.0 * reaction_CUR_t) + (-1.0 * reaction_EX_CUR));
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


