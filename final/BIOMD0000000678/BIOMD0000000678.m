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
% Model name = Tomida2003 - Calcium Oscillatory-induced translocation of nuclear factor of activated T cells
%
% is http://identifiers.org/biomodels.db/MODEL0912160005
% isDescribedBy http://identifiers.org/pubmed/12881417
% is http://identifiers.org/biomodels.db/BIOMD0000000678
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;


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

% Compartment: id = Jurkat_cell, name = Jurkat cell, constant
	compartment_Jurkat_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.359;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.147;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.06;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.035;
% Parameter:   id =  stim_frequency, name = stim_frequency
	global_par_stim_frequency=3.0;
% Parameter:   id =  dNFAT, name = dNFAT%
% Parameter:   id =  pNFAT, name = pNFAT%
% Parameter:   id =  tNFAT, name = tNFAT%
% Parameter:   id =  stim_duration, name = stim_duration
	global_par_stim_duration=1.0;
% Parameter:   id =  ModelValue_17, name = Initial for stim_duration
	global_par_ModelValue_17=1.0;
% Parameter:   id =  ModelValue_13, name = Initial for stim_frequency
	global_par_ModelValue_13=3.0;
% assignmentRule: variable = NFAT_transported
	x(3)=(1-x(1))-x(2);
% assignmentRule: variable = pNFAT
	global_par_pNFAT=100*x(1);
% assignmentRule: variable = tNFAT
	global_par_tNFAT=100*x(3);
% assignmentRule: variable = dNFAT
	global_par_dNFAT=100*x(2);
% assignmentRule: variable = stimulus
	x(4)=piecewise(1, (time-floor(time/global_par_ModelValue_13)*global_par_ModelValue_13) < global_par_ModelValue_17, 0);

% Reaction: id = Dephosphorylation, name = Dephosphorylation
	reaction_Dephosphorylation=compartment_Jurkat_cell*function_for_modified_reaction_1(x(1), global_par_k1, x(4));

% Reaction: id = Phosphorylation, name = Phosphorylation
	reaction_Phosphorylation=compartment_Jurkat_cell*global_par_k2*x(2);

% Reaction: id = Translocation, name = Translocation
	reaction_Translocation=compartment_Jurkat_cell*global_par_k3*x(2);

% Reaction: id = Nuclear_export, name = Nuclear_export
	reaction_Nuclear_export=compartment_Jurkat_cell*global_par_k4*x(3);

	xdot=zeros(4,1);
	
% Species:   id = NFAT_phosphorylated, name = NFAT_phosphorylated, affected by kineticLaw
	xdot(1) = (1/(compartment_Jurkat_cell))*((-1.0 * reaction_Dephosphorylation) + ( 1.0 * reaction_Phosphorylation) + ( 1.0 * reaction_Nuclear_export));
	
% Species:   id = NFAT_dephosphorylated, name = NFAT_dephosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_Jurkat_cell))*(( 1.0 * reaction_Dephosphorylation) + (-1.0 * reaction_Phosphorylation) + (-1.0 * reaction_Translocation));
	
% Species:   id = NFAT_transported, name = NFAT_transported, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = stimulus, name = stimulus, involved in a rule 	xdot(4) = x(4);
end

function z=function_for_modified_reaction_1(NFAT_phosphorylated,k1,stimulus), z=(k1*stimulus*NFAT_phosphorylated);end

function z=function_for_modified_reaction_0(k1,stimulus,substrate), z=(k1*stimulus*substrate);end

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


