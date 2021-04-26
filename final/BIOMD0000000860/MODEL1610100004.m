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
% Model name = Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedforward Incoherent By MicroRNA)
%
% is http://identifiers.org/biomodels.db/MODEL1610100004
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

% Reaction: id = miR_synthesis
	reaction_miR_synthesis=global_par_ksynMiR*x(2);

% Reaction: id = miR_degradation
	reaction_miR_degradation=global_par_kdegMiR*x(1);

% Reaction: id = TF1target_transcription
	reaction_TF1target_transcription=global_par_ksynTF1targetmRNA*x(2);

% Reaction: id = TF1target_mRNA_degradation
	reaction_TF1target_mRNA_degradation=global_par_kdegTF1targetmRNA*x(3);

% Reaction: id = TF1target_mRNA_degradation_via_MiR
	reaction_TF1target_mRNA_degradation_via_MiR=global_par_kdegTF1targetmRNAbyMiR*x(3)*x(1);

% Species:   id = Sink, name = Sink, constant	const_species_Sink=0.0;

%Event: id=ActivateSignal
	event_ActivateSignal=t > 3600;

	if(event_ActivateSignal) 
		x(2)=500;
	end

	xdot=zeros(3,1);
	
% Species:   id = miR, name = miR, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_miR_synthesis) + (-1.0 * reaction_miR_degradation) + (-1.0 * reaction_TF1target_mRNA_degradation_via_MiR) + ( 1.0 * reaction_TF1target_mRNA_degradation_via_MiR);
	
% Species:   id = TF1, name = TF1, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_miR_synthesis) + ( 1.0 * reaction_miR_synthesis) + (-1.0 * reaction_TF1target_transcription) + ( 1.0 * reaction_TF1target_transcription);
	
% Species:   id = TF1target_mRNA, name = TF1target_mRNA, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_TF1target_transcription) + (-1.0 * reaction_TF1target_mRNA_degradation) + (-1.0 * reaction_TF1target_mRNA_degradation_via_MiR);
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


