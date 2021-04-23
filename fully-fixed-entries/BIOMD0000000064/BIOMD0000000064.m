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
% Model name = Teusink2000_Glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL6623915522
% is http://identifiers.org/biomodels.db/BIOMD0000000064
% isDescribedBy http://identifiers.org/pubmed/10951190
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.087;
	x0(2) = 2.45;
	x0(3) = 0.62;
	x0(4) = 5.51;
	x0(5) = 0.96;
	x0(6) = 0.0;
	x0(7) = 0.9;
	x0(8) = 0.12;
	x0(9) = 0.07;
	x0(10) = 1.85;
	x0(11) = 0.17;
	x0(12) = 6.31;
	x0(13) = 1.2;
	x0(14) = 0.39;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0;
	x0(18) = 0.0;
	x0(19) = 50.0;
	x0(20) = 50.0;
	x0(21) = 0.15;
	x0(22) = 0;
	x0(23) = 0;
	x0(24) = 0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  gR, name = gR
	global_par_gR=5.12;
% Parameter:   id =  KmPFKF6P, name = KmPFKF6P
	global_par_KmPFKF6P=0.1;
% Parameter:   id =  KmPFKATP, name = KmPFKATP
	global_par_KmPFKATP=0.71;
% Parameter:   id =  Lzero, name = Lzero
	global_par_Lzero=0.66;
% Parameter:   id =  CiPFKATP, name = CiPFKATP
	global_par_CiPFKATP=100.0;
% Parameter:   id =  KiPFKATP, name = KiPFKATP
	global_par_KiPFKATP=0.65;
% Parameter:   id =  CPFKAMP, name = CPFKAMP
	global_par_CPFKAMP=0.0845;
% Parameter:   id =  KPFKAMP, name = KPFKAMP
	global_par_KPFKAMP=0.0995;
% Parameter:   id =  CPFKF26BP, name = CPFKF26BP
	global_par_CPFKF26BP=0.0174;
% Parameter:   id =  KPFKF26BP, name = KPFKF26BP
	global_par_KPFKF26BP=6.82E-4;
% Parameter:   id =  CPFKF16BP, name = CPFKF16BP
	global_par_CPFKF16BP=0.397;
% Parameter:   id =  KPFKF16BP, name = KPFKF16BP
	global_par_KPFKF16BP=0.111;
% Parameter:   id =  CPFKATP, name = CPFKATP
	global_par_CPFKATP=3.0;
% Parameter:   id =  KeqAK, name = AK eq constant
	global_par_KeqAK=0.45;
% Parameter:   id =  KeqTPI, name = TPI eq constant
	global_par_KeqTPI=0.045;
% assignmentRule: variable = ADP
	x(23)=(const_species_SUM_P-(x(12)^2*(1-4*global_par_KeqAK)+2*const_species_SUM_P*x(12)*(4*global_par_KeqAK-1)+const_species_SUM_P^2)^0.5)/(1-4*global_par_KeqAK);
% assignmentRule: variable = ATP
	x(22)=(x(12)-x(23))/2;
% assignmentRule: variable = AMP
	x(24)=const_species_SUM_P-x(22)-x(23);

% Reaction: id = vGLK, name = Hexokinase	% Local Parameter:   id =  VmGLK, name = VmGLK
	reaction_vGLK_VmGLK=226.452;
	% Local Parameter:   id =  KmGLKGLCi, name = KmGLKGLCi
	reaction_vGLK_KmGLKGLCi=0.08;
	% Local Parameter:   id =  KmGLKATP, name = KmGLKATP
	reaction_vGLK_KmGLKATP=0.15;
	% Local Parameter:   id =  KeqGLK, name = KeqGLK
	reaction_vGLK_KeqGLK=3800.0;
	% Local Parameter:   id =  KmGLKG6P, name = KmGLKG6P
	reaction_vGLK_KmGLKG6P=30.0;
	% Local Parameter:   id =  KmGLKADP, name = KmGLKADP
	reaction_vGLK_KmGLKADP=0.23;

	reaction_vGLK=compartment_cytosol*reaction_vGLK_VmGLK/(reaction_vGLK_KmGLKGLCi*reaction_vGLK_KmGLKATP)*(x(1)*x(22)-x(2)*x(23)/reaction_vGLK_KeqGLK)/((1+x(1)/reaction_vGLK_KmGLKGLCi+x(2)/reaction_vGLK_KmGLKG6P)*(1+x(22)/reaction_vGLK_KmGLKATP+x(23)/reaction_vGLK_KmGLKADP));

% Reaction: id = vPGI, name = Glucose-6-phosphate isomerase	% Local Parameter:   id =  VmPGI_2, name = VmPGI_2
	reaction_vPGI_VmPGI_2=339.677;
	% Local Parameter:   id =  KmPGIG6P_2, name = KmPGIG6P_2
	reaction_vPGI_KmPGIG6P_2=1.4;
	% Local Parameter:   id =  KeqPGI_2, name = KeqPGI_2
	reaction_vPGI_KeqPGI_2=0.314;
	% Local Parameter:   id =  KmPGIF6P_2, name = KmPGIF6P_2
	reaction_vPGI_KmPGIF6P_2=0.3;

	reaction_vPGI=compartment_cytosol*reaction_vPGI_VmPGI_2/reaction_vPGI_KmPGIG6P_2*(x(2)-x(3)/reaction_vPGI_KeqPGI_2)/(1+x(2)/reaction_vPGI_KmPGIG6P_2+x(3)/reaction_vPGI_KmPGIF6P_2);

% Reaction: id = vGLYCO, name = Glycogen synthesis	% Local Parameter:   id =  KGLYCOGEN_3, name = KGLYCOGEN_3
	reaction_vGLYCO_KGLYCOGEN_3=6.0;

	reaction_vGLYCO=compartment_cytosol*reaction_vGLYCO_KGLYCOGEN_3;

% Reaction: id = vTreha, name = Trehalose 6-phosphate synthase	% Local Parameter:   id =  KTREHALOSE, name = KTREHALOSE
	reaction_vTreha_KTREHALOSE=2.4;

	reaction_vTreha=compartment_cytosol*reaction_vTreha_KTREHALOSE;

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  VmPFK, name = VmPFK
	reaction_vPFK_VmPFK=182.903;

	reaction_vPFK=compartment_cytosol*reaction_vPFK_VmPFK*global_par_gR*x(3)/global_par_KmPFKF6P*x(22)/global_par_KmPFKATP*R_PFK(global_par_KmPFKF6P, global_par_KmPFKATP, global_par_gR, x(22), x(3))/(R_PFK(global_par_KmPFKF6P, global_par_KmPFKATP, global_par_gR, x(22), x(3))^2+L_PFK(global_par_Lzero, global_par_CiPFKATP, global_par_KiPFKATP, global_par_CPFKAMP, global_par_KPFKAMP, global_par_CPFKF26BP, global_par_KPFKF26BP, global_par_CPFKF16BP, global_par_KPFKF16BP, x(22), x(24), x(4), const_species_F26BP)*T_PFK(global_par_CPFKATP, global_par_KmPFKATP, x(22))^2);

% Reaction: id = vALD, name = Aldolase	% Local Parameter:   id =  VmALD, name = VmALD
	reaction_vALD_VmALD=322.258;
	% Local Parameter:   id =  KmALDF16P, name = KmALDF16P
	reaction_vALD_KmALDF16P=0.3;
	% Local Parameter:   id =  KeqALD, name = KeqALD
	reaction_vALD_KeqALD=0.069;
	% Local Parameter:   id =  KmALDGAP, name = KmALDGAP
	reaction_vALD_KmALDGAP=2.0;
	% Local Parameter:   id =  KmALDDHAP, name = KmALDDHAP
	reaction_vALD_KmALDDHAP=2.4;
	% Local Parameter:   id =  KmALDGAPi, name = KmALDGAPi
	reaction_vALD_KmALDGAPi=10.0;

	reaction_vALD=compartment_cytosol*reaction_vALD_VmALD/reaction_vALD_KmALDF16P*(x(4)-global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)*1/(1+global_par_KeqTPI)*x(5)/reaction_vALD_KeqALD)/(1+x(4)/reaction_vALD_KmALDF16P+global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)/reaction_vALD_KmALDGAP+1/(1+global_par_KeqTPI)*x(5)/reaction_vALD_KmALDDHAP+global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)*1/(1+global_par_KeqTPI)*x(5)/(reaction_vALD_KmALDGAP*reaction_vALD_KmALDDHAP)+x(4)*global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)/(reaction_vALD_KmALDGAPi*reaction_vALD_KmALDF16P));

% Reaction: id = vGAPDH, name = Glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  VmGAPDHf, name = VmGAPDHf
	reaction_vGAPDH_VmGAPDHf=1184.52;
	% Local Parameter:   id =  KmGAPDHGAP, name = KmGAPDHGAP
	reaction_vGAPDH_KmGAPDHGAP=0.21;
	% Local Parameter:   id =  KmGAPDHNAD, name = KmGAPDHNAD
	reaction_vGAPDH_KmGAPDHNAD=0.09;
	% Local Parameter:   id =  VmGAPDHr, name = VmGAPDHr
	reaction_vGAPDH_VmGAPDHr=6549.8;
	% Local Parameter:   id =  KmGAPDHBPG, name = KmGAPDHBPG
	reaction_vGAPDH_KmGAPDHBPG=0.0098;
	% Local Parameter:   id =  KmGAPDHNADH, name = KmGAPDHNADH
	reaction_vGAPDH_KmGAPDHNADH=0.06;

	reaction_vGAPDH=compartment_cytosol*(reaction_vGAPDH_VmGAPDHf*global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)*x(13)/(reaction_vGAPDH_KmGAPDHGAP*reaction_vGAPDH_KmGAPDHNAD)-reaction_vGAPDH_VmGAPDHr*x(6)*x(14)/(reaction_vGAPDH_KmGAPDHBPG*reaction_vGAPDH_KmGAPDHNADH))/((1+global_par_KeqTPI/(1+global_par_KeqTPI)*x(5)/reaction_vGAPDH_KmGAPDHGAP+x(6)/reaction_vGAPDH_KmGAPDHBPG)*(1+x(13)/reaction_vGAPDH_KmGAPDHNAD+x(14)/reaction_vGAPDH_KmGAPDHNADH));

% Reaction: id = vPGK, name = Phosphoglycerate kinase	% Local Parameter:   id =  VmPGK, name = VmPGK
	reaction_vPGK_VmPGK=1306.45;
	% Local Parameter:   id =  KmPGKP3G, name = KmPGKP3G
	reaction_vPGK_KmPGKP3G=0.53;
	% Local Parameter:   id =  KmPGKATP, name = KmPGKATP
	reaction_vPGK_KmPGKATP=0.3;
	% Local Parameter:   id =  KeqPGK, name = KeqPGK
	reaction_vPGK_KeqPGK=3200.0;
	% Local Parameter:   id =  KmPGKBPG, name = KmPGKBPG
	reaction_vPGK_KmPGKBPG=0.003;
	% Local Parameter:   id =  KmPGKADP, name = KmPGKADP
	reaction_vPGK_KmPGKADP=0.2;

	reaction_vPGK=compartment_cytosol*reaction_vPGK_VmPGK/(reaction_vPGK_KmPGKP3G*reaction_vPGK_KmPGKATP)*(reaction_vPGK_KeqPGK*x(6)*x(23)-x(7)*x(22))/((1+x(6)/reaction_vPGK_KmPGKBPG+x(7)/reaction_vPGK_KmPGKP3G)*(1+x(22)/reaction_vPGK_KmPGKATP+x(23)/reaction_vPGK_KmPGKADP));

% Reaction: id = vPGM, name = Phosphoglycerate mutase	% Local Parameter:   id =  VmPGM, name = VmPGM
	reaction_vPGM_VmPGM=2525.81;
	% Local Parameter:   id =  KmPGMP3G, name = KmPGMP3G
	reaction_vPGM_KmPGMP3G=1.2;
	% Local Parameter:   id =  KeqPGM, name = KeqPGM
	reaction_vPGM_KeqPGM=0.19;
	% Local Parameter:   id =  KmPGMP2G, name = KmPGMP2G
	reaction_vPGM_KmPGMP2G=0.08;

	reaction_vPGM=compartment_cytosol*reaction_vPGM_VmPGM/reaction_vPGM_KmPGMP3G*(x(7)-x(8)/reaction_vPGM_KeqPGM)/(1+x(7)/reaction_vPGM_KmPGMP3G+x(8)/reaction_vPGM_KmPGMP2G);

% Reaction: id = vENO, name = Enolase	% Local Parameter:   id =  VmENO, name = VmENO
	reaction_vENO_VmENO=365.806;
	% Local Parameter:   id =  KmENOP2G, name = KmENOP2G
	reaction_vENO_KmENOP2G=0.04;
	% Local Parameter:   id =  KeqENO, name = KeqENO
	reaction_vENO_KeqENO=6.7;
	% Local Parameter:   id =  KmENOPEP, name = KmENOPEP
	reaction_vENO_KmENOPEP=0.5;

	reaction_vENO=compartment_cytosol*reaction_vENO_VmENO/reaction_vENO_KmENOP2G*(x(8)-x(9)/reaction_vENO_KeqENO)/(1+x(8)/reaction_vENO_KmENOP2G+x(9)/reaction_vENO_KmENOPEP);

% Reaction: id = vPYK, name = Pyruvate kinase	% Local Parameter:   id =  VmPYK, name = VmPYK
	reaction_vPYK_VmPYK=1088.71;
	% Local Parameter:   id =  KmPYKPEP, name = KmPYKPEP
	reaction_vPYK_KmPYKPEP=0.14;
	% Local Parameter:   id =  KmPYKADP, name = KmPYKADP
	reaction_vPYK_KmPYKADP=0.53;
	% Local Parameter:   id =  KeqPYK, name = KeqPYK
	reaction_vPYK_KeqPYK=6500.0;
	% Local Parameter:   id =  KmPYKPYR, name = KmPYKPYR
	reaction_vPYK_KmPYKPYR=21.0;
	% Local Parameter:   id =  KmPYKATP, name = KmPYKATP
	reaction_vPYK_KmPYKATP=1.5;

	reaction_vPYK=compartment_cytosol*reaction_vPYK_VmPYK/(reaction_vPYK_KmPYKPEP*reaction_vPYK_KmPYKADP)*(x(9)*x(23)-x(10)*x(22)/reaction_vPYK_KeqPYK)/((1+x(9)/reaction_vPYK_KmPYKPEP+x(10)/reaction_vPYK_KmPYKPYR)*(1+x(22)/reaction_vPYK_KmPYKATP+x(23)/reaction_vPYK_KmPYKADP));

% Reaction: id = vPDC, name = Pyruvate decarboxylase	% Local Parameter:   id =  VmPDC, name = VmPDC
	reaction_vPDC_VmPDC=174.194;
	% Local Parameter:   id =  nPDC, name = nPDC
	reaction_vPDC_nPDC=1.9;
	% Local Parameter:   id =  KmPDCPYR, name = KmPDCPYR
	reaction_vPDC_KmPDCPYR=4.33;

	reaction_vPDC=compartment_cytosol*reaction_vPDC_VmPDC*x(10)^reaction_vPDC_nPDC/reaction_vPDC_KmPDCPYR^reaction_vPDC_nPDC/(1+x(10)^reaction_vPDC_nPDC/reaction_vPDC_KmPDCPYR^reaction_vPDC_nPDC);

% Reaction: id = vSUC, name = Succinate synthesis	% Local Parameter:   id =  KSUCC, name = KSUCC
	reaction_vSUC_KSUCC=21.4;

	reaction_vSUC=compartment_cytosol*reaction_vSUC_KSUCC*x(11);

% Reaction: id = vGLT, name = Glucose transport	% Local Parameter:   id =  VmGLT, name = VmGLT
	reaction_vGLT_VmGLT=97.264;
	% Local Parameter:   id =  KmGLTGLCo, name = KmGLTGLCo
	reaction_vGLT_KmGLTGLCo=1.1918;
	% Local Parameter:   id =  KeqGLT, name = KeqGLT
	reaction_vGLT_KeqGLT=1.0;
	% Local Parameter:   id =  KmGLTGLCi, name = KmGLTGLCi
	reaction_vGLT_KmGLTGLCi=1.1918;

	reaction_vGLT=reaction_vGLT_VmGLT/reaction_vGLT_KmGLTGLCo*(x(19)-x(1)/reaction_vGLT_KeqGLT)/(1+x(19)/reaction_vGLT_KmGLTGLCo+x(1)/reaction_vGLT_KmGLTGLCi+0.91*x(19)*x(1)/(reaction_vGLT_KmGLTGLCo*reaction_vGLT_KmGLTGLCi));

% Reaction: id = vADH, name = Alcohol dehydrogenase	% Local Parameter:   id =  VmADH, name = VmADH
	reaction_vADH_VmADH=810.0;
	% Local Parameter:   id =  KiADHNAD, name = KiADHNAD
	reaction_vADH_KiADHNAD=0.92;
	% Local Parameter:   id =  KmADHETOH, name = KmADHETOH
	reaction_vADH_KmADHETOH=17.0;
	% Local Parameter:   id =  KeqADH, name = KeqADH
	reaction_vADH_KeqADH=6.9E-5;
	% Local Parameter:   id =  KmADHNAD, name = KmADHNAD
	reaction_vADH_KmADHNAD=0.17;
	% Local Parameter:   id =  KmADHNADH, name = KmADHNADH
	reaction_vADH_KmADHNADH=0.11;
	% Local Parameter:   id =  KiADHNADH, name = KiADHNADH
	reaction_vADH_KiADHNADH=0.031;
	% Local Parameter:   id =  KmADHACE, name = KmADHACE
	reaction_vADH_KmADHACE=1.11;
	% Local Parameter:   id =  KiADHACE, name = KiADHACE
	reaction_vADH_KiADHACE=1.1;
	% Local Parameter:   id =  KiADHETOH, name = KiADHETOH
	reaction_vADH_KiADHETOH=90.0;

	reaction_vADH=(-compartment_cytosol)*reaction_vADH_VmADH/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)*(x(13)*x(20)-x(14)*x(11)/reaction_vADH_KeqADH)/(1+x(13)/reaction_vADH_KiADHNAD+reaction_vADH_KmADHNAD*x(20)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)+reaction_vADH_KmADHNADH*x(11)/(reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+x(14)/reaction_vADH_KiADHNADH+x(13)*x(20)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)+reaction_vADH_KmADHNADH*x(13)*x(11)/(reaction_vADH_KiADHNAD*reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+reaction_vADH_KmADHNAD*x(20)*x(14)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH*reaction_vADH_KiADHNADH)+x(14)*x(11)/(reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+x(13)*x(20)*x(11)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH*reaction_vADH_KiADHACE)+x(20)*x(14)*x(11)/(reaction_vADH_KiADHETOH*reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE));

% Reaction: id = vG3PDH, name = Glycerol 3-phosphate dehydrogenase	% Local Parameter:   id =  VmG3PDH, name = VmG3PDH
	reaction_vG3PDH_VmG3PDH=70.15;
	% Local Parameter:   id =  KmG3PDHDHAP, name = KmG3PDHDHAP
	reaction_vG3PDH_KmG3PDHDHAP=0.4;
	% Local Parameter:   id =  KmG3PDHNADH, name = KmG3PDHNADH
	reaction_vG3PDH_KmG3PDHNADH=0.023;
	% Local Parameter:   id =  KeqG3PDH, name = KeqG3PDH
	reaction_vG3PDH_KeqG3PDH=4300.0;
	% Local Parameter:   id =  KmG3PDHGLY, name = KmG3PDHGLY
	reaction_vG3PDH_KmG3PDHGLY=1.0;
	% Local Parameter:   id =  KmG3PDHNAD, name = KmG3PDHNAD
	reaction_vG3PDH_KmG3PDHNAD=0.93;

	reaction_vG3PDH=compartment_cytosol*reaction_vG3PDH_VmG3PDH/(reaction_vG3PDH_KmG3PDHDHAP*reaction_vG3PDH_KmG3PDHNADH)*(1/(1+global_par_KeqTPI)*x(5)*x(14)-x(21)*x(13)/reaction_vG3PDH_KeqG3PDH)/((1+1/(1+global_par_KeqTPI)*x(5)/reaction_vG3PDH_KmG3PDHDHAP+x(21)/reaction_vG3PDH_KmG3PDHGLY)*(1+x(14)/reaction_vG3PDH_KmG3PDHNADH+x(13)/reaction_vG3PDH_KmG3PDHNAD));

% Reaction: id = vATP, name = ATPase activity	% Local Parameter:   id =  KATPASE, name = KATPASE
	reaction_vATP_KATPASE=33.7;

	reaction_vATP=compartment_cytosol*reaction_vATP_KATPASE*x(22);

% Species:   id = SUM_P, name = sum of AXP conc, constant	const_species_SUM_P=4.1;

% Species:   id = F26BP, name = F2,6P, constant	const_species_F26BP=0.02;

	xdot=zeros(24,1);
	
% Species:   id = GLCi, name = Glucose in Cytosol, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_vGLK) + ( 1.0 * reaction_vGLT));
	
% Species:   id = G6P, name = Glucose 6 Phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGLK) + (-1.0 * reaction_vPGI) + (-1.0 * reaction_vGLYCO) + (-2.0 * reaction_vTreha));
	
% Species:   id = F6P, name = Fructose 6 Phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK));
	
% Species:   id = F16P, name = Fructose-1,6 bisphosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = TRIO, name = Triose-phosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 2.0 * reaction_vALD) + (-1.0 * reaction_vGAPDH) + (-1.0 * reaction_vG3PDH));
	
% Species:   id = BPG, name = 1,3-bisphosphoglycerate, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vPGK));
	
% Species:   id = P3G, name = 3-phosphoglycerate, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGK) + (-1.0 * reaction_vPGM));
	
% Species:   id = P2G, name = 2-phosphoglycerate, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGM) + (-1.0 * reaction_vENO));
	
% Species:   id = PEP, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_vENO) + (-1.0 * reaction_vPYK));
	
% Species:   id = PYR, name = Pyruvate, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPYK) + (-1.0 * reaction_vPDC));
	
% Species:   id = ACE, name = Acetaldehyde, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPDC) + (-2.0 * reaction_vSUC) + (-1.0 * reaction_vADH));
	
% Species:   id = P, name = High energy phosphates, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*((-1.0 * reaction_vGLK) + (-1.0 * reaction_vGLYCO) + (-1.0 * reaction_vTreha) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vPYK) + (-4.0 * reaction_vSUC) + (-1.0 * reaction_vATP));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*((-1.0 * reaction_vGAPDH) + (-3.0 * reaction_vSUC) + ( 1.0 * reaction_vADH) + ( 1.0 * reaction_vG3PDH));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGAPDH) + ( 3.0 * reaction_vSUC) + (-1.0 * reaction_vADH) + (-1.0 * reaction_vG3PDH));
	
% Species:   id = Glyc, name = Glycogen
%WARNING speciesID: Glyc, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = Trh, name = Trehalose
%WARNING speciesID: Trh, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = CO2, name = CO2
%WARNING speciesID: CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
	
% Species:   id = SUCC, name = Succinate
%WARNING speciesID: SUCC, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
	
% Species:   id = GLCo, name = Extracellular Glucose
%WARNING speciesID: GLCo, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = ETOH, name = Ethanol
%WARNING speciesID: ETOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = GLY, name = Glycerol
%WARNING speciesID: GLY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = ATP, name = ATP concentration, defined in a rule 	xdot(22) = x(22);
	
% Species:   id = ADP, name = ADP concentration, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = AMP, name = AMP concentration, defined in a rule 	xdot(24) = x(24);
end

function z=L_PFK(L,CiATP,KiATP,CAMP,KAMP,CF26BP,KF26BP,CF16BP,KF16BP,AT,AM,F16,F26), z=(L*((1+CiATP*AT/KiATP)/(1+AT/KiATP))^2*((1+CAMP*AM/KAMP)/(1+AM/KAMP))^2*((1+CF26BP*F26/KF26BP+CF16BP*F16/KF16BP)/(1+F26/KF26BP+F16/KF16BP))^2);end

function z=R_PFK(KmF6P,KmATP,g,AT,F6), z=(1+F6/KmF6P+AT/KmATP+g*F6/KmF6P*AT/KmATP);end

function z=T_PFK(CATP,KmATP,AT), z=(1+CATP*AT/KmATP);end

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


