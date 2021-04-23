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
% Model name = Holzhutter2004_Erythrocyte_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL6624180840
% is http://identifiers.org/biomodels.db/BIOMD0000000070
% isDescribedBy http://identifiers.org/pubmed/15233787
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 4.5663;
	x0(2) = 1.4;
	x0(3) = 0.0394;
	x0(4) = 0.1;
	x0(5) = 0.0153;
	x0(6) = 0.0097;
	x0(7) = 0.0061;
	x0(8) = 0.1492;
	x0(9) = 0.9992;
	x0(10) = 0.0653;
	x0(11) = 5.0E-4;
	x0(12) = 2.0E-4;
	x0(13) = 0.0658;
	x0(14) = 2.0601;
	x0(15) = 0.0084;
	x0(16) = 0.0109;
	x0(17) = 0.084;
	x0(18) = 1.6803;
	x0(19) = 0.004;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.25;
	x0(23) = 0.025;
	x0(24) = 0.0047;
	x0(25) = 4.0E-4;
	x0(26) = 3.1136;
	x0(27) = 0.0127;
	x0(28) = 0.014;
	x0(29) = 0.0154;
	x0(30) = 0.0063;
	x0(31) = 0.0;
	x0(32) = 0.25;
	x0(33) = 0.8;
	x0(34) = 0.5;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.024;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.024;
	x0(41) = 1.0;
	x0(42) = 1.68;
	x0(43) = 0.084;
	x0(44) = 5.0;
	x0(45) = 1.0;


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

% Compartment: id = compartment, name = cytoplasm, constant
	compartment_compartment=1.0;

% Reaction: id = vGLT, name = Glucose transport	% Local Parameter:   id =  Vmaxv0, name = Vmaxv0
	reaction_vGLT_Vmaxv0=33.6;
	% Local Parameter:   id =  KMoutv0, name = KMoutv0
	reaction_vGLT_KMoutv0=1.7;
	% Local Parameter:   id =  Keqv0, name = Keqv0
	reaction_vGLT_Keqv0=1.0;
	% Local Parameter:   id =  KMinv0, name = KMinv0
	reaction_vGLT_KMinv0=6.9;
	% Local Parameter:   id =  alfav0, name = alfav0
	reaction_vGLT_alfav0=0.54;

	reaction_vGLT=compartment_compartment*reaction_vGLT_Vmaxv0/reaction_vGLT_KMoutv0*(x(44)-x(1)/reaction_vGLT_Keqv0)/(1+x(44)/reaction_vGLT_KMoutv0+x(1)/reaction_vGLT_KMinv0+reaction_vGLT_alfav0*x(44)*x(1)/reaction_vGLT_KMoutv0/reaction_vGLT_KMinv0);

% Reaction: id = vHEX, name = Hexokinase	% Local Parameter:   id =  Inhibv1, name = Inhibv1
	reaction_vHEX_Inhibv1=1.0;
	% Local Parameter:   id =  KMGlcv1, name = KMGlcv1
	reaction_vHEX_KMGlcv1=0.1;
	% Local Parameter:   id =  Vmax1v1, name = Vmax1v1
	reaction_vHEX_Vmax1v1=15.8;
	% Local Parameter:   id =  KMgATPv1, name = KMgATPv1
	reaction_vHEX_KMgATPv1=1.44;
	% Local Parameter:   id =  Vmax2v1, name = Vmax2v1
	reaction_vHEX_Vmax2v1=33.2;
	% Local Parameter:   id =  KMgATPMgv1, name = KMgATPMgv1
	reaction_vHEX_KMgATPMgv1=1.14;
	% Local Parameter:   id =  Keqv1, name = Keqv1
	reaction_vHEX_Keqv1=3900.0;
	% Local Parameter:   id =  KMgv1, name = KMgv1
	reaction_vHEX_KMgv1=1.03;
	% Local Parameter:   id =  KGlc6Pv1, name = KGlc6Pv1
	reaction_vHEX_KGlc6Pv1=0.0045;
	% Local Parameter:   id =  K23P2Gv1, name = K23P2Gv1
	reaction_vHEX_K23P2Gv1=2.7;
	% Local Parameter:   id =  KMg23P2Gv1, name = KMg23P2Gv1
	reaction_vHEX_KMg23P2Gv1=3.44;

	reaction_vHEX=compartment_compartment*reaction_vHEX_Inhibv1*x(1)/(x(1)+reaction_vHEX_KMGlcv1)*reaction_vHEX_Vmax1v1/reaction_vHEX_KMgATPv1*(x(2)+reaction_vHEX_Vmax2v1/reaction_vHEX_Vmax1v1*x(2)*x(33)/reaction_vHEX_KMgATPMgv1-x(3)*x(4)/reaction_vHEX_Keqv1)/(1+x(2)/reaction_vHEX_KMgATPv1*(1+x(33)/reaction_vHEX_KMgATPMgv1)+x(33)/reaction_vHEX_KMgv1+(1.55+x(3)/reaction_vHEX_KGlc6Pv1)*(1+x(33)/reaction_vHEX_KMgv1)+(x(14)+x(34))/reaction_vHEX_K23P2Gv1+x(33)*(x(14)+x(34))/(reaction_vHEX_KMgv1*reaction_vHEX_KMg23P2Gv1));

% Reaction: id = vGPI, name = Glucosephosphate isomerase	% Local Parameter:   id =  Vmaxv2, name = Vmaxv2
	reaction_vGPI_Vmaxv2=935.0;
	% Local Parameter:   id =  Keqv2, name = Keqv2
	reaction_vGPI_Keqv2=0.3925;
	% Local Parameter:   id =  KGlc6Pv2, name = KGlc6Pv2
	reaction_vGPI_KGlc6Pv2=0.182;
	% Local Parameter:   id =  KFru6Pv2, name = KFru6Pv2
	reaction_vGPI_KFru6Pv2=0.071;

	reaction_vGPI=compartment_compartment*reaction_vGPI_Vmaxv2*(x(3)-x(5)/reaction_vGPI_Keqv2)/(x(3)+reaction_vGPI_KGlc6Pv2*(1+x(5)/reaction_vGPI_KFru6Pv2));

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  Vmaxv3, name = Vmaxv3
	reaction_vPFK_Vmaxv3=239.0;
	% Local Parameter:   id =  Keqv3, name = Keqv3
	reaction_vPFK_Keqv3=100000.0;
	% Local Parameter:   id =  KFru6Pv3, name = KFru6Pv3
	reaction_vPFK_KFru6Pv3=0.1;
	% Local Parameter:   id =  KMgATPv3, name = KMgATPv3
	reaction_vPFK_KMgATPv3=0.068;
	% Local Parameter:   id =  L0v3, name = L0v3
	reaction_vPFK_L0v3=0.001072;
	% Local Parameter:   id =  KATPv3, name = KATPv3
	reaction_vPFK_KATPv3=0.01;
	% Local Parameter:   id =  KMgv3, name = KMgv3
	reaction_vPFK_KMgv3=0.44;
	% Local Parameter:   id =  KAMPv3, name = KAMPv3
	reaction_vPFK_KAMPv3=0.033;

	reaction_vPFK=compartment_compartment*reaction_vPFK_Vmaxv3*(x(5)*x(2)-x(6)*x(4)/reaction_vPFK_Keqv3)/((x(5)+reaction_vPFK_KFru6Pv3)*(x(2)+reaction_vPFK_KMgATPv3)*(1+reaction_vPFK_L0v3*((1+x(32)/reaction_vPFK_KATPv3)*(1+x(33)/reaction_vPFK_KMgv3)/((1+(x(21)+x(31))/reaction_vPFK_KAMPv3)*(1+x(5)/reaction_vPFK_KFru6Pv3)))^4));

% Reaction: id = vALD, name = Aldolase	% Local Parameter:   id =  Vmaxv4, name = Vmaxv4
	reaction_vALD_Vmaxv4=98.91000366;
	% Local Parameter:   id =  KFru16P2v4, name = KFru16P2v4
	reaction_vALD_KFru16P2v4=0.0071;
	% Local Parameter:   id =  Keqv4, name = Keqv4
	reaction_vALD_Keqv4=0.114;
	% Local Parameter:   id =  KiGraPv4, name = KiGraPv4
	reaction_vALD_KiGraPv4=0.0572;
	% Local Parameter:   id =  KGraPv4, name = KGraPv4
	reaction_vALD_KGraPv4=0.1906;
	% Local Parameter:   id =  KDHAPv4, name = KDHAPv4
	reaction_vALD_KDHAPv4=0.0364;
	% Local Parameter:   id =  KiiGraPv4, name = KiiGraPv4
	reaction_vALD_KiiGraPv4=0.176;

	reaction_vALD=compartment_compartment*reaction_vALD_Vmaxv4/reaction_vALD_KFru16P2v4*(x(6)-x(7)*x(8)/reaction_vALD_Keqv4)/(1+x(6)/reaction_vALD_KFru16P2v4+x(7)/reaction_vALD_KiGraPv4+x(8)*(x(7)+reaction_vALD_KGraPv4)/(reaction_vALD_KDHAPv4*reaction_vALD_KiGraPv4)+x(6)*x(7)/(reaction_vALD_KFru16P2v4*reaction_vALD_KiiGraPv4));

% Reaction: id = vTPI, name = Triosephosphate isomerase	% Local Parameter:   id =  Vmaxv5, name = Vmaxv5
	reaction_vTPI_Vmaxv5=5456.600098;
	% Local Parameter:   id =  Keqv5, name = Keqv5
	reaction_vTPI_Keqv5=0.0407;
	% Local Parameter:   id =  KDHAPv5, name = KDHAPv5
	reaction_vTPI_KDHAPv5=0.838;
	% Local Parameter:   id =  KGraPv5, name = KGraPv5
	reaction_vTPI_KGraPv5=0.428;

	reaction_vTPI=compartment_compartment*reaction_vTPI_Vmaxv5*(x(8)-x(7)/reaction_vTPI_Keqv5)/(x(8)+reaction_vTPI_KDHAPv5*(1+x(7)/reaction_vTPI_KGraPv5));

% Reaction: id = vGAPDH, name = Glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  Vmaxv6, name = Vmaxv6
	reaction_vGAPDH_Vmaxv6=4300.0;
	% Local Parameter:   id =  KNADv6, name = KNADv6
	reaction_vGAPDH_KNADv6=0.05;
	% Local Parameter:   id =  KGraPv6, name = KGraPv6
	reaction_vGAPDH_KGraPv6=0.005;
	% Local Parameter:   id =  KPv6, name = KPv6
	reaction_vGAPDH_KPv6=3.9;
	% Local Parameter:   id =  Keqv6, name = Keqv6
	reaction_vGAPDH_Keqv6=1.92E-4;
	% Local Parameter:   id =  KNADHv6, name = KNADHv6
	reaction_vGAPDH_KNADHv6=0.0083;
	% Local Parameter:   id =  K13P2Gv6, name = K13P2Gv6
	reaction_vGAPDH_K13P2Gv6=0.0035;

	reaction_vGAPDH=compartment_compartment*reaction_vGAPDH_Vmaxv6/(reaction_vGAPDH_KNADv6*reaction_vGAPDH_KGraPv6*reaction_vGAPDH_KPv6)*(x(10)*x(7)*x(9)-x(11)*x(12)/reaction_vGAPDH_Keqv6)/((1+x(10)/reaction_vGAPDH_KNADv6)*(1+x(7)/reaction_vGAPDH_KGraPv6)*(1+x(9)/reaction_vGAPDH_KPv6)+(1+x(12)/reaction_vGAPDH_KNADHv6)*(1+x(11)/reaction_vGAPDH_K13P2Gv6)-1);

% Reaction: id = vPGK, name = Phosphoglycerate kinase	% Local Parameter:   id =  Vmaxv7, name = Vmaxv7
	reaction_vPGK_Vmaxv7=5000.0;
	% Local Parameter:   id =  KMgADPv7, name = KMgADPv7
	reaction_vPGK_KMgADPv7=0.35;
	% Local Parameter:   id =  K13P2Gv7, name = K13P2Gv7
	reaction_vPGK_K13P2Gv7=0.002;
	% Local Parameter:   id =  Keqv7, name = Keqv7
	reaction_vPGK_Keqv7=1455.0;
	% Local Parameter:   id =  KMgATPv7, name = KMgATPv7
	reaction_vPGK_KMgATPv7=0.48;
	% Local Parameter:   id =  K3PGv7, name = K3PGv7
	reaction_vPGK_K3PGv7=1.2;

	reaction_vPGK=compartment_compartment*reaction_vPGK_Vmaxv7/(reaction_vPGK_KMgADPv7*reaction_vPGK_K13P2Gv7)*(x(4)*x(11)-x(2)*x(13)/reaction_vPGK_Keqv7)/((1+x(4)/reaction_vPGK_KMgADPv7)*(1+x(11)/reaction_vPGK_K13P2Gv7)+(1+x(2)/reaction_vPGK_KMgATPv7)*(1+x(13)/reaction_vPGK_K3PGv7)-1);

% Reaction: id = vBPGM, name = Bisphosphoglycerate mutase	% Local Parameter:   id =  kDPGMv8, name = kDPGMv8
	reaction_vBPGM_kDPGMv8=76000.0;
	% Local Parameter:   id =  Keqv8, name = Keqv8
	reaction_vBPGM_Keqv8=100000.0;
	% Local Parameter:   id =  K23P2Gv8, name = K23P2Gv8
	reaction_vBPGM_K23P2Gv8=0.04;

	reaction_vBPGM=compartment_compartment*reaction_vBPGM_kDPGMv8*(x(11)-(x(14)+x(34))/reaction_vBPGM_Keqv8)/(1+(x(14)+x(34))/reaction_vBPGM_K23P2Gv8);

% Reaction: id = vBPGP, name = Bisphosphoglycerate phosphatase	% Local Parameter:   id =  Vmaxv9, name = Vmaxv9
	reaction_vBPGP_Vmaxv9=0.53;
	% Local Parameter:   id =  Keqv9, name = Keqv9
	reaction_vBPGP_Keqv9=100000.0;
	% Local Parameter:   id =  K23P2Gv9, name = K23P2Gv9
	reaction_vBPGP_K23P2Gv9=0.2;

	reaction_vBPGP=compartment_compartment*reaction_vBPGP_Vmaxv9*(x(14)+x(34)-x(13)/reaction_vBPGP_Keqv9)/(x(14)+x(34)+reaction_vBPGP_K23P2Gv9);

% Reaction: id = vPGM, name = Phosphoglycerate mutase	% Local Parameter:   id =  Vmaxv10, name = Vmaxv10
	reaction_vPGM_Vmaxv10=2000.0;
	% Local Parameter:   id =  Keqv10, name = Keqv10
	reaction_vPGM_Keqv10=0.145;
	% Local Parameter:   id =  K3PGv10, name = K3PGv10
	reaction_vPGM_K3PGv10=5.0;
	% Local Parameter:   id =  K2PGv10, name = K2PGv10
	reaction_vPGM_K2PGv10=1.0;

	reaction_vPGM=compartment_compartment*reaction_vPGM_Vmaxv10*(x(13)-x(15)/reaction_vPGM_Keqv10)/(x(13)+reaction_vPGM_K3PGv10*(1+x(15)/reaction_vPGM_K2PGv10));

% Reaction: id = vENO, name = Enolase	% Local Parameter:   id =  Vmaxv11, name = Vmaxv11
	reaction_vENO_Vmaxv11=1500.0;
	% Local Parameter:   id =  Keqv11, name = Keqv11
	reaction_vENO_Keqv11=1.7;
	% Local Parameter:   id =  K2PGv11, name = K2PGv11
	reaction_vENO_K2PGv11=1.0;
	% Local Parameter:   id =  KPEPv11, name = KPEPv11
	reaction_vENO_KPEPv11=1.0;

	reaction_vENO=compartment_compartment*reaction_vENO_Vmaxv11*(x(15)-x(16)/reaction_vENO_Keqv11)/(x(15)+reaction_vENO_K2PGv11*(1+x(16)/reaction_vENO_KPEPv11));

% Reaction: id = vPK, name = Pyruvate kinase	% Local Parameter:   id =  Vmaxv12, name = Vmaxv12
	reaction_vPK_Vmaxv12=570.0;
	% Local Parameter:   id =  Keqv12, name = Keqv12
	reaction_vPK_Keqv12=13790.0;
	% Local Parameter:   id =  KPEPv12, name = KPEPv12
	reaction_vPK_KPEPv12=0.225;
	% Local Parameter:   id =  KMgADPv12, name = KMgADPv12
	reaction_vPK_KMgADPv12=0.474;
	% Local Parameter:   id =  L0v12, name = L0v12
	reaction_vPK_L0v12=19.0;
	% Local Parameter:   id =  KATPv12, name = KATPv12
	reaction_vPK_KATPv12=3.39;
	% Local Parameter:   id =  KFru16P2v12, name = KFru16P2v12
	reaction_vPK_KFru16P2v12=0.005;

	reaction_vPK=compartment_compartment*reaction_vPK_Vmaxv12*(x(16)*x(4)-x(17)*x(2)/reaction_vPK_Keqv12)/((x(16)+reaction_vPK_KPEPv12)*(x(4)+reaction_vPK_KMgADPv12)*(1+reaction_vPK_L0v12*(1+(x(32)+x(2))/reaction_vPK_KATPv12)^4/((1+x(16)/reaction_vPK_KPEPv12)^4*(1+x(6)/reaction_vPK_KFru16P2v12)^4)));

% Reaction: id = vLDHNADH, name = Lactate dehydrogenase	% Local Parameter:   id =  Vmaxv13, name = Vmaxv13
	reaction_vLDHNADH_Vmaxv13=2800000.0;
	% Local Parameter:   id =  Keqv13, name = Keqv13
	reaction_vLDHNADH_Keqv13=9090.0;

	reaction_vLDHNADH=compartment_compartment*reaction_vLDHNADH_Vmaxv13*(x(17)*x(12)-x(18)*x(10)/reaction_vLDHNADH_Keqv13);

% Reaction: id = vLDHNADPH, name = Lactate dehydrogenase	% Local Parameter:   id =  kLDHv14, name = kLDHv14
	reaction_vLDHNADPH_kLDHv14=243.4;
	% Local Parameter:   id =  Keqv14, name = Keqv14
	reaction_vLDHNADPH_Keqv14=14181.8;

	reaction_vLDHNADPH=compartment_compartment*reaction_vLDHNADPH_kLDHv14*(x(17)*x(19)-x(18)*x(20)/reaction_vLDHNADPH_Keqv14);

% Reaction: id = vATPase, name = ATPase	% Local Parameter:   id =  kATPasev15, name = kATPasev15
	reaction_vATPase_kATPasev15=1.68;

	reaction_vATPase=compartment_compartment*reaction_vATPase_kATPasev15*x(2);

% Reaction: id = vAK, name = Adenylate kinase	% Local Parameter:   id =  Vmaxv16, name = Vmaxv16
	reaction_vAK_Vmaxv16=1380.0;
	% Local Parameter:   id =  KATPv16, name = KATPv16
	reaction_vAK_KATPv16=0.09;
	% Local Parameter:   id =  KAMPv16, name = KAMPv16
	reaction_vAK_KAMPv16=0.08;
	% Local Parameter:   id =  Keqv16, name = Keqv16
	reaction_vAK_Keqv16=0.25;
	% Local Parameter:   id =  KADPv16, name = KADPv16
	reaction_vAK_KADPv16=0.11;

	reaction_vAK=compartment_compartment*reaction_vAK_Vmaxv16/(reaction_vAK_KATPv16*reaction_vAK_KAMPv16)*(x(2)*x(21)-x(4)*x(22)/reaction_vAK_Keqv16)/((1+x(2)/reaction_vAK_KATPv16)*(1+x(21)/reaction_vAK_KAMPv16)+(x(4)+x(22))/reaction_vAK_KADPv16+x(4)*x(22)/reaction_vAK_KADPv16^2);

% Reaction: id = vG6PDH, name = Glucose 6-phosphate dehydrogenase	% Local Parameter:   id =  Vmaxv17, name = Vmaxv17
	reaction_vG6PDH_Vmaxv17=162.0;
	% Local Parameter:   id =  KG6Pv17, name = KG6Pv17
	reaction_vG6PDH_KG6Pv17=0.0667;
	% Local Parameter:   id =  KNADPv17, name = KNADPv17
	reaction_vG6PDH_KNADPv17=0.00367;
	% Local Parameter:   id =  Keqv17, name = Keqv17
	reaction_vG6PDH_Keqv17=2000.0;
	% Local Parameter:   id =  KATPv17, name = KATPv17
	reaction_vG6PDH_KATPv17=0.749;
	% Local Parameter:   id =  KNADPHv17, name = KNADPHv17
	reaction_vG6PDH_KNADPHv17=0.00312;
	% Local Parameter:   id =  KPGA23v17, name = KPGA23v17
	reaction_vG6PDH_KPGA23v17=2.289;

	reaction_vG6PDH=compartment_compartment*reaction_vG6PDH_Vmaxv17/reaction_vG6PDH_KG6Pv17/reaction_vG6PDH_KNADPv17*(x(3)*x(20)-x(23)*x(19)/reaction_vG6PDH_Keqv17)/(1+x(20)*(1+x(3)/reaction_vG6PDH_KG6Pv17)/reaction_vG6PDH_KNADPv17+(x(32)+x(2))/reaction_vG6PDH_KATPv17+x(19)/reaction_vG6PDH_KNADPHv17+(x(14)+x(34))/reaction_vG6PDH_KPGA23v17);

% Reaction: id = vPGLDH, name = Phosphogluconate dehydrogenase	% Local Parameter:   id =  Vmaxv18, name = Vmaxv18
	reaction_vPGLDH_Vmaxv18=1575.0;
	% Local Parameter:   id =  K6PG1v18, name = K6PG1v18
	reaction_vPGLDH_K6PG1v18=0.01;
	% Local Parameter:   id =  KNADPv18, name = KNADPv18
	reaction_vPGLDH_KNADPv18=0.018;
	% Local Parameter:   id =  Keqv18, name = Keqv18
	reaction_vPGLDH_Keqv18=141.7;
	% Local Parameter:   id =  KPGA23v18, name = KPGA23v18
	reaction_vPGLDH_KPGA23v18=0.12;
	% Local Parameter:   id =  KATPv18, name = KATPv18
	reaction_vPGLDH_KATPv18=0.154;
	% Local Parameter:   id =  K6PG2v18, name = K6PG2v18
	reaction_vPGLDH_K6PG2v18=0.058;
	% Local Parameter:   id =  KNADPHv18, name = KNADPHv18
	reaction_vPGLDH_KNADPHv18=0.0045;

	reaction_vPGLDH=compartment_compartment*reaction_vPGLDH_Vmaxv18/reaction_vPGLDH_K6PG1v18/reaction_vPGLDH_KNADPv18*(x(23)*x(20)-x(24)*x(19)/reaction_vPGLDH_Keqv18)/((1+x(20)/reaction_vPGLDH_KNADPv18)*(1+x(23)/reaction_vPGLDH_K6PG1v18+(x(14)+x(34))/reaction_vPGLDH_KPGA23v18)+(x(32)+x(2))/reaction_vPGLDH_KATPv18+x(19)*(1+x(23)/reaction_vPGLDH_K6PG2v18)/reaction_vPGLDH_KNADPHv18);

% Reaction: id = vGSSGRD, name = Glutathione reductase	% Local Parameter:   id =  Vmaxv19, name = Vmaxv19
	reaction_vGSSGRD_Vmaxv19=90.0;
	% Local Parameter:   id =  KGSSGv19, name = KGSSGv19
	reaction_vGSSGRD_KGSSGv19=0.0652;
	% Local Parameter:   id =  KNADPHv19, name = KNADPHv19
	reaction_vGSSGRD_KNADPHv19=0.00852;
	% Local Parameter:   id =  KGSHv19, name = KGSHv19
	reaction_vGSSGRD_KGSHv19=20.0;
	% Local Parameter:   id =  KNADPv19, name = KNADPv19
	reaction_vGSSGRD_KNADPv19=0.07;
	% Local Parameter:   id =  Keqv19, name = Keqv19
	reaction_vGSSGRD_Keqv19=1.04;

	reaction_vGSSGRD=compartment_compartment*reaction_vGSSGRD_Vmaxv19*(x(25)*x(19)/(reaction_vGSSGRD_KGSSGv19*reaction_vGSSGRD_KNADPHv19)-x(26)^2/reaction_vGSSGRD_KGSHv19^2*x(20)/(reaction_vGSSGRD_KNADPv19*reaction_vGSSGRD_Keqv19))/(1+x(19)*(1+x(25)/reaction_vGSSGRD_KGSSGv19)/reaction_vGSSGRD_KNADPHv19+x(20)/reaction_vGSSGRD_KNADPv19*(1+x(26)*(1+x(26)/reaction_vGSSGRD_KGSHv19)/reaction_vGSSGRD_KGSHv19));

% Reaction: id = vGSHox, name = Glutathione oxidation	% Local Parameter:   id =  Kv20, name = Kv20
	reaction_vGSHox_Kv20=0.03;

	reaction_vGSHox=compartment_compartment*reaction_vGSHox_Kv20*x(26);

% Reaction: id = vRibPepi, name = Phosphoribulose epimerase	% Local Parameter:   id =  Vmaxv21, name = Vmaxv21
	reaction_vRibPepi_Vmaxv21=4634.0;
	% Local Parameter:   id =  Keqv21, name = Keqv21
	reaction_vRibPepi_Keqv21=2.7;
	% Local Parameter:   id =  KRu5Pv21, name = KRu5Pv21
	reaction_vRibPepi_KRu5Pv21=0.19;
	% Local Parameter:   id =  KX5Pv21, name = KX5Pv21
	reaction_vRibPepi_KX5Pv21=0.5;

	reaction_vRibPepi=compartment_compartment*reaction_vRibPepi_Vmaxv21*(x(24)-x(27)/reaction_vRibPepi_Keqv21)/(x(24)+reaction_vRibPepi_KRu5Pv21*(1+x(27)/reaction_vRibPepi_KX5Pv21));

% Reaction: id = vRibPiso, name = Ribose phosphate isomerase	% Local Parameter:   id =  Vmaxv22, name = Vmaxv22
	reaction_vRibPiso_Vmaxv22=730.0;
	% Local Parameter:   id =  Keqv22, name = Keqv22
	reaction_vRibPiso_Keqv22=3.0;
	% Local Parameter:   id =  KRu5Pv22, name = KRu5Pv22
	reaction_vRibPiso_KRu5Pv22=0.78;
	% Local Parameter:   id =  KR5Pv22, name = KR5Pv22
	reaction_vRibPiso_KR5Pv22=2.2;

	reaction_vRibPiso=compartment_compartment*reaction_vRibPiso_Vmaxv22*(x(24)-x(28)/reaction_vRibPiso_Keqv22)/(x(24)+reaction_vRibPiso_KRu5Pv22*(1+x(28)/reaction_vRibPiso_KR5Pv22));

% Reaction: id = vTrKet1, name = Transketolase 1	% Local Parameter:   id =  Vmaxv23, name = Vmaxv23
	reaction_vTrKet1_Vmaxv23=23.5;
	% Local Parameter:   id =  Keqv23, name = Keqv23
	reaction_vTrKet1_Keqv23=1.05;
	% Local Parameter:   id =  K1v23, name = K1v23
	reaction_vTrKet1_K1v23=0.4177;
	% Local Parameter:   id =  K2v23, name = K2v23
	reaction_vTrKet1_K2v23=0.3055;
	% Local Parameter:   id =  K6v23, name = K6v23
	reaction_vTrKet1_K6v23=0.00774;
	% Local Parameter:   id =  K3v23, name = K3v23
	reaction_vTrKet1_K3v23=12.432;
	% Local Parameter:   id =  K5v23, name = K5v23
	reaction_vTrKet1_K5v23=0.41139;
	% Local Parameter:   id =  K4v23, name = K4v23
	reaction_vTrKet1_K4v23=0.00496;
	% Local Parameter:   id =  K7v23, name = K7v23
	reaction_vTrKet1_K7v23=48.8;

	reaction_vTrKet1=compartment_compartment*reaction_vTrKet1_Vmaxv23*(x(28)*x(27)-x(7)*x(29)/reaction_vTrKet1_Keqv23)/((reaction_vTrKet1_K1v23+x(28))*x(27)+(reaction_vTrKet1_K2v23+reaction_vTrKet1_K6v23*x(29))*x(28)+(reaction_vTrKet1_K3v23+reaction_vTrKet1_K5v23*x(29))*x(7)+reaction_vTrKet1_K4v23*x(29)+reaction_vTrKet1_K7v23*x(27)*x(7));

% Reaction: id = vTrAld, name = Transaldolase	% Local Parameter:   id =  Vmaxv24, name = Vmaxv24
	reaction_vTrAld_Vmaxv24=27.2;
	% Local Parameter:   id =  Keqv24, name = Keqv24
	reaction_vTrAld_Keqv24=1.05;
	% Local Parameter:   id =  K1v24, name = K1v24
	reaction_vTrAld_K1v24=0.00823;
	% Local Parameter:   id =  K2v24, name = K2v24
	reaction_vTrAld_K2v24=0.04765;
	% Local Parameter:   id =  K6v24, name = K6v24
	reaction_vTrAld_K6v24=0.4653;
	% Local Parameter:   id =  K3v24, name = K3v24
	reaction_vTrAld_K3v24=0.1733;
	% Local Parameter:   id =  K5v24, name = K5v24
	reaction_vTrAld_K5v24=0.8683;
	% Local Parameter:   id =  K4v24, name = K4v24
	reaction_vTrAld_K4v24=0.006095;
	% Local Parameter:   id =  K7v24, name = K7v24
	reaction_vTrAld_K7v24=2.524;

	reaction_vTrAld=compartment_compartment*reaction_vTrAld_Vmaxv24*(x(29)*x(7)-x(30)*x(5)/reaction_vTrAld_Keqv24)/((reaction_vTrAld_K1v24+x(7))*x(29)+(reaction_vTrAld_K2v24+reaction_vTrAld_K6v24*x(5))*x(7)+(reaction_vTrAld_K3v24+reaction_vTrAld_K5v24*x(5))*x(30)+reaction_vTrAld_K4v24*x(5)+reaction_vTrAld_K7v24*x(29)*x(30));

% Reaction: id = vPPRPPS, name = Phosphoribosylpyrophosphate synthetase	% Local Parameter:   id =  Vmaxv25, name = Vmaxv25
	reaction_vPPRPPS_Vmaxv25=1.1;
	% Local Parameter:   id =  Keqv25, name = Keqv25
	reaction_vPPRPPS_Keqv25=100000.0;
	% Local Parameter:   id =  KATPv25, name = KATPv25
	reaction_vPPRPPS_KATPv25=0.03;
	% Local Parameter:   id =  KR5Pv25, name = KR5Pv25
	reaction_vPPRPPS_KR5Pv25=0.57;

	reaction_vPPRPPS=compartment_compartment*reaction_vPPRPPS_Vmaxv25*(x(28)*x(2)-x(41)*x(31)/reaction_vPPRPPS_Keqv25)/((reaction_vPPRPPS_KATPv25+x(2))*(reaction_vPPRPPS_KR5Pv25+x(28)));

% Reaction: id = vTrKet2, name = Transketolase 2	% Local Parameter:   id =  Vmaxv26, name = Vmaxv26
	reaction_vTrKet2_Vmaxv26=23.5;
	% Local Parameter:   id =  Keqv26, name = Keqv26
	reaction_vTrKet2_Keqv26=1.2;
	% Local Parameter:   id =  K1v26, name = K1v26
	reaction_vTrKet2_K1v26=0.00184;
	% Local Parameter:   id =  K2v26, name = K2v26
	reaction_vTrKet2_K2v26=0.3055;
	% Local Parameter:   id =  K6v26, name = K6v26
	reaction_vTrKet2_K6v26=0.122;
	% Local Parameter:   id =  K3v26, name = K3v26
	reaction_vTrKet2_K3v26=0.0548;
	% Local Parameter:   id =  K5v26, name = K5v26
	reaction_vTrKet2_K5v26=0.0287;
	% Local Parameter:   id =  K4v26, name = K4v26
	reaction_vTrKet2_K4v26=3.0E-4;
	% Local Parameter:   id =  K7v26, name = K7v26
	reaction_vTrKet2_K7v26=0.215;

	reaction_vTrKet2=compartment_compartment*reaction_vTrKet2_Vmaxv26*(x(30)*x(27)-x(7)*x(5)/reaction_vTrKet2_Keqv26)/((reaction_vTrKet2_K1v26+x(30))*x(27)+(reaction_vTrKet2_K2v26+reaction_vTrKet2_K6v26*x(5))*x(30)+(reaction_vTrKet2_K3v26+reaction_vTrKet2_K5v26*x(5))*x(7)+reaction_vTrKet2_K4v26*x(5)+reaction_vTrKet2_K7v26*x(27)*x(7));

% Reaction: id = vPhiexch, name = Phosphate exchange	% Local Parameter:   id =  Vmaxv27, name = Vmaxv27
	reaction_vPhiexch_Vmaxv27=100.0;
	% Local Parameter:   id =  Keqv27, name = Keqv27
	reaction_vPhiexch_Keqv27=1.0;

	reaction_vPhiexch=compartment_compartment*reaction_vPhiexch_Vmaxv27*(x(45)-x(9)/reaction_vPhiexch_Keqv27);

% Reaction: id = vLacexch, name = Lactate exchange	% Local Parameter:   id =  Vmaxv28, name = Vmaxv28
	reaction_vLacexch_Vmaxv28=10000.0;
	% Local Parameter:   id =  Keqv28, name = Keqv28
	reaction_vLacexch_Keqv28=1.0;

	reaction_vLacexch=compartment_compartment*reaction_vLacexch_Vmaxv28*(x(42)-x(18)/reaction_vLacexch_Keqv28);

% Reaction: id = vPyrexch, name = Pyruvate exchange	% Local Parameter:   id =  Vmaxv29, name = Vmaxv29
	reaction_vPyrexch_Vmaxv29=10000.0;
	% Local Parameter:   id =  Keqv29, name = Keqv29
	reaction_vPyrexch_Keqv29=1.0;

	reaction_vPyrexch=compartment_compartment*reaction_vPyrexch_Vmaxv29*(x(43)-x(17)/reaction_vPyrexch_Keqv29);

% Reaction: id = vMgATP, name = MgATP dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vMgATP_EqMult=1.0E7;
	% Local Parameter:   id =  KdATP, name = KdATP
	reaction_vMgATP_KdATP=0.072;

	reaction_vMgATP=compartment_compartment*reaction_vMgATP_EqMult*(x(2)-x(33)*x(32)/reaction_vMgATP_KdATP);

% Reaction: id = vMgADP, name = MgADP dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vMgADP_EqMult=1.0E7;
	% Local Parameter:   id =  KdADP, name = KdADP
	reaction_vMgADP_KdADP=0.76;

	reaction_vMgADP=compartment_compartment*reaction_vMgADP_EqMult*(x(4)-x(33)*x(22)/reaction_vMgADP_KdADP);

% Reaction: id = vMgAMP, name = MgAMP dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vMgAMP_EqMult=1.0E7;
	% Local Parameter:   id =  KdAMP, name = KdAMP
	reaction_vMgAMP_KdAMP=16.64;

	reaction_vMgAMP=compartment_compartment*reaction_vMgAMP_EqMult*(x(31)-x(33)*x(21)/reaction_vMgAMP_KdAMP);

% Reaction: id = vMgGri23P2, name = MgGri23P2 dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vMgGri23P2_EqMult=1.0E7;
	% Local Parameter:   id =  Kd23P2G, name = Kd23P2G
	reaction_vMgGri23P2_Kd23P2G=1.667;

	reaction_vMgGri23P2=compartment_compartment*reaction_vMgGri23P2_EqMult*(x(34)-x(33)*x(14)/reaction_vMgGri23P2_Kd23P2G);

% Reaction: id = vP1NADP, name = P1NADP dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vP1NADP_EqMult=1.0E7;
	% Local Parameter:   id =  Kd1, name = Kd1
	reaction_vP1NADP_Kd1=2.0E-4;

	reaction_vP1NADP=compartment_compartment*reaction_vP1NADP_EqMult*(x(35)-x(36)*x(20)/reaction_vP1NADP_Kd1);

% Reaction: id = vP1NADPH, name = P1NADPH dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vP1NADPH_EqMult=1.0E7;
	% Local Parameter:   id =  Kd3, name = Kd3
	reaction_vP1NADPH_Kd3=1.0E-5;

	reaction_vP1NADPH=compartment_compartment*reaction_vP1NADPH_EqMult*(x(37)-x(36)*x(19)/reaction_vP1NADPH_Kd3);

% Reaction: id = vP2NADP, name = P2NADP dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vP2NADP_EqMult=1.0E7;
	% Local Parameter:   id =  Kd2, name = Kd2
	reaction_vP2NADP_Kd2=1.0E-5;

	reaction_vP2NADP=compartment_compartment*reaction_vP2NADP_EqMult*(x(38)-x(39)*x(20)/reaction_vP2NADP_Kd2);

% Reaction: id = vP2NADPH, name = P2NADPH dissociation	% Local Parameter:   id =  EqMult, name = EqMult
	reaction_vP2NADPH_EqMult=1.0E7;
	% Local Parameter:   id =  Kd4, name = Kd4
	reaction_vP2NADPH_Kd4=2.0E-4;

	reaction_vP2NADPH=compartment_compartment*reaction_vP2NADPH_EqMult*(x(40)-x(39)*x(19)/reaction_vP2NADPH_Kd4);

	xdot=zeros(45,1);
	
% Species:   id = Glcin, name = Glucose in, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_vGLT) + (-1.0 * reaction_vHEX));
	
% Species:   id = MgATP, name = MgATP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_vHEX) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vPK) + (-1.0 * reaction_vATPase) + (-1.0 * reaction_vAK) + (-1.0 * reaction_vPPRPPS) + (-1.0 * reaction_vMgATP));
	
% Species:   id = Glc6P, name = Glucose 6-phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_vHEX) + (-1.0 * reaction_vGPI) + (-1.0 * reaction_vG6PDH));
	
% Species:   id = MgADP, name = MgADP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_vHEX) + ( 1.0 * reaction_vPFK) + (-1.0 * reaction_vPGK) + (-1.0 * reaction_vPK) + ( 1.0 * reaction_vATPase) + ( 1.0 * reaction_vAK) + (-1.0 * reaction_vMgADP));
	
% Species:   id = Fru6P, name = Fructose 6-phosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_vGPI) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vTrAld) + ( 1.0 * reaction_vTrKet2));
	
% Species:   id = Fru16P2, name = Fructose 1,6-phosphate, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = GraP, name = Glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_vALD) + ( 1.0 * reaction_vTPI) + (-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vTrKet1) + (-1.0 * reaction_vTrAld) + ( 1.0 * reaction_vTrKet2));
	
% Species:   id = DHAP, name = Dihydroxyacetone phosphate, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vTPI));
	
% Species:   id = Phi, name = Phosphate, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vBPGP) + ( 1.0 * reaction_vATPase) + ( 1.0 * reaction_vPhiexch));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vLDHNADH));
	
% Species:   id = Gri13P2, name = 1,3-Bisphospho-D-glycerate, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vPGK) + (-1.0 * reaction_vBPGM));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vLDHNADH));
	
% Species:   id = Gri3P, name = 3-Phospho-D-glycerate, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vBPGP) + (-1.0 * reaction_vPGM));
	
% Species:   id = Gri23P2f, name = 2,3-Bisphospho-D-glycerate, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_vBPGM) + (-1.0 * reaction_vBPGP) + ( 1.0 * reaction_vMgGri23P2));
	
% Species:   id = Gri2P, name = 2-Phospho-D-glycerate, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_vPGM) + (-1.0 * reaction_vENO));
	
% Species:   id = PEP, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_vENO) + (-1.0 * reaction_vPK));
	
% Species:   id = Pyr, name = Pyruvate, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_vPK) + (-1.0 * reaction_vLDHNADH) + (-1.0 * reaction_vLDHNADPH) + ( 1.0 * reaction_vPyrexch));
	
% Species:   id = Lac, name = Lactate, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_vLDHNADH) + ( 1.0 * reaction_vLDHNADPH) + ( 1.0 * reaction_vLacexch));
	
% Species:   id = NADPHf, name = NADPH, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_vLDHNADPH) + ( 1.0 * reaction_vG6PDH) + ( 1.0 * reaction_vPGLDH) + (-1.0 * reaction_vGSSGRD) + ( 1.0 * reaction_vP1NADPH) + ( 1.0 * reaction_vP2NADPH));
	
% Species:   id = NADPf, name = NADP, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_vLDHNADPH) + (-1.0 * reaction_vG6PDH) + (-1.0 * reaction_vPGLDH) + ( 1.0 * reaction_vGSSGRD) + ( 1.0 * reaction_vP1NADP) + ( 1.0 * reaction_vP2NADP));
	
% Species:   id = AMPf, name = AMP, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*((-1.0 * reaction_vAK) + ( 1.0 * reaction_vMgAMP));
	
% Species:   id = ADPf, name = ADP, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_vAK) + ( 1.0 * reaction_vMgADP));
	
% Species:   id = GlcA6P, name = Phospho-D-glucono-1,5-lactone, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_vG6PDH) + (-1.0 * reaction_vPGLDH));
	
% Species:   id = Rul5P, name = Ribulose 5-phosphate, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_vPGLDH) + (-1.0 * reaction_vRibPepi) + (-1.0 * reaction_vRibPiso));
	
% Species:   id = GSSG, name = Oxidized Glutathione, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*((-1.0 * reaction_vGSSGRD) + ( 1.0 * reaction_vGSHox));
	
% Species:   id = GSH, name = Reduced Glutathione, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 2.0 * reaction_vGSSGRD) + (-2.0 * reaction_vGSHox));
	
% Species:   id = Xul5P, name = Xylulose 5-phosphate, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*(( 1.0 * reaction_vRibPepi) + (-1.0 * reaction_vTrKet1) + (-1.0 * reaction_vTrKet2));
	
% Species:   id = Rib5P, name = Ribose 5-phosphate, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_vRibPiso) + (-1.0 * reaction_vTrKet1) + (-1.0 * reaction_vPPRPPS));
	
% Species:   id = Sed7P, name = Sedoheptulose 7-phosphate, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_vTrKet1) + (-1.0 * reaction_vTrAld));
	
% Species:   id = E4P, name = Erythrose 4-phosphate, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*(( 1.0 * reaction_vTrAld) + (-1.0 * reaction_vTrKet2));
	
% Species:   id = MgAMP, name = MgAMP, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*(( 1.0 * reaction_vPPRPPS) + (-1.0 * reaction_vMgAMP));
	
% Species:   id = ATPf, name = ATP, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_vMgATP));
	
% Species:   id = Mgf, name = Mg, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*(( 1.0 * reaction_vMgATP) + ( 1.0 * reaction_vMgADP) + ( 1.0 * reaction_vMgAMP) + ( 1.0 * reaction_vMgGri23P2));
	
% Species:   id = MgGri23P2, name = MgGri23P2, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment))*((-1.0 * reaction_vMgGri23P2));
	
% Species:   id = P1NADP, name = Protein1 bound NADP, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment))*((-1.0 * reaction_vP1NADP));
	
% Species:   id = P1f, name = Protein1, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment))*(( 1.0 * reaction_vP1NADP) + ( 1.0 * reaction_vP1NADPH));
	
% Species:   id = P1NADPH, name = Protein1 bound NADPH, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment))*((-1.0 * reaction_vP1NADPH));
	
% Species:   id = P2NADP, name = Protein2 bound NADP, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment))*((-1.0 * reaction_vP2NADP));
	
% Species:   id = P2f, name = Protein2, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment))*(( 1.0 * reaction_vP2NADP) + ( 1.0 * reaction_vP2NADPH));
	
% Species:   id = P2NADPH, name = Protein2 bound NADPH, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment))*((-1.0 * reaction_vP2NADPH));
	
% Species:   id = PRPP, name = PRPP
%WARNING speciesID: PRPP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(41) = 0.0;
	
% Species:   id = Lacex, name = External Lactate
%WARNING speciesID: Lacex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(42) = 0.0;
	
% Species:   id = Pyrex, name = External Pyruvate
%WARNING speciesID: Pyrex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(43) = 0.0;
	
% Species:   id = Glcout, name = Glucose outside
%WARNING speciesID: Glcout, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(44) = 0.0;
	
% Species:   id = Phiex, name = Phosphate external
%WARNING speciesID: Phiex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(45) = 0.0;
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


