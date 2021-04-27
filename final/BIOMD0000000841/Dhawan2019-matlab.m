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
% Model name = Dhawan2019 - Endogenous miRNA sponges mediate the generation of oscillatory dynamics for a non-coding RNA network
%
% is http://identifiers.org/biomodels.db/MODEL1911010001
% is http://identifiers.org/biomodels.db/BIOMD0000000841
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha_C, name = alpha_C
	global_par_alpha_C=1.0;
% Parameter:   id =  delta_C, name = delta_C
	global_par_delta_C=0.01;
% Parameter:   id =  alpha_F, name = alpha_F
	global_par_alpha_F=1.0;
% Parameter:   id =  delta_F, name = delta_F
	global_par_delta_F=0.1;
% Parameter:   id =  alpha_M, name = alpha_M
	global_par_alpha_M=1.0;
% Parameter:   id =  delta_M, name = delta_M
	global_par_delta_M=1.0;
% Parameter:   id =  k_P, name = k_P
	global_par_k_P=10.0;
% Parameter:   id =  delta_P, name = delta_P
	global_par_delta_P=0.1;
% Parameter:   id =  k_CM, name = k_CM
	global_par_k_CM=10.0;
% Parameter:   id =  k_MF, name = k_MF
	global_par_k_MF=0.1;
% Parameter:   id =  beta_FM, name = beta_FM
	global_par_beta_FM=200.0;
% Parameter:   id =  gamma_FM, name = gamma_FM
	global_par_gamma_FM=100.0;
% Parameter:   id =  n, name = n
	global_par_n=8.0;
% Parameter:   id =  tau1, name = tau1
	global_par_tau1=0.5;
% Parameter:   id =  tau2, name = tau2
	global_par_tau2=0.5;

% Reaction: id = Sponge_Degradation, name = Sponge_Degradation
	reaction_Sponge_Degradation=compartment_compartment*global_par_delta_C*x(1);

% Reaction: id = miRNA_Degradation, name = miRNA_Degradation
	reaction_miRNA_Degradation=compartment_compartment*global_par_delta_M*x(2);

% Reaction: id = TF_mRNA_Degradation, name = TF_mRNA_Degradation
	reaction_TF_mRNA_Degradation=compartment_compartment*global_par_delta_F*x(3);

% Reaction: id = Sponge_Inhibition_miRNA, name = Sponge_Inhibition_miRNA
	reaction_Sponge_Inhibition_miRNA=compartment_compartment*global_par_k_CM*x(2)*x(1);

% Reaction: id = TF_mRNA_Inhibition_miRNA, name = TF_mRNA_Inhibition_miRNA
	reaction_TF_mRNA_Inhibition_miRNA=compartment_compartment*global_par_k_MF*x(2)*x(3);

% Reaction: id = miRNA_Activation_Transcription_Factor, name = miRNA_Activation_Transcription_Factor
	reaction_miRNA_Activation_Transcription_Factor=compartment_compartment*Function_for_miRNA_Activation_Transcription_Factor(global_par_beta_FM, global_par_gamma_FM, delay(x(4), global_par_tau1), global_par_n);

% Reaction: id = TF_Protein_Degradation, name = TF_Protein_Degradation
	reaction_TF_Protein_Degradation=compartment_compartment*global_par_delta_P*x(4);

% Reaction: id = TF_Protein_Translation, name = TF_Protein_Translation
	reaction_TF_Protein_Translation=compartment_compartment*Function_for_TF_Protein_Translation(global_par_k_P, delay(x(3), global_par_tau2));

	xdot=zeros(4,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Sponge_Production_Basal) + (-1.0 * reaction_Sponge_Degradation) + (-1.0 * reaction_Sponge_Inhibition_miRNA));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_miRNA_Production_Basal) + (-1.0 * reaction_miRNA_Degradation) + (-1.0 * reaction_Sponge_Inhibition_miRNA) + (-1.0 * reaction_TF_mRNA_Inhibition_miRNA) + ( 1.0 * reaction_miRNA_Activation_Transcription_Factor));
	
% Species:   id = F, name = F, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_TF_mRNA_Production_Basal) + (-1.0 * reaction_TF_mRNA_Degradation) + (-1.0 * reaction_TF_mRNA_Inhibition_miRNA));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_TF_Protein_Degradation) + ( 1.0 * reaction_TF_Protein_Translation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_miRNA_Activation_Transcription_Factor(beta_FM,gamma_FM,P,n), z=(beta_FM/((gamma_FM/P)^n+1));end

function z=Function_for_TF_Protein_Translation(k_P,F), z=(k_P*F);end

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


