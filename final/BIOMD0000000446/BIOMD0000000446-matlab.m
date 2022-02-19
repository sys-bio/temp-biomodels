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
% Model name = Erguler2013 - Unfolded protein stress response
%
% is http://identifiers.org/biomodels.db/MODEL1302180000
% is http://identifiers.org/biomodels.db/BIOMD0000000446
% isDescribedBy http://identifiers.org/pubmed/23433609
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
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

% Compartment: id = ERlumen, name = ERlumen, constant
	compartment_ERlumen=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = Golgi, name = Golgi, constant
	compartment_Golgi=1.0;
% Compartment: id = mitochondria, name = mitochondria, constant
	compartment_mitochondria=1.0;
% Parameter:   id =  UFP, name = UFP
% Parameter:   id =  BiP, name = BiP
% Parameter:   id =  IRE1, name = IRE1
% Parameter:   id =  PERK, name = PERK
% Parameter:   id =  ATF6, name = ATF6
% Parameter:   id =  eIF2a, name = eIF2a
% Parameter:   id =  spliceRate, name = spliceRate
% Parameter:   id =  BCL2, name = BCL2
% Parameter:   id =  BH3, name = BH3
% Parameter:   id =  BAXm, name = BAXm
% Parameter:   id =  tmr, name = tmr
	global_par_tmr=10.0;
% Parameter:   id =  IRE1T, name = IRE1T
	global_par_IRE1T=1.0;
% Parameter:   id =  PERKT, name = PERKT
	global_par_PERKT=1.0;
% Parameter:   id =  eIF2aT, name = eIF2aT
	global_par_eIF2aT=1.0;
% Parameter:   id =  CReP, name = CReP
	global_par_CReP=0.1;
% Parameter:   id =  kf, name = kf
	global_par_kf=10.0;
% Parameter:   id =  kr, name = kr
	global_par_kr=1.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  nh, name = nh
	global_par_nh=2.0;
% Parameter:   id =  extATT, name = extATT
	global_par_extATT=0.0;
% Parameter:   id =  extPERK, name = extPERK
	global_par_extPERK=0.0;
% Parameter:   id =  basalXBP, name = basalXBP
	global_par_basalXBP=1.0;
% Parameter:   id =  basalBiP, name = basalBiP
	global_par_basalBiP=1.0;
% Parameter:   id =  krcXU, name = krcXU
	global_par_krcXU=5.0;
% Parameter:   id =  krcBiP, name = krcBiP
	global_par_krcBiP=5.0;
% Parameter:   id =  krcWFS, name = krcWFS
	global_par_krcWFS=1.0;
% Parameter:   id =  krcCHOP, name = krcCHOP
	global_par_krcCHOP=1.0;
% Parameter:   id =  krcGADD34, name = krcGADD34
	global_par_krcGADD34=1.0;
% Parameter:   id =  kmXbp, name = kmXbp
	global_par_kmXbp=10.0;
% Parameter:   id =  kmAtfsXBP, name = kmAtfsXBP
	global_par_kmAtfsXBP=10.0;
% Parameter:   id =  kmAtfsBiP, name = kmAtfsBiP
	global_par_kmAtfsBiP=1.0;
% Parameter:   id =  kmAtff, name = kmAtff
	global_par_kmAtff=0.05;
% Parameter:   id =  kmChop, name = kmChop
	global_par_kmChop=0.05;
% Parameter:   id =  kmAtfs, name = kmAtfs
	global_par_kmAtfs=0.1;
% Parameter:   id =  ksplice, name = ksplice
	global_par_ksplice=10.0;
% Parameter:   id =  krcSplice, name = krcSplice
	global_par_krcSplice=1.0;
% Parameter:   id =  trcXU, name = trcXU
	global_par_trcXU=1.0;
% Parameter:   id =  trcBiP, name = trcBiP
	global_par_trcBiP=1.0;
% Parameter:   id =  trcWFS, name = trcWFS
	global_par_trcWFS=1.0;
% Parameter:   id =  trcCHOP, name = trcCHOP
	global_par_trcCHOP=1.0;
% Parameter:   id =  trcGADD34, name = trcGADD34
	global_par_trcGADD34=1.0;
% Parameter:   id =  ktrUFP, name = ktrUFP
	global_par_ktrUFP=1.0;
% Parameter:   id =  ktrXS, name = ktrXS
	global_par_ktrXS=1.0;
% Parameter:   id =  ktrBiP, name = ktrBiP
	global_par_ktrBiP=1.0;
% Parameter:   id =  ktrATF6, name = ktrATF6
	global_par_ktrATF6=1.0;
% Parameter:   id =  ktrWFS, name = ktrWFS
	global_par_ktrWFS=1.0;
% Parameter:   id =  ktrATF4, name = ktrATF4
	global_par_ktrATF4=1.0;
% Parameter:   id =  ktrCHOP, name = ktrCHOP
	global_par_ktrCHOP=1.0;
% Parameter:   id =  ktrGADD34, name = ktrGADD34
	global_par_ktrGADD34=1.0;
% Parameter:   id =  kdmXU, name = kdmXU
	global_par_kdmXU=1.0;
% Parameter:   id =  kdmXS, name = kdmXS
	global_par_kdmXS=1.0;
% Parameter:   id =  kdmBiP, name = kdmBiP
	global_par_kdmBiP=1.0;
% Parameter:   id =  kdmWFS, name = kdmWFS
	global_par_kdmWFS=1.0;
% Parameter:   id =  kdmCHOP, name = kdmCHOP
	global_par_kdmCHOP=1.0;
% Parameter:   id =  kdmGADD34, name = kdmGADD34
	global_par_kdmGADD34=1.0;
% Parameter:   id =  kdUFP, name = kdUFP
	global_par_kdUFP=0.1;
% Parameter:   id =  kdXS, name = kdXS
	global_par_kdXS=0.1;
% Parameter:   id =  kdBiP, name = kdBiP
	global_par_kdBiP=0.01;
% Parameter:   id =  kdATF6, name = kdATF6
	global_par_kdATF6=0.1;
% Parameter:   id =  kdATF6GB, name = kdATF6GB
	global_par_kdATF6GB=0.1;
% Parameter:   id =  kdATF6p50, name = kdATF6p50
	global_par_kdATF6p50=0.1;
% Parameter:   id =  kdWFS, name = kdWFS
	global_par_kdWFS=0.1;
% Parameter:   id =  kdATF4, name = kdATF4
	global_par_kdATF4=0.1;
% Parameter:   id =  kdCHOP, name = kdCHOP
	global_par_kdCHOP=0.1;
% Parameter:   id =  kdGADD34, name = kdGADD34
	global_par_kdGADD34=0.1;
% Parameter:   id =  mATF6T, name = mATF6T
	global_par_mATF6T=5.0;
% Parameter:   id =  mUFPT, name = mUFPT
% Parameter:   id =  mATF4, name = mATF4
	global_par_mATF4=1.0;
% Parameter:   id =  ktrans, name = ktrans
	global_par_ktrans=1.0;
% Parameter:   id =  kcleave, name = kcleave
	global_par_kcleave=10.0;
% Parameter:   id =  kphos, name = kphos
	global_par_kphos=5.0;
% Parameter:   id =  kdephos, name = kdephos
	global_par_kdephos=0.5;
% Parameter:   id =  kdeAW, name = kdeAW
	global_par_kdeAW=1.0;
% Parameter:   id =  kbu, name = kbu
	global_par_kbu=0.0;
% Parameter:   id =  switch, name = switch
	global_par_switch=0.0;
% Parameter:   id =  kATF4, name = kATF4
	global_par_kATF4=0.1;
% Parameter:   id =  J, name = J
	global_par_J=0.001;
% Parameter:   id =  K, name = K
	global_par_K=0.001;
% Parameter:   id =  kfbc, name = kfbc
	global_par_kfbc=10.0;
% Parameter:   id =  kdbc, name = kdbc
	global_par_kdbc=0.1;
% Parameter:   id =  kmbc, name = kmbc
	global_par_kmbc=0.03;
% Parameter:   id =  kstr, name = kstr
	global_par_kstr=0.2;
% Parameter:   id =  BAXT, name = BAXT
	global_par_BAXT=100.0;
% Parameter:   id =  kfx, name = kfx
	global_par_kfx=1.0;
% Parameter:   id =  kfxp, name = kfxp
	global_par_kfxp=3.0;
% Parameter:   id =  kbx, name = kbx
	global_par_kbx=2.0;
% Parameter:   id =  kasx, name = kasx
	global_par_kasx=90.0;
% Parameter:   id =  kdsx, name = kdsx
	global_par_kdsx=0.05;
% Parameter:   id =  ks3, name = ks3
	global_par_ks3=0.1;
% Parameter:   id =  ks3p, name = ks3p
	global_par_ks3p=0.6;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.01;
% Parameter:   id =  kas3, name = kas3
	global_par_kas3=10.0;
% Parameter:   id =  kds3, name = kds3
	global_par_kds3=0.01;
% Parameter:   id =  kff, name = kff
	global_par_kff=10.0;
% assignmentRule: variable = UFP
	global_par_UFP=x(1)-x(2);
% assignmentRule: variable = BiP
	global_par_BiP=x(12)-x(3)-x(4)-x(5)-x(2);
% assignmentRule: variable = IRE1
	global_par_IRE1=global_par_IRE1T-x(3)-global_par_n*x(6);
% assignmentRule: variable = PERK
	global_par_PERK=global_par_PERKT-x(5)-global_par_n*x(7);
% assignmentRule: variable = ATF6
	global_par_ATF6=x(13)-x(4);
% assignmentRule: variable = spliceRate
	global_par_spliceRate=EMM(x(8), 0.5*global_par_n*x(6), global_par_krcSplice, global_par_ksplice);
% assignmentRule: variable = eIF2a
	global_par_eIF2a=global_par_eIF2aT*fGK(global_par_kphos*0.5*global_par_n*x(7), global_par_kdephos*(x(22)+global_par_CReP), global_par_J/global_par_eIF2aT, global_par_K/global_par_eIF2aT);
% assignmentRule: variable = BCL2
	global_par_BCL2=x(23)-x(27)-x(26);
% assignmentRule: variable = BH3
	global_par_BH3=x(25)-x(27);
% assignmentRule: variable = BAXm
	global_par_BAXm=x(24)-x(26);
% assignmentRule: variable = mUFPT
	global_par_mUFPT=13;

% Reaction: id = re2
	reaction_re2=global_par_ktrUFP*global_par_mUFPT*piecewise(global_par_eIF2a/global_par_eIF2aT, global_par_extATT == 1, 1);

% Reaction: id = re3
	reaction_re3=global_par_kdUFP*x(1);

% Reaction: id = re4
	reaction_re4=global_par_kbu*x(2)*x(1);

% Reaction: id = reu1
	reaction_reu1=global_par_tmr*global_par_kf*global_par_BiP*global_par_UFP;

% Reaction: id = reu2
	reaction_reu2=global_par_tmr*global_par_kr*x(2);

% Reaction: id = reu3
	reaction_reu3=global_par_tmr*global_par_kf*global_par_BiP*global_par_IRE1;

% Reaction: id = reu4
	reaction_reu4=global_par_tmr*global_par_kr*x(3);

% Reaction: id = reu5
	reaction_reu5=global_par_tmr*global_par_kf*global_par_BiP*global_par_ATF6;

% Reaction: id = reu6
	reaction_reu6=global_par_tmr*global_par_kr*x(4);

% Reaction: id = reu7
	reaction_reu7=global_par_tmr*global_par_kf*global_par_BiP*global_par_PERK;

% Reaction: id = reu8
	reaction_reu8=global_par_kr*global_par_tmr*x(5);

% Reaction: id = reu9
	reaction_reu9=global_par_tmr*global_par_kff*global_par_IRE1^global_par_n;

% Reaction: id = reu10
	reaction_reu10=global_par_tmr*global_par_kr*x(6);

% Reaction: id = reu11
	reaction_reu11=global_par_tmr*global_par_kff*piecewise(global_par_UFP, global_par_switch == 1, 1)*global_par_PERK^global_par_n;

% Reaction: id = reu12
	reaction_reu12=global_par_tmr*global_par_kr*x(7)/(1+global_par_extPERK*global_par_UFP);

% Reaction: id = re5
	reaction_re5=global_par_ktrATF6*global_par_mATF6T;

% Reaction: id = re6
	reaction_re6=global_par_kdATF6*x(13);

% Reaction: id = re8
	reaction_re8=global_par_ktrans*global_par_ATF6;

% Reaction: id = rew1
	reaction_rew1=global_par_kdeAW*x(17)*x(13);

% Reaction: id = re9
	reaction_re9=global_par_kdATF6GB*x(14);

% Reaction: id = re10
	reaction_re10=global_par_kcleave*x(14);

% Reaction: id = re11
	reaction_re11=global_par_kdATF6p50*x(15);

% Reaction: id = rew2
	reaction_rew2=global_par_trcWFS*x(15)/(global_par_krcWFS+x(15));

% Reaction: id = rew3
	reaction_rew3=global_par_kdmWFS*x(16);

% Reaction: id = rew4
	reaction_rew4=global_par_ktrWFS*x(16);

% Reaction: id = rew5
	reaction_rew5=global_par_kdWFS*x(17);

% Reaction: id = re12
	reaction_re12=global_par_trcXU*(global_par_basalXBP+global_par_kmAtfsXBP*x(15))/(global_par_krcXU+global_par_basalXBP+global_par_kmAtfsXBP*x(15));

% Reaction: id = re13
	reaction_re13=global_par_kdmXU*x(8);

% Reaction: id = re14
	reaction_re14=global_par_spliceRate;

% Reaction: id = re15
	reaction_re15=global_par_kdmXS*x(9);

% Reaction: id = re16
	reaction_re16=global_par_ktrXS*x(9);

% Reaction: id = re17
	reaction_re17=global_par_kdXS*x(10);

% Reaction: id = re18
	reaction_re18=global_par_trcBiP*(global_par_basalBiP+global_par_kmXbp*x(10)+global_par_kmAtfsBiP*x(15))/(global_par_krcBiP+global_par_basalBiP+global_par_kmXbp*x(10)+global_par_kmAtfsBiP*x(15));

% Reaction: id = re19
	reaction_re19=global_par_kdmBiP*x(11);

% Reaction: id = re20
	reaction_re20=global_par_ktrBiP*x(11);

% Reaction: id = re21
	reaction_re21=global_par_kdBiP*x(12);

% Reaction: id = re23
	reaction_re23=global_par_ktrATF4*global_par_mATF4/(1+(global_par_eIF2a/global_par_kATF4)^global_par_nh);

% Reaction: id = re24
	reaction_re24=global_par_kdATF4*x(18);

% Reaction: id = re25
	reaction_re25=global_par_trcCHOP*(global_par_kmAtff*x(18)+global_par_kmAtfs*x(15))/(global_par_krcCHOP+global_par_kmAtff*x(18)+global_par_kmAtfs*x(15));

% Reaction: id = re26
	reaction_re26=global_par_kdmCHOP*x(19);

% Reaction: id = re27
	reaction_re27=global_par_ktrCHOP*x(19);

% Reaction: id = re28
	reaction_re28=global_par_kdCHOP*x(20);

% Reaction: id = re29
	reaction_re29=global_par_trcGADD34*global_par_kmChop*x(20)/(global_par_krcGADD34+global_par_kmChop*x(20));

% Reaction: id = re30
	reaction_re30=global_par_kdmGADD34*x(21);

% Reaction: id = re31
	reaction_re31=global_par_ktrGADD34*x(21);

% Reaction: id = re32
	reaction_re32=global_par_kdGADD34*x(22);

% Reaction: id = rea1
	reaction_rea1=global_par_kfbc/(1+global_par_kmbc*x(20));

% Reaction: id = rea2
	reaction_rea2=global_par_kdbc*x(23);

% Reaction: id = rea3
	reaction_rea3=global_par_kfx*global_par_BAXT;

% Reaction: id = rea4
	reaction_rea4=global_par_kfxp*global_par_BH3*global_par_BAXT;

% Reaction: id = rea5
	reaction_rea5=global_par_kfx*x(24);

% Reaction: id = rea6
	reaction_rea6=global_par_kfxp*global_par_BH3*x(24);

% Reaction: id = rea7
	reaction_rea7=global_par_kbx*x(24);

% Reaction: id = rea8
	reaction_rea8=global_par_ks3;

% Reaction: id = rea9
	reaction_rea9=global_par_ks3p*global_par_kstr*x(20);

% Reaction: id = rea10
	reaction_rea10=global_par_kd3*x(25);

% Reaction: id = rea11
	reaction_rea11=global_par_kasx*global_par_BAXm*global_par_BCL2;

% Reaction: id = rea12
	reaction_rea12=global_par_kdsx*x(26);

% Reaction: id = rea13
	reaction_rea13=global_par_kbx*x(26);

% Reaction: id = rea14
	reaction_rea14=global_par_kas3*global_par_BH3*global_par_BCL2;

% Reaction: id = rea15
	reaction_rea15=global_par_kds3*x(27);

% Reaction: id = rea16
	reaction_rea16=global_par_kd3*x(27);

	xdot=zeros(27,1);
	
% Species:   id = UFPT, name = UFPT, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_re2) + (-1.0 * reaction_re3) + (-1.0 * reaction_re4);
	
% Species:   id = BiUFP, name = BiUFP, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_reu1) + (-1.0 * reaction_reu2);
	
% Species:   id = BiRE1, name = BiRE1, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_reu3) + (-1.0 * reaction_reu4);
	
% Species:   id = BiATF, name = BiATF, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_reu5) + (-1.0 * reaction_reu6);
	
% Species:   id = BiPER, name = BiPER, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_reu7) + (-1.0 * reaction_reu8);
	
% Species:   id = IRE1A, name = IRE1A, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_reu9) + (-1.0 * reaction_reu10);
	
% Species:   id = PERKA, name = PERKA, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_reu11) + (-1.0 * reaction_reu12);
	
% Species:   id = mXbp1u, name = mXbp1u, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re12) + (-1.0 * reaction_re13) + (-1.0 * reaction_re14);
	
% Species:   id = mXbp1s, name = mXbp1s, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re14) + (-1.0 * reaction_re15);
	
% Species:   id = Xbp1s, name = Xbp1s, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re16) + (-1.0 * reaction_re17);
	
% Species:   id = mBiPT, name = mBiPT, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_re18) + (-1.0 * reaction_re19);
	
% Species:   id = BiPT, name = BiPT, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re20) + (-1.0 * reaction_re21);
	
% Species:   id = ATF6T, name = ATF6T, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_re5) + (-1.0 * reaction_re6) + (-1.0 * reaction_re8) + (-1.0 * reaction_rew1);
	
% Species:   id = ATF6GB, name = ATF6GB, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re8) + (-1.0 * reaction_re9) + (-1.0 * reaction_re10);
	
% Species:   id = ATF6p50, name = ATF6p50, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_re10) + (-1.0 * reaction_re11);
	
% Species:   id = mWFS1, name = mWFS1, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_rew2) + (-1.0 * reaction_rew3);
	
% Species:   id = WFS1, name = WFS1, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_rew4) + (-1.0 * reaction_rew5);
	
% Species:   id = ATF4, name = ATF4, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_re23) + (-1.0 * reaction_re24);
	
% Species:   id = mCHOP, name = mCHOP, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_re25) + (-1.0 * reaction_re26);
	
% Species:   id = CHOP, name = CHOP, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_re27) + (-1.0 * reaction_re28);
	
% Species:   id = mGADD34, name = mGADD34, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_re29) + (-1.0 * reaction_re30);
	
% Species:   id = GADD34, name = GADD34, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_re31) + (-1.0 * reaction_re32);
	
% Species:   id = BCL2T, name = BCL2T, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_rea1) + (-1.0 * reaction_rea2);
	
% Species:   id = BAXmT, name = BAXmT, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_rea3) + ( 1.0 * reaction_rea4) + (-1.0 * reaction_rea5) + (-1.0 * reaction_rea6) + (-1.0 * reaction_rea7);
	
% Species:   id = BH3T, name = BH3T, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_rea8) + ( 1.0 * reaction_rea9) + (-1.0 * reaction_rea10);
	
% Species:   id = BAXmBCL2, name = BAXmBCL2, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_rea11) + (-1.0 * reaction_rea12) + (-1.0 * reaction_rea13);
	
% Species:   id = BH3BCL2, name = BH3BCL2, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_rea14) + (-1.0 * reaction_rea15) + (-1.0 * reaction_rea16);
end

function z=EMM(St,Et,Km,kcat), z=(0.5*kcat*(St+Et+Km-((St+Et+Km)^2-4*St*Et)^(0.5)));end

function z=Gamma(v,u,J,K), z=(v-u+v*J+u*K);end

function z=fGK(v,u,J,K,piecewise(0,u,J,u,J), z=((v == 0) && (u == 0),2*u*K/(Gamma(v,K)+(Gamma(v,K)^2-4*(v-u)*u*K)^(0.5))));end

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


