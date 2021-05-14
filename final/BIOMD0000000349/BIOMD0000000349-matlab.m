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
% Model name = Fridlyand2010_GlucoseSensitivity_B
%
% is http://identifiers.org/biomodels.db/MODEL1108090001
% is http://identifiers.org/biomodels.db/BIOMD0000000349
% isDescribedBy http://identifiers.org/pubmed/20497556
% isDerivedFrom http://identifiers.org/pubmed/9575814
% isDerivedFrom http://identifiers.org/pubmed/9575813
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(8) = NaN;
	x0(9) = NaN;
	x0(10) = NaN;
	x0(11) = NaN;
	x0(12) = NaN;
	x0(13) = NaN;
	x0(14) = NaN;
	x0(15) = NaN;
	x0(16) = NaN;
	x0(1) = 0;
	x0(2) = 0;
	x0(3) = 0;
	x0(4) = 0;
	x0(5) = 0;
	x0(6) = 0;
	x0(7) = 0;


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
	compartment_compartment=NaN;
% Parameter:   id =  ai, name = ai
	global_par_ai=0.341;
% Parameter:   id =  am, name = am
	global_par_am=0.2;
% Parameter:   id =  Ao, name = Ao
	global_par_Ao=4000.0;
% Parameter:   id =  ATP_init, name = ATP_init
	global_par_ATP_init=3700.0;
% Parameter:   id =  Cac_init, name = Cac_init
	global_par_Cac_init=0.1;
% Parameter:   id =  Cam_init, name = Cam_init
	global_par_Cam_init=0.2;
% Parameter:   id =  Cmit, name = Cmit
	global_par_Cmit=1.82;
% Parameter:   id =  Cmp, name = Cmp
	global_par_Cmp=6158.0;
% Parameter:   id =  F, name = F
	global_par_F=96480.0;
% Parameter:   id =  fi, name = fi
	global_par_fi=0.01;
% Parameter:   id =  fm, name = fm
	global_par_fm=3.0E-4;
% Parameter:   id =  G3P_init, name = G3P_init
	global_par_G3P_init=30.0;
% Parameter:   id =  gKCa, name = gKCa
	global_par_gKCa=25.0;
% Parameter:   id =  Glu, name = Glu
	global_par_Glu=8.0;
% Parameter:   id =  gmVCa, name = gmVCa
	global_par_gmVCa=20.0;
% Parameter:   id =  hgl, name = hgl
	global_par_hgl=1.7;
% Parameter:   id =  hp, name = hp
	global_par_hp=8.0;
% Parameter:   id =  hpc, name = hpc
	global_par_hpc=8.0;
% Parameter:   id =  kat, name = kat
	global_par_kat=-0.00492;
% Parameter:   id =  kATP, name = kATP
	global_par_kATP=4.0E-5;
% Parameter:   id =  kATPCa, name = kATPCa
	global_par_kATPCa=9.0E-5;
% Parameter:   id =  kbt, name = kbt
	global_par_kbt=-0.00443;
% Parameter:   id =  kCaA, name = kCaA
	global_par_kCaA=30.0;
% Parameter:   id =  KCaj, name = KCaj
	global_par_KCaj=8.0;
% Parameter:   id =  KCam, name = KCam
	global_par_KCam=0.05;
% Parameter:   id =  KgNc, name = KgNc
	global_par_KgNc=0.09;
% Parameter:   id =  kgpd, name = kgpd
	global_par_kgpd=1.0E-5;
% Parameter:   id =  Klnc, name = Klnc
	global_par_Klnc=1.0;
% Parameter:   id =  klp, name = klp
	global_par_klp=0.0305;
% Parameter:   id =  Kmadp, name = Kmadp
	global_par_Kmadp=20.0;
% Parameter:   id =  KmATP, name = KmATP
	global_par_KmATP=500.0;
% Parameter:   id =  Kmg3p, name = Kmg3p
	global_par_Kmg3p=200.0;
% Parameter:   id =  Kmgl, name = Kmgl
	global_par_Kmgl=7.0;
% Parameter:   id =  KmLD, name = KmLD
	global_par_KmLD=47.5;
% Parameter:   id =  KmNh, name = KmNh
	global_par_KmNh=3000.0;
% Parameter:   id =  Kmph, name = Kmph
	global_par_Kmph=131.4;
% Parameter:   id =  Kmpyr, name = Kmpyr
	global_par_Kmpyr=47.5;
% Parameter:   id =  knadhc, name = knadhc
	global_par_knadhc=1.0E-4;
% Parameter:   id =  knadhm, name = knadhm
	global_par_knadhm=1.0E-4;
% Parameter:   id =  KNaj, name = KNaj
	global_par_KNaj=8000.0;
% Parameter:   id =  KpCam, name = KpCam
	global_par_KpCam=0.165;
% Parameter:   id =  KPNm, name = KPNm
	global_par_KPNm=81.0;
% Parameter:   id =  ksg, name = ksg
	global_par_ksg=2.0E-5;
% Parameter:   id =  KTNc, name = KTNc
	global_par_KTNc=0.002;
% Parameter:   id =  KTNm, name = KTNm
	global_par_KTNm=16.78;
% Parameter:   id =  NADHc_init, name = NADHc_init
	global_par_NADHc_init=10.0;
% Parameter:   id =  NADHm_init, name = NADHm_init
	global_par_NADHm_init=50.0;
% Parameter:   id =  Nam, name = Nam
	global_par_Nam=5000.0;
% Parameter:   id =  Ni, name = Ni
	global_par_Ni=10000.0;
% Parameter:   id =  Ntc, name = Ntc
	global_par_Ntc=2000.0;
% Parameter:   id =  Ntm, name = Ntm
	global_par_Ntm=2200.0;
% Parameter:   id =  PCa, name = PCa
	global_par_PCa=0.004;
% Parameter:   id =  Plb, name = Plb
	global_par_Plb=0.0012;
% Parameter:   id =  Plr, name = Plr
	global_par_Plr=0.0012;
% Parameter:   id =  PYR_init, name = PYR_init
	global_par_PYR_init=10.0;
% Parameter:   id =  Tnadh, name = Tnadh
	global_par_Tnadh=0.05;
% Parameter:   id =  Tv, name = Tv
	global_par_Tv=26.73;
% Parameter:   id =  u1, name = u1
	global_par_u1=1.5;
% Parameter:   id =  u2, name = u2
	global_par_u2=1.1;
% Parameter:   id =  Vci, name = Vci
	global_par_Vci=0.764;
% Parameter:   id =  Vi, name = Vi
	global_par_Vi=0.53;
% Parameter:   id =  Vm_init, name = Vm_init
	global_par_Vm_init=100.0;
% Parameter:   id =  Vme, name = Vme
	global_par_Vme=22.0;
% Parameter:   id =  Vmglu, name = Vmglu
	global_par_Vmglu=0.011;
% Parameter:   id =  Vmgpd, name = Vmgpd
	global_par_Vmgpd=0.5;
% Parameter:   id =  Vmldh, name = Vmldh
	global_par_Vmldh=1.2;
% Parameter:   id =  Vmmit, name = Vmmit
	global_par_Vmmit=0.0144;
% Parameter:   id =  Vmnc, name = Vmnc
	global_par_Vmnc=0.025;
% Parameter:   id =  Vmpdh, name = Vmpdh
	global_par_Vmpdh=0.3;
% Parameter:   id =  Vmph, name = Vmph
	global_par_Vmph=8.0;
% Parameter:   id =  Vp_init, name = Vp_init
	global_par_Vp_init=-70.0;
% Parameter:   id =  ZCa, name = ZCa
	global_par_ZCa=2.0;
% Parameter:   id =  ACa, name = ACa
% Parameter:   id =  AD, name = AD
% Parameter:   id =  ADP, name = ADP
% Parameter:   id =  AT, name = AT
% Parameter:   id =  DelJNCa, name = DelJNCa
% Parameter:   id =  FDe, name = FDe
% Parameter:   id =  FLNADc, name = FLNADc
% Parameter:   id =  FNADc, name = FNADc
% Parameter:   id =  FPCa, name = FPCa
% Parameter:   id =  FPNAD, name = FPNAD
% Parameter:   id =  FPYR, name = FPYR
% Parameter:   id =  FTe, name = FTe
% Parameter:   id =  hCa, name = hCa
% Parameter:   id =  IKCa, name = IKCa
% Parameter:   id =  IVCa, name = IVCa
% Parameter:   id =  JGlu, name = JGlu
% Parameter:   id =  Jgpd, name = Jgpd
% Parameter:   id =  Jhl, name = Jhl
% Parameter:   id =  Jhres, name = Jhres
% Parameter:   id =  JLDH, name = JLDH
% Parameter:   id =  JNCa, name = JNCa
% Parameter:   id =  JO2, name = JO2
% Parameter:   id =  Jph, name = Jph
% Parameter:   id =  JPYR, name = JPYR
% Parameter:   id =  Jtnadh, name = Jtnadh
% Parameter:   id =  Juni, name = Juni
% Parameter:   id =  MgADP, name = MgADP
% Parameter:   id =  NADc, name = NADc
% Parameter:   id =  NADm, name = NADm
% Parameter:   id =  nKCa, name = nKCa
% Parameter:   id =  PVCa, name = PVCa
% Parameter:   id =  Vp, name = Vp
% Parameter:   id =  Cac, name = Cac
% assignmentRule: variable = ACa
	global_par_ACa=1+(-1*1/exp(x(7)*1/global_par_KpCam));
% assignmentRule: variable = AD
	global_par_AD=global_par_MgADP*global_par_MgADP*1/(global_par_MgADP*global_par_MgADP+global_par_Kmadp*global_par_Kmadp);
% assignmentRule: variable = ADP
	global_par_ADP=global_par_Ao+(-x(3));
% assignmentRule: variable = AT
	global_par_AT=x(6)^global_par_hp*1/(global_par_Kmph^global_par_hp+x(6)^global_par_hp);
% assignmentRule: variable = DelJNCa
	global_par_DelJNCa=1+global_par_Ni^3*1/global_par_KNaj^3+x(7)*1/global_par_KCaj+global_par_Ni^3*x(7)*1/(global_par_KNaj^3*global_par_KCaj)+global_par_Nam^3*1/global_par_KNaj^3+global_par_Cac*1/global_par_KCaj+global_par_Nam^3*global_par_Cac*1/(global_par_KNaj^3*global_par_KCaj);
% assignmentRule: variable = FDe
	global_par_FDe=x(4)*1/(global_par_KmNh+x(4));
% assignmentRule: variable = FLNADc
	global_par_FLNADc=x(5)*1/(global_par_Klnc+x(5)*1/global_par_NADc)*1/global_par_NADc;
% assignmentRule: variable = FNADc
	global_par_FNADc=x(5)*1/(global_par_KTNc+x(5)*1/global_par_NADc)*1/global_par_NADc;
% assignmentRule: variable = FPCa
	global_par_FPCa=1*1/(1+global_par_u2*(1+global_par_u1*1/(1+x(7)*1/global_par_KCam)^2));
% assignmentRule: variable = FPNAD
	global_par_FPNAD=global_par_NADm*1/(global_par_KPNm+global_par_NADm*1/x(4))*1/x(4);
% assignmentRule: variable = FPYR
	global_par_FPYR=x(2)*1/(global_par_Kmpyr+x(2));
% assignmentRule: variable = FTe
	global_par_FTe=(1+global_par_kat*x(6))*1/(1+global_par_kbt*x(6));
% assignmentRule: variable = hCa
	global_par_hCa=1*1/(1+exp(0.166666666666667*(15+global_par_Vp)));
% assignmentRule: variable = IKCa
	global_par_IKCa=global_par_gKCa*global_par_nKCa*(75+global_par_Vp);
% assignmentRule: variable = IVCa
	global_par_IVCa=global_par_gmVCa*global_par_PVCa*global_par_hCa*(-100+global_par_Vp);
% assignmentRule: variable = JGlu
	global_par_JGlu=global_par_Vmglu*global_par_Glu^global_par_hgl*x(3)*1/(global_par_Kmgl^global_par_hgl+global_par_Glu^global_par_hgl)*1/(global_par_KmATP+x(3));
% assignmentRule: variable = Jgpd
	global_par_Jgpd=global_par_Vmgpd*x(1)*global_par_NADc*1/(x(1)+global_par_Kmg3p)*1/(global_par_KgNc+global_par_NADc*1/x(5))*1/x(5);
% assignmentRule: variable = Jhl
	global_par_Jhl=(global_par_Plb+global_par_Plr)*exp(global_par_klp*x(6));
% assignmentRule: variable = Jhres
	global_par_Jhres=global_par_Vme*global_par_FTe*global_par_FDe;
% assignmentRule: variable = JLDH
	global_par_JLDH=global_par_Vmldh*global_par_FLNADc*x(2)*1/(global_par_KmLD+x(2));
% assignmentRule: variable = JNCa
	global_par_JNCa=global_par_Vmnc*(exp(0.5*x(6)*global_par_Ni^3*x(7)*1/(global_par_Tv*global_par_KNaj^3*global_par_KCaj))+(-exp(-0.5*x(6)*global_par_Nam^3*global_par_Cac*1/(global_par_Tv*global_par_KNaj^3*global_par_KCaj))))*1/global_par_DelJNCa;
% assignmentRule: variable = JO2
	global_par_JO2=0.1*global_par_Jhres;
% assignmentRule: variable = Jph
	global_par_Jph=global_par_Vmph*global_par_AD*global_par_AT*global_par_ACa;
% assignmentRule: variable = JPYR
	global_par_JPYR=global_par_Vmpdh*global_par_FPNAD*global_par_FPCa*global_par_FPYR;
% assignmentRule: variable = Jtnadh
	global_par_Jtnadh=global_par_Tnadh*global_par_FNADc*global_par_NADm*1/(global_par_KTNm+global_par_NADm*1/x(4))*1/x(4);
% assignmentRule: variable = Juni
	global_par_Juni=global_par_PCa*global_par_ZCa*x(6)*(global_par_am*x(7)*exp(-x(6)*global_par_ZCa*1/global_par_Tv)+(-global_par_ai*global_par_Cac))*1/global_par_Tv*1/(-1+exp(-x(6)*global_par_ZCa*1/global_par_Tv));
% assignmentRule: variable = MgADP
	global_par_MgADP=0.055*global_par_ADP;
% assignmentRule: variable = NADc
	global_par_NADc=global_par_Ntc+(-x(5));
% assignmentRule: variable = NADm
	global_par_NADm=global_par_Ntm+(-x(4));
% assignmentRule: variable = nKCa
	global_par_nKCa=global_par_Cac^3*1/(0.015625+global_par_Cac^3);
% assignmentRule: variable = PVCa
	global_par_PVCa=1*1/(1+exp(0.105263157894737*(-19+(-global_par_Vp))));
% rateRule: variable = G3P
x(1) = x(8);
% rateRule: variable = PYR
x(2) = x(9);
% rateRule: variable = ATP
x(3) = x(10);
% rateRule: variable = NADHm
x(4) = x(11);
% rateRule: variable = NADHc
x(5) = x(12);
% rateRule: variable = Vm
x(6) = x(13);
% rateRule: variable = Cam
x(7) = x(14);
% rateRule: variable = Vp
global_par_Vp = x(15);
% rateRule: variable = Cac
global_par_Cac = x(16);

	xdot=zeros(16,1);
	% rateRule: variable = G3P
	xdot(8) = (2*global_par_JGlu+(-global_par_Jgpd))*1/global_par_Vi+(-global_par_kgpd*x(1));
	% rateRule: variable = PYR
	xdot(9) = (global_par_Jgpd+(-global_par_JPYR)+(-global_par_JLDH))*1/(global_par_Vi+global_par_Vmmit);
	% rateRule: variable = ATP
	xdot(10) = -(global_par_kATP+global_par_kATPCa*global_par_Cac)*x(3)+(2*global_par_JGlu+0.231*global_par_Jph)*1/global_par_Vi;
	% rateRule: variable = NADHm
	xdot(11) = (4.6*global_par_JPYR+(-0.1*global_par_Jhres)+global_par_Jtnadh)*1/global_par_Vmmit+(-global_par_knadhm*x(4));
	% rateRule: variable = NADHc
	xdot(12) = (global_par_Jgpd+(-global_par_Jtnadh)+(-global_par_JLDH))*1/global_par_Vi+(-global_par_knadhc*x(5));
	% rateRule: variable = Vm
	xdot(13) = (global_par_Jhres+(-global_par_Jph)+(-global_par_Jhl)+(-2*global_par_Juni)+(-global_par_JNCa))*1/global_par_Cmit;
	% rateRule: variable = Cam
	xdot(14) = global_par_fm*(global_par_Juni+(-global_par_JNCa))*1/global_par_Vmmit;
	% rateRule: variable = Vp
	xdot(15) = -(global_par_IVCa+global_par_IKCa)*1/global_par_Cmp;
	% rateRule: variable = Cac
	xdot(16) = -global_par_fi*global_par_IVCa*1/(2*global_par_F*global_par_Vci)+(-global_par_ksg*global_par_Cac);
	
% Species:   id = G3P, name = G3P, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = PYR, name = PYR, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = ATP, name = ATP, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = NADHm, name = NADHm, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = NADHc, name = NADHc, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Vm, name = Vm, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = Cam, name = Cam, defined in a rule 	xdot(7) = x(7);
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


