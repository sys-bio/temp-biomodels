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
% Model name = Bai2003_G1phaseRegulation
%
% is http://identifiers.org/biomodels.db/MODEL1003050000
% is http://identifiers.org/biomodels.db/BIOMD0000000242
% isDescribedBy http://identifiers.org/pubmed/12695688
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000168
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 2.5;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  GF_1, name = GF
	global_par_GF_1=6.3;
% Parameter:   id =  k1_1, name = k1
	global_par_k1_1=0.05;
% Parameter:   id =  dD_1, name = dD
	global_par_dD_1=0.4;
% Parameter:   id =  aD_1, name = aD
	global_par_aD_1=0.4;
% Parameter:   id =  aE_1, name = aE
	global_par_aE_1=0.16;
% Parameter:   id =  k2_1, name = k2
	global_par_k2_1=1000.0;
% Parameter:   id =  aF_1, name = aF
	global_par_aF_1=0.9;
% Parameter:   id =  pX_1, name = pX
	global_par_pX_1=0.48;
% Parameter:   id =  RT_1, name = RT
	global_par_RT_1=2.5;
% Parameter:   id =  qX_1, name = qX
	global_par_qX_1=0.8;
% Parameter:   id =  pS_1, name = pS
	global_par_pS_1=0.6;
% Parameter:   id =  pD_1, name = pD
	global_par_pD_1=0.48;
% Parameter:   id =  qD_1, name = qD
	global_par_qD_1=0.6;
% Parameter:   id =  pE_1, name = pE
	global_par_pE_1=0.096;
% Parameter:   id =  qE_1, name = qE
	global_par_qE_1=0.6;
% Parameter:   id =  atheta_1, name = atheta
	global_par_atheta_1=0.05;
% Parameter:   id =  k3_1, name = k3
	global_par_k3_1=1.5;
% Parameter:   id =  dtheta_1, name = dtheta
	global_par_dtheta_1=0.12;
% Parameter:   id =  qtheta_1, name = qtheta
	global_par_qtheta_1=0.3;
% Parameter:   id =  aX_1, name = aX
	global_par_aX_1=0.08;
% Parameter:   id =  f_1, name = f
	global_par_f_1=0.35;
% Parameter:   id =  g_1, name = g
	global_par_g_1=0.528;
% Parameter:   id =  dX_1, name = dX
	global_par_dX_1=1.04;
% Parameter:   id =  dE_1, name = dE
	global_par_dE_1=0.2;
% Parameter:   id =  fC_1_1, name = fe
	global_par_fC_1_1=0.003;
% Parameter:   id =  Rb_phos, name = Rb_phosphorylated
% assignmentRule: variable = Rb_phos
	global_par_Rb_phos=global_par_RT_1-x(4)-x(3);

% Reaction: id = _1, name = cyclinD synthesis
	reaction__1=compartment_cell*global_par_aD_1*global_par_GF_1/(global_par_k1_1^(-1)+global_par_GF_1);

% Reaction: id = cyclinD_1, name = cyclinD degradation
	reaction_cyclinD_1=compartment_cell*global_par_dD_1*x(2)*x(1);

% Reaction: id = cyclinEsynthesis_1, name = cyclinE synthesis
	reaction_cyclinEsynthesis_1=compartment_cell*global_par_aE_1*(global_par_GF_1/(global_par_k2_1^(-1)+global_par_GF_1)+global_par_aF_1*x(5));

% Reaction: id = cyclinEdegradation_1, name = cyclinE degradation
	reaction_cyclinEdegradation_1=compartment_cell*global_par_dE_1*x(6)*x(2);

% Reaction: id = pRBsynthesis_1, name = pRB synthesis
	reaction_pRBsynthesis_1=compartment_cell*global_par_pX_1*(global_par_RT_1-x(4)-x(3))*x(6)/(global_par_qX_1+global_par_RT_1-x(4)-x(3)+x(6));

% Reaction: id = pRBdeplation_1, name = pRB/E2F complex association
	reaction_pRBdeplation_1=compartment_cell*Mass_Action_2_1(global_par_pS_1, x(3), x(5));

% Reaction: id = _2, name = pRB/E2F complex dissociation via cyclin D
	reaction__2=compartment_cell*global_par_pD_1*x(4)*x(1)/(global_par_qD_1+x(4)+x(1));

% Reaction: id = null2_1, name = pRB/E2F complex dissociation via cyclin E
	reaction_null2_1=compartment_cell*global_par_pE_1*x(4)*x(2)/(global_par_qE_1+x(4)+x(2));

% Reaction: id = null3_1, name = E2F synthesis
	reaction_null3_1=compartment_cell*global_par_atheta_1*(global_par_GF_1/(global_par_k3_1^(-1)+global_par_GF_1)+global_par_fC_1_1*x(5));

% Reaction: id = E2Fdegradationviacellcycleprogression_1, name = E2F degradation via cell cycle progression
	reaction_E2Fdegradationviacellcycleprogression_1=compartment_cell*global_par_dtheta_1*x(6)/(global_par_qtheta_1+x(6))*x(5);

% Reaction: id = cellcycleprogression_1, name = cell cycle progression go
	reaction_cellcycleprogression_1=compartment_cell*(global_par_aX_1*x(2)+global_par_f_1*x(5)+global_par_g_1*x(6)^2*x(2));

% Reaction: id = cellcycleprogressionslow_1, name = cell cycle progression slow
	reaction_cellcycleprogressionslow_1=compartment_cell*global_par_dX_1*x(6);

	xdot=zeros(6,1);
	
% Species:   id = D_1, name = D, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction__1) + (-1.0 * reaction_cyclinD_1));
	
% Species:   id = E_1, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_cyclinEsynthesis_1) + (-1.0 * reaction_cyclinEdegradation_1));
	
% Species:   id = R_1, name = R, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_pRBsynthesis_1) + (-1.0 * reaction_pRBdeplation_1));
	
% Species:   id = RS_1, name = RS, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_pRBdeplation_1) + (-1.0 * reaction__2) + (-1.0 * reaction_null2_1));
	
% Species:   id = theta_1, name = theta, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_pRBdeplation_1) + ( 1.0 * reaction__2) + ( 1.0 * reaction_null2_1) + ( 1.0 * reaction_null3_1) + (-1.0 * reaction_E2Fdegradationviacellcycleprogression_1));
	
% Species:   id = X_1, name = X, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_cellcycleprogression_1) + (-1.0 * reaction_cellcycleprogressionslow_1));
end

function z=Mass_Action_2_1(k1,S1,S2), z=(k1*S1*S2);end

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


