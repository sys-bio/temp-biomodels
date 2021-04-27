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
% Model name = Palmer2014 - Effect of IL-1?-Blocking therapies in T2DM - Disease Condition
%
% is http://identifiers.org/biomodels.db/MODEL1604270002
% is http://identifiers.org/biomodels.db/BIOMD0000000620
% isDescribedBy http://identifiers.org/pubmed/24918743
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1112110003
%


function main()
%Initial conditions vector
	x0=zeros(59,1);
	x0(36) = 0.122997;
	x0(37) = 8.627;
	x0(38) = 0.244266;
	x0(39) = 8.50573;
	x0(40) = 0.363829;
	x0(41) = 8.38617;
	x0(42) = 0.481712;
	x0(43) = 8.26829;
	x0(44) = 0.597938;
	x0(45) = 8.15206;
	x0(46) = 0.71253;
	x0(47) = 8.03747;
	x0(48) = 0.825512;
	x0(49) = 7.92449;
	x0(50) = 0.936905;
	x0(51) = 7.8131;
	x0(52) = 1.04673;
	x0(53) = 7.70327;
	x0(54) = 1.15502;
	x0(55) = 7.59498;
	x0(56) = 1.26178;
	x0(57) = 7.48822;
	x0(58) = 1.36704;
	x0(59) = 7.38296;
	x0(1) = 5.0;
	x0(2) = 40.0;
	x0(3) = 0.0;
	x0(4) = 43.0;
	x0(5) = 100.0;
	x0(6) = 0.1865;
	x0(7) = 40.0;
	x0(8) = 0.0427776;
	x0(9) = 0.0;
	x0(10) = 10.8;
	x0(11) = 0.122997;
	x0(12) = 8.627;
	x0(13) = 0.244266;
	x0(14) = 8.50573;
	x0(15) = 0.363829;
	x0(16) = 8.38617;
	x0(17) = 0.481712;
	x0(18) = 8.26829;
	x0(19) = 0.597938;
	x0(20) = 8.15206;
	x0(21) = 0.71253;
	x0(22) = 8.03747;
	x0(23) = 0.825512;
	x0(24) = 7.92449;
	x0(25) = 0.936905;
	x0(26) = 7.8131;
	x0(27) = 1.04673;
	x0(28) = 7.70327;
	x0(29) = 1.15502;
	x0(30) = 7.59498;
	x0(31) = 1.26178;
	x0(32) = 7.48822;
	x0(33) = 1.36704;
	x0(34) = 7.38296;
	x0(35) = 8.7;


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

% Compartment: id = default_compartment, name = default_compartment, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  Kxg, name = Kxg
	global_par_Kxg=1.6E-5;
% Parameter:   id =  Kxi, name = Kxi
	global_par_Kxi=0.05;
% Parameter:   id =  Gh, name = Gh
	global_par_Gh=9.0;
% Parameter:   id =  vh, name = vh
	global_par_vh=4.0;
% Parameter:   id =  Ktr, name = Ktr
	global_par_Ktr=0.12;
% Parameter:   id =  Kin, name = Kin
	global_par_Kin=1.05;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.743;
% Parameter:   id =  Kglucose, name = Kglucose
	global_par_Kglucose=2.92E-4;
% Parameter:   id =  vs, name = vs
	global_par_vs=0.7;
% Parameter:   id =  kms, name = kms
	global_par_kms=0.021;
% Parameter:   id =  taus, name = taus
	global_par_taus=0.5;
% Parameter:   id =  kmf, name = kmf
	global_par_kmf=0.021;
% Parameter:   id =  tauf, name = tauf
	global_par_tauf=0.5;
% Parameter:   id =  vfg, name = vfg
	global_par_vfg=4.0;
% Parameter:   id =  xfg, name = xfg
	global_par_xfg=4.0;
% Parameter:   id =  kmfg, name = kmfg
	global_par_kmfg=9.0;
% Parameter:   id =  vf, name = vf
	global_par_vf=0.4;
% Parameter:   id =  vlr, name = vlr
	global_par_vlr=1.8;
% Parameter:   id =  kmlr, name = kmlr
	global_par_kmlr=0.0011;
% Parameter:   id =  xlr, name = xlr
	global_par_xlr=3.0;
% Parameter:   id =  vhr, name = vhr
	global_par_vhr=2.7;
% Parameter:   id =  kmhr, name = kmhr
	global_par_kmhr=0.018;
% Parameter:   id =  xhr, name = xhr
	global_par_xhr=0.5;
% Parameter:   id =  vla, name = vla
	global_par_vla=0.65;
% Parameter:   id =  kmla, name = kmla
	global_par_kmla=1.8E-4;
% Parameter:   id =  xla, name = xla
	global_par_xla=3.0;
% Parameter:   id =  vha, name = vha
	global_par_vha=4.6;
% Parameter:   id =  kmha, name = kmha
	global_par_kmha=0.155;
% Parameter:   id =  xha, name = xha
	global_par_xha=0.6666666667;
% Parameter:   id =  km, name = km
	global_par_km=8.5;
% Parameter:   id =  ki, name = ki
	global_par_ki=1.7;
% Parameter:   id =  ka, name = ka
	global_par_ka=5.52022E-4;
% Parameter:   id =  kr, name = kr
	global_par_kr=3.76393E-4;
% Parameter:   id =  kf, name = kf
	global_par_kf=0.00957754;
% Parameter:   id =  ks, name = ks
	global_par_ks=0.291008;
% Parameter:   id =  Tgl, name = Tgl
	global_par_Tgl=0.025405;
% Parameter:   id =  Kxgi, name = Kxgi
	global_par_Kxgi=2.24E-5;
% Parameter:   id =  il1bH, name = il1bH
	global_par_il1bH=0.05;
% Parameter:   id =  il1b0, name = il1b0
% Warning parameter il1b0 is not constant, it should be controlled by a Rule and/or events
	global_par_il1b0=5.0;
% Parameter:   id =  kplacebo, name = kplacebo
	global_par_kplacebo=0.00137;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.2;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0025;
% Parameter:   id =  kab, name = kab
	global_par_kab=3.94;
% Parameter:   id =  CL, name = CL
	global_par_CL=432.0;
% Parameter:   id =  Vp, name = Vp
	global_par_Vp=48.0;
% Parameter:   id =  apoptosis, name = apoptosis
% Parameter:   id =  IL1R, name = IL1R
% Parameter:   id =  replication, name = replication
% Parameter:   id =  Ana_on, name = Ana_on
	global_par_Ana_on=1.0;
% Parameter:   id =  placebo_on, name = placebo_on
	global_par_placebo_on=0.0;
% Parameter:   id =  Anakinra_dose_counter, name = Anakinra_dose_counter
	global_par_Anakinra_dose_counter=0.5;
% Parameter:   id =  PI_I, name = PI_I
% rateRule: variable = a1c1
x(11) = x(36);
% rateRule: variable = rbc1
x(12) = x(37);
% rateRule: variable = a1c2
x(13) = x(38);
% rateRule: variable = rbc2
x(14) = x(39);
% rateRule: variable = a1c3
x(15) = x(40);
% rateRule: variable = rbc3
x(16) = x(41);
% rateRule: variable = a1c4
x(17) = x(42);
% rateRule: variable = rbc4
x(18) = x(43);
% rateRule: variable = a1c5
x(19) = x(44);
% rateRule: variable = rbc5
x(20) = x(45);
% rateRule: variable = a1c6
x(21) = x(46);
% rateRule: variable = rbc6
x(22) = x(47);
% rateRule: variable = a1c7
x(23) = x(48);
% rateRule: variable = rbc7
x(24) = x(49);
% rateRule: variable = a1c8
x(25) = x(50);
% rateRule: variable = rbc8
x(26) = x(51);
% rateRule: variable = a1c9
x(27) = x(52);
% rateRule: variable = rbc9
x(28) = x(53);
% rateRule: variable = a1c10
x(29) = x(54);
% rateRule: variable = rbc10
x(30) = x(55);
% rateRule: variable = a1c11
x(31) = x(56);
% rateRule: variable = rbc11
x(32) = x(57);
% rateRule: variable = a1c12
x(33) = x(58);
% rateRule: variable = rbc12
x(34) = x(59);
% assignmentRule: variable = hba1c
	x(35)=100*(x(11)+x(13)+x(15)+x(17)+x(19)+x(21)+x(23)+x(25)+x(27)+x(29)+x(31)+x(33))/(x(11)+x(13)+x(15)+x(17)+x(19)+x(21)+x(23)+x(25)+x(27)+x(29)+x(31)+x(33)+x(12)+x(14)+x(16)+x(18)+x(20)+x(22)+x(24)+x(26)+x(28)+x(30)+x(32)+x(34));
% assignmentRule: variable = apoptosis
	global_par_apoptosis=global_par_ka*(1+global_par_vha*global_par_IL1R^global_par_xha/(global_par_kmha^global_par_xha+global_par_IL1R^global_par_xha)-global_par_vla*global_par_IL1R^global_par_xla/(global_par_kmla^global_par_xla+global_par_IL1R^global_par_xla));
% assignmentRule: variable = IL1R
	global_par_IL1R=x(1)/(x(1)+global_par_km*(1+(x(2)+x(3))/global_par_ki));
% assignmentRule: variable = replication
	global_par_replication=global_par_kr*(1-global_par_vhr*global_par_IL1R^global_par_xhr/(global_par_kmhr^global_par_xhr+global_par_IL1R^global_par_xhr)+global_par_vlr*global_par_IL1R^global_par_xlr/(global_par_kmlr^global_par_xlr+global_par_IL1R^global_par_xlr));
% assignmentRule: variable = PI_I
	global_par_PI_I=x(4)/x(5);

% Reaction: id = TigB_up
	reaction_TigB_up=global_par_taus*global_par_ks*(1-global_par_vs*global_par_IL1R/(global_par_kms+global_par_IL1R));

% Reaction: id = TigB_down
	reaction_TigB_down=global_par_taus*x(6);

% Reaction: id = Bcell_replication
	reaction_Bcell_replication=global_par_replication*x(7);

% Reaction: id = Bcell_apoptosis
	reaction_Bcell_apoptosis=global_par_apoptosis*x(7);

% Reaction: id = proinsulin_sec_up
	reaction_proinsulin_sec_up=global_par_tauf*global_par_kf*(1+global_par_vfg*x(10)^global_par_xfg/(global_par_kmfg^global_par_xfg+x(10)^global_par_xfg))*(1+global_par_vf*global_par_IL1R/(global_par_kmf+global_par_IL1R));

% Reaction: id = proinsulin_sec_down
	reaction_proinsulin_sec_down=global_par_tauf*x(8);

% Reaction: id = IL1b_treatment
	reaction_IL1b_treatment=piecewise((1-global_par_placebo_on)*global_par_k1*global_par_il1bH, time < 91, (1-global_par_placebo_on)*global_par_k2*(global_par_il1b0+global_par_kplacebo*time));

% Reaction: id = IL1b_degradation
	reaction_IL1b_degradation=piecewise((1-global_par_placebo_on)*global_par_k1*x(1), time < 91, (1-global_par_placebo_on)*global_par_k2*x(1));

% Reaction: id = IL1b_placebo
	reaction_IL1b_placebo=global_par_placebo_on*global_par_kplacebo;

% Reaction: id = AnakinraSC_elimination
	reaction_AnakinraSC_elimination=global_par_kab*x(9);

% Reaction: id = Anakinra_absorption
	reaction_Anakinra_absorption=global_par_kab*x(9)/global_par_Vp;

% Reaction: id = Anakinra_elimination
	reaction_Anakinra_elimination=global_par_CL/global_par_Vp*x(3);

% Reaction: id = Glucose_production
	reaction_Glucose_production=global_par_Tgl;

% Reaction: id = Basal_glucose_uptake
	reaction_Basal_glucose_uptake=global_par_Kxg*x(10);

% Reaction: id = Insulin_dependent_glucose_uptake
	reaction_Insulin_dependent_glucose_uptake=global_par_Kxgi*x(5)*x(10);

% Reaction: id = Proinsulin_dependent_glucose_uptake
	reaction_Proinsulin_dependent_glucose_uptake=0.1*global_par_Kxgi*x(4)*x(10);

% Reaction: id = Glucose_dependent_insulin_secretion
	reaction_Glucose_dependent_insulin_secretion=(x(10)/global_par_Gh)^global_par_vh/(1+(x(10)/global_par_Gh)^global_par_vh)*x(6)*x(7);

% Reaction: id = Insulin_elimination
	reaction_Insulin_elimination=global_par_Kxi*x(5);

% Reaction: id = Glucose_dependent_proinsulin_secretion
	reaction_Glucose_dependent_proinsulin_secretion=x(8)*(x(10)/global_par_Gh)^global_par_vh/(1+(x(10)/global_par_Gh)^global_par_vh)*x(6)*x(7);

% Reaction: id = Proinsulin_elimination
	reaction_Proinsulin_elimination=0.1*global_par_Kxi*x(4);

%Event: id=Anakinra_Administration_event
	event_Anakinra_Administration_event=(time == global_par_Anakinra_dose_counter) && (global_par_Anakinra_dose_counter < 91);

	if(event_Anakinra_Administration_event) 
		x(9)=x(9)+100000*global_par_Ana_on;
		global_par_Anakinra_dose_counter=global_par_Anakinra_dose_counter+1;
	end

	xdot=zeros(59,1);
	% rateRule: variable = a1c1
	xdot(36) = global_par_Kglucose*x(10)^global_par_lambda*x(12)-global_par_Ktr*x(11);
	% rateRule: variable = rbc1
	xdot(37) = global_par_Kin-global_par_Ktr*x(12)-global_par_Kglucose*x(10)^global_par_lambda*x(12);
	% rateRule: variable = a1c2
	xdot(38) = global_par_Kglucose*x(10)^global_par_lambda*x(14)+global_par_Ktr*x(11)-global_par_Ktr*x(13);
	% rateRule: variable = rbc2
	xdot(39) = global_par_Ktr*x(12)-global_par_Ktr*x(14)-global_par_Kglucose*x(10)^global_par_lambda*x(14);
	% rateRule: variable = a1c3
	xdot(40) = global_par_Kglucose*x(10)^global_par_lambda*x(16)+global_par_Ktr*x(13)-global_par_Ktr*x(15);
	% rateRule: variable = rbc3
	xdot(41) = global_par_Ktr*x(14)-global_par_Ktr*x(16)-global_par_Kglucose*x(10)^global_par_lambda*x(16);
	% rateRule: variable = a1c4
	xdot(42) = global_par_Kglucose*x(10)^global_par_lambda*x(18)+global_par_Ktr*x(15)-global_par_Ktr*x(17);
	% rateRule: variable = rbc4
	xdot(43) = global_par_Ktr*x(16)-global_par_Ktr*x(18)-global_par_Kglucose*x(10)^global_par_lambda*x(18);
	% rateRule: variable = a1c5
	xdot(44) = global_par_Kglucose*x(10)^global_par_lambda*x(20)+global_par_Ktr*x(17)-global_par_Ktr*x(19);
	% rateRule: variable = rbc5
	xdot(45) = global_par_Ktr*x(18)-global_par_Ktr*x(20)-global_par_Kglucose*x(10)^global_par_lambda*x(20);
	% rateRule: variable = a1c6
	xdot(46) = global_par_Kglucose*x(10)^global_par_lambda*x(22)+global_par_Ktr*x(19)-global_par_Ktr*x(21);
	% rateRule: variable = rbc6
	xdot(47) = global_par_Ktr*x(20)-global_par_Ktr*x(22)-global_par_Kglucose*x(10)^global_par_lambda*x(22);
	% rateRule: variable = a1c7
	xdot(48) = global_par_Kglucose*x(10)^global_par_lambda*x(24)+global_par_Ktr*x(21)-global_par_Ktr*x(23);
	% rateRule: variable = rbc7
	xdot(49) = global_par_Ktr*x(22)-global_par_Ktr*x(24)-global_par_Kglucose*x(10)^global_par_lambda*x(24);
	% rateRule: variable = a1c8
	xdot(50) = global_par_Kglucose*x(10)^global_par_lambda*x(26)+global_par_Ktr*x(23)-global_par_Ktr*x(25);
	% rateRule: variable = rbc8
	xdot(51) = global_par_Ktr*x(24)-global_par_Ktr*x(26)-global_par_Kglucose*x(10)^global_par_lambda*x(26);
	% rateRule: variable = a1c9
	xdot(52) = global_par_Kglucose*x(10)^global_par_lambda*x(28)+global_par_Ktr*x(25)-global_par_Ktr*x(27);
	% rateRule: variable = rbc9
	xdot(53) = global_par_Ktr*x(26)-global_par_Ktr*x(28)-global_par_Kglucose*x(10)^global_par_lambda*x(28);
	% rateRule: variable = a1c10
	xdot(54) = global_par_Kglucose*x(10)^global_par_lambda*x(30)+global_par_Ktr*x(27)-global_par_Ktr*x(29);
	% rateRule: variable = rbc10
	xdot(55) = global_par_Ktr*x(28)-global_par_Ktr*x(30)-global_par_Kglucose*x(10)^global_par_lambda*x(30);
	% rateRule: variable = a1c11
	xdot(56) = global_par_Kglucose*x(10)^global_par_lambda*x(32)+global_par_Ktr*x(29)-global_par_Ktr*x(31);
	% rateRule: variable = rbc11
	xdot(57) = global_par_Ktr*x(30)-global_par_Ktr*x(32)-global_par_Kglucose*x(10)^global_par_lambda*x(32);
	% rateRule: variable = a1c12
	xdot(58) = global_par_Kglucose*x(10)^global_par_lambda*x(34)+global_par_Ktr*x(31)-global_par_Ktr*x(33);
	% rateRule: variable = rbc12
	xdot(59) = global_par_Ktr*x(32)-global_par_Ktr*x(34)-global_par_Kglucose*x(10)^global_par_lambda*x(34);
	
% Species:   id = IL1b, name = IL1b, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction_IL1b_treatment) + (-1.0 * reaction_IL1b_degradation) + ( 1.0 * reaction_IL1b_placebo));
	
% Species:   id = IL1Ra, name = IL1Ra
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = Anakinra, name = Anakinra, affected by kineticLaw
	xdot(3) = (1/(compartment_default_compartment))*(( 1.0 * reaction_Anakinra_absorption) + (-1.0 * reaction_Anakinra_elimination));
	
% Species:   id = Proinsulin, name = Proinsulin, affected by kineticLaw
	xdot(4) = (1/(compartment_default_compartment))*(( 1.0 * reaction_Glucose_dependent_proinsulin_secretion) + (-1.0 * reaction_Proinsulin_elimination));
	
% Species:   id = Insulin, name = Insulin, affected by kineticLaw
	xdot(5) = (1/(compartment_default_compartment))*(( 1.0 * reaction_Glucose_dependent_insulin_secretion) + (-1.0 * reaction_Insulin_elimination));
	
% Species:   id = TigB, name = TigB, affected by kineticLaw
	xdot(6) = (1/(compartment_default_compartment))*(( 1.0 * reaction_TigB_up) + (-1.0 * reaction_TigB_down));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(7) = (1/(compartment_default_compartment))*(( 1.0 * reaction_Bcell_replication) + (-1.0 * reaction_Bcell_apoptosis));
	
% Species:   id = f, name = f, affected by kineticLaw
	xdot(8) = (1/(compartment_default_compartment))*(( 1.0 * reaction_proinsulin_sec_up) + (-1.0 * reaction_proinsulin_sec_down));
	
% Species:   id = Anakinrasc, name = Anakinrasc, affected by kineticLaw
	xdot(9) = (1/(compartment_default_compartment))*((-1.0 * reaction_AnakinraSC_elimination));
	
% Species:   id = Glucose, name = Glucose, affected by kineticLaw
	xdot(10) = (1/(compartment_default_compartment))*(( 1.0 * reaction_Glucose_production) + (-1.0 * reaction_Basal_glucose_uptake) + (-1.0 * reaction_Insulin_dependent_glucose_uptake) + (-1.0 * reaction_Proinsulin_dependent_glucose_uptake));
	
% Species:   id = a1c1, name = a1c1, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = rbc1, name = rbc1, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = a1c2, name = a1c2, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = rbc2, name = rbc2, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = a1c3, name = a1c3, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = rbc3, name = rbc3, defined in a rule 	xdot(16) = x(16);
	
% Species:   id = a1c4, name = a1c4, defined in a rule 	xdot(17) = x(17);
	
% Species:   id = rbc4, name = rbc4, defined in a rule 	xdot(18) = x(18);
	
% Species:   id = a1c5, name = a1c5, defined in a rule 	xdot(19) = x(19);
	
% Species:   id = rbc5, name = rbc5, defined in a rule 	xdot(20) = x(20);
	
% Species:   id = a1c6, name = a1c6, defined in a rule 	xdot(21) = x(21);
	
% Species:   id = rbc6, name = rbc6, defined in a rule 	xdot(22) = x(22);
	
% Species:   id = a1c7, name = a1c7, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = rbc7, name = rbc7, defined in a rule 	xdot(24) = x(24);
	
% Species:   id = a1c8, name = a1c8, defined in a rule 	xdot(25) = x(25);
	
% Species:   id = rbc8, name = rbc8, defined in a rule 	xdot(26) = x(26);
	
% Species:   id = a1c9, name = a1c9, defined in a rule 	xdot(27) = x(27);
	
% Species:   id = rbc9, name = rbc9, defined in a rule 	xdot(28) = x(28);
	
% Species:   id = a1c10, name = a1c10, defined in a rule 	xdot(29) = x(29);
	
% Species:   id = rbc10, name = rbc10, defined in a rule 	xdot(30) = x(30);
	
% Species:   id = a1c11, name = a1c11, defined in a rule 	xdot(31) = x(31);
	
% Species:   id = rbc11, name = rbc11, defined in a rule 	xdot(32) = x(32);
	
% Species:   id = a1c12, name = a1c12, defined in a rule 	xdot(33) = x(33);
	
% Species:   id = rbc12, name = rbc12, defined in a rule 	xdot(34) = x(34);
	
% Species:   id = hba1c, name = hba1c, involved in a rule 	xdot(35) = x(35);
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


