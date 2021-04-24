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
% Model name = Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedforward Incoherent By MicroRNA)_1
%
% isInstanceOf http://identifiers.org/taxonomy/9606
% isInstanceOf http://identifiers.org/biomodels.db/MODEL1610100004
% isInstanceOf http://identifiers.org/ncit/C25966
% isInstanceOf http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/29095952
% is http://identifiers.org/biomodels.db/MODEL1610100004
% is http://identifiers.org/biomodels.db/BIOMD0000000860
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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
% Parameter:   id =  kdegMiR, name = kdegMiR
	global_par_kdegMiR=4.0E-4;
% Parameter:   id =  kdegTF1targetmRNA, name = kdegTF1targetmRNA
	global_par_kdegTF1targetmRNA=0.001;
% Parameter:   id =  kdegTF1targetmRNAbyMiR, name = kdegTF1targetmRNAbyMiR
	global_par_kdegTF1targetmRNAbyMiR=5.0E-5;
% Parameter:   id =  ksynTF1targetmRNA, name = ksynTF1targetmRNA
	global_par_ksynTF1targetmRNA=0.004;
% Parameter:   id =  ksynMiR, name = ksynMiR
	global_par_ksynMiR=2.0E-4;

% Reaction: id = miR_synthesis, name = miR_synthesis
	reaction_miR_synthesis=compartment_cell*Function_for_miR_synthesis(x(2), compartment_cell, global_par_ksynMiR);

% Reaction: id = miR_degradation, name = miR_degradation
	reaction_miR_degradation=compartment_cell*Function_for_miR_degradation(compartment_cell, global_par_kdegMiR, x(1));

% Reaction: id = TF1target_transcription, name = TF1target_transcription
	reaction_TF1target_transcription=compartment_cell*Function_for_TF1target_transcription(x(2), compartment_cell, global_par_ksynTF1targetmRNA);

% Reaction: id = TF1target_mRNA_degradation, name = TF1target_mRNA_degradation
	reaction_TF1target_mRNA_degradation=compartment_cell*Function_for_TF1target_mRNA_degradation(x(3), compartment_cell, global_par_kdegTF1targetmRNA);

% Reaction: id = TF1target_mRNA_degradation_via_MiR, name = TF1target_mRNA_degradation_via_MiR
	reaction_TF1target_mRNA_degradation_via_MiR=compartment_cell*Function_for_TF1target_mRNA_degradation_via_MiR(x(3), compartment_cell, global_par_kdegTF1targetmRNAbyMiR, x(1));

% Species:   id = Sink, name = Sink, constant	const_species_Sink=0.0;

%Event: id=ActivateSignal
	event_ActivateSignal=time > 3600;

	if(event_ActivateSignal) 
		x(2)=500/compartment_cell;
	end

	xdot=zeros(3,1);
	
% Species:   id = miR, name = miR, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_miR_synthesis) + (-1.0 * reaction_miR_degradation) + (-1.0 * reaction_TF1target_mRNA_degradation_via_MiR) + ( 1.0 * reaction_TF1target_mRNA_degradation_via_MiR));
	
% Species:   id = TF1, name = TF1, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_miR_synthesis) + ( 1.0 * reaction_miR_synthesis) + (-1.0 * reaction_TF1target_transcription) + ( 1.0 * reaction_TF1target_transcription));
	
% Species:   id = TF1target_mRNA, name = TF1target_mRNA, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_TF1target_transcription) + (-1.0 * reaction_TF1target_mRNA_degradation) + (-1.0 * reaction_TF1target_mRNA_degradation_via_MiR));
end

function z=Function_for_miR_synthesis(TF1,cell,ksynMiR), z=(ksynMiR*TF1*cell/cell);end

function z=Function_for_miR_degradation(cell,kdegMiR,miR), z=(kdegMiR*miR*cell/cell);end

function z=Function_for_TF1target_transcription(TF1,cell,ksynTF1targetmRNA), z=(ksynTF1targetmRNA*TF1*cell/cell);end

function z=Function_for_TF1target_mRNA_degradation(TF1target_mRNA,cell,kdegTF1targetmRNA), z=(kdegTF1targetmRNA*TF1target_mRNA*cell/cell);end

function z=Function_for_TF1target_mRNA_degradation_via_MiR(TF1target_mRNA,cell,kdegTF1targetmRNAbyMiR,miR), z=(kdegTF1targetmRNAbyMiR*TF1target_mRNA*cell*miR*cell/cell);end

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


