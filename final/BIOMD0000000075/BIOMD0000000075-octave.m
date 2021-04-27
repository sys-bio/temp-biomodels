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
% Model name = Xu2003 - Phosphoinositide turnover
%
% is http://identifiers.org/biomodels.db/MODEL3095606944
% is http://identifiers.org/biomodels.db/BIOMD0000000075
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 142857.0;
	x0(4) = 0.0;
	x0(5) = 4000.0;
	x0(6) = 2857.0;
	x0(7) = 2000.0;
	x0(8) = 100.0;
	x0(9) = 0.0;
	x0(10) = 96.32;


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

% Compartment: id = Extracellular, name = Extracellular, constant
	compartment_Extracellular=0.277777777777778;
% Compartment: id = PM, name = PM, constant
	compartment_PM=0.5555555555556;
% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = NM, name = NM, constant
	compartment_NM=0.111111111111111;
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=0.111111111111111;
% Parameter:   id =  KMOLE, name = KMOLE
	global_par_KMOLE=0.00166112956810631;
% Parameter:   id =  PIP_basal_PIPSyn, name = PIP_basal_PIPSyn
	global_par_PIP_basal_PIPSyn=2857.0;
% Parameter:   id =  kBasalSynPIP_PIPSyn, name = kBasalSynPIP_PIPSyn
	global_par_kBasalSynPIP_PIPSyn=0.0055;
% Parameter:   id =  kStimSynPIP_PIPSyn, name = kStimSynPIP_PIPSyn
	global_par_kStimSynPIP_PIPSyn=0.019;
% Parameter:   id =  tauPIPsyn_PIPSyn, name = tauPIPsyn_PIPSyn
	global_par_tauPIPsyn_PIPSyn=0.05;
% Parameter:   id =  PIPsyndecay_PIPSyn, name = PIPsyndecay_PIPSyn
	global_par_PIPsyndecay_PIPSyn=1.0;
% Parameter:   id =  Ratebasal_PIPsyn_PIPSyn, name = Ratebasal_PIPsyn_PIPSyn
% Parameter:   id =  Ratestim_PIPsyn_PIPSyn, name = Ratestim_PIPsyn_PIPSyn
% Parameter:   id =  tau0_PLCact, name = tau0_PLCact
	global_par_tau0_PLCact=0.05;
% Parameter:   id =  stimdecay_PLCact, name = stimdecay_PLCact
	global_par_stimdecay_PLCact=1.0;
% Parameter:   id =  signal_PLCact, name = signal_PLCact
% Parameter:   id =  kf_PIP2PH_PIP2_PH, name = kf_PIP2PH_PIP2_PH
	global_par_kf_PIP2PH_PIP2_PH=0.12;
% Parameter:   id =  KdPIP2PH_PIP2_PH, name = KdPIP2PH_PIP2_PH
	global_par_KdPIP2PH_PIP2_PH=2.0;
% Parameter:   id =  kr_PIP2PH_PIP2_PH, name = kr_PIP2PH_PIP2_PH
% Parameter:   id =  kStimSynPIP2_PIP2Syn, name = kStimSynPIP2_PIP2Syn
	global_par_kStimSynPIP2_PIP2Syn=0.92;
% Parameter:   id =  tauPIP2syn_PIP2Syn, name = tauPIP2syn_PIP2Syn
	global_par_tauPIP2syn_PIP2Syn=0.05;
% Parameter:   id =  PIP2syndecay_PIP2Syn, name = PIP2syndecay_PIP2Syn
	global_par_PIP2syndecay_PIP2Syn=1.0;
% Parameter:   id =  PIP2_basal_PIP2Syn, name = PIP2_basal_PIP2Syn
	global_par_PIP2_basal_PIP2Syn=4000.0;
% Parameter:   id =  kBasalSynPIP2_PIP2Syn, name = kBasalSynPIP2_PIP2Syn
	global_par_kBasalSynPIP2_PIP2Syn=0.048;
% Parameter:   id =  Rate_PIP2Synbasal_PIP2Syn, name = Rate_PIP2Synbasal_PIP2Syn
% Parameter:   id =  Rate_PIP2SynStim_PIP2Syn, name = Rate_PIP2SynStim_PIP2Syn
% Parameter:   id =  kf_IP3PH_IP3_PHGFP, name = kf_IP3PH_IP3_PHGFP
	global_par_kf_IP3PH_IP3_PHGFP=10.0;
% Parameter:   id =  KdIP3PH_IP3_PHGFP, name = KdIP3PH_IP3_PHGFP
	global_par_KdIP3PH_IP3_PHGFP=2.0;
% Parameter:   id =  kr_IP3PH_IP3_PHGFP, name = kr_IP3PH_IP3_PHGFP
% assignmentRule: variable = Rate_PIP2SynStim_PIP2Syn
	global_par_Rate_PIP2SynStim_PIP2Syn=piecewise(global_par_kStimSynPIP2_PIP2Syn*exp(-(time+(-global_par_tauPIP2syn_PIP2Syn))*1/global_par_PIP2syndecay_PIP2Syn), time > global_par_tauPIP2syn_PIP2Syn, 0);
% assignmentRule: variable = signal_PLCact
	global_par_signal_PLCact=piecewise(exp(-(time+(-global_par_tau0_PLCact))*1/global_par_stimdecay_PLCact), time > global_par_tau0_PLCact, 0);
% assignmentRule: variable = Rate_PIP2Synbasal_PIP2Syn
	global_par_Rate_PIP2Synbasal_PIP2Syn=piecewise(0.581*global_par_kBasalSynPIP2_PIP2Syn*(-1+exp((global_par_PIP2_basal_PIP2Syn+(-x(5)))*1/global_par_PIP2_basal_PIP2Syn)), x(5) < global_par_PIP2_basal_PIP2Syn, 0);
% assignmentRule: variable = kr_PIP2PH_PIP2_PH
	global_par_kr_PIP2PH_PIP2_PH=global_par_kf_PIP2PH_PIP2_PH*global_par_KdPIP2PH_PIP2_PH;
% assignmentRule: variable = kr_IP3PH_IP3_PHGFP
	global_par_kr_IP3PH_IP3_PHGFP=global_par_kf_IP3PH_IP3_PHGFP*global_par_KdIP3PH_IP3_PHGFP;
% assignmentRule: variable = Ratestim_PIPsyn_PIPSyn
	global_par_Ratestim_PIPsyn_PIPSyn=piecewise(global_par_kStimSynPIP_PIPSyn*exp(-(time+(-global_par_tauPIPsyn_PIPSyn))*1/global_par_PIPsyndecay_PIPSyn), time > global_par_tauPIPsyn_PIPSyn, 0);
% assignmentRule: variable = Ratebasal_PIPsyn_PIPSyn
	global_par_Ratebasal_PIPsyn_PIPSyn=piecewise(0.581*global_par_kBasalSynPIP_PIPSyn*(-1+exp((global_par_PIP_basal_PIPSyn+(-x(6)))*1/global_par_PIP_basal_PIPSyn)), x(6) < global_par_PIP_basal_PIPSyn, 0);

% Reaction: id = PIPSyn, name = PIPSyn
	reaction_PIPSyn=compartment_PM*Function_for_PIPSyn(x(3), global_par_Ratebasal_PIPsyn_PIPSyn, global_par_Ratestim_PIPsyn_PIPSyn);

% Reaction: id = PIP2_hyd, name = PIP2_hyd	% Local Parameter:   id =  k_PIP2hyd, name = k_PIP2hyd
	reaction_PIP2_hyd_k_PIP2hyd=2.4;

	reaction_PIP2_hyd=Function_for_PIP2_hyd(x(5), x(9), compartment_PM, reaction_PIP2_hyd_k_PIP2hyd);

% Reaction: id = PLCact, name = PLCact	% Local Parameter:   id =  KfPLCact, name = KfPLCact
	reaction_PLCact_KfPLCact=5.0E-4;
	% Local Parameter:   id =  krPLCact, name = krPLCact
	reaction_PLCact_krPLCact=0.1;

	reaction_PLCact=compartment_PM*Function_for_PLCact(reaction_PLCact_KfPLCact, x(8), x(9), reaction_PLCact_krPLCact, global_par_signal_PLCact, const_species_stim_PM);

% Reaction: id = PIP2_PH_hyd, name = PIP2_PH_hyd	% Local Parameter:   id =  k_PIP2PHhyd, name = k_PIP2PHhyd
	reaction_PIP2_PH_hyd_k_PIP2PHhyd=0.0;

	reaction_PIP2_PH_hyd=Function_for_PIP2_PH_hyd(x(1), x(9), compartment_PM, reaction_PIP2_PH_hyd_k_PIP2PHhyd);

% Reaction: id = PIP2_PH, name = PIP2_PH
	reaction_PIP2_PH=Function_for_PIP2_PH(x(2), x(1), x(5), compartment_PM, global_par_kf_PIP2PH_PIP2_PH, global_par_kr_PIP2PH_PIP2_PH);

% Reaction: id = IP3deg, name = IP3deg	% Local Parameter:   id =  IP3_basal, name = IP3_basal
	reaction_IP3deg_IP3_basal=0.16;
	% Local Parameter:   id =  kIP3deg, name = kIP3deg
	reaction_IP3deg_kIP3deg=0.08;

	reaction_IP3deg=compartment_Cytosol*Function_for_IP3deg(x(10), reaction_IP3deg_IP3_basal, global_par_KMOLE, reaction_IP3deg_kIP3deg);

% Reaction: id = PIP2Syn, name = PIP2Syn
	reaction_PIP2Syn=compartment_PM*Function_for_PIP2Syn(x(6), global_par_Rate_PIP2SynStim_PIP2Syn, global_par_Rate_PIP2Synbasal_PIP2Syn);

% Reaction: id = IP3_PHGFP, name = IP3-PHGFP
	reaction_IP3_PHGFP=compartment_Cytosol*Function_for_IP3_PHGFP(x(10), x(4), global_par_KMOLE, x(2), global_par_kf_IP3PH_IP3_PHGFP, global_par_kr_IP3PH_IP3_PHGFP);

% Species:   id = stim_PM, name = stim_PM, constant	const_species_stim_PM=1.0;

% Species:   id = hv_Cytosol, name = hv_Cytosol, constant	const_species_hv_Cytosol=0.0;

% Species:   id = IP3X_Cytosol, name = IP3X_Cytosol, constant	const_species_IP3X_Cytosol=0.0;

	xdot=zeros(10,1);
	
% Species:   id = PIP2_PHGFP_PM, name = PIP2_PHGFP_PM, affected by kineticLaw
	xdot(1) = (1/(compartment_PM))*((-1.0 * reaction_PIP2_PH_hyd) + ( 1.0 * reaction_PIP2_PH));
	
% Species:   id = PH_GFP_Cyt, name = PH_GFP_Cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_PIP2_PH_hyd) + (-1.0 * reaction_PIP2_PH) + (-1.0 * reaction_IP3_PHGFP));
	
% Species:   id = PI_PM, name = PI_PM, affected by kineticLaw
	xdot(3) = (1/(compartment_PM))*((-1.0 * reaction_PIPSyn));
	
% Species:   id = IP3_PHGFP_Cyt, name = IP3_PHGFP_Cyt, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IP3_PHGFP));
	
% Species:   id = PIP2_PM, name = PIP2_PM, affected by kineticLaw
	xdot(5) = (1/(compartment_PM))*((-1.0 * reaction_PIP2_hyd) + (-1.0 * reaction_PIP2_PH) + ( 1.0 * reaction_PIP2Syn));
	
% Species:   id = PIP_PM, name = PIP_PM, affected by kineticLaw
	xdot(6) = (1/(compartment_PM))*(( 1.0 * reaction_PIPSyn) + (-1.0 * reaction_PIP2Syn));
	
% Species:   id = DAG_PM, name = DAG_PM, affected by kineticLaw
	xdot(7) = (1/(compartment_PM))*(( 1.0 * reaction_PIP2_hyd) + ( 1.0 * reaction_PIP2_PH_hyd));
	
% Species:   id = PLC_PM, name = PLC_PM, affected by kineticLaw
	xdot(8) = (1/(compartment_PM))*((-1.0 * reaction_PLCact));
	
% Species:   id = PLC_act_PM, name = PLC_act_PM, affected by kineticLaw
	xdot(9) = (1/(compartment_PM))*(( 1.0 * reaction_PLCact));
	
% Species:   id = IP3_Cyt, name = IP3_Cyt, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytosol))*(( 1.0 * reaction_PIP2_hyd) + ( 1.0 * reaction_PIP2_PH_hyd) + (-1.0 * reaction_IP3deg) + (-1.0 * reaction_IP3_PHGFP));
end

function z=Function_for_PIPSyn(PI_PM,Ratebasal_PIPsyn_PIPSyn,Ratestim_PIPsyn_PIPSyn), z=((Ratebasal_PIPsyn_PIPSyn+Ratestim_PIPsyn_PIPSyn)*PI_PM);end

function z=Function_for_PLCact(KfPLCact,PLC_PM,PLC_act_PM,krPLCact,signal_PLCact,stim_PM), z=(KfPLCact*PLC_PM*stim_PM*signal_PLCact+(-krPLCact*PLC_act_PM));end

function z=Function_for_IP3_PHGFP(IP3_Cyt,IP3_PHGFP_Cyt,KMOLE,PH_GFP_Cyt,kf_IP3PH_IP3_PHGFP,kr_IP3PH_IP3_PHGFP), z=((kf_IP3PH_IP3_PHGFP*0.00166112956810631*IP3_Cyt*0.00166112956810631*PH_GFP_Cyt+(-kr_IP3PH_IP3_PHGFP*0.00166112956810631*IP3_PHGFP_Cyt))*1*1/KMOLE);end

function z=Function_for_PIP2_PH(PH_GFP_Cyt,PIP2_PHGFP_PM,PIP2_PM,PM,kf_PIP2PH_PIP2_PH,kr_PIP2PH_PIP2_PH), z=((kf_PIP2PH_PIP2_PH*0.00166112956810631*PH_GFP_Cyt*PIP2_PM+(-kr_PIP2PH_PIP2_PH*PIP2_PHGFP_PM))*PM);end

function z=Function_for_PIP2_PH_hyd(PIP2_PHGFP_PM,PLC_act_PM,PM,k_PIP2PHhyd), z=(k_PIP2PHhyd*PLC_act_PM*PIP2_PHGFP_PM*PM);end

function z=Function_for_IP3deg(IP3_Cyt,IP3_basal,KMOLE,kIP3deg), z=(kIP3deg*(0.00166112956810631*IP3_Cyt+(-IP3_basal))*1*1/KMOLE);end

function z=Function_for_PIP2Syn(PIP_PM,Rate_PIP2SynStim_PIP2Syn,Rate_PIP2Synbasal_PIP2Syn), z=((Rate_PIP2Synbasal_PIP2Syn+Rate_PIP2SynStim_PIP2Syn)*PIP_PM);end

function z=Function_for_PIP2_hyd(PIP2_PM,PLC_act_PM,PM,k_PIP2hyd), z=(k_PIP2hyd*PIP2_PM*PLC_act_PM*PM);end

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


