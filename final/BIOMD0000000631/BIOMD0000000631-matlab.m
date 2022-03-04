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
% Model name = DeCaluwe2016 - Circadian Clock
%
% is http://identifiers.org/biomodels.db/MODEL1601130000
% is http://identifiers.org/biomodels.db/BIOMD0000000631
% isDescribedBy http://identifiers.org/pubmed/26904049
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 1.0;


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
% Parameter:   id =  v1, name = v1
	global_par_v1=4.58;
% Parameter:   id =  v1L, name = v1L
	global_par_v1L=3.0;
% Parameter:   id =  v2A, name = v2A
	global_par_v2A=1.27;
% Parameter:   id =  v2B, name = v2B
	global_par_v2B=1.48;
% Parameter:   id =  v3, name = v3
	global_par_v3=1.0;
% Parameter:   id =  v4, name = v4
	global_par_v4=1.47;
% Parameter:   id =  k1L, name = k1L
	global_par_k1L=0.53;
% Parameter:   id =  v2L, name = v2L
	global_par_v2L=5.0;
% Parameter:   id =  k1D, name = k1D
	global_par_k1D=0.21;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.35;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.56;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.57;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.76;
% Parameter:   id =  p1L, name = p1L
	global_par_p1L=0.42;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.01;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.64;
% Parameter:   id =  p4, name = p4
	global_par_p4=1.01;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.68;
% Parameter:   id =  d2D, name = d2D
	global_par_d2D=0.5;
% Parameter:   id =  d2L, name = d2L
	global_par_d2L=0.29;
% Parameter:   id =  d3D, name = d3D
	global_par_d3D=0.48;
% Parameter:   id =  d3L, name = d3L
	global_par_d3L=0.78;
% Parameter:   id =  d4D, name = d4D
	global_par_d4D=1.21;
% Parameter:   id =  d4L, name = d4L
	global_par_d4L=0.38;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.16;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.18;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.24;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.23;
% Parameter:   id =  K5, name = K5
	global_par_K5=0.3;
% Parameter:   id =  K6, name = K6
	global_par_K6=0.46;
% Parameter:   id =  K7, name = K7
	global_par_K7=2.0;
% Parameter:   id =  K8, name = K8
	global_par_K8=0.36;
% Parameter:   id =  K9, name = K9
	global_par_K9=1.9;
% Parameter:   id =  K10, name = K10
	global_par_K10=1.9;
% Parameter:   id =  v5, name = v5
	global_par_v5=0.1;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.14;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.62;
% Parameter:   id =  d5L, name = d5L
	global_par_d5L=4.0;
% Parameter:   id =  d5D, name = d5D
	global_par_d5D=0.52;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.01;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.12;
% Parameter:   id =  K11, name = K11
	global_par_K11=0.21;
% Parameter:   id =  K12, name = K12
	global_par_K12=0.56;
% Parameter:   id =  PP, name = Photoperiod
	global_par_PP=12.0;
% Parameter:   id =  T, name = Cycle length
	global_par_T=24.0;
% Parameter:   id =  L, name = Light
% Warning parameter L is not constant, it should be controlled by a Rule and/or events
	global_par_L=1.0;
% Parameter:   id =  D, name = Dark
% Warning parameter D is not constant, it should be controlled by a Rule and/or events
	global_par_D=0.0;

% Reaction: id = CL_transcription
	reaction_CL_transcription=global_par_v1/(1+(x(4)/global_par_K1)^2+(x(6)/global_par_K2)^2);

% Reaction: id = CL_light_transcription
	reaction_CL_light_transcription=global_par_v1L*global_par_L*x(12)/(1+(x(4)/global_par_K1)^2+(x(6)/global_par_K2)^2);

% Reaction: id = CLm_light_degradation
	reaction_CLm_light_degradation=global_par_k1L*global_par_L*x(1);

% Reaction: id = CLm_dark_degradation
	reaction_CLm_dark_degradation=global_par_k1D*global_par_D*x(1);

% Reaction: id = CL_translation
	reaction_CL_translation=global_par_p1*x(1);

% Reaction: id = CL_light_translation
	reaction_CL_light_translation=global_par_p1L*global_par_L*x(1);

% Reaction: id = CLp_degradation
	reaction_CLp_degradation=global_par_d1*x(2);

% Reaction: id = P97_light_transcription
	reaction_P97_light_transcription=global_par_v2L*global_par_L*x(12)/(1+(x(6)/global_par_K4)^2+(x(8)/global_par_K5)^2);

% Reaction: id = P97_transcription
	reaction_P97_transcription=global_par_v2A/(1+(x(6)/global_par_K4)^2+(x(8)/global_par_K5)^2);

% Reaction: id = P97_CL_transcription
	reaction_P97_CL_transcription=global_par_v2B*x(2)^2/(global_par_K3^2+x(2)^2)/(1+(x(6)/global_par_K4)^2+(x(8)/global_par_K5)^2);

% Reaction: id = P97m_degradation
	reaction_P97m_degradation=global_par_k2*x(3);

% Reaction: id = P97_translation
	reaction_P97_translation=global_par_p2*x(3);

% Reaction: id = P97_dark_degradation
	reaction_P97_dark_degradation=global_par_d2D*global_par_D*x(4);

% Reaction: id = P97_light_degradation
	reaction_P97_light_degradation=global_par_d2L*global_par_L*x(4);

% Reaction: id = P51_transcription
	reaction_P51_transcription=global_par_v3/(1+(x(2)/global_par_K6)^2+(x(6)/global_par_K7)^2);

% Reaction: id = P51m_degradation
	reaction_P51m_degradation=global_par_k3*x(5);

% Reaction: id = P51_translation
	reaction_P51_translation=global_par_p3*x(5);

% Reaction: id = P51_dark_degradation
	reaction_P51_dark_degradation=global_par_d3D*global_par_D*x(6);

% Reaction: id = P51_light_degradation
	reaction_P51_light_degradation=global_par_d3L*global_par_L*x(6);

% Reaction: id = EL_light_transcription
	reaction_EL_light_transcription=global_par_L*global_par_v4/(1+(x(2)/global_par_K8)^2+(x(6)/global_par_K9)^2+(x(8)/global_par_K10)^2);

% Reaction: id = ELm_degradation
	reaction_ELm_degradation=global_par_k4*x(7);

% Reaction: id = EL_translation
	reaction_EL_translation=global_par_p4*x(7);

% Reaction: id = EL_dark_degradation
	reaction_EL_dark_degradation=global_par_d4D*global_par_D*x(8);

% Reaction: id = EL_light_degradation
	reaction_EL_light_degradation=global_par_d4L*global_par_L*x(8);

% Reaction: id = P_dark_accumulation
	reaction_P_dark_accumulation=0.3*(1-x(12))*global_par_D;

% Reaction: id = P_light_degradation
	reaction_P_light_degradation=x(12)*global_par_L;

% Reaction: id = PIF_transcription
	reaction_PIF_transcription=global_par_v5/(1+(x(8)/global_par_K11)^2);

% Reaction: id = PIFm_degradation
	reaction_PIFm_degradation=global_par_k5*x(9);

% Reaction: id = PIF_translation
	reaction_PIF_translation=global_par_p5*x(9);

% Reaction: id = PIF_dark_degradation
	reaction_PIF_dark_degradation=global_par_d5D*global_par_D*x(10);

% Reaction: id = PIF_light_degradation
	reaction_PIF_light_degradation=global_par_d5L*global_par_L*x(10);

% Reaction: id = basal_growth
	reaction_basal_growth=global_par_g1;

% Reaction: id = PIF_induced_growth
	reaction_PIF_induced_growth=global_par_g2*x(10)^2/(global_par_K12^2+x(10)^2);

	xdot=zeros(12,1);
	
% Species:   id = CL_m, name = CCA1/LHY mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_CL_transcription) + ( 1.0 * reaction_CL_light_transcription) + (-1.0 * reaction_CLm_light_degradation) + (-1.0 * reaction_CLm_dark_degradation));
	
% Species:   id = CL_p, name = CCA1/LHY protein, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_CL_translation) + ( 1.0 * reaction_CL_light_translation) + (-1.0 * reaction_CLp_degradation));
	
% Species:   id = P97_m, name = PRR9/PRR7 mRNA, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_P97_light_transcription) + ( 1.0 * reaction_P97_transcription) + ( 1.0 * reaction_P97_CL_transcription) + (-1.0 * reaction_P97m_degradation));
	
% Species:   id = P97_p, name = PRR9/PRR7 protein, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_P97_translation) + (-1.0 * reaction_P97_dark_degradation) + (-1.0 * reaction_P97_light_degradation));
	
% Species:   id = P51_m, name = PRR5/TOC1 mRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_P51_transcription) + (-1.0 * reaction_P51m_degradation));
	
% Species:   id = P51_p, name = PRR5/TOC1 protein, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_P51_translation) + (-1.0 * reaction_P51_dark_degradation) + (-1.0 * reaction_P51_light_degradation));
	
% Species:   id = EL_m, name = ELF4/LUX mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_EL_light_transcription) + (-1.0 * reaction_ELm_degradation));
	
% Species:   id = EL_p, name = ELF4/LUX protein, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_EL_translation) + (-1.0 * reaction_EL_dark_degradation) + (-1.0 * reaction_EL_light_degradation));
	
% Species:   id = PIF_m, name = PIF4/PIF5 mRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_PIF_transcription) + (-1.0 * reaction_PIFm_degradation));
	
% Species:   id = PIF_p, name = PIF4/PIF5 protein, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_PIF_translation) + (-1.0 * reaction_PIF_dark_degradation) + (-1.0 * reaction_PIF_light_degradation));
	
% Species:   id = hypocotyl, name = Hypocotyl length, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_basal_growth) + ( 1.0 * reaction_PIF_induced_growth));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_P_dark_accumulation) + (-1.0 * reaction_P_light_degradation));
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


