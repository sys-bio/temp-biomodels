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
% Model name = Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics
%
% is http://identifiers.org/biomodels.db/MODEL1708250003
% is http://identifiers.org/biomodels.db/BIOMD0000000651
% isDescribedBy http://identifiers.org/pubmed/26481970
% is http://identifiers.org/biomodels.db/BIOMD0000000651
% is http://identifiers.org/biomodels.db/MODEL1708250003
% isDescribedBy http://identifiers.org/pubmed/26481970
%


function main()
%Initial conditions vector
	x0=zeros(29,1);
	x0(1) = 100.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 100.0;
	x0(5) = 0.0;
	x0(6) = 100.0;
	x0(7) = 0.0;
	x0(8) = 299.999999999999;
	x0(9) = 0.0;
	x0(10) = 299.999999999999;
	x0(11) = 0.0;
	x0(12) = 200.0;
	x0(13) = 0.0;
	x0(14) = 200.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 100.0;
	x0(18) = 0.0;
	x0(19) = 100.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 299.999999999999;
	x0(23) = 0.0;
	x0(24) = 899.999999999996;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;


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
% Parameter:   id =  k1f, name = k1f
	global_par_k1f=0.01;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=0.01;
% Parameter:   id =  k2f, name = k2f
	global_par_k2f=0.001;
% Parameter:   id =  k2fa, name = k2fa
	global_par_k2fa=0.001;
% Parameter:   id =  k2r, name = k2r
	global_par_k2r=0.01;
% Parameter:   id =  k3f, name = k3f
	global_par_k3f=0.001;
% Parameter:   id =  k3r, name = k3r
	global_par_k3r=0.01;
% Parameter:   id =  k4f, name = k4f
	global_par_k4f=0.001;
% Parameter:   id =  k4r, name = k4r
	global_par_k4r=0.01;
% Parameter:   id =  k5f, name = k5f
	global_par_k5f=0.001;
% Parameter:   id =  k5r, name = k5r
	global_par_k5r=0.01;
% Parameter:   id =  k6f, name = k6f
	global_par_k6f=0.1;
% Parameter:   id =  k6r, name = k6r
	global_par_k6r=0.001;
% Parameter:   id =  k7f, name = k7f
	global_par_k7f=0.01;
% Parameter:   id =  k7fa, name = k7fa
	global_par_k7fa=0.01;
% Parameter:   id =  k7r, name = k7r
	global_par_k7r=0.01;
% Parameter:   id =  k8f, name = k8f
	global_par_k8f=0.001;
% Parameter:   id =  k8r, name = k8r
	global_par_k8r=0.01;
% Parameter:   id =  k9f, name = k9f
	global_par_k9f=0.001;
% Parameter:   id =  k9r, name = k9r
	global_par_k9r=0.01;
% Parameter:   id =  k10f, name = k10f
	global_par_k10f=0.001;
% Parameter:   id =  k10r, name = k10r
	global_par_k10r=0.01;
% Parameter:   id =  k11f, name = k11f
	global_par_k11f=0.001;
% Parameter:   id =  k11r, name = k11r
	global_par_k11r=0.01;
% Parameter:   id =  k12f, name = k12f
	global_par_k12f=0.01;
% Parameter:   id =  k12r, name = k12r
	global_par_k12r=0.001;
% Parameter:   id =  k13f, name = k13f
	global_par_k13f=0.1;
% Parameter:   id =  k13r, name = k13r
	global_par_k13r=0.001;
% Parameter:   id =  k14f, name = k14f
	global_par_k14f=0.1;
% Parameter:   id =  k14r, name = k14r
	global_par_k14r=0.001;
% Parameter:   id =  k15f, name = k15f
	global_par_k15f=0.01;
% Parameter:   id =  k15r, name = k15r
	global_par_k15r=0.001;
% Parameter:   id =  k16f, name = k16f
	global_par_k16f=0.01;
% Parameter:   id =  k16r, name = k16r
	global_par_k16r=0.001;

% Reaction: id = IRS__activation_deactivation, name = IRS  activation/deactivation
	reaction_IRS__activation_deactivation=compartment_compartment*(global_par_k1f*x(1)-global_par_k1r*x(2));

% Reaction: id = PI3K_activation_deactivation, name = PI3K activation/deactivation
	reaction_PI3K_activation_deactivation=compartment_compartment*Function_for_PI3K_activation_deactivation_1(x(4), x(2), x(5), x(15), global_par_k2f, global_par_k2fa, global_par_k2r);

% Reaction: id = Akt_activation_deactivation, name = Akt activation/deactivation
	reaction_Akt_activation_deactivation=compartment_compartment*Function_for_mass_action_with_modifier_1(x(6), x(7), x(5), global_par_k3f, global_par_k3r);

% Reaction: id = mTOC1_acivation_deactivation, name = mTOC1 acivation/deactivation
	reaction_mTOC1_acivation_deactivation=compartment_compartment*Function_for_mTOC1_acivation_deactivation_1(x(7), x(9), global_par_k4f, global_par_k4r, x(8));

% Reaction: id = S6K_activation_deactivation, name = S6K activation/deactivation
	reaction_S6K_activation_deactivation=compartment_compartment*Function_for_S6K_activation_deactivation_1(x(10), x(11), x(9), global_par_k5f, global_par_k5r);

% Reaction: id = IRS_inhibition, name = IRS inhibition
	reaction_IRS_inhibition=compartment_compartment*Function_for_mass_action_with_modifier_2(x(1), x(11), x(3), global_par_k6f, global_par_k6r);

% Reaction: id = RTK_activation_deactivation, name = RTK activation/deactivation
	reaction_RTK_activation_deactivation=compartment_compartment*Function_for_RTK_activation_deactivation_1(x(12), x(14), x(15), global_par_k7f, global_par_k7fa, global_par_k7r);

% Reaction: id = RasGDP__activation_deactivation, name = RasGDP  activation/deactivation
	reaction_RasGDP__activation_deactivation=compartment_compartment*Function_for_mass_action_with_modifier_3(x(17), x(18), x(15), global_par_k8f, global_par_k8r);

% Reaction: id = Raf_activation_deactivation, name = Raf activation/deactivation
	reaction_Raf_activation_deactivation=compartment_compartment*Function_for_mass_action_with_modifier_4(x(19), x(18), x(20), global_par_k9f, global_par_k9r);

% Reaction: id = MEK_activation_deactivation, name = MEK activation/deactivation
	reaction_MEK_activation_deactivation=compartment_compartment*Function_for_mass_action_with_modifier_5(x(22), x(23), x(20), global_par_k10f, global_par_k10r);

% Reaction: id = ERK_activation_deactivation, name = ERK activation/deactivation
	reaction_ERK_activation_deactivation=compartment_compartment*Function_for_mass_action_with_modifier_6(x(24), x(25), x(23), global_par_k11f, global_par_k11r);

% Reaction: id = Raf_inhibition, name = Raf inhibition
	reaction_Raf_inhibition=compartment_compartment*Function_for_mass_action_with_modifier_7(x(19), x(25), x(21), global_par_k12f, global_par_k12r);

% Reaction: id = RTK_inhibition, name = RTK inhibition
	reaction_RTK_inhibition=compartment_compartment*Function_for_mass_action_with_modifier_8(x(14), x(25), x(16), global_par_k13f, global_par_k13r);

% Reaction: id = FOXO_inhibition, name = FOXO inhibition
	reaction_FOXO_inhibition=compartment_compartment*Function_for_mass_action_with_modifier_9(x(12), x(7), x(13), global_par_k14f, global_par_k14r);

% Reaction: id = Akt_inhibition, name = Akt inhibition
	reaction_Akt_inhibition=compartment_compartment*(global_par_k15f*x(6)*x(26)-global_par_k15r*x(27));

% Reaction: id = MEK_inhibition, name = MEK inhibition
	reaction_MEK_inhibition=compartment_compartment*(global_par_k16f*x(22)*x(28)-global_par_k16r*x(29));

	xdot=zeros(29,1);
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_IRS__activation_deactivation) + (-1.0 * reaction_IRS_inhibition));
	
% Species:   id = aIRS, name = aIRS, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_IRS__activation_deactivation));
	
% Species:   id = iIRS, name = iIRS, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_IRS_inhibition));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_PI3K_activation_deactivation));
	
% Species:   id = aPI3K, name = aPI3K, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_PI3K_activation_deactivation));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_Akt_activation_deactivation) + (-1.0 * reaction_Akt_inhibition));
	
% Species:   id = aAkt, name = aAkt, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Akt_activation_deactivation));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_mTOC1_acivation_deactivation));
	
% Species:   id = amTORC1, name = amTORC1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_mTOC1_acivation_deactivation));
	
% Species:   id = S6K, name = S6K, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_S6K_activation_deactivation));
	
% Species:   id = aS6K, name = aS6K, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_S6K_activation_deactivation));
	
% Species:   id = FOXO, name = FOXO, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_FOXO_inhibition));
	
% Species:   id = iFOXO, name = iFOXO, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_FOXO_inhibition));
	
% Species:   id = RTK, name = RTK, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*((-1.0 * reaction_RTK_activation_deactivation) + (-1.0 * reaction_RTK_inhibition));
	
% Species:   id = aRTK, name = aRTK, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_RTK_activation_deactivation));
	
% Species:   id = iRTK, name = iRTK, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_RTK_inhibition));
	
% Species:   id = RasGDP, name = RasGDP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_RasGDP__activation_deactivation));
	
% Species:   id = RasGTP, name = RasGTP, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_RasGDP__activation_deactivation));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_Raf_activation_deactivation) + (-1.0 * reaction_Raf_inhibition));
	
% Species:   id = aRaf, name = aRaf, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_Raf_activation_deactivation));
	
% Species:   id = iRaf, name = iRaf, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_Raf_inhibition));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*((-1.0 * reaction_MEK_activation_deactivation) + (-1.0 * reaction_MEK_inhibition));
	
% Species:   id = aMEK, name = aMEK, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_MEK_activation_deactivation));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*((-1.0 * reaction_ERK_activation_deactivation));
	
% Species:   id = aERK, name = aERK, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_ERK_activation_deactivation));
	
% Species:   id = AktI, name = AktI, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*((-1.0 * reaction_Akt_inhibition));
	
% Species:   id = iAkt, name = iAkt, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*(( 1.0 * reaction_Akt_inhibition));
	
% Species:   id = MEKI, name = MEKI, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*((-1.0 * reaction_MEK_inhibition));
	
% Species:   id = iMEK, name = iMEK, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_MEK_inhibition));
end

function z=Function_for_PI3K_activation_deactivation_1(PI3K,aIRS,aPI3K,aRTK,k2f,k2fa,k2r), z=((k2f*aIRS+k2fa*aRTK)*PI3K-k2r*aPI3K);end

function z=Function_for_mass_action_with_modifier_1(Akt,aAkt,aPI3K,k3f,k3r), z=(k3f*Akt*aPI3K-k3r*aAkt);end

function z=Function_for_mTOC1_acivation_deactivation_1(aAkt,amTORC1,k4f,k4r,mTORC1), z=(k4f*mTORC1*aAkt-k4r*amTORC1);end

function z=Function_for_S6K_activation_deactivation_1(S6K,aS6K,amTORC1,k5f,k5r), z=(k5f*S6K*amTORC1-k5r*aS6K);end

function z=Function_for_mass_action_with_modifier_2(IRS,aS6K,iIRS,k6f,k6r), z=(k6f*IRS*aS6K-k6r*iIRS);end

function z=Function_for_RTK_activation_deactivation_1(FOXO,RTK,aRTK,k7f,k7fa,k7r), z=((k7f+k7fa*FOXO)*RTK-k7r*aRTK);end

function z=Function_for_mass_action_with_modifier_3(RasGDP,RasGTP,aRTK,k8f,k8r), z=(k8f*RasGDP*aRTK-k8r*RasGTP);end

function z=Function_for_mass_action_with_modifier_4(Raf,RasGTP,aRaf,k9f,k9r), z=(k9f*Raf*RasGTP-k9r*aRaf);end

function z=Function_for_mass_action_with_modifier_5(MEK,aMEK,aRaf,k10f,k10r), z=(k10f*MEK*aRaf-k10r*aMEK);end

function z=Function_for_mass_action_with_modifier_6(ERK,aERK,aMEK,k11f,k11r), z=(k11f*ERK*aMEK-k11r*aERK);end

function z=Function_for_mass_action_with_modifier_7(Raf,aERK,iRaf,k12f,k12r), z=(k12f*Raf*aERK-k12r*iRaf);end

function z=Function_for_mass_action_with_modifier_8(RTK,aERK,iRTK,k13f,k13r), z=(k13f*RTK*aERK-k13r*iRTK);end

function z=Function_for_mass_action_with_modifier_9(FOXO,aAkt,iFOXO,k14f,k14r), z=(k14f*FOXO*aAkt-k14r*iFOXO);end

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


