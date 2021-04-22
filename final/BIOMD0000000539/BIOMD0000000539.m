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
% Model name = François2005 - Mixed Feedback Loop (two-gene network)
%
% is http://identifiers.org/biomodels.db/MODEL1408130000
% is http://identifiers.org/biomodels.db/BIOMD0000000539
% isDescribedBy http://identifiers.org/pubmed/16241483
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 40.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.04;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.001;
% Parameter:   id =  rhob, name = rhob
	global_par_rhob=5.0;
% Parameter:   id =  rhof, name = rhof
	global_par_rhof=0.1;
% Parameter:   id =  deltar, name = deltar
	global_par_deltar=0.03;
% Parameter:   id =  rhoA, name = rhoA
	global_par_rhoA=100.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  deltaA, name = deltaA
	global_par_deltaA=0.01;
% Parameter:   id =  deltaB, name = deltaB
	global_par_deltaB=0.01;
% Parameter:   id =  beta, name = beta
	global_par_beta=3.0;
% Parameter:   id =  deltaAB, name = deltaAB
	global_par_deltaAB=0.01;

% Reaction: id = A_binds_gB, name = A binds gB
	reaction_A_binds_gB=compartment_cell*global_par_alpha*x(1)*x(3);

% Reaction: id = gB_releases_A, name = gB releases A
	reaction_gB_releases_A=compartment_cell*global_par_theta*x(2);

% Reaction: id = basal_transcription_B, name = basal transcription B
	reaction_basal_transcription_B=compartment_cell*transcription_and_translation(global_par_rhof, x(3));

% Reaction: id = stim_transcription_B, name = stim transcription B
	reaction_stim_transcription_B=compartment_cell*transcription_and_translation(global_par_rhob, x(2));

% Reaction: id = degradation_mRNA_B, name = degradation mRNA B
	reaction_degradation_mRNA_B=compartment_cell*global_par_deltar*x(4);

% Reaction: id = degradation_A, name = degradation A
	reaction_degradation_A=compartment_cell*global_par_deltaA*x(1);

% Reaction: id = translation_B, name = translation B
	reaction_translation_B=compartment_cell*transcription_and_translation(global_par_beta, x(4));

% Reaction: id = degradation_B, name = degradation B
	reaction_degradation_B=compartment_cell*global_par_deltaB*x(5);

% Reaction: id = formation_dimer, name = formation dimer
	reaction_formation_dimer=compartment_cell*global_par_gamma*x(1)*x(5);

% Reaction: id = degradation_dimer, name = degradation dimer
	reaction_degradation_dimer=compartment_cell*global_par_deltaAB*x(6);

	xdot=zeros(6,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_A_binds_gB) + ( 1.0 * reaction_gB_releases_A) + ( 1.0 * reaction_production_A) + (-1.0 * reaction_degradation_A) + (-1.0 * reaction_formation_dimer));
	
% Species:   id = AgB, name = AgB, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_A_binds_gB) + (-1.0 * reaction_gB_releases_A));
	
% Species:   id = gB, name = gB, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_A_binds_gB) + ( 1.0 * reaction_gB_releases_A));
	
% Species:   id = rB, name = rB, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_basal_transcription_B) + ( 1.0 * reaction_stim_transcription_B) + (-1.0 * reaction_degradation_mRNA_B));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_translation_B) + (-1.0 * reaction_degradation_B) + (-1.0 * reaction_formation_dimer));
	
% Species:   id = AB, name = AB, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_formation_dimer) + (-1.0 * reaction_degradation_dimer));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=transcription_and_translation(k,X), z=(k*X);end

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


