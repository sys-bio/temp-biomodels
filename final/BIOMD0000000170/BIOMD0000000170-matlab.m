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
% Model name = Weimann2004_CircadianOscillator
%
% is http://identifiers.org/biomodels.db/MODEL8378813456
% is http://identifiers.org/biomodels.db/BIOMD0000000170
% isDescribedBy http://identifiers.org/pubmed/15347590
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.2;
	x0(2) = 0.0;
	x0(3) = 1.1;
	x0(4) = 0.8;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.05;


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

% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  trans_per2_cry, name = trans_per2_cry
% Parameter:   id =  v1b, name = v1b
	global_par_v1b=9.0;
% Parameter:   id =  c, name = c
	global_par_c=0.01;
% Parameter:   id =  k1b, name = k1b
	global_par_k1b=1.0;
% Parameter:   id =  k1i, name = k1i
	global_par_k1i=0.56;
% Parameter:   id =  hill_coeff, name = hill_coeff
	global_par_hill_coeff=8.0;
% Parameter:   id =  trans_Bmal1, name = trans_Bmal1
% Parameter:   id =  v4b, name = v4b
	global_par_v4b=3.6;
% Parameter:   id =  r, name = r
	global_par_r=3.0;
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=2.16;
% Parameter:   id =  y5_y6_y7, name = y5_y6_y7
% Parameter:   id =  k1d, name = k1d
	global_par_k1d=0.12;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=0.3;
% Parameter:   id =  q, name = q
	global_par_q=2.0;
% Parameter:   id =  k2d, name = k2d
	global_par_k2d=0.05;
% Parameter:   id =  k2t, name = k2t
	global_par_k2t=0.24;
% Parameter:   id =  k3t, name = k3t
	global_par_k3t=0.02;
% Parameter:   id =  k3d, name = k3d
	global_par_k3d=0.12;
% Parameter:   id =  k4d, name = k4d
	global_par_k4d=0.75;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=0.24;
% Parameter:   id =  k5d, name = k5d
	global_par_k5d=0.06;
% Parameter:   id =  k5t, name = k5t
	global_par_k5t=0.45;
% Parameter:   id =  k6t, name = k6t
	global_par_k6t=0.06;
% Parameter:   id =  k6d, name = k6d
	global_par_k6d=0.12;
% Parameter:   id =  k6a, name = k6a
	global_par_k6a=0.09;
% Parameter:   id =  k7a, name = k7a
	global_par_k7a=0.003;
% Parameter:   id =  k7d, name = k7d
	global_par_k7d=0.09;
% assignmentRule: variable = trans_per2_cry
	global_par_trans_per2_cry=global_par_v1b*(x(7)+global_par_c)/(global_par_k1b*(1+(x(3)/global_par_k1i)^global_par_hill_coeff)+x(7)+global_par_c);
% assignmentRule: variable = trans_Bmal1
	global_par_trans_Bmal1=global_par_v4b*x(3)^global_par_r/(global_par_k4b^global_par_r+x(3)^global_par_r);
% assignmentRule: variable = y5_y6_y7
	global_par_y5_y6_y7=x(5)+x(6)+x(7);

% Reaction: id = per2_cry_transcription, name = per2_cry_transcription
	reaction_per2_cry_transcription=compartment_Cytoplasm*global_par_trans_per2_cry;

% Reaction: id = per2_cry_mRNA_degradation, name = per2_cry_mRNA_degradation
	reaction_per2_cry_mRNA_degradation=compartment_Cytoplasm*global_par_k1d*x(1);

% Reaction: id = per2_cry_complex_formation, name = per2_cry_complex_formation
	reaction_per2_cry_complex_formation=compartment_Cytoplasm*global_par_k2b*x(1)^global_par_q;

% Reaction: id = cytoplasmic_per2_cry_complex_degradation, name = cytoplasmic_per2_cry_complex_degradation
	reaction_cytoplasmic_per2_cry_complex_degradation=compartment_Cytoplasm*global_par_k2d*x(2);

% Reaction: id = per2_cry_nuclear_import, name = per2_cry_nuclear_import
	reaction_per2_cry_nuclear_import=compartment_Cytoplasm*global_par_k2t*x(2);

% Reaction: id = per2_cry_nuclear_export, name = per2_cry_nuclear_export
	reaction_per2_cry_nuclear_export=compartment_Nucleus*global_par_k3t*x(3);

% Reaction: id = nuclear_per2_cry_complex_degradation, name = nuclear_per2_cry_complex_degradation
	reaction_nuclear_per2_cry_complex_degradation=compartment_Nucleus*global_par_k3d*x(3);

% Reaction: id = Bmal1_transcription, name = Bmal1_transcription
	reaction_Bmal1_transcription=compartment_Cytoplasm*global_par_trans_Bmal1;

% Reaction: id = Bmal1_mRNA_degradation, name = Bmal1_mRNA_degradation
	reaction_Bmal1_mRNA_degradation=compartment_Cytoplasm*global_par_k4d*x(4);

% Reaction: id = BMAL1_translation, name = BMAL1_translation
	reaction_BMAL1_translation=compartment_Cytoplasm*global_par_k5b*x(4);

% Reaction: id = cytoplasmic_BMAL1_degradation, name = cytoplasmic_BMAL1_degradation
	reaction_cytoplasmic_BMAL1_degradation=compartment_Cytoplasm*global_par_k5d*x(5);

% Reaction: id = BMAL1_nuclear_import, name = BMAL1_nuclear_import
	reaction_BMAL1_nuclear_import=compartment_Cytoplasm*global_par_k5t*x(5);

% Reaction: id = BMAL1_nuclear_export, name = BMAL1_nuclear_export
	reaction_BMAL1_nuclear_export=compartment_Nucleus*global_par_k6t*x(6);

% Reaction: id = nuclear_BMAL1_degradation, name = nuclear_BMAL1_degradation
	reaction_nuclear_BMAL1_degradation=compartment_Nucleus*global_par_k6d*x(6);

% Reaction: id = BMAL1_activation, name = BMAL1_activation
	reaction_BMAL1_activation=compartment_Nucleus*global_par_k6a*x(6);

% Reaction: id = BMAL1_deactivation, name = BMAL1_deactivation
	reaction_BMAL1_deactivation=compartment_Nucleus*global_par_k7a*x(7);

% Reaction: id = Active_BMAL1_degradation, name = Active_BMAL1_degradation
	reaction_Active_BMAL1_degradation=compartment_Nucleus*global_par_k7d*x(7);

	xdot=zeros(7,1);
	
% Species:   id = y1, name = Per2 or Cry mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_per2_cry_transcription) + (-1.0 * reaction_per2_cry_mRNA_degradation));
	
% Species:   id = y2, name = PER2_CRY_complex_cytoplasm, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_per2_cry_complex_formation) + (-1.0 * reaction_cytoplasmic_per2_cry_complex_degradation) + (-1.0 * reaction_per2_cry_nuclear_import) + ( 1.0 * reaction_per2_cry_nuclear_export));
	
% Species:   id = y3, name = PER2_CRY_complex_nucleus, affected by kineticLaw
	xdot(3) = (1/(compartment_Nucleus))*(( 1.0 * reaction_per2_cry_nuclear_import) + (-1.0 * reaction_per2_cry_nuclear_export) + (-1.0 * reaction_nuclear_per2_cry_complex_degradation));
	
% Species:   id = y4, name = Bmal1 mRNA, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_Bmal1_transcription) + (-1.0 * reaction_Bmal1_mRNA_degradation));
	
% Species:   id = y5, name = BMAL1_cytoplasm, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_BMAL1_translation) + (-1.0 * reaction_cytoplasmic_BMAL1_degradation) + (-1.0 * reaction_BMAL1_nuclear_import) + ( 1.0 * reaction_BMAL1_nuclear_export));
	
% Species:   id = y6, name = BMAL1_nucleus, affected by kineticLaw
	xdot(6) = (1/(compartment_Nucleus))*(( 1.0 * reaction_BMAL1_nuclear_import) + (-1.0 * reaction_BMAL1_nuclear_export) + (-1.0 * reaction_nuclear_BMAL1_degradation) + (-1.0 * reaction_BMAL1_activation) + ( 1.0 * reaction_BMAL1_deactivation));
	
% Species:   id = y7, name = Active BMAL1, affected by kineticLaw
	xdot(7) = (1/(compartment_Nucleus))*(( 1.0 * reaction_BMAL1_activation) + (-1.0 * reaction_BMAL1_deactivation) + (-1.0 * reaction_Active_BMAL1_degradation));
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


