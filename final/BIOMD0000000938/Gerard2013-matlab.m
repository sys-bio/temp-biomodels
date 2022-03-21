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
% Model name = Gerard2013 - Model 3 - Embryonic-type eukaryotic Cell Cycle regulation based on negative feedback between Cdk/cyclin and APC and competitive inhibition between Cdk/cyclin and securin for polyubiquitylation_1
%
% is http://identifiers.org/biomodels.db/MODEL1809050001
% is http://identifiers.org/biomodels.db/BIOMD0000000938
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.3;
	x0(2) = 0.0;
	x0(3) = 0.35;
	x0(4) = 1.0;


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

% Compartment: id = nuclear, name = nuclear, constant
	compartment_nuclear=1.0;
% Parameter:   id =  V_scdk, name = V_scdk
	global_par_V_scdk=0.06;
% Parameter:   id =  k_d1cdk, name = k_d1cdk
	global_par_k_d1cdk=0.01;
% Parameter:   id =  k_dcdk, name = k_dcdk
	global_par_k_dcdk=0.35;
% Parameter:   id =  K_dcdk, name = K_dcdk
	global_par_K_dcdk=0.01;
% Parameter:   id =  K_dsec, name = K_dsec
	global_par_K_dsec=0.001;
% Parameter:   id =  k_2APC, name = k_2APC
	global_par_k_2APC=0.3;
% Parameter:   id =  K_2APC, name = K_2APC
	global_par_K_2APC=0.01;
% Parameter:   id =  V_1APC, name = V_1APC
	global_par_V_1APC=0.15;
% Parameter:   id =  K_1APC, name = K_1APC
	global_par_K_1APC=0.01;
% Parameter:   id =  V_ssec, name = V_ssec
	global_par_V_ssec=0.1;
% Parameter:   id =  k_d1sec, name = k_d1sec
	global_par_k_d1sec=0.01;
% Parameter:   id =  k_dsec, name = k_dsec
	global_par_k_dsec=0.4;
% assignmentRule: variable = Anaphase_promoting_complex
	x(4)=const_species_Anaphase_promoting_complex_total-x(2);

% Reaction: id = Degradation_Cdk, name = Degradation Cdk
	reaction_Degradation_Cdk=compartment_nuclear*global_par_k_d1cdk*x(1);

% Reaction: id = Degradation_Cdk_mediated_by_APC_P, name = Degradation Cdk mediated by APC_P
	reaction_Degradation_Cdk_mediated_by_APC_P=compartment_nuclear*Function_degradation_by_modifier_1(x(2), x(1), global_par_K_dcdk, global_par_K_dsec, x(3), global_par_k_dcdk);

% Reaction: id = Phosphorylation_of_APC, name = Phosphorylation of APC
	reaction_Phosphorylation_of_APC=compartment_nuclear*Function_for_APC_phosphorylation_1(x(4), x(1), global_par_K_2APC, global_par_k_2APC);

% Reaction: id = Dephosphorylation_of_APC, name = Dephosphorylation of APC
	reaction_Dephosphorylation_of_APC=compartment_nuclear*Function_for_APC_dephosphorylation_1(x(2), global_par_K_1APC, global_par_V_1APC);

% Reaction: id = Degradation_of_Sec, name = Degradation of Sec
	reaction_Degradation_of_Sec=compartment_nuclear*global_par_k_d1sec*x(3);

% Reaction: id = Degradation_of_Sec_mediated_by_APC_P, name = Degradation of Sec mediated by APC_P
	reaction_Degradation_of_Sec_mediated_by_APC_P=compartment_nuclear*Function_for_Securin_degradation_mediated_by_APC_P_1(x(2), x(1), global_par_K_dcdk, global_par_K_dsec, x(3), global_par_k_dsec);

% Species:   id = Anaphase_promoting_complex_total, name = Anaphase_promoting_complex_total, constant	const_species_Anaphase_promoting_complex_total=1.0;

	xdot=zeros(4,1);
	
% Species:   id = Cdk, name = Cdk, affected by kineticLaw
	xdot(1) = (1/(compartment_nuclear))*(( 1.0 * reaction_Synthesis_Cdk) + (-1.0 * reaction_Degradation_Cdk) + (-1.0 * reaction_Degradation_Cdk_mediated_by_APC_P));
	
% Species:   id = Anaphase_promoting_complex_Phosphorylated, name = Anaphase_promoting_complex_Phosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*(( 1.0 * reaction_Phosphorylation_of_APC) + (-1.0 * reaction_Dephosphorylation_of_APC));
	
% Species:   id = Securin, name = Securin, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*(( 1.0 * reaction_Synthesis_of_Securin) + (-1.0 * reaction_Degradation_of_Sec) + (-1.0 * reaction_Degradation_of_Sec_mediated_by_APC_P));
	
% Species:   id = Anaphase_promoting_complex, name = Anaphase_promoting_complex, involved in a rule 	xdot(4) = x(4);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_APC_dephosphorylation_1(Anaphase_promoting_complex_Phosphorylated,K_1APC,V_1APC), z=(V_1APC*Anaphase_promoting_complex_Phosphorylated/(K_1APC+Anaphase_promoting_complex_Phosphorylated));end

function z=Function_for_APC_phosphorylation_1(Anaphase_promoting_complex,Cdk,K_2APC,k_2APC), z=(k_2APC*Cdk*Anaphase_promoting_complex/(K_2APC+Anaphase_promoting_complex));end

function z=Function_degradation_by_modifier_1(Anaphase_promoting_complex_Phosphorylated,Cdk,K_dcdk,K_dsec,Securin,k_dcdk), z=(k_dcdk*Anaphase_promoting_complex_Phosphorylated*Cdk/(K_dcdk*(1+Securin/K_dsec)+Cdk));end

function z=Function_for_Securin_degradation_mediated_by_APC_P_1(Anaphase_promoting_complex_Phosphorylated,Cdk,K_dcdk,K_dsec,Securin,k_dsec), z=(k_dsec*Anaphase_promoting_complex_Phosphorylated*Securin/(K_dsec*(1+Cdk/K_dcdk)+Securin));end

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


