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
% Model name = Smolen2018 - Paradoxical LTP maintenance with inhibition of protein synthesis and the proteasome
%
% isDescribedBy http://identifiers.org/pubmed/30138630
% is http://identifiers.org/biomodels.db/MODEL1911120006
% is http://identifiers.org/biomodels.db/BIOMD0000000853
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.001;
	x0(5) = 0.18;
	x0(6) = 0.14;
	x0(7) = 0.01;
	x0(8) = 0.01;
	x0(9) = 0.96;


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
% Parameter:   id =  ksyn1, name = ksyn1
	global_par_ksyn1=1.0;
% Parameter:   id =  ksyn1bas, name = ksyn1bas
	global_par_ksyn1bas=0.0035;
% Parameter:   id =  kdeg1, name = kdeg1
	global_par_kdeg1=0.005;
% Parameter:   id =  ksyn2, name = ksyn2
	global_par_ksyn2=2.0;
% Parameter:   id =  ksyn2bas, name = ksyn2bas
	global_par_ksyn2bas=0.0014;
% Parameter:   id =  kdeg2, name = kdeg2
	global_par_kdeg2=0.01;
% Parameter:   id =  kdeg2bas, name = kdeg2bas
	global_par_kdeg2bas=0.002;
% Parameter:   id =  ksyn3, name = ksyn3
	global_par_ksyn3=1.0;
% Parameter:   id =  ksyn3bas, name = ksyn3bas
	global_par_ksyn3bas=0.008;
% Parameter:   id =  kdeg3, name = kdeg3
	global_par_kdeg3=0.02;
% Parameter:   id =  kact, name = kact
	global_par_kact=0.2;
% Parameter:   id =  kactbas, name = kactbas
	global_par_kactbas=0.00214;
% Parameter:   id =  kdeact, name = kdeact
	global_par_kdeact=0.0143;
% Parameter:   id =  kf1, name = kf1
	global_par_kf1=0.1;
% Parameter:   id =  kf1bas, name = kf1bas
% Parameter:   id =  kf2, name = kf2
	global_par_kf2=0.02;
% Parameter:   id =  kb1, name = kb1
	global_par_kb1=0.005;
% Parameter:   id =  kf3, name = kf3
	global_par_kf3=0.01;
% Parameter:   id =  kf4, name = kf4
	global_par_kf4=0.02;
% Parameter:   id =  kb2, name = kb2
	global_par_kb2=7.0E-4;
% Parameter:   id =  kb3, name = kb3
	global_par_kb3=0.02;
% Parameter:   id =  kf5, name = kf5
	global_par_kf5=5.0E-4;
% Parameter:   id =  kb4, name = kb4
	global_par_kb4=0.001;
% Parameter:   id =  STIM, name = STIM
% Parameter:   id =  PSI, name = PSI
	global_par_PSI=0.0;
% Parameter:   id =  LAC, name = LAC
	global_par_LAC=0.0;
% Parameter:   id =  W, name = W
% Parameter:   id =  tstimdur, name = tstimdur
	global_par_tstimdur=20.0;
% Parameter:   id =  kf1bas_value, name = kf1bas_value
	global_par_kf1bas_value=0.001;
% Parameter:   id =  ModelValue_28, name = Initial for kf1bas_value
	global_par_ModelValue_28=0.001;
% Parameter:   id =  ModelValue_27, name = Initial for tstimdur
	global_par_ModelValue_27=20.0;
% assignmentRule: variable = kf1bas
	global_par_kf1bas=piecewise(0, time <= global_par_ModelValue_27, global_par_ModelValue_28);
% assignmentRule: variable = STIM
	global_par_STIM=piecewise(1, time <= global_par_ModelValue_27, 0);
% assignmentRule: variable = W
	global_par_W=x(9)+5*x(5)+8*x(6)+4*x(7)+8*x(8);

% Reaction: id = PP_Synthesis, name = PP_Synthesis
	reaction_PP_Synthesis=compartment_compartment*Function_for_PP_Synthesis(global_par_PSI, global_par_ksyn1, global_par_STIM, global_par_ksyn1bas);

% Reaction: id = PP_Degradation, name = PP_Degradation
	reaction_PP_Degradation=compartment_compartment*global_par_kdeg1*x(1);

% Reaction: id = NP_Synthesis, name = NP_Synthesis
	reaction_NP_Synthesis=compartment_compartment*Function_for_NP_Synthesis(global_par_PSI, global_par_ksyn2, global_par_STIM, global_par_ksyn2bas);

% Reaction: id = NP_Degradation_UPS, name = NP_Degradation_UPS
	reaction_NP_Degradation_UPS=compartment_compartment*Function_for_NP_Degradation_UPS(global_par_kdeg2, x(4), x(2), global_par_LAC);

% Reaction: id = NP_Degradation, name = NP_Degradation
	reaction_NP_Degradation=compartment_compartment*global_par_kdeg2bas*x(2);

% Reaction: id = STAB_Synthesis_STIM, name = STAB_Synthesis_STIM
	reaction_STAB_Synthesis_STIM=compartment_compartment*Function_for_STAB_Synthesis_STIM(global_par_ksyn3, global_par_STIM);

% Reaction: id = STAB_Degradation, name = STAB_Degradation
	reaction_STAB_Degradation=compartment_compartment*global_par_kdeg3*x(3);

% Reaction: id = EP1_Synthesis_STIM_BAS, name = EP1_Synthesis_STIM_BAS
	reaction_EP1_Synthesis_STIM_BAS=compartment_compartment*Function_for_EP1_Synthesis_STIM_BAS(global_par_kf1, global_par_STIM, x(9));

% Reaction: id = EP1_Synthesis_STIM_BAS_bas, name = EP1_Synthesis_STIM_BAS_bas
	reaction_EP1_Synthesis_STIM_BAS_bas=compartment_compartment*Function_for_EP1_Synthesis_STIM_BAS_bas(global_par_kf1bas, global_par_STIM, x(9));

% Reaction: id = ED_Synthesis_EP1_UPS, name = ED_Synthesis_EP1_UPS
	reaction_ED_Synthesis_EP1_UPS=compartment_compartment*Function_for_ED_Synthesis_EP1_UPS(global_par_kf2, x(4), global_par_LAC, x(5));

% Reaction: id = BAS_Synthesis_EP1, name = BAS_Synthesis_EP1
	reaction_BAS_Synthesis_EP1=compartment_compartment*global_par_kb1*x(5);

% Reaction: id = EP2_Synthesis_EP1, name = EP2_Synthesis_EP1
	reaction_EP2_Synthesis_EP1=compartment_compartment*Function_for_EP2_Synthesis_EP1(global_par_kf3, x(3), x(5));

% Reaction: id = ED_Synthesis_EP2, name = ED_Synthesis_EP2
	reaction_ED_Synthesis_EP2=compartment_compartment*Function_for_ED_Synthesis_EP2(global_par_kf4, x(4), global_par_LAC, x(6));

% Reaction: id = BAS_Synthesis_EP2, name = BAS_Synthesis_EP2
	reaction_BAS_Synthesis_EP2=compartment_compartment*Function_for_BAS_Synthesis_EP2(global_par_kb2, x(6), x(2));

% Reaction: id = BAS_Synthesis_ED, name = BAS_Synthesis_ED
	reaction_BAS_Synthesis_ED=compartment_compartment*global_par_kb3*x(7);

% Reaction: id = LP_Synthesis_ED, name = LP_Synthesis_ED
	reaction_LP_Synthesis_ED=compartment_compartment*Function_for_LP_Synthesis_ED(global_par_kf5, x(1), x(7));

% Reaction: id = BAS_Synthesis_LP, name = BAS_Synthesis_LP
	reaction_BAS_Synthesis_LP=compartment_compartment*global_par_kb4*x(8);

% Reaction: id = UPS_Activation, name = UPS_Activation
	reaction_UPS_Activation=compartment_compartment*Function_for_UPS_Activation(global_par_kact, global_par_STIM);

% Reaction: id = UPS_Deactivation, name = UPS_Deactivation
	reaction_UPS_Deactivation=compartment_compartment*global_par_kdeact*x(4);

	xdot=zeros(9,1);
	
% Species:   id = PP, name = PP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_PP_Synthesis) + (-1.0 * reaction_PP_Degradation));
	
% Species:   id = NP, name = NP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_NP_Synthesis) + (-1.0 * reaction_NP_Degradation_UPS) + (-1.0 * reaction_NP_Degradation));
	
% Species:   id = STAB, name = STAB, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_STAB_Synthesis_STIM) + ( 1.0 * reaction_STAB_Synthesis_Basal) + (-1.0 * reaction_STAB_Degradation));
	
% Species:   id = UPS, name = UPS, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_UPS_Activation) + ( 1.0 * reaction_UPS_Activation_Basal) + (-1.0 * reaction_UPS_Deactivation));
	
% Species:   id = EP1, name = EP1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_EP1_Synthesis_STIM_BAS) + ( 1.0 * reaction_EP1_Synthesis_STIM_BAS_bas) + (-1.0 * reaction_ED_Synthesis_EP1_UPS) + (-1.0 * reaction_BAS_Synthesis_EP1) + (-1.0 * reaction_EP2_Synthesis_EP1));
	
% Species:   id = EP2, name = EP2, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_EP2_Synthesis_EP1) + (-1.0 * reaction_ED_Synthesis_EP2) + (-1.0 * reaction_BAS_Synthesis_EP2));
	
% Species:   id = ED, name = ED, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_ED_Synthesis_EP1_UPS) + ( 1.0 * reaction_ED_Synthesis_EP2) + (-1.0 * reaction_BAS_Synthesis_ED) + (-1.0 * reaction_LP_Synthesis_ED));
	
% Species:   id = LP, name = LP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_LP_Synthesis_ED) + (-1.0 * reaction_BAS_Synthesis_LP));
	
% Species:   id = BAS, name = BAS, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_EP1_Synthesis_STIM_BAS) + (-1.0 * reaction_EP1_Synthesis_STIM_BAS_bas) + ( 1.0 * reaction_BAS_Synthesis_EP1) + ( 1.0 * reaction_BAS_Synthesis_EP2) + ( 1.0 * reaction_BAS_Synthesis_ED) + ( 1.0 * reaction_BAS_Synthesis_LP));
end

function z=Function_for_LP_Synthesis_ED(kf5,PP,ED), z=(kf5*PP^2*ED);end

function z=Function_for_EP2_Synthesis_EP1(kf3,STAB,EP1), z=(kf3*STAB*EP1);end

function z=Function_for_EP1_Synthesis_STIM_BAS_bas(kf1bas,STIM,BAS), z=(kf1bas*(1-STIM)*BAS);end

function z=Function_for_EP1_Synthesis_STIM_BAS(kf1,STIM,BAS), z=(kf1*STIM*BAS);end

function z=Function_for_ED_Synthesis_EP1_UPS(kf2,UPS,LAC,EP1), z=(kf2*UPS*(1-LAC)*EP1);end

function z=Function_for_BAS_Synthesis_EP2(kb2,EP2,NP), z=(kb2*EP2*NP);end

function z=Function_for_ED_Synthesis_EP2(kf4,UPS,LAC,EP2), z=(kf4*UPS*(1-LAC)*EP2);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_NP_Degradation_UPS(kdeg2,UPS,NP,LAC), z=(kdeg2*UPS*NP*(1-LAC));end

function z=Function_for_PP_Synthesis(PSI,ksyn1,STIM,ksyn1bas), z=((1-PSI)*(ksyn1*STIM+ksyn1bas));end

function z=Function_for_STAB_Synthesis_STIM(ksyn3,STIM), z=(ksyn3*STIM);end

function z=Function_for_NP_Synthesis(PSI,ksyn2,STIM,ksyn2bas), z=((1-PSI)*(ksyn2*STIM+ksyn2bas));end

function z=Function_for_UPS_Activation(kact,STIM), z=(kact*STIM);end

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


