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
% Model name = Tabak2007_dopamine
%
% is http://identifiers.org/biomodels.db/MODEL6090663405
% is http://identifiers.org/biomodels.db/BIOMD0000000138
% isDescribedBy http://identifiers.org/pubmed/17058022
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(2) = -60.0;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(1) = 0.3;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  vca, name = reversal potential for Ca
	global_par_vca=50.0;
% Parameter:   id =  vk, name = reversal potential for K
	global_par_vk=-75.0;
% Parameter:   id =  Cm, name = membrane capacitance
	global_par_Cm=10.0;
% Parameter:   id =  gk, name = gk
	global_par_gk=4.0;
% Parameter:   id =  gcal, name = gcal
	global_par_gcal=2.0;
% Parameter:   id =  gsk, name = gsk
	global_par_gsk=1.7;
% Parameter:   id =  ga, name = ga
	global_par_ga=0.0;
% Parameter:   id =  gf, name = gf
	global_par_gf=0.0;
% Parameter:   id =  vn, name = vn
	global_par_vn=-5.0;
% Parameter:   id =  va, name = va
	global_par_va=-20.0;
% Parameter:   id =  vm, name = vm
	global_par_vm=-20.0;
% Parameter:   id =  vh, name = vh
	global_par_vh=-60.0;
% Parameter:   id =  vf, name = vf
	global_par_vf=-20.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=10.0;
% Parameter:   id =  sa, name = sa
	global_par_sa=10.0;
% Parameter:   id =  sm, name = sm
	global_par_sm=12.0;
% Parameter:   id =  sh, name = sh
	global_par_sh=5.0;
% Parameter:   id =  sf, name = sf
	global_par_sf=5.6;
% Parameter:   id =  taun, name = taun
	global_par_taun=30.0;
% Parameter:   id =  tauh, name = tauh
	global_par_tauh=20.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.7;
% Parameter:   id =  kc, name = kc
	global_par_kc=0.16;
% Parameter:   id =  ks, name = ks
	global_par_ks=0.5;
% Parameter:   id =  ff, name = ff
	global_par_ff=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0015;
% Parameter:   id =  phik, name = phik
% Parameter:   id =  phia, name = phia
% Parameter:   id =  phih, name = phih
% Parameter:   id =  phif, name = phif
% Parameter:   id =  phical, name = phical
% Parameter:   id =  cinf, name = cinf
% Parameter:   id =  ica, name = ica
% Parameter:   id =  isk, name = isk
% Parameter:   id =  ibk, name = ibk
% Parameter:   id =  ikdr, name = ikdr
% Parameter:   id =  ia, name = ia
% Parameter:   id =  ik, name = ik
% Parameter:   id =  n, name = n
% Parameter:   id =  h, name = h
% Parameter:   id =  V, name = V
% assignmentRule: variable = phik
	global_par_phik=1/(1+exp((global_par_vn-global_par_V)/global_par_sn));
% assignmentRule: variable = phia
	global_par_phia=1/(1+exp((global_par_va-global_par_V)/global_par_sa));
% assignmentRule: variable = phih
	global_par_phih=1/(1+exp((global_par_V-global_par_vh)/global_par_sh));
% assignmentRule: variable = phif
	global_par_phif=1/(1+exp((global_par_vf-global_par_V)/global_par_sf));
% assignmentRule: variable = phical
	global_par_phical=1/(1+exp((global_par_vm-global_par_V)/global_par_sm));
% assignmentRule: variable = ica
	global_par_ica=global_par_gcal*global_par_phical*(global_par_V-global_par_vca);
% assignmentRule: variable = cinf
	global_par_cinf=x(1)^2/(x(1)^2+global_par_ks^2);
% assignmentRule: variable = isk
	global_par_isk=global_par_gsk*global_par_cinf*(global_par_V-global_par_vk);
% assignmentRule: variable = ibk
	global_par_ibk=global_par_gf*global_par_phif*(global_par_V-global_par_vk);
% assignmentRule: variable = ikdr
	global_par_ikdr=global_par_gk*global_par_n*(global_par_V-global_par_vk);
% assignmentRule: variable = ia
	global_par_ia=global_par_ga*global_par_phia*global_par_h*(global_par_V-global_par_vk);
% assignmentRule: variable = ik
	global_par_ik=global_par_isk+global_par_ibk+global_par_ikdr+global_par_ia;
% rateRule: variable = V
global_par_V = x(2);
% rateRule: variable = n
global_par_n = x(3);
% rateRule: variable = h
global_par_h = x(4);

% Reaction: id = reaction_0000004
	reaction_reaction_0000004=(-global_par_ff)*(global_par_alpha*global_par_ica+global_par_kc*x(1))*compartment_cell;

	xdot=zeros(4,1);
	% rateRule: variable = V
	xdot(2) = (-(global_par_ica+global_par_ik))/global_par_Cm;
	% rateRule: variable = n
	xdot(3) = global_par_lambda*(global_par_phik-global_par_n)/global_par_taun;
	% rateRule: variable = h
	xdot(4) = (global_par_phih-global_par_h)/global_par_tauh;
	
% Species:   id = c, name = calcium concentration, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000004));
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


