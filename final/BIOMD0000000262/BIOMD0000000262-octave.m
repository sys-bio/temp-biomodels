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
% Model name = Fujita2010_Akt_Signalling_EGF
%
% is http://identifiers.org/biomodels.db/MODEL1004060001
% is http://identifiers.org/biomodels.db/BIOMD0000000262
% isDescribedBy http://identifiers.org/pubmed/20664065
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 68190.1837333797;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0433090165709309;
	x0(6) = 0.0;
	x0(7) = 3.54316740542218;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  pEGFR_total, name = pEGFR_total
% Parameter:   id =  pAkt_total, name = pAkt_total
% Parameter:   id =  pEGFR_scaleFactor, name = pEGFR_scaleFactor
	global_par_pEGFR_scaleFactor=1.81734813832032E-4;
% Parameter:   id =  pAkt_scaleFactor, name = pAkt_scaleFactor
	global_par_pAkt_scaleFactor=60.0587507734138;
% Parameter:   id =  pS6_scaleFactor, name = pS6_scaleFactor
	global_par_pS6_scaleFactor=49886.2313741851;
% Parameter:   id =  pS6_total, name = pS6_total
% Parameter:   id =  EGF_conc_step, name = EGF_conc_step
	global_par_EGF_conc_step=0.0;
% Parameter:   id =  EGF_conc_impulse, name = EGF_conc_impulse
	global_par_EGF_conc_impulse=0.0;
% Parameter:   id =  EGF_conc_ramp, name = EGF_conc_ramp
	global_par_EGF_conc_ramp=30.0;
% Parameter:   id =  EGFR_turnover, name = EGFR_turnover
	global_par_EGFR_turnover=1.06386129269658E-4;
% Parameter:   id =  pulse_time, name = pulse_time
	global_par_pulse_time=60.0;
% Parameter:   id =  ramp_time, name = ramp_time
	global_par_ramp_time=3600.0;
% assignmentRule: variable = EGF
	x(1)=global_par_EGF_conc_step+piecewise(global_par_EGF_conc_impulse, time <= global_par_pulse_time, 0)+global_par_EGF_conc_ramp*time/global_par_ramp_time;
% assignmentRule: variable = pEGFR_total
	global_par_pEGFR_total=(x(3)+x(4))*global_par_pEGFR_scaleFactor;
% assignmentRule: variable = pAkt_total
	global_par_pAkt_total=(x(6)+x(8))*global_par_pAkt_scaleFactor;
% assignmentRule: variable = pS6_total
	global_par_pS6_total=x(9)*global_par_pS6_scaleFactor;

% Reaction: id = reaction_1, name = EGF+EGFR	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.00673816;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=0.040749;

	reaction_reaction_1=compartment_Cell*(reaction_reaction_1_k1*x(1)*x(2)-reaction_reaction_1_k2*x(10));

% Reaction: id = reaction_2, name = pEGFR+Akt	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1.5543E-5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=0.00517473;

	reaction_reaction_2=compartment_Cell*(reaction_reaction_2_k1*x(3)*x(5)-reaction_reaction_2_k2*x(4));

% Reaction: id = reaction_3, name = Akt_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.0305684;

	reaction_reaction_3=compartment_Cell*reaction_reaction_3_k1*x(4);

% Reaction: id = reaction_4, name = pEGFR_degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.0997194;

	reaction_reaction_4=compartment_Cell*reaction_reaction_4_k1*x(3);

% Reaction: id = reaction_5, name = pAkt+S6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=2.10189E-6;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=5.1794E-15;

	reaction_reaction_5=compartment_Cell*(reaction_reaction_5_k1*x(6)*x(7)-reaction_reaction_5_k2*x(8));

% Reaction: id = reaction_6, name = S6_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.00121498;

	reaction_reaction_6=compartment_Cell*reaction_reaction_6_k1*x(8);

% Reaction: id = reaction_7, name = pAkt_dephospho	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.0327962;

	reaction_reaction_7=compartment_Cell*reaction_reaction_7_k1*x(6);

% Reaction: id = reaction_8, name = pS6_dephospho	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.00113102;

	reaction_reaction_8=compartment_Cell*reaction_reaction_8_k1*x(9);

% Reaction: id = reaction_9, name = EGFR_synthesis
	reaction_reaction_9=compartment_Cell*global_par_EGFR_turnover*const_species_pro_EGFR;

% Reaction: id = reaction_10, name = EGFR_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.0192391;

	reaction_reaction_10=compartment_Cell*reaction_reaction_10_k1*x(10);

% Reaction: id = reaction_11, name = EGFR_degradation
	reaction_reaction_11=compartment_Cell*global_par_EGFR_turnover*x(2);

% Species:   id = pro_EGFR, name = pro_EGFR, constant	const_species_pro_EGFR=68190.1837333797;

	xdot=zeros(10,1);
	
% Species:   id = EGF, name = EGF, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = EGFR, name = EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_11));
	
% Species:   id = pEGFR, name = pEGFR, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = pEGFR_Akt, name = pEGFR_Akt, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = S6, name = S6, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = pAkt_S6, name = pAkt_S6, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = pS6, name = pS6, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = EGF_EGFR, name = EGF_EGFR, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_10));
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


