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
% Model name = Fujita2010_Akt_Signalling_NGF
%
% is http://identifiers.org/biomodels.db/MODEL1004060002
% is http://identifiers.org/biomodels.db/BIOMD0000000263
% isDescribedBy http://identifiers.org/pubmed/20664065
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 8.52065090518276;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.15594897919397;
	x0(6) = 0.0;
	x0(7) = 3.552336039555;
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
% Parameter:   id =  pTrkA_total, name = pTrkA_total
% Parameter:   id =  pAkt_total, name = pAkt_total
% Parameter:   id =  pTrkA_scaleFactor, name = pTrkA_scaleFactor
	global_par_pTrkA_scaleFactor=0.848783474941268;
% Parameter:   id =  pAkt_scaleFactor, name = pAkt_scaleFactor
	global_par_pAkt_scaleFactor=2.42381211094508;
% Parameter:   id =  pS6_scaleFactor, name = pS6_scaleFactor
	global_par_pS6_scaleFactor=0.525842718263069;
% Parameter:   id =  pS6_total, name = pS6_total
% Parameter:   id =  NGF_conc_step, name = NGF_conc_step
	global_par_NGF_conc_step=0.0;
% Parameter:   id =  NGF_conc_pulse, name = NGF_conc_pulse
	global_par_NGF_conc_pulse=0.0;
% Parameter:   id =  NGF_conc_ramp, name = NGF_conc_ramp
	global_par_NGF_conc_ramp=30.0;
% Parameter:   id =  TrkA_turnover, name = TrkA_turnover
	global_par_TrkA_turnover=0.0011032440769796;
% Parameter:   id =  pulse_time, name = pulse_time
	global_par_pulse_time=60.0;
% Parameter:   id =  ramp_time, name = ramp_time
	global_par_ramp_time=3600.0;
% assignmentRule: variable = pS6_total
	global_par_pS6_total=x(9)*global_par_pS6_scaleFactor;
% assignmentRule: variable = pAkt_total
	global_par_pAkt_total=(x(6)+x(8))*global_par_pAkt_scaleFactor;
% assignmentRule: variable = pTrkA_total
	global_par_pTrkA_total=(x(3)+x(4))*global_par_pTrkA_scaleFactor;
% assignmentRule: variable = NGF
	x(1)=global_par_NGF_conc_step+piecewise(global_par_NGF_conc_pulse, time <= global_par_pulse_time, 0)+global_par_NGF_conc_ramp*time/global_par_ramp_time;

% Reaction: id = reaction_1, name = NGF+TrkA	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.00269408;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=0.0133747;

	reaction_reaction_1=compartment_Cell*(reaction_reaction_1_k1*x(1)*x(2)-reaction_reaction_1_k2*x(10));

% Reaction: id = reaction_2, name = pTrkA+Akt	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.0882701;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=1.47518E-10;

	reaction_reaction_2=compartment_Cell*(reaction_reaction_2_k1*x(3)*x(5)-reaction_reaction_2_k2*x(4));

% Reaction: id = reaction_3, name = Akt_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.0202517;

	reaction_reaction_3=compartment_Cell*reaction_reaction_3_k1*x(4);

% Reaction: id = reaction_4, name = pTrkA_degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.0684084;

	reaction_reaction_4=compartment_Cell*reaction_reaction_4_k1*x(3);

% Reaction: id = reaction_5, name = pAkt+S6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=68.3666;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=5.23519;

	reaction_reaction_5=compartment_Cell*(reaction_reaction_5_k1*x(6)*x(7)-reaction_reaction_5_k2*x(8));

% Reaction: id = reaction_6, name = S6_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.0056515;

	reaction_reaction_6=compartment_Cell*reaction_reaction_6_k1*x(8);

% Reaction: id = reaction_7, name = pAkt_dephospho	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=1.28135;

	reaction_reaction_7=compartment_Cell*reaction_reaction_7_k1*x(6);

% Reaction: id = reaction_8, name = pS6_dephospho	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=2.93167E-4;

	reaction_reaction_8=compartment_Cell*reaction_reaction_8_k1*x(9);

% Reaction: id = reaction_9, name = TrkA_synthesis
	reaction_reaction_9=compartment_Cell*global_par_TrkA_turnover*const_species_pro_TrkA;

% Reaction: id = reaction_10, name = TrkA_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.00833178;

	reaction_reaction_10=compartment_Cell*reaction_reaction_10_k1*x(10);

% Reaction: id = reaction_11, name = TrkA_degradation
	reaction_reaction_11=compartment_Cell*global_par_TrkA_turnover*x(2);

% Species:   id = pro_TrkA, name = pro_TrkA, constant	const_species_pro_TrkA=8.52065090518276;

	xdot=zeros(10,1);
	
% Species:   id = NGF, name = NGF, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = TrkA, name = TrkA, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_11));
	
% Species:   id = pTrkA, name = pTrkA, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = pTrkA_Akt, name = pTrkA_Akt, affected by kineticLaw
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
	
% Species:   id = NGF_TrkA, name = NGF_TrkA, affected by kineticLaw
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


