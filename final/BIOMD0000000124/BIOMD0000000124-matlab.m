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
% Model name = Wu2006_K+Channel
%
% is http://identifiers.org/biomodels.db/MODEL2981976537
% is http://identifiers.org/biomodels.db/BIOMD0000000124
% isDescribedBy http://identifiers.org/pubmed/16375866
% isDerivedFrom http://identifiers.org/pubmed/6305437
% isDerivedFrom http://identifiers.org/pubmed/15294427
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(3) = 0.008;
	x0(4) = 0.282;
	x0(5) = 0.01;
	x0(6) = 0.46;
	x0(7) = -60.0;
	x0(1) = 0.1;
	x0(2) = 100.0;


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

% Compartment: id = cell, name = GH3 cell, constant
	compartment_cell=1.0;
% Parameter:   id =  gca, name = ca current conductance
	global_par_gca=1000.0;
% Parameter:   id =  gkca, name = ca activated k conductance
	global_par_gkca=900.0;
% Parameter:   id =  gk, name = k current conductance
	global_par_gk=1400.0;
% Parameter:   id =  gir, name = erg k current conductance
	global_par_gir=5.0;
% Parameter:   id =  vca, name = ca reversal potential
	global_par_vca=50.0;
% Parameter:   id =  vk, name = k reversal potential
	global_par_vk=-75.0;
% Parameter:   id =  vir, name = vir
	global_par_vir=-75.0;
% Parameter:   id =  cm, name = membrane capacitance
	global_par_cm=5300.0;
% Parameter:   id =  taun, name = taun
	global_par_taun=16.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.5E-6;
% Parameter:   id =  fcyt, name = fcyt
	global_par_fcyt=0.01;
% Parameter:   id =  kpmca, name = kpmca
	global_par_kpmca=0.2;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.3;
% Parameter:   id =  vn, name = vn
	global_par_vn=-16.0;
% Parameter:   id =  vm, name = vm
	global_par_vm=-20.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=5.0;
% Parameter:   id =  sm, name = sm
	global_par_sm=12.0;
% Parameter:   id =  kserca, name = kserca
	global_par_kserca=0.4;
% Parameter:   id =  dact, name = dact
	global_par_dact=0.35;
% Parameter:   id =  dinact, name = dinact
	global_par_dinact=0.4;
% Parameter:   id =  fer, name = fer
	global_par_fer=0.01;
% Parameter:   id =  pleak, name = pleak
	global_par_pleak=5.0E-4;
% Parameter:   id =  dip3, name = dip3
	global_par_dip3=0.5;
% Parameter:   id =  vcytver, name = vcytver
	global_par_vcytver=5.0;
% Parameter:   id =  ip3, name = ip3
	global_par_ip3=0.0;
% Parameter:   id =  sa, name = sa
	global_par_sa=0.1;
% Parameter:   id =  r, name = r
	global_par_r=0.14;
% Parameter:   id =  taua, name = taua
	global_par_taua=300000.0;
% Parameter:   id =  gkatp, name = gkatp
	global_par_gkatp=500.0;
% Parameter:   id =  alphaIRn, name = alphaIRn
% Parameter:   id =  betaIRn, name = betaIRn
% Parameter:   id =  nIRinf, name = nIRinf
% Parameter:   id =  tauIRn, name = tauIRn
% Parameter:   id =  alphaIRr, name = alphaIRr
% Parameter:   id =  betaIRr, name = betaIRr
% Parameter:   id =  rIRinf, name = rIRinf
% Parameter:   id =  tauIRr, name = tauIRr
% Parameter:   id =  ica, name = calcium current
% Parameter:   id =  ik, name = delayed rectifier k current
% Parameter:   id =  ikca, name = ca dependent k current
% Parameter:   id =  ikatp, name = nucleotide sensitive k current
% Parameter:   id =  iir, name = erg like k current
% Parameter:   id =  minf, name = minf
% Parameter:   id =  ninf, name = ninf
% Parameter:   id =  ainf, name = ainf
% Parameter:   id =  w, name = w
% Parameter:   id =  jmem, name = jmem
% Parameter:   id =  jserca, name = jserca
% Parameter:   id =  jleak, name = jleak
% Parameter:   id =  jip3, name = jip3
% Parameter:   id =  oinf, name = oinf
% Parameter:   id =  jer, name = jer
% Parameter:   id =  V, name = V
% Parameter:   id =  n, name = n
% Parameter:   id =  a, name = a
% Parameter:   id =  nIR, name = nIR
% Parameter:   id =  rIR, name = rIR
% assignmentRule: variable = alphaIRn
	global_par_alphaIRn=0.09/(1+exp(0.11*(global_par_V+100)));
% assignmentRule: variable = betaIRn
	global_par_betaIRn=0.00035*exp(0.07*(global_par_V+25));
% assignmentRule: variable = nIRinf
	global_par_nIRinf=1/(1+global_par_betaIRn/global_par_alphaIRn);
% assignmentRule: variable = tauIRn
	global_par_tauIRn=1/(global_par_alphaIRn+global_par_betaIRn);
% assignmentRule: variable = alphaIRr
	global_par_alphaIRr=30/(1+exp(0.04*(global_par_V+230)));
% assignmentRule: variable = betaIRr
	global_par_betaIRr=0.15/(1+exp((-0.05)*(global_par_V+120)));
% assignmentRule: variable = rIRinf
	global_par_rIRinf=1/(1+global_par_betaIRr/global_par_alphaIRr);
% assignmentRule: variable = tauIRr
	global_par_tauIRr=1/(global_par_alphaIRr+global_par_betaIRr);
% assignmentRule: variable = minf
	global_par_minf=1/(1+exp((global_par_vm-global_par_V)/global_par_sm));
% assignmentRule: variable = ik
	global_par_ik=global_par_gk*global_par_n*(global_par_V-global_par_vk);
% assignmentRule: variable = w
	global_par_w=x(1)^5/(x(1)^5+global_par_kd^5);
% assignmentRule: variable = ikatp
	global_par_ikatp=global_par_gkatp*global_par_a*(global_par_V-global_par_vk);
% assignmentRule: variable = ica
	global_par_ica=global_par_gca*global_par_minf*(global_par_V-global_par_vca);
% assignmentRule: variable = ninf
	global_par_ninf=1/(1+exp((global_par_vn-global_par_V)/global_par_sn));
% assignmentRule: variable = ainf
	global_par_ainf=1/(1+exp((global_par_r-x(1))/global_par_sa));
% assignmentRule: variable = ikca
	global_par_ikca=global_par_gkca*global_par_w*(global_par_V-global_par_vk);
% assignmentRule: variable = jmem
	global_par_jmem=-(global_par_alpha*global_par_ica+global_par_kpmca*x(1));
% assignmentRule: variable = jserca
	global_par_jserca=global_par_kserca*x(1);
% assignmentRule: variable = jleak
	global_par_jleak=global_par_pleak*(x(2)-x(1));
% assignmentRule: variable = oinf
	global_par_oinf=x(1)/(global_par_dact+x(1))*global_par_ip3/(global_par_dip3+global_par_ip3)*global_par_dinact/(global_par_dinact+x(1));
% assignmentRule: variable = jip3
	global_par_jip3=global_par_oinf*(x(2)-x(1));
% assignmentRule: variable = jer
	global_par_jer=global_par_jleak+global_par_jip3-global_par_jserca;
% rateRule: variable = nIR
global_par_nIR = x(3);
% rateRule: variable = rIR
global_par_rIR = x(4);
% assignmentRule: variable = iir
	global_par_iir=global_par_gir*global_par_nIR*global_par_rIR*(global_par_V-global_par_vir);
% rateRule: variable = n
global_par_n = x(5);
% rateRule: variable = a
global_par_a = x(6);
% rateRule: variable = V
global_par_V = x(7);

% Reaction: id = reaction_0000005, name = cytosolic free Ca2+ concentration
	reaction_reaction_0000005=compartment_cell*global_par_fcyt*(global_par_jmem+global_par_jer);

% Reaction: id = reaction_0000006, name = ER Ca2+ concentration
	reaction_reaction_0000006=(-global_par_fer)*global_par_vcytver*global_par_jer*compartment_cell;

%Event: id=event_0000001
	event_event_0000001=time > 3E4;

	if(event_event_0000001) 
		global_par_gkatp=530;
	end

	xdot=zeros(7,1);
	% rateRule: variable = nIR
	xdot(3) = (global_par_nIRinf-global_par_nIR)/global_par_tauIRn;
	% rateRule: variable = rIR
	xdot(4) = (global_par_rIRinf-global_par_rIR)/global_par_tauIRr;
	% rateRule: variable = n
	xdot(5) = (global_par_ninf-global_par_n)/global_par_taun;
	% rateRule: variable = a
	xdot(6) = (global_par_ainf-global_par_a)/global_par_taua;
	% rateRule: variable = V
	xdot(7) = (-(global_par_ica+global_par_ik+global_par_ikca+global_par_ikatp+global_par_iir))/global_par_cm;
	
% Species:   id = c, name = cytosolic free ca concentration, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000005));
	
% Species:   id = cer, name = ER ca concentration, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000006));
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


