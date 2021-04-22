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
% Model name = Locke2008_Circadian_Clock
%
% is http://identifiers.org/biomodels.db/MODEL9223733527
% is http://identifiers.org/biomodels.db/BIOMD0000000185
% isDescribedBy http://identifiers.org/pubmed/18312618
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 4.25;
	x0(2) = 3.25;
	x0(3) = 2.25;
	x0(4) = 2.5;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = compartment, name = Cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  F, name = F
% Parameter:   id =  v_1, name = v_1
	global_par_v_1=6.8355;
% Parameter:   id =  K1, name = K1
	global_par_K1=2.7266;
% Parameter:   id =  n, name = n
	global_par_n=5.6645;
% Parameter:   id =  v_2, name = v_2
	global_par_v_2=8.4297;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.291;
% Parameter:   id =  vc, name = vc
	global_par_vc=6.7924;
% Parameter:   id =  K, name = K
	global_par_K=1.0;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=4.8283;
% Parameter:   id =  L, name = L
	global_par_L=0.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.1177;
% Parameter:   id =  v_4, name = v_4
	global_par_v_4=1.0841;
% Parameter:   id =  K4, name = K4
	global_par_K4=8.1343;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.3352;
% Parameter:   id =  v_6, name = v_6
	global_par_v_6=4.6645;
% Parameter:   id =  K6, name = K6
	global_par_K6=9.9849;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.2282;
% Parameter:   id =  v_8, name = v_8
	global_par_v_8=3.5216;
% Parameter:   id =  K8, name = K8
	global_par_K8=7.4519;
% assignmentRule: variable = F
	global_par_F=1/2*(x(4)+x(8));

% Reaction: id = R1, name = Transcription
	reaction_R1=compartment_compartment*global_par_v_1*global_par_K1^global_par_n/(global_par_K1^global_par_n+x(3)^global_par_n);

% Reaction: id = R2, name = mRNA degradation
	reaction_R2=compartment_compartment*global_par_v_2*x(1)/(global_par_K2+x(1));

% Reaction: id = R3, name = Neuropeptide dependent transcription activation
	reaction_R3=compartment_compartment*global_par_vc*global_par_K*global_par_F/(global_par_Kc+global_par_K*global_par_F);

% Reaction: id = R4, name = Light dependent transcription activation
	reaction_R4=compartment_compartment*global_par_L;

% Reaction: id = R5, name = Translation
	reaction_R5=compartment_compartment*global_par_k3*x(1);

% Reaction: id = R6, name = Protein degradation
	reaction_R6=compartment_compartment*global_par_v_4*x(2)/(global_par_K4+x(2));

% Reaction: id = R7, name = Transcriptional repressor synthesis
	reaction_R7=compartment_compartment*global_par_k5*x(2);

% Reaction: id = R8, name = Transcriptional repressor degradation
	reaction_R8=compartment_compartment*global_par_v_6*x(3)/(global_par_K6+x(3));

% Reaction: id = R9, name = Neuropeptide synthesis
	reaction_R9=compartment_compartment*global_par_k7*x(1);

% Reaction: id = R10, name = Neuropeptide degradation
	reaction_R10=compartment_compartment*global_par_v_8*x(4)/(global_par_K8+x(4));

% Reaction: id = R11, name = Transcription
	reaction_R11=compartment_compartment*global_par_v_1*global_par_K1^global_par_n/(global_par_K1^global_par_n+x(7)^global_par_n);

% Reaction: id = R12, name = mRNA degradation
	reaction_R12=compartment_compartment*global_par_v_2*x(5)/(global_par_K2+x(5));

% Reaction: id = R13, name = Neuropeptide dependent transcription activation
	reaction_R13=compartment_compartment*global_par_vc*global_par_K*global_par_F/(global_par_Kc+global_par_K*global_par_F);

% Reaction: id = R14, name = Light dependent transcription activation
	reaction_R14=compartment_compartment*global_par_L;

% Reaction: id = R15, name = Translation
	reaction_R15=compartment_compartment*global_par_k3*x(5);

% Reaction: id = R16, name = Protein degradation
	reaction_R16=compartment_compartment*global_par_v_4*x(6)/(global_par_K4+x(6));

% Reaction: id = R17, name = Transcriptional repressor synthesis
	reaction_R17=compartment_compartment*global_par_k5*x(6);

% Reaction: id = R18, name = Transcriptional repressor degradation
	reaction_R18=compartment_compartment*global_par_v_6*x(7)/(global_par_K6+x(7));

% Reaction: id = R19, name = Neuropeptide synthesis
	reaction_R19=compartment_compartment*global_par_k7*x(5);

% Reaction: id = R20, name = Neuropeptide degradation
	reaction_R20=compartment_compartment*global_par_v_8*x(8)/(global_par_K8+x(8));

	xdot=zeros(8,1);
	
% Species:   id = X1, name = clock gene mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_R4));
	
% Species:   id = Y1, name = clock protein, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = Z1, name = Transcriptional repressor, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = V1, name = Neuropeptide, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = X2, name = clock gene mRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13) + ( 1.0 * reaction_R14));
	
% Species:   id = Y2, name = clock protein, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16));
	
% Species:   id = Z2, name = Transcriptional repressor, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R18));
	
% Species:   id = V2, name = Neuropeptide, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
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


