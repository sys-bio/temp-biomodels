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
% Model name = Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA)
%
% is http://identifiers.org/biomodels.db/MODEL1610100001
% isDescribedBy http://identifiers.org/pubmed/29095952
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 2.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  kbinTF1miRgene, name = kbinTF1miRgene
	global_par_kbinTF1miRgene=0.005;
% Parameter:   id =  kdegMiR, name = kdegMiR
	global_par_kdegMiR=0.008;
% Parameter:   id =  kdegTF1, name = kdegTF1
	global_par_kdegTF1=0.005;
% Parameter:   id =  kdegTF1mRNA, name = kdegTF1mRNA
	global_par_kdegTF1mRNA=1.0E-4;
% Parameter:   id =  kdegTF1mRNAbyMiR, name = kdegTF1mRNAbyMiR
	global_par_kdegTF1mRNAbyMiR=0.001;
% Parameter:   id =  krelTF1miRgene, name = krelTF1miRgene
	global_par_krelTF1miRgene=5.0;
% Parameter:   id =  ksynMiR, name = ksynMiR
	global_par_ksynMiR=5.0;
% Parameter:   id =  ksynTF1, name = ksynTF1
	global_par_ksynTF1=0.05;
% Parameter:   id =  ksynTF1mRNA, name = ksynTF1mRNA
	global_par_ksynTF1mRNA=10.0;

% Reaction: id = miR_gene_TF1_binding
	reaction_miR_gene_TF1_binding=global_par_kbinTF1miRgene*x(2)*x(5);

% Reaction: id = miR_gene_TF1_release
	reaction_miR_gene_TF1_release=global_par_krelTF1miRgene*x(3);

% Reaction: id = miR_synthesis
	reaction_miR_synthesis=global_par_ksynMiR*x(3);

% Reaction: id = miR_degradation
	reaction_miR_degradation=global_par_kdegMiR*x(1);

% Reaction: id = TF1_transcription
	reaction_TF1_transcription=global_par_ksynTF1mRNA*x(4);

% Reaction: id = TF1_mRNA_degradation
	reaction_TF1_mRNA_degradation=global_par_kdegTF1mRNA*x(6);

% Reaction: id = TF1_mRNA_degradation_via_miR
	reaction_TF1_mRNA_degradation_via_miR=global_par_kdegTF1mRNAbyMiR*x(6)*x(1);

% Reaction: id = TF1_translation
	reaction_TF1_translation=global_par_ksynTF1*x(6);

% Reaction: id = TF1_degradation
	reaction_TF1_degradation=global_par_kdegTF1*x(5);

% Species:   id = Sink, name = Sink, constant	const_species_Sink=0.0;

%Event: id=ActivateSignal
	event_ActivateSignal=t > 3600;

	if(event_ActivateSignal) 
		x(4)=1;
	end

	xdot=zeros(6,1);
	
% Species:   id = miR, name = miR, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_miR_synthesis) + (-1.0 * reaction_miR_degradation) + (-1.0 * reaction_TF1_mRNA_degradation_via_miR) + ( 1.0 * reaction_TF1_mRNA_degradation_via_miR);
	
% Species:   id = miR_gene, name = miR_gene, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_miR_gene_TF1_binding) + ( 1.0 * reaction_miR_gene_TF1_release);
	
% Species:   id = miR_gene_TF1, name = miR_gene_TF1, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_miR_gene_TF1_binding) + (-1.0 * reaction_miR_gene_TF1_release) + (-1.0 * reaction_miR_synthesis) + ( 1.0 * reaction_miR_synthesis);
	
% Species:   id = Signal, name = Signal, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_TF1_transcription) + ( 1.0 * reaction_TF1_transcription);
	
% Species:   id = TF1, name = TF1, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_miR_gene_TF1_binding) + ( 1.0 * reaction_miR_gene_TF1_release) + ( 1.0 * reaction_TF1_translation) + (-1.0 * reaction_TF1_degradation);
	
% Species:   id = TF1_mRNA, name = TF1_mRNA, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_TF1_transcription) + (-1.0 * reaction_TF1_mRNA_degradation) + (-1.0 * reaction_TF1_mRNA_degradation_via_miR) + (-1.0 * reaction_TF1_translation) + ( 1.0 * reaction_TF1_translation);
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


