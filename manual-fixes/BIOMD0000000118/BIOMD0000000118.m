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
% Model name = Golomb2006_SomaticBursting
%
% is http://identifiers.org/biomodels.db/MODEL1243247625
% is http://identifiers.org/biomodels.db/BIOMD0000000118
% isDescribedBy http://identifiers.org/pubmed/16807352
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.00141;
	x0(2) = 0.203517;
	x0(3) = 0.98786;
	x0(4) = -71.81327;
	x0(5) = 0.02457;


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
	global_par_Iapp=0.661914;
% Parameter:   id =  gA, name = gA
	global_par_gA=1.4;
% Parameter:   id =  gNaP, name = gNaP
	global_par_gNaP=0.3;
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
	global_par_thetap=-47.0;
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
global_par_zzs = x(1);
% rateRule: variable = bbs
global_par_bbs = x(2);
% rateRule: variable = hhs
global_par_hhs = x(3);
% rateRule: variable = V
global_par_V = x(4);
% rateRule: variable = nns
global_par_nns = x(5);

	xdot=zeros(5,1);
	% rateRule: variable = zzs
	xdot(1) = (GAMMAF(global_par_V, global_par_thetaz, global_par_sigmaz)-global_par_zzs)/global_par_tauZs;
	% rateRule: variable = bbs
	xdot(2) = (GAMMAF(global_par_V, global_par_thetab, global_par_sigmab)-global_par_bbs)/global_par_tauBs;
	% rateRule: variable = hhs
	xdot(3) = global_par_phi*(GAMMAF(global_par_V, global_par_thetah, global_par_sigmah)-global_par_hhs)/(1+7.5*GAMMAF(global_par_V, global_par_t_tauh, -6));
	% rateRule: variable = V
	xdot(4) = ((-global_par_gL)*(global_par_V-global_par_VL)-global_par_INa-global_par_INaP-global_par_IKdr-global_par_IA-global_par_Iz+global_par_Iapp)/global_par_Cm;
	% rateRule: variable = nns
	xdot(5) = global_par_phi*(GAMMAF(global_par_V, global_par_thetan, global_par_sigman)-global_par_nns)/(1+5*GAMMAF(global_par_V, global_par_t_taun, -15));
end

function z=GAMMAF(VV,theta,sigma), z=(1/(1+exp((-(VV-theta))/sigma)));end

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


