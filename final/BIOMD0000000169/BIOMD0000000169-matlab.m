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
% Model name = Aguda1999_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL3897395081
% is http://identifiers.org/biomodels.db/BIOMD0000000169
% isDescribedBy http://identifiers.org/pubmed/10619492
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 1.95;
	x0(2) = 0.0;
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(5) = 0.0;
	x0(6) = 0.05;
	x0(7) = 0.0;
	x0(8) = 15.0;
	x0(9) = 1.0;
	x0(10) = 5.0;
	x0(11) = 0.0;


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

% Compartment: id = cell_1, name = cell, constant
	compartment_cell_1=1.0;
% Parameter:   id =  k1p_1, name = k1p
	global_par_k1p_1=0.5;
% Parameter:   id =  k1pp_1, name = k1pp
	global_par_k1pp_1=0.5;
% Parameter:   id =  k1_1, name = k1
	global_par_k1_1=0.1;
% Parameter:   id =  k2_1, name = k2
	global_par_k2_1=0.1;
% Parameter:   id =  kminus2_1, name = kminus2
	global_par_kminus2_1=1.0;
% Parameter:   id =  k3_1, name = k3
	global_par_k3_1=1.42;
% Parameter:   id =  k3p_1, name = k3p
	global_par_k3p_1=0.0;
% Parameter:   id =  k4_1, name = k4
	global_par_k4_1=1.0E-6;
% Parameter:   id =  kminus4_1, name = kminus4
	global_par_kminus4_1=0.016;
% Parameter:   id =  kminus1_1, name = kminus1
	global_par_kminus1_1=0.001;
% Parameter:   id =  k5_1, name = k5
	global_par_k5_1=0.02;
% Parameter:   id =  k6_1, name = k6
	global_par_k6_1=0.018;
% Parameter:   id =  kminus6_1, name = kminus6
	global_par_kminus6_1=5.0;
% Parameter:   id =  k7_1, name = k7
	global_par_k7_1=1.0E-5;
% Parameter:   id =  k8_1, name = k8
	global_par_k8_1=2.0;
% Parameter:   id =  k9_1, name = k9
	global_par_k9_1=2.0;
% Parameter:   id =  K10_1, name = K10
	global_par_K10_1=0.035;
% Parameter:   id =  k17_1, name = k17
	global_par_k17_1=3.5;
% Parameter:   id =  k18_1, name = k18
	global_par_k18_1=1.0E-5;
% Parameter:   id =  k19_1, name = k19
	global_par_k19_1=0.05;
% Parameter:   id =  k20_1, name = k20
	global_par_k20_1=0.01;
% Parameter:   id =  k21_1, name = k21
	global_par_k21_1=0.1;
% Parameter:   id =  k22_1, name = k22
	global_par_k22_1=0.001;
% Parameter:   id =  k23_1, name = k23
	global_par_k23_1=0.2;
% Parameter:   id =  k24_1, name = k24
	global_par_k24_1=0.1;
% Parameter:   id =  k25_1, name = k25
	global_par_k25_1=0.01;
% Parameter:   id =  k25p_1, name = k25p
	global_par_k25p_1=0.02;
% Parameter:   id =  k26_1, name = k26
	global_par_k26_1=0.01;
% Parameter:   id =  k26p_1, name = k26p
	global_par_k26p_1=0.1;
% Parameter:   id =  k27_1, name = k27
	global_par_k27_1=0.01;
% Parameter:   id =  k28_1, name = k28
	global_par_k28_1=0.01;
% Parameter:   id =  k29_1, name = k29
	global_par_k29_1=0.001;

% Reaction: id = _1, name = pRB/E2F complex deassociation
	reaction__1=global_par_k1p_1*x(7)*x(1)+global_par_k1pp_1*x(11)*x(1)+global_par_k1_1*x(5)*x(1);

% Reaction: id = pRBE2Fcomplexformation_1, name = pRB/E2F complex formation
	reaction_pRBE2Fcomplexformation_1=Mass_Action_2_1(global_par_kminus1_1, x(6), x(2));

% Reaction: id = cycECDK2activation_1, name = cycE/CDK2 activation
	reaction_cycECDK2activation_1=global_par_k2_1*x(5)*x(4);

% Reaction: id = cycECDK2deactivation_1, name = cycE/CDK2 deactivation
	reaction_cycECDK2deactivation_1=global_par_kminus2_1*x(5);

% Reaction: id = cycECDK2synthesis_1, name = icycE/CDK2 synthesis
	reaction_cycECDK2synthesis_1=global_par_k3_1*x(2)+global_par_k3p_1;

% Reaction: id = E2Fsynthesis_1, name = E2F synthesis
	reaction_E2Fsynthesis_1=global_par_k4_1;

% Reaction: id = E2Fdegradation_1, name = E2F degradation
	reaction_E2Fdegradation_1=Mass_Action_1_1(global_par_kminus4_1, x(2));

% Reaction: id = cycECDK2degradation_1, name = icycE/CDK2 degradation
	reaction_cycECDK2degradation_1=Mass_Action_1_1(global_par_k5_1, x(4));

% Reaction: id = cycDCDK4degradation_1, name = cycD/CDK4 degradation
	reaction_cycDCDK4degradation_1=Mass_Action_1_1(global_par_kminus6_1, x(7));

% Reaction: id = p27degradationviacycECDK2_1, name = p27 degradation via cycE/CDK2
	reaction_p27degradationviacycECDK2_1=global_par_k8_1*x(8)*x(5);

% Reaction: id = cycECDK2p27complexformation_1, name = cycE/CDK2/p27 complex formation
	reaction_cycECDK2p27complexformation_1=Mass_Action_2_1(global_par_k9_1, x(5), x(8));

% Reaction: id = cycECDK2p27deassociation_1, name = cycE/CDK2/p27 deassociation
	reaction_cycECDK2p27deassociation_1=Mass_Action_1_1(global_par_K10_1, x(9));

% Reaction: id = cycDCDK4p16complexformation_1, name = cycD/CDK4/p16 complex formation
	reaction_cycDCDK4p16complexformation_1=Mass_Action_2_1(global_par_k17_1, x(7), x(10));

% Reaction: id = E2Fautostimulation_1, name = E2F auto stimulation
	reaction_E2Fautostimulation_1=global_par_k18_1*x(2);

% Reaction: id = cycDCDK4p27complexformation_1, name = cycD/CDK4/p27 complex formation
	reaction_cycDCDK4p27complexformation_1=Mass_Action_2_1(global_par_k19_1, x(8), x(7));

% Reaction: id = cycDCDK4p27complexdeassociation_1, name = cycD/CDK4/p27 complex deassociation
	reaction_cycDCDK4p27complexdeassociation_1=Mass_Action_1_1(global_par_k20_1, x(11));

% Reaction: id = acycECDK2degradation_1, name = acycE/CDK2 degradation
	reaction_acycECDK2degradation_1=global_par_k21_1*x(5)*x(5);

% Reaction: id = p27degradation_1, name = p27 degradation
	reaction_p27degradation_1=Mass_Action_1_1(global_par_k22_1, x(8));

% Reaction: id = p16degradation_1, name = p16 degradation
	reaction_p16degradation_1=Mass_Action_1_1(global_par_k24_1, x(10));

% Reaction: id = p16synthesisinhibitedbypRB_1, name = p16 synthesis inhibited by pRB
	reaction_p16synthesisinhibitedbypRB_1=global_par_k25_1/(1+global_par_k25p_1*x(6));

% Reaction: id = pRBpdephosphorilation_1, name = pRB synthesis inhibited by p16
	reaction_pRBpdephosphorilation_1=global_par_k26_1/(1+global_par_k26p_1*x(10));

% Reaction: id = pRBdegradation_1, name = pRB degradation
	reaction_pRBdegradation_1=Mass_Action_1_1(global_par_k28_1, x(6));

% Reaction: id = pRBpdephosphorylation_1, name = pRB-p dephosphorylation
	reaction_pRBpdephosphorylation_1=Mass_Action_1_1(global_par_k29_1, x(3));

	xdot=zeros(11,1);
	
% Species:   id = Y3_1, name = pRB_E2F, affected by kineticLaw
	xdot(1) = (-1.0 * reaction__1) + ( 1.0 * reaction_pRBE2Fcomplexformation_1);
	
% Species:   id = Y4_1, name = E2F, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction__1) + (-1.0 * reaction_pRBE2Fcomplexformation_1) + ( 1.0 * reaction_E2Fsynthesis_1) + (-1.0 * reaction_E2Fdegradation_1) + ( 1.0 * reaction_E2Fautostimulation_1);
	
% Species:   id = Y11_1, name = pRB_P, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction__1) + (-1.0 * reaction_pRBpdephosphorylation_1);
	
% Species:   id = Y2_1, name = i_cyclinE_CDK2, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_cycECDK2activation_1) + ( 1.0 * reaction_cycECDK2deactivation_1) + ( 1.0 * reaction_cycECDK2synthesis_1) + (-1.0 * reaction_cycECDK2degradation_1);
	
% Species:   id = Y1_1, name = a_cyclinE_CDK2, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_cycECDK2activation_1) + (-1.0 * reaction_cycECDK2deactivation_1) + (-1.0 * reaction_cycECDK2p27complexformation_1) + ( 1.0 * reaction_cycECDK2p27deassociation_1) + (-1.0 * reaction_acycECDK2degradation_1);
	
% Species:   id = Y5_1, name = pRB, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_pRBE2Fcomplexformation_1) + ( 1.0 * reaction_pRBpdephosphorilation_1) + ( 1.0 * reaction_pRBsynthesis_1) + (-1.0 * reaction_pRBdegradation_1) + ( 1.0 * reaction_pRBpdephosphorylation_1);
	
% Species:   id = Y6_1, name = CycD_CDK4, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_cycDCDK4synthesis_1) + (-1.0 * reaction_cycDCDK4degradation_1) + (-1.0 * reaction_cycDCDK4p16complexformation_1) + (-1.0 * reaction_cycDCDK4p27complexformation_1) + ( 1.0 * reaction_cycDCDK4p27complexdeassociation_1);
	
% Species:   id = Y7_1, name = p27, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_p27synthesis_1) + (-1.0 * reaction_p27degradationviacycECDK2_1) + (-1.0 * reaction_cycECDK2p27complexformation_1) + ( 1.0 * reaction_cycECDK2p27deassociation_1) + (-1.0 * reaction_cycDCDK4p27complexformation_1) + ( 1.0 * reaction_cycDCDK4p27complexdeassociation_1) + (-1.0 * reaction_p27degradation_1);
	
% Species:   id = Y8_1, name = cycE_CDK2_p27, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_cycECDK2p27complexformation_1) + (-1.0 * reaction_cycECDK2p27deassociation_1);
	
% Species:   id = Y10_1, name = p16, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_cycDCDK4p16complexformation_1) + ( 1.0 * reaction__20) + (-1.0 * reaction_p16degradation_1) + ( 1.0 * reaction_p16synthesisinhibitedbypRB_1);
	
% Species:   id = Y9_1, name = cycD_CDK4_p27, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_cycDCDK4p27complexformation_1) + (-1.0 * reaction_cycDCDK4p27complexdeassociation_1);
end

function z=Mass_Action_1_1(k1,S1), z=(k1*S1);end

function z=Mass_Action_2_1(k1,S1,S2), z=(k1*S1*S2);end

function z=Mass_Action_0_1(k1), z=(k1);end

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


