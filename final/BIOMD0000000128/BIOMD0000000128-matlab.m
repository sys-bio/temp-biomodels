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
% Model name = Bertram2006_Endothelin
%
% is http://identifiers.org/biomodels.db/MODEL6509019628
% is http://identifiers.org/biomodels.db/BIOMD0000000128
% isDescribedBy http://identifiers.org/pubmed/16434725
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = -60.0;
	x0(7) = 0.0;
	x0(1) = 0.3;
	x0(2) = 260.0;
	x0(3) = 1.0;


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
% Parameter:   id =  vh, name = vh
	global_par_vh=-20.0;
% Parameter:   id =  sh, name = sh
	global_par_sh=70.0;
% Parameter:   id =  tauh, name = tauh
	global_par_tauh=20.0;
% Parameter:   id =  kserca, name = kserca
	global_par_kserca=0.4;
% Parameter:   id =  sigmav, name = sigmav
	global_par_sigmav=10.0;
% Parameter:   id =  kc, name = kc
	global_par_kc=0.15;
% Parameter:   id =  vn, name = vn
	global_par_vn=-16.0;
% Parameter:   id =  vk, name = vk
	global_par_vk=-75.0;
% Parameter:   id =  taun, name = taun
	global_par_taun=20.0;
% Parameter:   id =  gk, name = gk
	global_par_gk=3500.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=5.0;
% Parameter:   id =  vca, name = vca
	global_par_vca=25.0;
% Parameter:   id =  gca, name = gca
	global_par_gca=2000.0;
% Parameter:   id =  vm, name = vm
	global_par_vm=-20.0;
% Parameter:   id =  sm, name = sm
	global_par_sm=12.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=1.25;
% Parameter:   id =  cm, name = cm
	global_par_cm=5300.0;
% Parameter:   id =  f, name = f
	global_par_f=0.01;
% Parameter:   id =  fer, name = fer
	global_par_fer=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.5E-6;
% Parameter:   id =  perl, name = perl
	global_par_perl=5.0E-4;
% Parameter:   id =  dact, name = dact
	global_par_dact=0.35;
% Parameter:   id =  dip3, name = dip3
	global_par_dip3=0.5;
% Parameter:   id =  dinh, name = dinh
	global_par_dinh=0.4;
% Parameter:   id =  ninf, name = ninf
% Parameter:   id =  minf, name = minf
% Parameter:   id =  hinf, name = hinf
% Parameter:   id =  ica, name = ica
% Parameter:   id =  igirk, name = igirk
% Parameter:   id =  ik, name = ik
% Parameter:   id =  girk, name = girk
	global_par_girk=1000.0;
% Parameter:   id =  IP3, name = IP3
	global_par_IP3=0.0;
% Parameter:   id =  ainf, name = ainf
% Parameter:   id =  hinfer, name = hinfer
% Parameter:   id =  jerp, name = jerp
% Parameter:   id =  binf, name = binf
% Parameter:   id =  o, name = o
% Parameter:   id =  jerleak, name = jerleak
% Parameter:   id =  jerip3, name = jerip3
% Parameter:   id =  jertot, name = jertot
% Parameter:   id =  jmemtot, name = jmemtot
% Parameter:   id =  ki, name = ki
	global_par_ki=0.5;
% Parameter:   id =  perl_inf, name = perl_inf
% Parameter:   id =  taudir, name = taudir
	global_par_taudir=20000.0;
% Parameter:   id =  cAMPlow, name = cAMPlow
	global_par_cAMPlow=0.2;
% Parameter:   id =  ETswitch, name = ETswitch
	global_par_ETswitch=0.0;
% Parameter:   id =  h, name = h
% Parameter:   id =  inh, name = variable for direct inhibition of secretion
% Parameter:   id =  V, name = voltage
% Parameter:   id =  n, name = delayed rectifier activation
% assignmentRule: variable = minf
	global_par_minf=1/(1+exp((global_par_vm-global_par_V)/global_par_sm));
% assignmentRule: variable = ninf
	global_par_ninf=1/(1+exp((global_par_vn-global_par_V)/global_par_sn));
% assignmentRule: variable = hinf
	global_par_hinf=1/(1+exp((global_par_vh-global_par_V)/global_par_sh));
% assignmentRule: variable = ica
	global_par_ica=global_par_gca*global_par_minf*(global_par_V-global_par_vca);
% assignmentRule: variable = igirk
	global_par_igirk=global_par_girk*global_par_h*(global_par_V-global_par_vk);
% assignmentRule: variable = ik
	global_par_ik=global_par_gk*global_par_n*(global_par_V-global_par_vk);
% assignmentRule: variable = ainf
	global_par_ainf=1/(1+global_par_dact/x(1));
% assignmentRule: variable = hinfer
	global_par_hinfer=1/(1+x(1)/global_par_dinh);
% assignmentRule: variable = jerp
	global_par_jerp=global_par_kserca*x(1);
% assignmentRule: variable = binf
	global_par_binf=global_par_IP3/(global_par_IP3+global_par_dip3);
% assignmentRule: variable = o
	global_par_o=global_par_ainf^3*global_par_binf^3*global_par_hinfer^3;
% assignmentRule: variable = jmemtot
	global_par_jmemtot=-(global_par_alpha*global_par_ica+global_par_kc*x(1));
% assignmentRule: variable = jerleak
	global_par_jerleak=global_par_perl*(x(2)-x(1));
% assignmentRule: variable = jerip3
	global_par_jerip3=global_par_o*(x(2)-x(1));
% assignmentRule: variable = jertot
	global_par_jertot=global_par_jerleak+global_par_jerip3-global_par_jerp;
% assignmentRule: variable = perl_inf
	global_par_perl_inf=global_par_inh*x(3)*x(1)^4/(global_par_ki^4+x(1)^4);
% rateRule: variable = h
global_par_h = x(4);
% rateRule: variable = inh
global_par_inh = x(5);
% rateRule: variable = V
global_par_V = x(6);
% rateRule: variable = n
global_par_n = x(7);

% Reaction: id = reaction_0000001
	reaction_reaction_0000001=compartment_cell*global_par_f*(global_par_jertot+global_par_jmemtot);

% Reaction: id = reaction_0000002
	reaction_reaction_0000002=(-global_par_fer)*global_par_sigmav*global_par_jertot*compartment_cell;

% Reaction: id = reaction_000003
	reaction_reaction_000003=compartment_cell*global_par_ETswitch*(global_par_cAMPlow-x(3))/global_par_taudir;

%Event: id=event_0000001
	event_event_0000001=time > 60000;

	if(event_event_0000001) 
		global_par_IP3=0.3;
		global_par_girk=3000;
		global_par_ETswitch=1;
	end

	xdot=zeros(7,1);
	% rateRule: variable = h
	xdot(4) = (global_par_hinf-global_par_h)/global_par_tauh;
	% rateRule: variable = inh
	xdot(5) = global_par_ETswitch*(0.2-global_par_inh)/global_par_taudir;
	% rateRule: variable = V
	xdot(6) = (-global_par_ica-global_par_ik-global_par_igirk)/global_par_cm;
	% rateRule: variable = n
	xdot(7) = global_par_lambda*(global_par_ninf-global_par_n)/global_par_taun;
	
% Species:   id = c, name = cytosolic calcium concentration, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000001));
	
% Species:   id = cer, name = ER calcium concentration, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000002));
	
% Species:   id = cAMP, name = cAMP, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_000003));
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


