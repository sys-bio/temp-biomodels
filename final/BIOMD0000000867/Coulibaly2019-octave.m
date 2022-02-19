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
% Model name = Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells
%
% isDescribedBy http://identifiers.org/pubmed/31681292
% is http://identifiers.org/biomodels.db/MODEL1911180002
% is http://identifiers.org/biomodels.db/BIOMD0000000867
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 0.05;
	x0(5) = 1.0;
	x0(6) = 0.05;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 0.9;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.848;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.037;
% Parameter:   id =  a7, name = a7
	global_par_a7=0.0;
% Parameter:   id =  a8, name = a8
	global_par_a8=0.0;
% Parameter:   id =  a9, name = a9
	global_par_a9=0.0;
% Parameter:   id =  a11, name = a11
	global_par_a11=4.17;
% Parameter:   id =  d8, name = d8
% Parameter:   id =  rho6, name = rho6
	global_par_rho6=0.99;
% Parameter:   id =  K_O2, name = K_O2
	global_par_K_O2=0.96;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.0E-5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.307;
% Parameter:   id =  k5, name = k5
	global_par_k5=75.895;
% Parameter:   id =  k10, name = k10
	global_par_k10=421.353;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.211;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.061;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.088;
% Parameter:   id =  kS, name = kS
	global_par_kS=9.0E-4;
% Parameter:   id =  n2, name = n2
	global_par_n2=2.0;
% Parameter:   id =  xi28, name = xi28
	global_par_xi28=38.44;
% Parameter:   id =  delta, name = delta
	global_par_delta=200.0;
% Parameter:   id =  xi4, name = xi4
	global_par_xi4=15.018;
% Parameter:   id =  xi44, name = xi44
	global_par_xi44=128.022;
% Parameter:   id =  a5, name = a5
	global_par_a5=0.211;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.062;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.848;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.919;
% Parameter:   id =  d4, name = d4
	global_par_d4=0.623;
% Parameter:   id =  d5, name = d5
	global_par_d5=0.196;
% Parameter:   id =  d6, name = d6
	global_par_d6=0.301;
% Parameter:   id =  d7, name = d7
	global_par_d7=0.914;
% Parameter:   id =  d9, name = d9
	global_par_d9=0.934;
% Parameter:   id =  d10, name = d10
	global_par_d10=0.935;
% Parameter:   id =  rho3, name = rho3
	global_par_rho3=1.0;
% Parameter:   id =  rho4, name = rho4
	global_par_rho4=0.863;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.181;
% Parameter:   id =  k4, name = k4
	global_par_k4=76.196;
% Parameter:   id =  k6, name = k6
	global_par_k6=25.001;
% Parameter:   id =  k7, name = k7
	global_par_k7=2.903;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.577;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.753;
% Parameter:   id =  k13, name = k13
	global_par_k13=12.152;
% Parameter:   id =  k14, name = k14
	global_par_k14=16.528;
% Parameter:   id =  kalpha, name = kalpha
	global_par_kalpha=1.034;
% Parameter:   id =  xi10, name = xi10
	global_par_xi10=8.127;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.829;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=1.163;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.386;
% Parameter:   id =  IL_15_Fold_Change, name = IL-15_Fold_Change
% Parameter:   id =  D, name = D
	global_par_D=1.0;
% Parameter:   id =  R, name = R
	global_par_R=0.0;
% Parameter:   id =  S3, name = S3
	global_par_S3=0.0;
% Parameter:   id =  HIF_1a_Total_Fold_Change, name = HIF-1a_Total_Fold_Change
% Parameter:   id =  Metabolite_9, name = Initial for y10_HIF-1a-aOH
	global_par_Metabolite_9=0.9;
% Parameter:   id =  Metabolite_0, name = Initial for y1_IL-15
	global_par_Metabolite_0=1.0;
% Parameter:   id =  Metabolite_3, name = Initial for y4_HIF-1a
	global_par_Metabolite_3=0.05;
% Parameter:   id =  Metabolite_5, name = Initial for y6_HIF-1_Complex
	global_par_Metabolite_5=0.05;
% assignmentRule: variable = d8
	global_par_d8=global_par_k8;
% assignmentRule: variable = IL_15_Fold_Change
	global_par_IL_15_Fold_Change=x(1)/global_par_Metabolite_0;
% assignmentRule: variable = HIF_1a_Total_Fold_Change
	global_par_HIF_1a_Total_Fold_Change=(x(4)+x(6)+x(10))/(global_par_Metabolite_3+global_par_Metabolite_5+global_par_Metabolite_9);

% Reaction: id = IL_15_Basal_Decay, name = IL-15_Basal_Decay
	reaction_IL_15_Basal_Decay=compartment_compartment*global_par_d1*x(1);

% Reaction: id = AKT_Activation_IL_15, name = AKT_Activation_IL-15
	reaction_AKT_Activation_IL_15=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k1, x(1));

% Reaction: id = AKT_Activation_STAT3, name = AKT_Activation_STAT3
	reaction_AKT_Activation_STAT3=compartment_compartment*Function_for_AKT_Activation_STAT3(global_par_kS, x(8), global_par_n2, global_par_xi28);

% Reaction: id = AKT_Decay, name = AKT_Decay
	reaction_AKT_Decay=compartment_compartment*global_par_d2*x(2);

% Reaction: id = mTOR_Activation, name = mTOR_Activation
	reaction_mTOR_Activation=compartment_compartment*Function_for_mTOR_Activation(global_par_a3, global_par_k2, x(2), global_par_alpha1, global_par_alpha2, x(6), global_par_R);

% Reaction: id = mTOR_Decay, name = mTOR_Decay
	reaction_mTOR_Decay=compartment_compartment*global_par_d3*x(3);

% Reaction: id = STAT3_Decay, name = STAT3_Decay
	reaction_STAT3_Decay=compartment_compartment*global_par_d8*x(8);

% Reaction: id = NF_KB_Decay, name = NF-KB_Decay
	reaction_NF_KB_Decay=compartment_compartment*global_par_d7*x(7);

% Reaction: id = NF_KB_Activation_IL_15, name = NF-KB_Activation_IL-15
	reaction_NF_KB_Activation_IL_15=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k7, x(1));

% Reaction: id = NF_KB_Activation_mTOR, name = NF-KB_Activation_mTOR
	reaction_NF_KB_Activation_mTOR=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k15, x(3));

% Reaction: id = NF_KB_Activation_HIF_1_Complex, name = NF-KB_Activation_HIF-1_Complex
	reaction_NF_KB_Activation_HIF_1_Complex=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k14, x(6));

% Reaction: id = HIF_1a_mRNA_Degradation, name = HIF-1a_mRNA_Degradation
	reaction_HIF_1a_mRNA_Degradation=compartment_compartment*global_par_d9*x(9);

% Reaction: id = HIF_1a_mRNA_Regulation_NF_KB, name = HIF-1a_mRNA_Regulation_NF-KB
	reaction_HIF_1a_mRNA_Regulation_NF_KB=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k9, x(7));

% Reaction: id = HIF_1a_mRNA_Regulation_STAT3, name = HIF-1a_mRNA_Regulation_STAT3
	reaction_HIF_1a_mRNA_Regulation_STAT3=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_k3, x(8));

% Reaction: id = HIF_1a_Translation, name = HIF-1a_Translation
	reaction_HIF_1a_Translation=compartment_compartment*Function_for_AKT_Activation_IL_15(global_par_kalpha, x(9));

% Reaction: id = HIF_1a_Decay, name = HIF-1a_Decay
	reaction_HIF_1a_Decay=compartment_compartment*global_par_d4*x(4);

% Reaction: id = HIF_1a_Association_HIF_1b, name = HIF-1a_Association_HIF-1b
	reaction_HIF_1a_Association_HIF_1b=compartment_compartment*global_par_k4*x(4)*x(5);

% Reaction: id = HIF_1_Complex_Dissociation, name = HIF-1_Complex_Dissociation
	reaction_HIF_1_Complex_Dissociation=compartment_compartment*global_par_k5*x(6);

% Reaction: id = HIF_1a_Hydroxylation_PHD, name = HIF-1a_Hydroxylation_PHD
	reaction_HIF_1a_Hydroxylation_PHD=compartment_compartment*Function_for_HIF_1a_Hydroxylation_PHD(global_par_k13, global_par_K_O2, x(4), global_par_delta, x(6), global_par_a11, global_par_xi44, global_par_rho6, global_par_D);

% Reaction: id = HIF_1a_Hydroxylation_FIH, name = HIF-1a_Hydroxylation_FIH
	reaction_HIF_1a_Hydroxylation_FIH=compartment_compartment*Function_for_HIF_1a_Hydroxylation_FIH(global_par_k10, global_par_K_O2, global_par_phi, x(4), global_par_xi4, global_par_rho6, global_par_D);

% Reaction: id = HIF_1a_aOH_Dehydroxylation, name = HIF-1a-aOH_Dehydroxylation
	reaction_HIF_1a_aOH_Dehydroxylation=compartment_compartment*global_par_k11*x(10);

% Reaction: id = HIF_1a_aOH_Hydroxylation_PHD, name = HIF-1a-aOH_Hydroxylation_PHD
	reaction_HIF_1a_aOH_Hydroxylation_PHD=compartment_compartment*Function_for_HIF_1a_aOH_Hydroxylation_PHD(global_par_k12, global_par_K_O2, x(10), global_par_delta, x(6), global_par_a11, global_par_xi10);

% Reaction: id = HIF_1a_aOH_Decay, name = HIF-1a-aOH_Decay
	reaction_HIF_1a_aOH_Decay=compartment_compartment*global_par_d10*x(10);

% Reaction: id = HIF_1b_Decay, name = HIF-1b_Decay
	reaction_HIF_1b_Decay=compartment_compartment*global_par_d5*x(5);

% Reaction: id = HIF_1_Complex_Decay, name = HIF-1_Complex_Decay
	reaction_HIF_1_Complex_Decay=compartment_compartment*global_par_d6*x(6);

% Reaction: id = STAT3_Activation, name = STAT3_Activation
	reaction_STAT3_Activation=compartment_compartment*Function_for_STAT3_Activation(global_par_a8, global_par_k8, x(3), global_par_k6, global_par_rho4, global_par_D, x(1), global_par_rho3, global_par_S3);

	xdot=zeros(10,1);
	
% Species:   id = y1_IL_15, name = y1_IL-15, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_IL_15_External_Regulation) + (-1.0 * reaction_IL_15_Basal_Decay));
	
% Species:   id = y2_Akt, name = y2_Akt, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_AKT_Basal_Activation) + ( 1.0 * reaction_AKT_Activation_IL_15) + ( 1.0 * reaction_AKT_Activation_STAT3) + (-1.0 * reaction_AKT_Decay));
	
% Species:   id = y3_mTOR, name = y3_mTOR, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_mTOR_Activation) + (-1.0 * reaction_mTOR_Decay));
	
% Species:   id = y4_HIF_1a, name = y4_HIF-1a, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_HIF_1a_Translation) + (-1.0 * reaction_HIF_1a_Decay) + (-1.0 * reaction_HIF_1a_Association_HIF_1b) + ( 1.0 * reaction_HIF_1_Complex_Dissociation) + (-1.0 * reaction_HIF_1a_Hydroxylation_PHD) + (-1.0 * reaction_HIF_1a_Hydroxylation_FIH) + ( 1.0 * reaction_HIF_1a_aOH_Dehydroxylation));
	
% Species:   id = y5_HIF_1b, name = y5_HIF-1b, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_HIF_1a_Association_HIF_1b) + ( 1.0 * reaction_HIF_1_Complex_Dissociation) + ( 1.0 * reaction_HIF_1b_Expression_Constitutive) + (-1.0 * reaction_HIF_1b_Decay));
	
% Species:   id = y6_HIF_1_Complex, name = y6_HIF-1_Complex, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_HIF_1a_Association_HIF_1b) + (-1.0 * reaction_HIF_1_Complex_Dissociation) + (-1.0 * reaction_HIF_1_Complex_Decay));
	
% Species:   id = y7_NF_KB, name = y7_NF-KB, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_NF_KB_Basal_Activation) + (-1.0 * reaction_NF_KB_Decay) + ( 1.0 * reaction_NF_KB_Activation_IL_15) + ( 1.0 * reaction_NF_KB_Activation_mTOR) + ( 1.0 * reaction_NF_KB_Activation_HIF_1_Complex));
	
% Species:   id = y8_STAT3, name = y8_STAT3, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_STAT3_Decay) + ( 1.0 * reaction_STAT3_Activation));
	
% Species:   id = y9_HIF_1a_mRNA, name = y9_HIF-1a_mRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_HIF_1a_mRNA_Synthesis_Basal) + (-1.0 * reaction_HIF_1a_mRNA_Degradation) + ( 1.0 * reaction_HIF_1a_mRNA_Regulation_NF_KB) + ( 1.0 * reaction_HIF_1a_mRNA_Regulation_STAT3));
	
% Species:   id = y10_HIF_1a_aOH, name = y10_HIF-1a-aOH, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_HIF_1a_Hydroxylation_FIH) + (-1.0 * reaction_HIF_1a_aOH_Dehydroxylation) + (-1.0 * reaction_HIF_1a_aOH_Hydroxylation_PHD) + (-1.0 * reaction_HIF_1a_aOH_Decay));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_STAT3_Activation(a8,k8,y3,k6,rho4,D,y1,rho3,S3), z=((a8+k8*y3+k6*(1-rho4*D)*y1)*(1-rho3*S3));end

function z=Function_for_AKT_Activation_STAT3(kS,y8,n2,xi28), z=(kS*y8^n2/(xi28^n2+y8^n2));end

function z=Function_for_mTOR_Activation(a3,k2,y2,alpha1,alpha2,y6,R), z=((a3+k2*y2)*alpha1*(1-R)/(alpha2*y6));end

function z=Function_for_HIF_1a_Hydroxylation_PHD(k13,K_O2,y4,delta,y6,a11,xi44,rho6,D), z=(k13*K_O2*y4*(delta*y6+a11)*(1-rho6*D)/(xi44+y4));end

function z=Function_for_AKT_Activation_IL_15(k1,y1), z=(k1*y1);end

function z=Function_for_HIF_1a_Hydroxylation_FIH(k10,K_O2,phi,y4,xi4,rho6,D), z=(k10*K_O2*phi*y4*(1-rho6*D)/(xi4+y4));end

function z=Function_for_HIF_1a_aOH_Hydroxylation_PHD(k12,K_O2,y10,delta,y6,a11,xi10), z=(k12*K_O2*y10*(delta*y6+a11)/(xi10+y10));end

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


