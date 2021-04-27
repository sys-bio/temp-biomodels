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
% Model name = Golomb2006_SomaticBursting_nonzero[Ca]
%
% is http://identifiers.org/biomodels.db/MODEL1580005336
% is http://identifiers.org/biomodels.db/BIOMD0000000119
% isDescribedBy http://identifiers.org/pubmed/16807352
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(2) = 0.0013689;
	x0(3) = 0.207565;
	x0(4) = 0.979199;
	x0(5) = 0.0242166;
	x0(6) = 0.005507;
	x0(7) = 0.002486;
	x0(8) = 0.0;
	x0(9) = -71.962;
	x0(1) = 7.87E-4;


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

% Compartment: id = compartment_0000001, name = compartment_0000001, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=1.0;
% Parameter:   id =  pms, name = pms
	global_par_pms=3.0;
% Parameter:   id =  pns, name = pns
	global_par_pns=4.0;
% Parameter:   id =  VNa, name = VNa
	global_par_VNa=55.0;
% Parameter:   id =  t_tauh, name = t_tauh
	global_par_t_tauh=-40.5;
% Parameter:   id =  t_taun, name = t_taun
	global_par_t_taun=-27.0;
% Parameter:   id =  thetaa, name = thetaa
	global_par_thetaa=-50.0;
% Parameter:   id =  sigmaa, name = sigmaa
	global_par_sigmaa=20.0;
% Parameter:   id =  thetab, name = thetab
	global_par_thetab=-80.0;
% Parameter:   id =  sigmab, name = sigmab
	global_par_sigmab=-6.0;
% Parameter:   id =  tauBs, name = tauBs
	global_par_tauBs=15.0;
% Parameter:   id =  sigmam, name = sigmam
	global_par_sigmam=9.5;
% Parameter:   id =  sigmah, name = sigmah
	global_par_sigmah=-7.0;
% Parameter:   id =  sigman, name = sigman
	global_par_sigman=10.0;
% Parameter:   id =  sigmaz, name = sigmaz
	global_par_sigmaz=5.0;
% Parameter:   id =  gNa, name = gNa
	global_par_gNa=35.0;
% Parameter:   id =  gKdr, name = gKdr
	global_par_gKdr=6.0;
% Parameter:   id =  gL, name = gL
	global_par_gL=0.05;
% Parameter:   id =  Iapp, name = Iapp
	global_par_Iapp=1.0;
% Parameter:   id =  gA, name = gA
	global_par_gA=1.4;
% Parameter:   id =  gNaP, name = gNaP
	global_par_gNaP=0.2;
% Parameter:   id =  gZ, name = gZ
	global_par_gZ=1.0;
% Parameter:   id =  thetaz, name = thetaz
	global_par_thetaz=-39.0;
% Parameter:   id =  tauZs, name = tauZs
	global_par_tauZs=75.0;
% Parameter:   id =  phi, name = phi
	global_par_phi=10.0;
% Parameter:   id =  thetah, name = thetah
	global_par_thetah=-45.0;
% Parameter:   id =  thetam, name = thetam
	global_par_thetam=-30.0;
% Parameter:   id =  thetan, name = thetan
	global_par_thetan=-35.0;
% Parameter:   id =  thetap, name = thetap
	global_par_thetap=-41.0;
% Parameter:   id =  sigmap, name = sigmap
	global_par_sigmap=3.0;
% Parameter:   id =  VK, name = VK
	global_par_VK=-90.0;
% Parameter:   id =  VL, name = VL
	global_par_VL=-70.0;
% Parameter:   id =  INa, name = INa
% Parameter:   id =  INaP, name = INaP
% Parameter:   id =  IKdr, name = IKdr
% Parameter:   id =  IA, name = IA
% Parameter:   id =  Iz, name = Iz
% Parameter:   id =  Minfs, name = Minfs
% Parameter:   id =  Pinfs, name = Pinfs
% Parameter:   id =  Ainfs, name = Ainfs
% Parameter:   id =  zzs, name = zzs
% Parameter:   id =  bbs, name = bbs
% Parameter:   id =  nns, name = nns
% Parameter:   id =  hhs, name = hhs
% Parameter:   id =  V, name = VVs
% Parameter:   id =  rrs, name = rrs
% Parameter:   id =  ccs, name = ccs
% Parameter:   id =  qqs, name = qqs
% Parameter:   id =  thetar, name = thetar
	global_par_thetar=-20.0;
% Parameter:   id =  VCa, name = VCa
	global_par_VCa=120.0;
% Parameter:   id =  sigmar, name = sigmar
	global_par_sigmar=10.0;
% Parameter:   id =  sigmac, name = sigmac
	global_par_sigmac=7.0;
% Parameter:   id =  thetac, name = thetac
	global_par_thetac=-30.0;
% Parameter:   id =  pwrc, name = pwrc
	global_par_pwrc=1.0;
% Parameter:   id =  pwrq, name = pwrq
	global_par_pwrq=4.0;
% Parameter:   id =  gCa, name = gCa
	global_par_gCa=0.08;
% Parameter:   id =  gKCa, name = gKCa
	global_par_gKCa=10.0;
% Parameter:   id =  gKAHP, name = gKAHP
	global_par_gKAHP=5.0;
% Parameter:   id =  tauRs, name = tauRs
	global_par_tauRs=1.0;
% Parameter:   id =  aq, name = aq
	global_par_aq=2.0;
% Parameter:   id =  ac, name = ac
	global_par_ac=6.0;
% Parameter:   id =  tauq, name = tauq
	global_par_tauq=450.0;
% Parameter:   id =  tauCa, name = tauCa
	global_par_tauCa=13.0;
% Parameter:   id =  uuCa, name = uuCa
	global_par_uuCa=0.13;
% Parameter:   id =  tauKc, name = tauKc
	global_par_tauKc=2.0;
% Parameter:   id =  mKCa, name = mKCa
% Parameter:   id =  ICa, name = ICa
% Parameter:   id =  IAHP, name = IAHP
% Parameter:   id =  IKC, name = IKC
% assignmentRule: variable = Minfs
	global_par_Minfs=GAMMAF(global_par_V, global_par_thetam, global_par_sigmam);
% assignmentRule: variable = Pinfs
	global_par_Pinfs=GAMMAF(global_par_V, global_par_thetap, global_par_sigmap);
% assignmentRule: variable = Ainfs
	global_par_Ainfs=GAMMAF(global_par_V, global_par_thetaa, global_par_sigmaa);
% assignmentRule: variable = IA
	global_par_IA=global_par_gA*global_par_Ainfs^3*global_par_bbs*(global_par_V-global_par_VK);
% assignmentRule: variable = Iz
	global_par_Iz=global_par_gZ*global_par_zzs*(global_par_V-global_par_VK);
% assignmentRule: variable = INa
	global_par_INa=global_par_gNa*global_par_Minfs^global_par_pms*global_par_hhs*(global_par_V-global_par_VNa);
% assignmentRule: variable = INaP
	global_par_INaP=global_par_gNaP*global_par_Pinfs*(global_par_V-global_par_VNa);
% assignmentRule: variable = IKdr
	global_par_IKdr=global_par_gKdr*global_par_nns^global_par_pns*(global_par_V-global_par_VK);
% rateRule: variable = zzs
global_par_zzs = x(2);
% rateRule: variable = bbs
global_par_bbs = x(3);
% rateRule: variable = hhs
global_par_hhs = x(4);
% rateRule: variable = nns
global_par_nns = x(5);
% assignmentRule: variable = mKCa
	global_par_mKCa=ZFUNC(global_par_ac, x(1), global_par_pwrc);
% assignmentRule: variable = ICa
	global_par_ICa=global_par_gCa*global_par_rrs^2*(global_par_V-global_par_VCa);
% assignmentRule: variable = IKC
	global_par_IKC=global_par_gKCa*global_par_mKCa*global_par_ccs*(global_par_V-global_par_VK);
% assignmentRule: variable = IAHP
	global_par_IAHP=global_par_gKAHP*global_par_qqs*(global_par_V-global_par_VK);
% rateRule: variable = rrs
global_par_rrs = x(6);
% rateRule: variable = ccs
global_par_ccs = x(7);
% rateRule: variable = qqs
global_par_qqs = x(8);
% rateRule: variable = V
global_par_V = x(9);

% Reaction: id = reaction_0000001
	reaction_reaction_0000001=compartment_compartment_0000001*((-global_par_uuCa)*global_par_ICa-x(1))/global_par_tauCa;

	xdot=zeros(9,1);
	% rateRule: variable = zzs
	xdot(2) = (GAMMAF(global_par_V, global_par_thetaz, global_par_sigmaz)-global_par_zzs)/global_par_tauZs;
	% rateRule: variable = bbs
	xdot(3) = (GAMMAF(global_par_V, global_par_thetab, global_par_sigmab)-global_par_bbs)/global_par_tauBs;
	% rateRule: variable = hhs
	xdot(4) = global_par_phi*(GAMMAF(global_par_V, global_par_thetah, global_par_sigmah)-global_par_hhs)/(1+7.5*GAMMAF(global_par_V, global_par_t_tauh, -6));
	% rateRule: variable = nns
	xdot(5) = global_par_phi*(GAMMAF(global_par_V, global_par_thetan, global_par_sigman)-global_par_nns)/(1+5*GAMMAF(global_par_V, global_par_t_taun, -15));
	% rateRule: variable = rrs
	xdot(6) = (GAMMAF(global_par_V, global_par_thetar, global_par_sigmar)-global_par_rrs)/global_par_tauRs;
	% rateRule: variable = ccs
	xdot(7) = (GAMMAF(global_par_V, global_par_thetac, global_par_sigmac)-global_par_ccs)/global_par_tauKc;
	% rateRule: variable = qqs
	xdot(8) = (ZFUNC(global_par_aq, x(1), global_par_pwrq)-global_par_qqs)/global_par_tauq;
	% rateRule: variable = V
	xdot(9) = ((-global_par_gL)*(global_par_V-global_par_VL)-global_par_INa-global_par_INaP-global_par_IKdr-global_par_IA-global_par_Iz-global_par_ICa-global_par_IKC-global_par_IAHP+global_par_Iapp)/global_par_Cm;
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000001));
end

function z=GAMMAF(VV,theta,sigma), z=(1/(1+exp((-(VV-theta))/sigma)));end

function z=ZFUNC(AA,CA,zz), z=(1/(1+AA^zz/CA^zz));end

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


