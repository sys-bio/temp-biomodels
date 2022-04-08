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
% Model name = Hettling2011_CreatineKinase
%
% is http://identifiers.org/biomodels.db/MODEL1201250000
% is http://identifiers.org/biomodels.db/BIOMD0000000408
% isDescribedBy http://identifiers.org/pubmed/21912519
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000041
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1006230027
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(11) = 0.0;
	x0(1) = 39.0;
	x0(2) = 5626.0;
	x0(3) = 9789.0;
	x0(4) = 5711.0;
	x0(5) = 5710.0;
	x0(6) = 64.0;
	x0(7) = 5601.0;
	x0(8) = 9789.0;
	x0(9) = 910.0;
	x0(10) = 912.0;


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

% Compartment: id = IMS, name = IMS, constant
	compartment_IMS=0.0625;
% Compartment: id = CYT, name = CYT, constant
	compartment_CYT=0.75;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  j_diff_pcr, name = j_diff_pcr
% Parameter:   id =  j_diff_atp, name = j_diff_atp
% Parameter:   id =  densyn, name = densyn
% Parameter:   id =  tmito, name = tmito
% Parameter:   id =  vatpnorm, name = vatpnorm
% Parameter:   id =  jsyn, name = jsyn
% Parameter:   id =  r_diff_pcr, name = r_diff_pcr
% Parameter:   id =  j_ck_mi, name = j_ck_mi
% Parameter:   id =  j_ck_mm, name = j_ck_mm
% Parameter:   id =  j_diff_adp, name = j_diff_adp
% Parameter:   id =  j_diff_cr, name = j_diff_cr
% Parameter:   id =  j_diff_pi, name = j_diff_pi
% Parameter:   id =  stepsize, name = stepsize
	global_par_stepsize=0.001;
% Parameter:   id =  phase, name = phase
% Parameter:   id =  heartrate_bpm, name = heartrate_bpm
	global_par_heartrate_bpm=135.0;
% Parameter:   id =  heartrate_basis, name = heartrate_basis
	global_par_heartrate_basis=135.0;
% Parameter:   id =  heartrate_test, name = heartrate_test
	global_par_heartrate_test=220.0;
% Parameter:   id =  fracDia, name = fracDia
% Parameter:   id =  fracSysUp, name = fracSysUp
	global_par_fracSysUp=0.1666666666;
% Parameter:   id =  fracSysDown, name = fracSysDown
	global_par_fracSysDown=0.1666666666;
% Parameter:   id =  VhydAmp_basis, name = VhydAmp_basis
% Parameter:   id =  VhydAmp_test, name = VhydAmp_test
% Parameter:   id =  time_Jhyd_step, name = time_Jhyd_step
	global_par_time_Jhyd_step=40.0;
% Parameter:   id =  Jhyd_test, name = Jhyd_test
% Warning parameter Jhyd_test is not constant, it should be controlled by a Rule and/or events
	global_par_Jhyd_test=627.6;
% Parameter:   id =  Jhyd_basis, name = Jhyd_basis
	global_par_Jhyd_basis=486.5;
% Parameter:   id =  last_time_fired, name = last_time_fired
	global_par_last_time_fired=0.0;
% Parameter:   id =  Jhyd, name = Jhyd
	global_par_Jhyd=486.5;
% Parameter:   id =  ck_factor_iaa, name = ck_factor_iaa
	global_par_ck_factor_iaa=1.0;
% Parameter:   id =  ck_factor_ia, name = ck_factor_ia
	global_par_ck_factor_ia=0.0286;
% Parameter:   id =  tmito_factor, name = tmito_factor
	global_par_tmito_factor=0.0;
% Parameter:   id =  PSmomATP, name = PSmomATP
	global_par_PSmomATP=13.29477;
% Parameter:   id =  K_CK_eq, name = K_CK_eq
	global_par_K_CK_eq=152.0;
% Parameter:   id =  VmaxMMb, name = VmaxMMb
% Parameter:   id =  VmaxMib, name = VmaxMib
% Parameter:   id =  VmaxMif_full_activity, name = VmaxMif_full_activity
	global_par_VmaxMif_full_activity=882.0756;
% Parameter:   id =  VmaxMMf_full_activity, name = VmaxMMf_full_activity
	global_par_VmaxMMf_full_activity=11441.78;
% Parameter:   id =  VmaxMif, name = VmaxMif
% Parameter:   id =  VmaxMMf, name = VmaxMMf
% Parameter:   id =  KiaMi, name = KiaMi
	global_par_KiaMi=750.0;
% Parameter:   id =  KbMi, name = KbMi
	global_par_KbMi=5200.0;
% Parameter:   id =  KicMi, name = KicMi
	global_par_KicMi=204.8;
% Parameter:   id =  KdMi, name = KdMi
	global_par_KdMi=500.0;
% Parameter:   id =  KibMi, name = KibMi
	global_par_KibMi=28800.0;
% Parameter:   id =  KidMi, name = KidMi
	global_par_KidMi=1600.0;
% Parameter:   id =  KiaMM, name = KiaMM
	global_par_KiaMM=900.0;
% Parameter:   id =  KbMM, name = KbMM
	global_par_KbMM=15500.0;
% Parameter:   id =  KicMM, name = KicMM
	global_par_KicMM=222.4;
% Parameter:   id =  KdMM, name = KdMM
	global_par_KdMM=1670.0;
% Parameter:   id =  KibMM, name = KibMM
	global_par_KibMM=34900.0;
% Parameter:   id =  KidMM, name = KidMM
	global_par_KidMM=4730.0;
% Parameter:   id =  Vmaxsyn, name = Vmaxsyn
	global_par_Vmaxsyn=1503.74;
% Parameter:   id =  Kadp, name = Kadp
	global_par_Kadp=25.0;
% Parameter:   id =  Kpi, name = Kpi
	global_par_Kpi=800.0;
% Parameter:   id =  PSmomPi, name = PSmomPi
	global_par_PSmomPi=194.0;
% Parameter:   id =  PSmomCr, name = PSmomCr
	global_par_PSmomCr=155.0;
% Parameter:   id =  PSmomPCr, name = PSmomPCr
	global_par_PSmomPCr=155.0;
% Parameter:   id =  pulsatility, name = pulsatility
% Warning parameter pulsatility is not constant, it should be controlled by a Rule and/or events
	global_par_pulsatility=1.0;
% rateRule: variable = tmito
global_par_tmito = x(11);
% assignmentRule: variable = densyn
	global_par_densyn=1+x(1)/global_par_Kadp+x(9)/global_par_Kpi+x(1)*x(9)/(global_par_Kadp*global_par_Kpi);
% assignmentRule: variable = jsyn
	global_par_jsyn=global_par_Vmaxsyn*x(1)*x(9)/(global_par_Kpi*global_par_Kadp*global_par_densyn);
% assignmentRule: variable = vatpnorm
	global_par_vatpnorm=global_par_tmito_factor*(global_par_Jhyd_test-global_par_jsyn)/(global_par_Jhyd_test-global_par_Jhyd_basis);
% assignmentRule: variable = VmaxMif
	global_par_VmaxMif=global_par_VmaxMif_full_activity*global_par_ck_factor_iaa;
% assignmentRule: variable = VmaxMMf
	global_par_VmaxMMf=global_par_VmaxMMf_full_activity*global_par_ck_factor_iaa;
% assignmentRule: variable = VmaxMib
	global_par_VmaxMib=global_par_K_CK_eq*global_par_KicMi*global_par_KdMi*global_par_VmaxMif/(global_par_KiaMi*global_par_KbMi);
% assignmentRule: variable = VmaxMMb
	global_par_VmaxMMb=global_par_K_CK_eq*global_par_KicMM*global_par_KdMM*global_par_VmaxMMf/(global_par_KiaMM*global_par_KbMM);
% assignmentRule: variable = j_diff_pcr
	global_par_j_diff_pcr=global_par_PSmomPCr*(x(4)-x(5));
% assignmentRule: variable = j_diff_atp
	global_par_j_diff_atp=global_par_PSmomATP*(x(2)-x(7));
% assignmentRule: variable = r_diff_pcr
	global_par_r_diff_pcr=global_par_j_diff_pcr/(global_par_j_diff_pcr+global_par_j_diff_atp);
% assignmentRule: variable = phase
	global_par_phase=(abs(t-global_par_time_Jhyd_step)-floor(abs(t-global_par_time_Jhyd_step)/60/global_par_heartrate_bpm)*60/global_par_heartrate_bpm)/60/global_par_heartrate_bpm;
% assignmentRule: variable = fracDia
	global_par_fracDia=1-global_par_fracSysUp-global_par_fracSysDown;
% assignmentRule: variable = VhydAmp_basis
	global_par_VhydAmp_basis=2*global_par_Jhyd_basis/(global_par_fracSysUp+global_par_fracSysDown);
% assignmentRule: variable = VhydAmp_test
	global_par_VhydAmp_test=2*global_par_Jhyd_test/(global_par_fracSysUp+global_par_fracSysDown);
% assignmentRule: variable = j_ck_mi
	global_par_j_ck_mi=(global_par_VmaxMif*x(2)*x(3)/(global_par_KiaMi*global_par_KbMi)-global_par_VmaxMib*x(1)*x(4)/(global_par_KicMi*global_par_KdMi))/(1+x(3)/global_par_KibMi+x(4)/global_par_KidMi+x(2)*(1/global_par_KiaMi+x(3)/(global_par_KiaMi*global_par_KbMi))+x(1)*(1/global_par_KicMi+x(3)/(global_par_KicMi*global_par_KibMi)+x(4)/(global_par_KidMi*global_par_KicMi*global_par_KdMi/global_par_KidMi)));
% assignmentRule: variable = j_ck_mm
	global_par_j_ck_mm=(global_par_VmaxMMf*x(7)*x(8)/(global_par_KiaMM*global_par_KbMM)-global_par_VmaxMMb*x(6)*x(5)/(global_par_KicMM*global_par_KdMM))/(1+x(8)/global_par_KibMM+x(5)/global_par_KidMM+x(7)*(1/global_par_KiaMM+x(8)/(global_par_KiaMM*global_par_KbMM))+x(6)*(1/global_par_KicMM+x(8)/(global_par_KicMM*global_par_KibMM)+x(5)/(global_par_KidMM*global_par_KicMM*global_par_KdMM/global_par_KidMM)));
% assignmentRule: variable = j_diff_adp
	global_par_j_diff_adp=global_par_PSmomATP*(x(1)-x(6));
% assignmentRule: variable = j_diff_pi
	global_par_j_diff_pi=global_par_PSmomPi*(x(9)-x(10));
% assignmentRule: variable = j_diff_cr
	global_par_j_diff_cr=global_par_PSmomCr*(x(3)-x(8));

% Reaction: id = Jsyn
	reaction_Jsyn=global_par_Vmaxsyn*x(1)*x(9)/(global_par_Kadp*global_par_Kpi*(1+x(1)/global_par_Kadp+x(9)/global_par_Kpi+x(1)*x(9)/(global_par_Kadp*global_par_Kpi)));

% Reaction: id = J_CK_Mi
	reaction_J_CK_Mi=global_par_j_ck_mi;

% Reaction: id = J_CK_MM
	reaction_J_CK_MM=global_par_j_ck_mm;

% Reaction: id = Jhyd_reaction
	reaction_Jhyd_reaction=global_par_Jhyd;

% Reaction: id = J_diff_Pi
	reaction_J_diff_Pi=global_par_j_diff_pi;

% Reaction: id = J_diff_Cr
	reaction_J_diff_Cr=global_par_j_diff_cr;

% Reaction: id = J_diff_ADP
	reaction_J_diff_ADP=global_par_j_diff_adp;

% Reaction: id = J_diff_PCr
	reaction_J_diff_PCr=global_par_j_diff_pcr;

% Reaction: id = J_diff_ATP
	reaction_J_diff_ATP=global_par_j_diff_atp;

%Event: id=
	event_=((t >= global_par_time_Jhyd_step) && ((t-global_par_last_time_fired) > global_par_stepsize)) && (global_par_pulsatility == 1);

	if(event_) 
		global_par_Jhyd=piecewise((1-(global_par_phase-global_par_fracSysUp)/global_par_fracSysDown)*global_par_VhydAmp_test, (global_par_phase > global_par_fracSysUp) && (global_par_phase <= (1-global_par_fracDia)), global_par_phase/global_par_fracSysUp*global_par_VhydAmp_test, global_par_phase <= global_par_fracSysUp, 0, global_par_phase >= (1-global_par_fracDia), global_par_Jhyd);
		global_par_last_time_fired=t;
	end

%Event: id=
	event_=((t < global_par_time_Jhyd_step) && ((t-global_par_last_time_fired) >= global_par_stepsize)) && (global_par_pulsatility == 1);

	if(event_) 
		global_par_Jhyd=piecewise(0, global_par_phase <= global_par_fracDia, (global_par_phase-global_par_fracDia)/global_par_fracSysDown*global_par_VhydAmp_basis, (global_par_phase > global_par_fracDia) && (global_par_phase <= (1-global_par_fracSysUp)), (1-global_par_phase)*global_par_VhydAmp_basis/global_par_fracSysUp, global_par_phase > (1-global_par_fracSysUp), global_par_Jhyd);
		global_par_last_time_fired=t;
	end

%Event: id=
	event_=t >= global_par_time_Jhyd_step;

	if(event_) 
		global_par_Jhyd=piecewise(global_par_Jhyd_test, global_par_pulsatility == 0, global_par_Jhyd);
		global_par_heartrate_bpm=global_par_heartrate_test;
		global_par_tmito_factor=1;
	end

	xdot=zeros(11,1);
	% rateRule: variable = tmito
	xdot(11) = global_par_vatpnorm;
	
% Species:   id = ADPi, name = ADPi, affected by kineticLaw
	xdot(1) = (1/(compartment_IMS))*((-1.0 * reaction_Jsyn) + ( 1.0 * reaction_J_CK_Mi) + (-1.0 * reaction_J_diff_ADP));
	
% Species:   id = ATPi, name = ATPi, affected by kineticLaw
	xdot(2) = (1/(compartment_IMS))*(( 1.0 * reaction_Jsyn) + (-1.0 * reaction_J_CK_Mi) + (-1.0 * reaction_J_diff_ATP));
	
% Species:   id = Cri, name = Cri, affected by kineticLaw
	xdot(3) = (1/(compartment_IMS))*((-1.0 * reaction_J_CK_Mi) + (-1.0 * reaction_J_diff_Cr));
	
% Species:   id = PCri, name = PCri, affected by kineticLaw
	xdot(4) = (1/(compartment_IMS))*(( 1.0 * reaction_J_CK_Mi) + (-1.0 * reaction_J_diff_PCr));
	
% Species:   id = PCr, name = PCr, affected by kineticLaw
	xdot(5) = (1/(compartment_CYT))*(( 1.0 * reaction_J_CK_MM) + ( 1.0 * reaction_J_diff_PCr));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(6) = (1/(compartment_CYT))*(( 1.0 * reaction_J_CK_MM) + ( 1.0 * reaction_Jhyd_reaction) + ( 1.0 * reaction_J_diff_ADP));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(7) = (1/(compartment_CYT))*((-1.0 * reaction_J_CK_MM) + (-1.0 * reaction_Jhyd_reaction) + ( 1.0 * reaction_J_diff_ATP));
	
% Species:   id = Cr, name = Cr, affected by kineticLaw
	xdot(8) = (1/(compartment_CYT))*((-1.0 * reaction_J_CK_MM) + ( 1.0 * reaction_J_diff_Cr));
	
% Species:   id = P_ii, name = P_ii, affected by kineticLaw
	xdot(9) = (1/(compartment_IMS))*((-1.0 * reaction_Jsyn) + (-1.0 * reaction_J_diff_Pi));
	
% Species:   id = P_i, name = P_i, affected by kineticLaw
	xdot(10) = (1/(compartment_CYT))*(( 1.0 * reaction_Jhyd_reaction) + ( 1.0 * reaction_J_diff_Pi));
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


