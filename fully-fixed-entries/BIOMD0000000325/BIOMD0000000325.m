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
% Model name = Palini2011_Minimal_2_Feedback_Model
%
% is http://identifiers.org/biomodels.db/MODEL1102160000
% is http://identifiers.org/biomodels.db/BIOMD0000000325
% isDescribedBy http://identifiers.org/pubmed/21451590
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.1;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=NaN;
% Parameter:   id =  BR, name = BR
	global_par_BR=0.005;
% Parameter:   id =  Rs, name = Rs
	global_par_Rs=3.0;
% Parameter:   id =  KD, name = KD
	global_par_KD=200.0;
% Parameter:   id =  kdegR, name = kdegR
	global_par_kdegR=0.005;
% Parameter:   id =  kon, name = kon
	global_par_kon=0.001;
% Parameter:   id =  koff, name = koff
	global_par_koff=0.05;
% Parameter:   id =  kdegC, name = kdegC
	global_par_kdegC=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=45.0;
% Parameter:   id =  kdegX, name = kdegX
	global_par_kdegX=0.005;
% Parameter:   id =  kdegA, name = kdegA
	global_par_kdegA=0.005;
% Parameter:   id =  BI, name = BI
	global_par_BI=0.005;
% Parameter:   id =  TFs, name = TFs
	global_par_TFs=3.0;
% Parameter:   id =  kdegI, name = kdegI
	global_par_kdegI=0.005;

% Reaction: id = R_expression
	reaction_R_expression=compartment_cell*(global_par_BR+global_par_Rs*x(6)/(global_par_KD+x(6)));

% Reaction: id = R_degradation
	reaction_R_degradation=compartment_cell*global_par_kdegR*x(2);

% Reaction: id = R_L_binding
	reaction_R_L_binding=compartment_cell*(global_par_kon*x(1)*x(2)-global_par_koff*x(3));

% Reaction: id = C_degradation
	reaction_C_degradation=compartment_cell*global_par_kdegC*x(3);

% Reaction: id = C_I_binding
	reaction_C_I_binding=compartment_cell*(global_par_k1*x(3)*x(4)-global_par_k2*x(5));

% Reaction: id = I_activation
	reaction_I_activation=compartment_cell*global_par_k3*x(5);

% Reaction: id = X_degradation
	reaction_X_degradation=compartment_cell*global_par_kdegX*x(5);

% Reaction: id = A_degradation
	reaction_A_degradation=compartment_cell*global_par_kdegA*x(6);

% Reaction: id = I_expression
	reaction_I_expression=compartment_cell*(global_par_BI+global_par_TFs*x(6)/(global_par_KD+x(6)));

% Reaction: id = I_degradation
	reaction_I_degradation=compartment_cell*global_par_kdegI*x(4);

	xdot=zeros(6,1);
	
% Species:   id = L, name = L
%WARNING speciesID: L, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_R_expression) + (-1.0 * reaction_R_degradation) + (-1.0 * reaction_R_L_binding));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_R_L_binding) + (-1.0 * reaction_C_degradation) + (-1.0 * reaction_C_I_binding) + ( 1.0 * reaction_I_activation));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_C_I_binding) + ( 1.0 * reaction_I_expression) + (-1.0 * reaction_I_degradation));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_C_I_binding) + (-1.0 * reaction_I_activation) + (-1.0 * reaction_X_degradation));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_I_activation) + (-1.0 * reaction_A_degradation));
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


