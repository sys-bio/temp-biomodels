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
% Model name = Boada2016 - Incoherent type 1 feed-forward loop (I1-FFL)
%
% is http://identifiers.org/biomodels.db/MODEL1511290000
% is http://identifiers.org/biomodels.db/BIOMD0000000696
% isDescribedBy http://identifiers.org/pubmed/26968941
% is http://identifiers.org/biomodels.db/MODEL1511290000
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(1) = 12.3973509933775;
	x0(2) = 28336.8022705771;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 9000.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Compartment: id = Extracellular, name = Extracellular, constant
	compartment_Extracellular=1.0;
% Parameter:   id =  k_mA_C_gA, name = k_mA*C_gA
	global_par_k_mA_C_gA=104.0;
% Parameter:   id =  k_mB_C_gB, name = k_mB*C_gB
	global_par_k_mB_C_gB=1.0;
% Parameter:   id =  k_mC_C_gC, name = k_mC*C_gC
	global_par_k_mC_C_gC=1.0;
% Parameter:   id =  d_mA, name = d_mA
	global_par_d_mA=0.3624;
% Parameter:   id =  d_mB, name = d_mB
	global_par_d_mB=0.3624;
% Parameter:   id =  d_mC, name = d_mC
	global_par_d_mC=0.3624;
% Parameter:   id =  k_pA, name = k_pA
	global_par_k_pA=80.0;
% Parameter:   id =  k_pB, name = k_pB
	global_par_k_pB=1.0;
% Parameter:   id =  k_pC, name = k_pC
	global_par_k_pC=11.42;
% Parameter:   id =  d_A, name = d_A
	global_par_d_A=0.035;
% Parameter:   id =  d_B, name = d_B
	global_par_d_B=0.016;
% Parameter:   id =  d_C, name = d_C
	global_par_d_C=0.2784;
% Parameter:   id =  k_d, name = k_d
	global_par_k_d=0.06;
% Parameter:   id =  k_2f, name = k_2f
	global_par_k_2f=0.1;
% Parameter:   id =  k_3f, name = k_3f
	global_par_k_3f=0.1;
% Parameter:   id =  k_2r, name = k_2r
	global_par_k_2r=20.0;
% Parameter:   id =  k_3r, name = k_3r
	global_par_k_3r=1.0;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=107.4;
% Parameter:   id =  gamma_2, name = gamma_2
	global_par_gamma_2=0.2;
% Parameter:   id =  gamma_3, name = gamma_3
	global_par_gamma_3=0.01;
% Parameter:   id =  gamma_4, name = gamma_4
	global_par_gamma_4=1.15;
% Parameter:   id =  gamma_5, name = gamma_5
	global_par_gamma_5=8.56;
% Parameter:   id =  Beta_1, name = Beta_1
	global_par_Beta_1=0.05;
% Parameter:   id =  Beta_2, name = Beta_2
	global_par_Beta_2=0.05;
% Parameter:   id =  d_I, name = d_I
	global_par_d_I=0.0164;
% Parameter:   id =  d_Ie, name = d_Ie
	global_par_d_Ie=0.0164;
% Parameter:   id =  d_AI, name = d_AI
	global_par_d_AI=0.035;
% Parameter:   id =  d_AI2, name = d_AI2
	global_par_d_AI2=0.035;
% Parameter:   id =  M, name = M
% Parameter:   id =  K_cells, name = K_cells
% Parameter:   id =  V_cell, name = V_cell
	global_par_V_cell=1.0E-15;
% Parameter:   id =  N_cells, name = N_cells
	global_par_N_cells=2.4E8;
% Parameter:   id =  V_medium, name = V_medium
	global_par_V_medium=180.0;
% Parameter:   id =  sum_abs_dx8, name = sum(abs_dx8)
% Parameter:   id =  J1, name = J1
% Parameter:   id =  J2, name = J2
% Parameter:   id =  Sensitivity, name = Sensitivity
% Parameter:   id =  Precision, name = Precision
% Parameter:   id =  P_theta, name = P_theta
% Parameter:   id =  Metabolite_16, name = Initial for x8
	global_par_Metabolite_16=0.0;
% Parameter:   id =  Metabolite_17, name = Initial for x9
	global_par_Metabolite_17=9000.0;
% assignmentRule: variable = J1
	global_par_J1=2*abs(x(9)-global_par_Metabolite_17)/global_par_sum_abs_dx8;
% assignmentRule: variable = Sensitivity
	global_par_Sensitivity=1/global_par_J1;
% assignmentRule: variable = J2
	global_par_J2=(x(8)-global_par_Metabolite_16)/(x(9)-global_par_Metabolite_17);
% assignmentRule: variable = Precision
	global_par_Precision=1/global_par_J2;
% assignmentRule: variable = M
	global_par_M=(-(global_par_d_AI+global_par_k_2r)/(4*global_par_k_3f))+1/(4*global_par_k_3f)*((global_par_d_AI+global_par_k_2r)^2+8*global_par_k_3f*(global_par_k_2f*x(2)*x(3)+2*global_par_k_3r*x(4)))^(0.5);
% assignmentRule: variable = K_cells
	global_par_K_cells=global_par_V_cell*global_par_N_cells/global_par_V_medium;
% rateRule: variable = sum_abs_dx8
global_par_sum_abs_dx8 = x(10);
% rateRule: variable = P_theta
global_par_P_theta = x(11);

% Reaction: id = r002___A_translation, name = r002 - A_translation
	reaction_r002___A_translation=compartment_Cell*global_par_k_pA*x(1);

% Reaction: id = r003___mA_degradation, name = r003 - mA_degradation
	reaction_r003___mA_degradation=compartment_Cell*global_par_d_mA*x(1);

% Reaction: id = r004___A_degradation, name = r004 - A_degradation
	reaction_r004___A_degradation=compartment_Cell*global_par_d_A*x(2);

% Reaction: id = r005___AI2_dim_1, name = r005 - AI2_dim_1
	reaction_r005___AI2_dim_1=compartment_Cell*global_par_k_2f*x(2)*x(3);

% Reaction: id = r006a___I_transport, name = r006a - I_transport
	reaction_r006a___I_transport=compartment_Cell*global_par_k_d*x(3);

% Reaction: id = r007___I_degradation, name = r007 - I_degradation
	reaction_r007___I_degradation=compartment_Cell*global_par_d_I*x(3);

% Reaction: id = r008___Ie_degradation, name = r008 - Ie_degradation
	reaction_r008___Ie_degradation=compartment_Extracellular*global_par_d_Ie*x(9);

% Reaction: id = r009___AI2_degradation, name = r009 - AI2_degradation
	reaction_r009___AI2_degradation=compartment_Cell*global_par_d_AI2*x(4);

% Reaction: id = r010___mB_transcription, name = r010 - mB_transcription
	reaction_r010___mB_transcription=compartment_Cell*function_for_r010___x5_transcription(global_par_k_mB_C_gB, x(4), global_par_gamma_1);

% Reaction: id = r011___B_translation, name = r011 - B_translation
	reaction_r011___B_translation=compartment_Cell*global_par_k_pB*x(5);

% Reaction: id = r012___B_degradation, name = r012 - B_degradation
	reaction_r012___B_degradation=compartment_Cell*global_par_d_B*x(6);

% Reaction: id = r013___mB_degradation, name = r013 - mB_degradation
	reaction_r013___mB_degradation=compartment_Cell*global_par_d_mB*x(5);

% Reaction: id = r014___mC_transcription, name = r014 - mC_transcription
	reaction_r014___mC_transcription=compartment_Cell*function_for_r014___C_translation(global_par_k_mC_C_gC, x(4), global_par_Beta_1, global_par_gamma_4, x(6), global_par_Beta_2, global_par_gamma_5, global_par_gamma_2, global_par_gamma_3);

% Reaction: id = r015___C_translation, name = r015 - C_translation
	reaction_r015___C_translation=compartment_Cell*global_par_k_pC*x(7);

% Reaction: id = r016___C_degradation, name = r016 - C_degradation
	reaction_r016___C_degradation=compartment_Cell*global_par_d_C*x(8);

% Reaction: id = r017___mC_degradation, name = r017 - mC_degradation
	reaction_r017___mC_degradation=compartment_Cell*global_par_d_mC*x(7);

% Reaction: id = r018___AI2_dim_2, name = r018 - AI2_dim_2
	reaction_r018___AI2_dim_2=compartment_Cell*global_par_k_3r*x(4);

% Reaction: id = r019___AI2_dim_3, name = r019 - AI2_dim_3
	reaction_r019___AI2_dim_3=compartment_Cell*function_for_r019___AI2_dim_3(global_par_k_2r, global_par_M);

% Reaction: id = r020___AI2_dim_4, name = r020 - AI2_dim_4
	reaction_r020___AI2_dim_4=compartment_Cell*function_for_r020___AI2_dim_4(global_par_k_3f, global_par_M);

% Reaction: id = r006b___I_transport, name = r006b - I_transport
	reaction_r006b___I_transport=global_par_k_d*x(9);

% Reaction: id = r006c___I_transport, name = r006c - I_transport
	reaction_r006c___I_transport=compartment_Extracellular*function_for_r006c(global_par_K_cells, global_par_k_d, x(9));

% Reaction: id = r006d___I_transport, name = r006d - I_transport
	reaction_r006d___I_transport=function_for_r006d(global_par_K_cells, global_par_k_d, x(3));

	xdot=zeros(11,1);
	% rateRule: variable = sum_abs_dx8
	xdot(10) = abs(rateOf(x(8)));
	% rateRule: variable = P_theta
	xdot(11) = abs(rateOf(x(6)));
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_r001___mA_transcription) + (-1.0 * reaction_r002___A_translation) + ( 1.0 * reaction_r002___A_translation) + (-1.0 * reaction_r003___mA_degradation));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_r002___A_translation) + (-1.0 * reaction_r004___A_degradation) + (-1.0 * reaction_r005___AI2_dim_1) + ( 1.0 * reaction_r019___AI2_dim_3));
	
% Species:   id = x3, name = x3, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*((-1.0 * reaction_r005___AI2_dim_1) + (-1.0 * reaction_r006a___I_transport) + (-1.0 * reaction_r007___I_degradation) + ( 1.0 * reaction_r019___AI2_dim_3) + ( 1.0 * reaction_r006b___I_transport));
	
% Species:   id = x4, name = x4, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_r009___AI2_degradation) + (-1.0 * reaction_r018___AI2_dim_2) + ( 1.0 * reaction_r020___AI2_dim_4));
	
% Species:   id = x5, name = x5, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_r010___mB_transcription) + (-1.0 * reaction_r011___B_translation) + ( 1.0 * reaction_r011___B_translation) + (-1.0 * reaction_r013___mB_degradation));
	
% Species:   id = x6, name = x6, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_r011___B_translation) + (-1.0 * reaction_r012___B_degradation));
	
% Species:   id = x7, name = x7, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_r014___mC_transcription) + (-1.0 * reaction_r015___C_translation) + ( 1.0 * reaction_r015___C_translation) + (-1.0 * reaction_r017___mC_degradation));
	
% Species:   id = x8, name = x8, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_r015___C_translation) + (-1.0 * reaction_r016___C_degradation));
	
% Species:   id = x9, name = x9, affected by kineticLaw
	xdot(9) = (1/(compartment_Extracellular))*((-1.0 * reaction_r008___Ie_degradation) + (-1.0 * reaction_r006b___I_transport) + ( 1.0 * reaction_r006b___I_transport) + (-1.0 * reaction_r006c___I_transport) + ( 1.0 * reaction_r006d___I_transport));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_r014___C_translation(KmCCgC,x4,Beta1,gamma4,x6,Beta2,gamma5,gamma2,gamma3), z=(KmCCgC*(x4+Beta1*gamma4*x6+Beta2*gamma5*x4*x6)/(gamma2+gamma3*x4+gamma4*x6+gamma5*x4*x6));end

function z=function_for_r020___AI2_dim_4(k3,M), z=(k3*M*M);end

function z=function_for_r019___AI2_dim_3(k_2r,M), z=(k_2r*M);end

function z=function_for_r006d(Kcells,kd,x3), z=(Kcells*kd*x3);end

function z=function_for_r010___x5_transcription(K_mbC_gB,x4,gamma1), z=(K_mbC_gB*x4/(gamma1+x4));end

function z=function_for_r006c(Kcells,kd,x9), z=(Kcells*kd*x9);end

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


