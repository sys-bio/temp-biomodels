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
% Model name = Ralser2007_Carbohydrate_Rerouting_ROS
%
% is http://identifiers.org/biomodels.db/MODEL1003300000
% is http://identifiers.org/biomodels.db/BIOMD0000000247
% isDescribedBy http://identifiers.org/pubmed/18154684
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000064
%


function main()
%Initial conditions vector
	x0=zeros(31,1);
	x0(1) = 5.0;
	x0(2) = 1.39;
	x0(3) = 0.28;
	x0(4) = 0.1;
	x0(5) = 0.39;
	x0(6) = 1.2;
	x0(7) = 0.1;
	x0(8) = 0.1;
	x0(9) = 0.1;
	x0(10) = 0.1;
	x0(11) = 3.36;
	x0(12) = 0.04;
	x0(13) = 1.0;
	x0(14) = 50.0;
	x0(15) = 0.1;
	x0(16) = 0.1;
	x0(17) = 0.05;
	x0(18) = 1.0;
	x0(19) = 0.15;
	x0(20) = 0.1;
	x0(21) = 0.1;
	x0(22) = 0.4;
	x0(23) = 1.6;
	x0(24) = 0.1;
	x0(25) = 0.1;
	x0(26) = 0.1;
	x0(27) = 0.1;
	x0(28) = 0.0;
	x0(29) = 50.0;
	x0(30) = 0.087;
	x0(31) = 0.02;


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
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  k_rel_TPI, name = k_rel_TPI
	global_par_k_rel_TPI=1.0;
% Parameter:   id =  k_rel_GAPDH, name = k_rel_GAPDH
	global_par_k_rel_GAPDH=1.0;
% Parameter:   id =  ratio_NADPH_NADP, name = ratio_NADPH_NADP
% Parameter:   id =  SUMAXP, name = sum of AXP conc
	global_par_SUMAXP=4.1;
% assignmentRule: variable = ratio_NADPH_NADP
	global_par_ratio_NADPH_NADP=x(23)/x(22);

% Reaction: id = vGLK, name = Hexokinase	% Local Parameter:   id =  VmGLK, name = VmGLK
	reaction_vGLK_VmGLK=226.452;
	% Local Parameter:   id =  KeqAK, name = KeqAK
	reaction_vGLK_KeqAK=0.45;
	% Local Parameter:   id =  KeqGLK, name = KeqGLK
	reaction_vGLK_KeqGLK=3800.0;
	% Local Parameter:   id =  KmGLKATP, name = KmGLKATP
	reaction_vGLK_KmGLKATP=0.15;
	% Local Parameter:   id =  KmGLKGLCi, name = KmGLKGLCi
	reaction_vGLK_KmGLKGLCi=0.08;
	% Local Parameter:   id =  KmGLKG6P, name = KmGLKG6P
	reaction_vGLK_KmGLKG6P=30.0;
	% Local Parameter:   id =  KmGLKADP, name = KmGLKADP
	reaction_vGLK_KmGLKADP=0.23;

	reaction_vGLK=compartment_cytoplasm*reaction_vGLK_VmGLK*(-x(2)*(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vGLK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vGLK_KeqAK*x(1)^2)^0.5)/((1-4*reaction_vGLK_KeqAK)*reaction_vGLK_KeqGLK)+x(30)*(-global_par_SUMAXP+x(1)-4*reaction_vGLK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vGLK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vGLK_KeqAK*x(1)^2)^0.5)/(2-8*reaction_vGLK_KeqAK))/(reaction_vGLK_KmGLKATP*reaction_vGLK_KmGLKGLCi*(1+x(2)/reaction_vGLK_KmGLKG6P+x(30)/reaction_vGLK_KmGLKGLCi)*(1+(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vGLK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vGLK_KeqAK*x(1)^2)^0.5)/((1-4*reaction_vGLK_KeqAK)*reaction_vGLK_KmGLKADP)+(-global_par_SUMAXP+x(1)-4*reaction_vGLK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vGLK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vGLK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vGLK_KeqAK)*reaction_vGLK_KmGLKATP)));

% Reaction: id = vPGI, name = Glucose-6-phosphate isomerase	% Local Parameter:   id =  VmPGI, name = VmPGI
	reaction_vPGI_VmPGI=339.677;
	% Local Parameter:   id =  KmPGIG6P, name = KmPGIG6P
	reaction_vPGI_KmPGIG6P=1.4;
	% Local Parameter:   id =  KeqPGI, name = KeqPGI
	reaction_vPGI_KeqPGI=0.314;
	% Local Parameter:   id =  KmPGIF6P, name = KmPGIF6P
	reaction_vPGI_KmPGIF6P=0.3;

	reaction_vPGI=compartment_cytoplasm*reaction_vPGI_VmPGI/reaction_vPGI_KmPGIG6P*(x(2)-x(3)/reaction_vPGI_KeqPGI)/(1+x(2)/reaction_vPGI_KmPGIG6P+x(3)/reaction_vPGI_KmPGIF6P);

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  gR, name = gR
	reaction_vPFK_gR=5.12;
	% Local Parameter:   id =  VmPFK, name = VmPFK
	reaction_vPFK_VmPFK=182.903;
	% Local Parameter:   id =  KeqAK, name = KeqAK
	reaction_vPFK_KeqAK=0.45;
	% Local Parameter:   id =  KmPFKF6P, name = KmPFKF6P
	reaction_vPFK_KmPFKF6P=0.1;
	% Local Parameter:   id =  KmPFKATP, name = KmPFKATP
	reaction_vPFK_KmPFKATP=0.71;
	% Local Parameter:   id =  L0, name = L0
	reaction_vPFK_L0=0.66;
	% Local Parameter:   id =  CPFKF26BP, name = CPFKF26BP
	reaction_vPFK_CPFKF26BP=0.0174;
	% Local Parameter:   id =  KPFKF26BP, name = KPFKF26BP
	reaction_vPFK_KPFKF26BP=6.82E-4;
	% Local Parameter:   id =  CPFKF16BP, name = CPFKF16BP
	reaction_vPFK_CPFKF16BP=0.397;
	% Local Parameter:   id =  KPFKF16BP, name = KPFKF16BP
	reaction_vPFK_KPFKF16BP=0.111;
	% Local Parameter:   id =  CPFKAMP, name = CPFKAMP
	reaction_vPFK_CPFKAMP=0.0845;
	% Local Parameter:   id =  KPFKAMP, name = KPFKAMP
	reaction_vPFK_KPFKAMP=0.0995;
	% Local Parameter:   id =  CiPFKATP, name = CiPFKATP
	reaction_vPFK_CiPFKATP=100.0;
	% Local Parameter:   id =  KiPFKATP, name = KiPFKATP
	reaction_vPFK_KiPFKATP=0.65;
	% Local Parameter:   id =  CPFKATP, name = CPFKATP
	reaction_vPFK_CPFKATP=3.0;

	reaction_vPFK=compartment_cytoplasm*reaction_vPFK_gR*reaction_vPFK_VmPFK*x(3)*(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)*(1+x(3)/reaction_vPFK_KmPFKF6P+(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP)+reaction_vPFK_gR*x(3)*(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP*reaction_vPFK_KmPFKF6P))/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP*reaction_vPFK_KmPFKF6P*(reaction_vPFK_L0*(1+reaction_vPFK_CPFKF26BP*x(31)/reaction_vPFK_KPFKF26BP+reaction_vPFK_CPFKF16BP*x(4)/reaction_vPFK_KPFKF16BP)^2*(1+2*reaction_vPFK_CPFKAMP*reaction_vPFK_KeqAK*(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)^2/((-1+4*reaction_vPFK_KeqAK)*reaction_vPFK_KPFKAMP*(global_par_SUMAXP-x(1)+4*reaction_vPFK_KeqAK*x(1)-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)))^2*(1+reaction_vPFK_CiPFKATP*(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KiPFKATP))^2*(1+reaction_vPFK_CPFKATP*(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP))^2/((1+x(31)/reaction_vPFK_KPFKF26BP+x(4)/reaction_vPFK_KPFKF16BP)^2*(1+2*reaction_vPFK_KeqAK*(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)^2/((-1+4*reaction_vPFK_KeqAK)*reaction_vPFK_KPFKAMP*(global_par_SUMAXP-x(1)+4*reaction_vPFK_KeqAK*x(1)-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)))^2*(1+(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KiPFKATP))^2)+(1+x(3)/reaction_vPFK_KmPFKF6P+(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP)+reaction_vPFK_gR*x(3)*(-global_par_SUMAXP+x(1)-4*reaction_vPFK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPFK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPFK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPFK_KeqAK)*reaction_vPFK_KmPFKATP*reaction_vPFK_KmPFKF6P))^2));

% Reaction: id = vALD, name = Aldolase	% Local Parameter:   id =  VmALD, name = VmALD
	reaction_vALD_VmALD=322.258;
	% Local Parameter:   id =  KeqTPI, name = KeqTPI
	reaction_vALD_KeqTPI=0.045;
	% Local Parameter:   id =  KeqALD, name = KeqALD
	reaction_vALD_KeqALD=0.069;
	% Local Parameter:   id =  KmALDF16P, name = KmALDF16P
	reaction_vALD_KmALDF16P=0.3;
	% Local Parameter:   id =  KmALDDHAP, name = KmALDDHAP
	reaction_vALD_KmALDDHAP=2.4;
	% Local Parameter:   id =  KmALDGAP, name = KmALDGAP
	reaction_vALD_KmALDGAP=2.0;
	% Local Parameter:   id =  KmALDGAPi, name = KmALDGAPi
	reaction_vALD_KmALDGAPi=10.0;

	reaction_vALD=compartment_cytoplasm*reaction_vALD_VmALD*x(4)/reaction_vALD_KmALDF16P*(1-x(18)*x(17)/(x(4)*reaction_vALD_KeqALD))/(1+x(4)/reaction_vALD_KmALDF16P+x(18)/reaction_vALD_KmALDDHAP+x(17)/reaction_vALD_KmALDGAP+x(4)*x(17)/(reaction_vALD_KmALDF16P*reaction_vALD_KmALDGAPi)+x(18)*x(17)/(reaction_vALD_KmALDDHAP*reaction_vALD_KmALDGAP));

% Reaction: id = vG3PDH, name = Glycerol 3-phosphate dehydrogenase	% Local Parameter:   id =  VmG3PDH, name = VmG3PDH
	reaction_vG3PDH_VmG3PDH=70.15;
	% Local Parameter:   id =  KeqG3PDH, name = KeqG3PDH
	reaction_vG3PDH_KeqG3PDH=4300.0;
	% Local Parameter:   id =  KeqTPI, name = KeqTPI
	reaction_vG3PDH_KeqTPI=0.045;
	% Local Parameter:   id =  KmG3PDHDHAP, name = KmG3PDHDHAP
	reaction_vG3PDH_KmG3PDHDHAP=0.4;
	% Local Parameter:   id =  KmG3PDHNADH, name = KmG3PDHNADH
	reaction_vG3PDH_KmG3PDHNADH=0.023;
	% Local Parameter:   id =  KmG3PDHNAD, name = KmG3PDHNAD
	reaction_vG3PDH_KmG3PDHNAD=0.93;
	% Local Parameter:   id =  KmG3PDHGLY, name = KmG3PDHGLY
	reaction_vG3PDH_KmG3PDHGLY=1.0;

	reaction_vG3PDH=compartment_cytoplasm*reaction_vG3PDH_VmG3PDH*(-x(19)*x(6)/reaction_vG3PDH_KeqG3PDH+x(5)*x(18)/(1+reaction_vG3PDH_KeqTPI))/(reaction_vG3PDH_KmG3PDHDHAP*reaction_vG3PDH_KmG3PDHNADH*(1+x(6)/reaction_vG3PDH_KmG3PDHNAD+x(5)/reaction_vG3PDH_KmG3PDHNADH)*(1+x(19)/reaction_vG3PDH_KmG3PDHGLY+x(18)/((1+reaction_vG3PDH_KeqTPI)*reaction_vG3PDH_KmG3PDHDHAP)));

% Reaction: id = vGAPDH, name = Glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  VmGAPDHr, name = VmGAPDHr
	reaction_vGAPDH_VmGAPDHr=6549.68;
	% Local Parameter:   id =  KmGAPDHBPG, name = KmGAPDHBPG
	reaction_vGAPDH_KmGAPDHBPG=0.0098;
	% Local Parameter:   id =  KmGAPDHNADH, name = KmGAPDHNADH
	reaction_vGAPDH_KmGAPDHNADH=0.06;
	% Local Parameter:   id =  KeqTPI, name = KeqTPI
	reaction_vGAPDH_KeqTPI=0.045;
	% Local Parameter:   id =  VmGAPDHf, name = VmGAPDHf
	reaction_vGAPDH_VmGAPDHf=1184.52;
	% Local Parameter:   id =  KmGAPDHGAP, name = KmGAPDHGAP
	reaction_vGAPDH_KmGAPDHGAP=0.21;
	% Local Parameter:   id =  KmGAPDHNAD, name = KmGAPDHNAD
	reaction_vGAPDH_KmGAPDHNAD=0.09;
	% Local Parameter:   id =  KeqGAPDH, name = KeqGAPDH
	reaction_vGAPDH_KeqGAPDH=0.005;

	reaction_vGAPDH=compartment_cytoplasm*global_par_k_rel_GAPDH*reaction_vGAPDH_VmGAPDHf*x(17)*x(6)/(reaction_vGAPDH_KmGAPDHGAP*reaction_vGAPDH_KmGAPDHNAD)*(1-x(7)*x(5)/(x(17)*x(6)*reaction_vGAPDH_KeqGAPDH))/((1+x(17)/reaction_vGAPDH_KmGAPDHGAP+x(7)/reaction_vGAPDH_KmGAPDHBPG)*(1+x(6)/reaction_vGAPDH_KmGAPDHNAD+x(5)/reaction_vGAPDH_KmGAPDHNADH));

% Reaction: id = vPGK, name = Phosphoglycerate kinase	% Local Parameter:   id =  VmPGK, name = VmPGK
	reaction_vPGK_VmPGK=1306.45;
	% Local Parameter:   id =  KeqPGK, name = KeqPGK
	reaction_vPGK_KeqPGK=3200.0;
	% Local Parameter:   id =  KeqAK, name = KeqAK
	reaction_vPGK_KeqAK=0.45;
	% Local Parameter:   id =  KmPGKATP, name = KmPGKATP
	reaction_vPGK_KmPGKATP=0.3;
	% Local Parameter:   id =  KmPGKP3G, name = KmPGKP3G
	reaction_vPGK_KmPGKP3G=0.53;
	% Local Parameter:   id =  KmPGKADP, name = KmPGKADP
	reaction_vPGK_KmPGKADP=0.2;
	% Local Parameter:   id =  KmPGKBPG, name = KmPGKBPG
	reaction_vPGK_KmPGKBPG=0.003;

	reaction_vPGK=compartment_cytoplasm*reaction_vPGK_VmPGK*(reaction_vPGK_KeqPGK*x(7)*(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPGK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPGK_KeqAK*x(1)^2)^0.5)/(1-4*reaction_vPGK_KeqAK)-(-global_par_SUMAXP+x(1)-4*reaction_vPGK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPGK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPGK_KeqAK*x(1)^2)^0.5)*x(8)/(2-8*reaction_vPGK_KeqAK))/(reaction_vPGK_KmPGKATP*reaction_vPGK_KmPGKP3G*(1+(global_par_SUMAXP-(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPGK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPGK_KeqAK*x(1)^2)^0.5)/((1-4*reaction_vPGK_KeqAK)*reaction_vPGK_KmPGKADP)+(-global_par_SUMAXP+x(1)-4*reaction_vPGK_KeqAK*x(1)+(global_par_SUMAXP^2-2*global_par_SUMAXP*x(1)+8*reaction_vPGK_KeqAK*global_par_SUMAXP*x(1)+x(1)^2-4*reaction_vPGK_KeqAK*x(1)^2)^0.5)/((2-8*reaction_vPGK_KeqAK)*reaction_vPGK_KmPGKATP))*(1+x(7)/reaction_vPGK_KmPGKBPG+x(8)/reaction_vPGK_KmPGKP3G));

% Reaction: id = vPGM, name = Phosphoglycerate mutase	% Local Parameter:   id =  VmPGM, name = VmPGM
	reaction_vPGM_VmPGM=2525.81;
	% Local Parameter:   id =  KmPGMP3G, name = KmPGMP3G
	reaction_vPGM_KmPGMP3G=1.2;
	% Local Parameter:   id =  KeqPGM, name = KeqPGM
	reaction_vPGM_KeqPGM=0.19;
	% Local Parameter:   id =  KmPGMP2G, name = KmPGMP2G
	reaction_vPGM_KmPGMP2G=0.08;

	reaction_vPGM=compartment_cytoplasm*reaction_vPGM_VmPGM/reaction_vPGM_KmPGMP3G*(x(8)-x(9)/reaction_vPGM_KeqPGM)/(1+x(8)/reaction_vPGM_KmPGMP3G+x(9)/reaction_vPGM_KmPGMP2G);

% Reaction: id = vENO, name = Enolase	% Local Parameter:   id =  VmENO, name = VmENO
	reaction_vENO_VmENO=365.806;
	% Local Parameter:   id =  KmENOP2G, name = KmENOP2G
	reaction_vENO_KmENOP2G=0.04;
	% Local Parameter:   id =  KeqENO, name = KeqENO
	reaction_vENO_KeqENO=6.7;
	% Local Parameter:   id =  KmENOPEP, name = KmENOPEP
	reaction_vENO_KmENOPEP=0.5;

	reaction_vENO=compartment_cytoplasm*reaction_vENO_VmENO/reaction_vENO_KmENOP2G*(x(9)-x(10)/reaction_vENO_KeqENO)/(1+x(9)/reaction_vENO_KmENOP2G+x(10)/reaction_vENO_KmENOPEP);

% Reaction: id = vPYK, name = Pyruvate kinase	% Local Parameter:   id =  VmPYK, name = VmPYK
	reaction_vPYK_VmPYK=1088.71;
	% Local Parameter:   id =  KmPYKPEP, name = KmPYKPEP
	reaction_vPYK_KmPYKPEP=0.14;
	% Local Parameter:   id =  KmPYKADP, name = KmPYKADP
	reaction_vPYK_KmPYKADP=0.53;
	% Local Parameter:   id =  KeqAK, name = KeqAK
	reaction_vPYK_KeqAK=0.45;
	% Local Parameter:   id =  KeqPYK, name = KeqPYK
	reaction_vPYK_KeqPYK=6500.0;
	% Local Parameter:   id =  KmPYKPYR, name = KmPYKPYR
	reaction_vPYK_KmPYKPYR=21.0;
	% Local Parameter:   id =  KmPYKATP, name = KmPYKATP
	reaction_vPYK_KmPYKATP=1.5;

	reaction_vPYK=compartment_cytoplasm*reaction_vPYK_VmPYK/(reaction_vPYK_KmPYKPEP*reaction_vPYK_KmPYKADP)*(x(10)*(global_par_SUMAXP-(x(1)^2-4*reaction_vPYK_KeqAK*x(1)^2-2*x(1)*global_par_SUMAXP+8*reaction_vPYK_KeqAK*x(1)*global_par_SUMAXP+global_par_SUMAXP^2)^0.5)/(1-4*reaction_vPYK_KeqAK)-x(11)*(x(1)-4*reaction_vPYK_KeqAK*x(1)-global_par_SUMAXP+(x(1)^2-4*reaction_vPYK_KeqAK*x(1)^2-2*x(1)*global_par_SUMAXP+8*reaction_vPYK_KeqAK*x(1)*global_par_SUMAXP+global_par_SUMAXP^2)^0.5)/(2-8*reaction_vPYK_KeqAK)/reaction_vPYK_KeqPYK)/((1+x(10)/reaction_vPYK_KmPYKPEP+x(11)/reaction_vPYK_KmPYKPYR)*(1+(x(1)-4*reaction_vPYK_KeqAK*x(1)-global_par_SUMAXP+(x(1)^2-4*reaction_vPYK_KeqAK*x(1)^2-2*x(1)*global_par_SUMAXP+8*reaction_vPYK_KeqAK*x(1)*global_par_SUMAXP+global_par_SUMAXP^2)^0.5)/(2-8*reaction_vPYK_KeqAK)/reaction_vPYK_KmPYKATP+(global_par_SUMAXP-(x(1)^2-4*reaction_vPYK_KeqAK*x(1)^2-2*x(1)*global_par_SUMAXP+8*reaction_vPYK_KeqAK*x(1)*global_par_SUMAXP+global_par_SUMAXP^2)^0.5)/(1-4*reaction_vPYK_KeqAK)/reaction_vPYK_KmPYKADP));

% Reaction: id = vPDC, name = Pyruvate decarboxylase	% Local Parameter:   id =  VmPDC, name = VmPDC
	reaction_vPDC_VmPDC=174.194;
	% Local Parameter:   id =  nPDC, name = nPDC
	reaction_vPDC_nPDC=1.9;
	% Local Parameter:   id =  KmPDCPYR, name = KmPDCPYR
	reaction_vPDC_KmPDCPYR=4.33;

	reaction_vPDC=compartment_cytoplasm*reaction_vPDC_VmPDC*x(11)^reaction_vPDC_nPDC/reaction_vPDC_KmPDCPYR^reaction_vPDC_nPDC/(1+x(11)^reaction_vPDC_nPDC/reaction_vPDC_KmPDCPYR^reaction_vPDC_nPDC);

% Reaction: id = vSUC, name = Succinate synthesis	% Local Parameter:   id =  KSUCC, name = KSUCC
	reaction_vSUC_KSUCC=21.4;

	reaction_vSUC=compartment_cytoplasm*reaction_vSUC_KSUCC*x(12);

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

	reaction_vADH=compartment_cytoplasm*(-reaction_vADH_VmADH/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)*(x(6)*x(14)-x(5)*x(12)/reaction_vADH_KeqADH)/(1+x(6)/reaction_vADH_KiADHNAD+reaction_vADH_KmADHNAD*x(14)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)+reaction_vADH_KmADHNADH*x(12)/(reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+x(5)/reaction_vADH_KiADHNADH+x(6)*x(14)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH)+reaction_vADH_KmADHNADH*x(6)*x(12)/(reaction_vADH_KiADHNAD*reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+reaction_vADH_KmADHNAD*x(14)*x(5)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH*reaction_vADH_KiADHNADH)+x(5)*x(12)/(reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)+x(6)*x(14)*x(12)/(reaction_vADH_KiADHNAD*reaction_vADH_KmADHETOH*reaction_vADH_KiADHACE)+x(14)*x(5)*x(12)/(reaction_vADH_KiADHETOH*reaction_vADH_KiADHNADH*reaction_vADH_KmADHACE)));

% Reaction: id = vATP, name = ATPase activity	% Local Parameter:   id =  KATPASE, name = KATPASE
	reaction_vATP_KATPASE=39.5;
	% Local Parameter:   id =  KeqAK, name = KeqAK
	reaction_vATP_KeqAK=0.45;

	reaction_vATP=compartment_cytoplasm*reaction_vATP_KATPASE*(x(1)-4*reaction_vATP_KeqAK*x(1)-global_par_SUMAXP+(x(1)^2-4*reaction_vATP_KeqAK*x(1)^2-2*x(1)*global_par_SUMAXP+8*reaction_vATP_KeqAK*x(1)*global_par_SUMAXP+global_par_SUMAXP^2)^0.5)/(2-8*reaction_vATP_KeqAK);

% Reaction: id = vTPI, name = vTPI	% Local Parameter:   id =  KmGA3P, name = KmGA3P
	reaction_vTPI_KmGA3P=1.27;
	% Local Parameter:   id =  KmDHAP, name = KmDHAP
	reaction_vTPI_KmDHAP=1.23;
	% Local Parameter:   id =  VmDHAP, name = VmDHAP
	reaction_vTPI_VmDHAP=10900.0;
	% Local Parameter:   id =  VmGA3P, name = VmGA3P
	reaction_vTPI_VmGA3P=555.0;

	reaction_vTPI=compartment_cytoplasm*global_par_k_rel_TPI*(reaction_vTPI_VmDHAP*x(17)/reaction_vTPI_KmGA3P-reaction_vTPI_VmGA3P*x(18)/reaction_vTPI_KmDHAP)/(1+x(17)/reaction_vTPI_KmGA3P+x(18)/reaction_vTPI_KmDHAP);

% Reaction: id = vG6PDH, name = vG6PDH	% Local Parameter:   id =  VmG6PDH, name = VmG6PDH
	reaction_vG6PDH_VmG6PDH=4.0;
	% Local Parameter:   id =  KmG6P, name = KmG6P
	reaction_vG6PDH_KmG6P=0.04;
	% Local Parameter:   id =  KmNADP, name = KmNADP
	reaction_vG6PDH_KmNADP=0.02;
	% Local Parameter:   id =  KiNADPH, name = KiNADPH
	reaction_vG6PDH_KiNADPH=0.017;

	reaction_vG6PDH=compartment_cytoplasm*reaction_vG6PDH_VmG6PDH*x(2)*x(22)/(reaction_vG6PDH_KmG6P*reaction_vG6PDH_KmNADP)/((1+x(2)/reaction_vG6PDH_KmG6P+x(23)/reaction_vG6PDH_KiNADPH)*(1+x(22)/reaction_vG6PDH_KmNADP));

% Reaction: id = v6PGL, name = v6PGL	% Local Parameter:   id =  Vm6PGL, name = Vm6PGL
	reaction_v6PGL_Vm6PGL=4.0;
	% Local Parameter:   id =  Km6PGL, name = Km6PGL
	reaction_v6PGL_Km6PGL=0.8;

	reaction_v6PGL=compartment_cytoplasm*reaction_v6PGL_Vm6PGL*x(20)/(reaction_v6PGL_Km6PGL+x(20));

% Reaction: id = vGluDH, name = vGluDH	% Local Parameter:   id =  VmGluDH, name = VmGluDH
	reaction_vGluDH_VmGluDH=4.0;
	% Local Parameter:   id =  KmGluconate, name = KmGluconate
	reaction_vGluDH_KmGluconate=0.02;
	% Local Parameter:   id =  KmNADP, name = KmNADP
	reaction_vGluDH_KmNADP=0.03;
	% Local Parameter:   id =  KiNADPH, name = KiNADPH
	reaction_vGluDH_KiNADPH=0.03;

	reaction_vGluDH=compartment_cytoplasm*reaction_vGluDH_VmGluDH*x(21)*x(22)/(reaction_vGluDH_KmGluconate*reaction_vGluDH_KmNADP)/((1+x(21)/reaction_vGluDH_KmGluconate+x(23)/reaction_vGluDH_KiNADPH)*(1+x(22)/reaction_vGluDH_KmNADP));

% Reaction: id = vPPI, name = vPPI	% Local Parameter:   id =  VmPPIf, name = VmPPIf
	reaction_vPPI_VmPPIf=3458.0;
	% Local Parameter:   id =  VmPPIr, name = VmPPIr
	reaction_vPPI_VmPPIr=3458.0;
	% Local Parameter:   id =  KmRibu5P, name = KmRibu5P
	reaction_vPPI_KmRibu5P=1.6;
	% Local Parameter:   id =  KmRibo5P, name = KmRibo5P
	reaction_vPPI_KmRibo5P=1.6;

	reaction_vPPI=compartment_cytoplasm*(reaction_vPPI_VmPPIf*x(24)/reaction_vPPI_KmRibu5P-reaction_vPPI_VmPPIr*x(25)/reaction_vPPI_KmRibo5P)/(1+x(24)/reaction_vPPI_KmRibu5P+x(25)/reaction_vPPI_KmRibo5P);

% Reaction: id = vTransk1, name = vTransk1	% Local Parameter:   id =  VmTransk1f, name = VmTransk1f
	reaction_vTransk1_VmTransk1f=4.0;
	% Local Parameter:   id =  VmTransk1r, name = VmTransk1r
	reaction_vTransk1_VmTransk1r=2.0;
	% Local Parameter:   id =  KmRibose5P, name = KmRibose5P
	reaction_vTransk1_KmRibose5P=0.1;
	% Local Parameter:   id =  KmXyl5P, name = KmXyl5P
	reaction_vTransk1_KmXyl5P=0.15;
	% Local Parameter:   id =  KmGA3P, name = KmGA3P
	reaction_vTransk1_KmGA3P=0.1;
	% Local Parameter:   id =  KmSeduhept, name = KmSeduhept
	reaction_vTransk1_KmSeduhept=0.15;

	reaction_vTransk1=compartment_cytoplasm*(reaction_vTransk1_VmTransk1f*x(25)*x(26)/(reaction_vTransk1_KmRibose5P*reaction_vTransk1_KmXyl5P)-reaction_vTransk1_VmTransk1r*x(17)*x(27)/(reaction_vTransk1_KmGA3P*reaction_vTransk1_KmSeduhept))/((1+x(25)/reaction_vTransk1_KmRibose5P+x(17)/reaction_vTransk1_KmGA3P)*(1+x(26)/reaction_vTransk1_KmXyl5P+x(27)/reaction_vTransk1_KmSeduhept));

% Reaction: id = vR5PI, name = vR5PI	% Local Parameter:   id =  VmR5PIf, name = VmR5PIf
	reaction_vR5PI_VmR5PIf=1039.0;
	% Local Parameter:   id =  VmR5PIr, name = VmR5PIr
	reaction_vR5PI_VmR5PIr=1039.0;
	% Local Parameter:   id =  KmRibu5P, name = KmRibu5P
	reaction_vR5PI_KmRibu5P=1.5;
	% Local Parameter:   id =  KmXyl, name = KmXyl
	reaction_vR5PI_KmXyl=1.5;

	reaction_vR5PI=compartment_cytoplasm*(reaction_vR5PI_VmR5PIf*x(24)/reaction_vR5PI_KmRibu5P-reaction_vR5PI_VmR5PIr*x(26)/reaction_vR5PI_KmXyl)/(1+x(24)/reaction_vR5PI_KmRibu5P+x(26)/reaction_vR5PI_KmXyl);

% Reaction: id = vTransald, name = vTransald	% Local Parameter:   id =  VmTransaldf, name = VmTransaldf
	reaction_vTransald_VmTransaldf=55.0;
	% Local Parameter:   id =  VmTransaldr, name = VmTransaldr
	reaction_vTransald_VmTransaldr=10.0;
	% Local Parameter:   id =  KmGA3P, name = KmGA3P
	reaction_vTransald_KmGA3P=0.22;
	% Local Parameter:   id =  KmSeduhept, name = KmSeduhept
	reaction_vTransald_KmSeduhept=0.18;
	% Local Parameter:   id =  KmF6P, name = KmF6P
	reaction_vTransald_KmF6P=0.32;
	% Local Parameter:   id =  KmEry4P, name = KmEry4P
	reaction_vTransald_KmEry4P=0.018;

	reaction_vTransald=compartment_cytoplasm*(reaction_vTransald_VmTransaldf*x(17)*x(27)/(reaction_vTransald_KmGA3P*reaction_vTransald_KmSeduhept)-reaction_vTransald_VmTransaldr*x(3)*x(28)/(reaction_vTransald_KmF6P*reaction_vTransald_KmEry4P))/((1+x(17)/reaction_vTransald_KmGA3P+x(3)/reaction_vTransald_KmF6P)*(1+x(27)/reaction_vTransald_KmSeduhept+x(28)/reaction_vTransald_KmEry4P));

% Reaction: id = vTransk2, name = vTransk2	% Local Parameter:   id =  VmTransk2f, name = VmTransk2F
	reaction_vTransk2_VmTransk2f=3.2;
	% Local Parameter:   id =  VmTransk2r, name = VmTransk2r
	reaction_vTransk2_VmTransk2r=43.0;
	% Local Parameter:   id =  KmXyl5P, name = KmXyl5P
	reaction_vTransk2_KmXyl5P=0.16;
	% Local Parameter:   id =  KmEry4P, name = KmEry4P
	reaction_vTransk2_KmEry4P=0.09;
	% Local Parameter:   id =  KmF6P, name = KmF6P
	reaction_vTransk2_KmF6P=1.1;
	% Local Parameter:   id =  KmGA3P, name = KmGA3P
	reaction_vTransk2_KmGA3P=2.1;

	reaction_vTransk2=compartment_cytoplasm*(reaction_vTransk2_VmTransk2f*x(28)*x(26)/(reaction_vTransk2_KmEry4P*reaction_vTransk2_KmXyl5P)-reaction_vTransk2_VmTransk2r*x(3)*x(17)/(reaction_vTransk2_KmF6P*reaction_vTransk2_KmGA3P))/((1+x(26)/reaction_vTransk2_KmXyl5P+x(17)/reaction_vTransk2_KmGA3P)*(1+x(28)/reaction_vTransk2_KmEry4P+x(3)/reaction_vTransk2_KmF6P));

% Reaction: id = vNADPH, name = vNADPH	% Local Parameter:   id =  kNADPH, name = kNADPH
	reaction_vNADPH_kNADPH=2.0;

	reaction_vNADPH=compartment_cytoplasm*reaction_vNADPH_kNADPH*x(23);

% Reaction: id = vGLT, name = Glucose transport	% Local Parameter:   id =  VmGLT, name = VmGLT
	reaction_vGLT_VmGLT=97.264;
	% Local Parameter:   id =  KeqGLT, name = KeqGLT
	reaction_vGLT_KeqGLT=1.0;
	% Local Parameter:   id =  KmGLTGLCo, name = KmGLTGLCo
	reaction_vGLT_KmGLTGLCo=1.1918;
	% Local Parameter:   id =  KmGLTGLCi, name = KmGLTGLCi
	reaction_vGLT_KmGLTGLCi=1.1918;

	reaction_vGLT=compartment_cytoplasm*reaction_vGLT_VmGLT*(x(29)-x(30)/reaction_vGLT_KeqGLT)/(reaction_vGLT_KmGLTGLCo*(1+x(29)/reaction_vGLT_KmGLTGLCo+x(30)/reaction_vGLT_KmGLTGLCi+0.91*x(29)*x(30)/(reaction_vGLT_KmGLTGLCi*reaction_vGLT_KmGLTGLCo)));

	xdot=zeros(31,1);
	
% Species:   id = P, name = High energy phosphates, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*((-1.0 * reaction_vGLK) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vPYK) + (-1.0 * reaction_vATP));
	
% Species:   id = G6P, name = Glucose 6 Phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vGLK) + (-1.0 * reaction_vPGI) + (-1.0 * reaction_vG6PDH));
	
% Species:   id = F6P, name = Fructose 6 Phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vTransald) + ( 1.0 * reaction_vTransk2));
	
% Species:   id = F16P, name = Fructose-1,6 bisphosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*((-1.0 * reaction_vG3PDH) + ( 1.0 * reaction_vGAPDH) + ( 3.0 * reaction_vSUC) + (-1.0 * reaction_vADH));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vG3PDH) + (-1.0 * reaction_vGAPDH) + (-3.0 * reaction_vSUC) + ( 1.0 * reaction_vADH));
	
% Species:   id = BPG, name = 1,3-bisphosphoglycerate, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vPGK));
	
% Species:   id = P3G, name = 3-phosphoglycerate, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPGK) + (-1.0 * reaction_vPGM));
	
% Species:   id = P2G, name = 2-phosphoglycerate, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPGM) + (-1.0 * reaction_vENO));
	
% Species:   id = PEP, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vENO) + (-1.0 * reaction_vPYK));
	
% Species:   id = PYR, name = Pyruvate, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPYK) + (-1.0 * reaction_vPDC));
	
% Species:   id = ACE, name = Acetaldehyde, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPDC) + (-2.0 * reaction_vSUC) + (-1.0 * reaction_vADH));
	
% Species:   id = CO2, name = CO2
%WARNING speciesID: CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = ETOH, name = Ethanol
%WARNING speciesID: ETOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = SUCC, name = Succinate
%WARNING speciesID: SUCC, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = X, name = X
%WARNING speciesID: X, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = GA3P, name = glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(17) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vGAPDH) + (-1.0 * reaction_vTPI) + ( 1.0 * reaction_vTransk1) + (-1.0 * reaction_vTransald) + ( 1.0 * reaction_vTransk2));
	
% Species:   id = DHAP, name = dihydroxyacetone phosphate, affected by kineticLaw
	xdot(18) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vG3PDH) + ( 1.0 * reaction_vTPI));
	
% Species:   id = GLY, name = Glycerol
%WARNING speciesID: GLY, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = D6PGluconoLactone, name = D-6-phosphoglucono-delta-lactone, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vG6PDH) + (-1.0 * reaction_v6PGL));
	
% Species:   id = D6PGluconate, name = 6-phosphogluconate, affected by kineticLaw
	xdot(21) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v6PGL) + (-1.0 * reaction_vGluDH));
	
% Species:   id = NADP, name = NADP+, affected by kineticLaw
	xdot(22) = (1/(compartment_cytoplasm))*((-1.0 * reaction_vG6PDH) + (-1.0 * reaction_vGluDH) + ( 1.0 * reaction_vNADPH));
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vG6PDH) + ( 1.0 * reaction_vGluDH) + (-1.0 * reaction_vNADPH));
	
% Species:   id = Ribulose5P, name = ribulose 5-phosphate, affected by kineticLaw
	xdot(24) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vGluDH) + (-1.0 * reaction_vPPI) + (-1.0 * reaction_vR5PI));
	
% Species:   id = Ribose5P, name = ribose 5-phosphate, affected by kineticLaw
	xdot(25) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vPPI) + (-1.0 * reaction_vTransk1));
	
% Species:   id = Xyl5P, name = xylulose 5-phosphate, affected by kineticLaw
	xdot(26) = (1/(compartment_cytoplasm))*((-1.0 * reaction_vTransk1) + ( 1.0 * reaction_vR5PI) + (-1.0 * reaction_vTransk2));
	
% Species:   id = Seduhept7P, name = sedoheptulose 7-phosphate, affected by kineticLaw
	xdot(27) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vTransk1) + (-1.0 * reaction_vTransald));
	
% Species:   id = Erythrose4P, name = erythrose 4-phosphate, affected by kineticLaw
	xdot(28) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_vTransald) + (-1.0 * reaction_vTransk2));
	
% Species:   id = GLCo, name = Extracellular Glucose
%WARNING speciesID: GLCo, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(29) = 0.0;
	
% Species:   id = GLCi, name = Glucose in Cytosol, affected by kineticLaw
	xdot(30) = (1/(compartment_cytoplasm))*((-1.0 * reaction_vGLK) + ( 1.0 * reaction_vGLT));
	
% Species:   id = F26BP, name = F2,6P
%WARNING speciesID: F26BP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(31) = 0.0;
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


