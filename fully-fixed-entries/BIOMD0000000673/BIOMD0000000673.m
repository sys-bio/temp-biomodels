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
% Model name = Lockwood2006 - Alzheimer's Disease PBPK model
%
% is http://identifiers.org/biomodels.db/MODEL1006230054
% isDescribedBy http://identifiers.org/pubmed/16906456
% is http://identifiers.org/biomodels.db/BIOMD0000000673
%


function main()
%Initial conditions vector
	x0=zeros(0,1);


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  S0, name = S0
	global_par_S0=30.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0164;
% Parameter:   id =  MODEL_TIME, name = MODEL_TIME
	global_par_MODEL_TIME=1.0;
% Parameter:   id =  PD_CeP, name = PD_CeP
% Parameter:   id =  PD_CeA, name = PD_CeA
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.0;
% Parameter:   id =  S, name = S
% Parameter:   id =  Beta_P, name = Beta_P
	global_par_Beta_P=-3.0;
% Parameter:   id =  Keq_P, name = Keq_P
% Parameter:   id =  Kel_P, name = Kel_P
% Parameter:   id =  t_half_eq, name = t_half_eq
	global_par_t_half_eq=6.0;
% Parameter:   id =  t_half_el, name = t_half_el
	global_par_t_half_el=7.0;
% Parameter:   id =  Beta_A, name = Beta_A
	global_par_Beta_A=-0.047;
% Parameter:   id =  CeA, name = CeA
	global_par_CeA=25.0;
% Parameter:   id =  ECeA_50, name = ECeA_50
	global_par_ECeA_50=21.0;
% Parameter:   id =  Emax, name = Emax
% Parameter:   id =  n, name = n
% Parameter:   id =  CeA_U, name = CeA_U
% Parameter:   id =  ICea_U, name = ICea_U
% Parameter:   id =  ECea_U50, name = ECea_U50
	global_par_ECea_U50=18.0;
% Parameter:   id =  ICea_U50, name = ICea_U50
	global_par_ICea_U50=38.0;
% Parameter:   id =  MODEL_TYPE, name = MODEL_TYPE
	global_par_MODEL_TYPE=3.0;
% Parameter:   id =  ANT_AGONIST_COMBINATION, name = ANT_AGONIST_COMBINATION
	global_par_ANT_AGONIST_COMBINATION=0.0;
% Parameter:   id =  Model_Inactive, name = Model_Inactive
% Parameter:   id =  Model_active_Linear, name = Model_active_Linear
% Parameter:   id =  Model_active_Hyperbolic, name = Model_active_Hyperbolic
% Parameter:   id =  Model_active_Sigmoidal, name = Model_active_Sigmoidal
% Parameter:   id =  Model_active_U_Shaped, name = Model_active_U_Shaped
% Parameter:   id =  ADAS_COG_P, name = ADAS_COG_P
% assignmentRule: variable = Emax
	global_par_Emax=piecewise(-4, global_par_MODEL_TYPE == 2, piecewise(-3, global_par_MODEL_TYPE == 3, piecewise(-6, global_par_MODEL_TYPE == 4, 0)));
% assignmentRule: variable = n
	global_par_n=piecewise(4, global_par_MODEL_TYPE == 3, piecewise(3, global_par_MODEL_TYPE == 4, 0));
% assignmentRule: variable = CeA_U
	global_par_CeA_U=piecewise(piecewise(0*global_par_CeA, global_par_ANT_AGONIST_COMBINATION == 0, piecewise(0*global_par_CeA, global_par_ANT_AGONIST_COMBINATION == 2, 0)), global_par_MODEL_TYPE == 4, 0);
% assignmentRule: variable = ICea_U
	global_par_ICea_U=piecewise(piecewise(0*global_par_CeA, global_par_ANT_AGONIST_COMBINATION == 1, piecewise(0*global_par_CeA, global_par_ANT_AGONIST_COMBINATION == 2, 0)), global_par_MODEL_TYPE == 4, 0);
% assignmentRule: variable = Model_Inactive
	global_par_Model_Inactive=0*global_par_CeA;
% assignmentRule: variable = Model_active_Linear
	global_par_Model_active_Linear=global_par_Beta_A*global_par_CeA;
% assignmentRule: variable = Model_active_Hyperbolic
	global_par_Model_active_Hyperbolic=global_par_Emax*global_par_CeA/(global_par_ECeA_50+global_par_CeA);
% assignmentRule: variable = Model_active_Sigmoidal
	global_par_Model_active_Sigmoidal=global_par_Emax*global_par_CeA^global_par_n/(global_par_ECeA_50^global_par_n+global_par_CeA^global_par_n);
% assignmentRule: variable = Model_active_U_Shaped
	global_par_Model_active_U_Shaped=global_par_Emax*(global_par_CeA_U^global_par_n/(global_par_ECea_U50^global_par_n+global_par_CeA_U^global_par_n)-global_par_ICea_U^global_par_n/(global_par_ICea_U50^global_par_n+global_par_ICea_U^global_par_n));
% assignmentRule: variable = PD_CeA
	global_par_PD_CeA=piecewise(global_par_Model_Inactive, global_par_MODEL_TYPE == 0, piecewise(global_par_Model_active_Linear, global_par_MODEL_TYPE == 1, piecewise(global_par_Model_active_Hyperbolic, global_par_MODEL_TYPE == 2, piecewise(global_par_Model_active_Sigmoidal, global_par_MODEL_TYPE == 3, piecewise(global_par_Model_active_U_Shaped, global_par_MODEL_TYPE == 4, 0)))));
% assignmentRule: variable = ADAS_COG_P
	global_par_ADAS_COG_P=global_par_Beta_P*global_par_Keq_P/(global_par_Keq_P-global_par_Kel_P)*(exp((-1)*global_par_Kel_P*global_par_MODEL_TIME)-exp((-1)*global_par_Keq_P*global_par_MODEL_TIME));
% assignmentRule: variable = PD_CeP
	global_par_PD_CeP=global_par_ADAS_COG_P;
% assignmentRule: variable = S
	global_par_S=global_par_S0+global_par_alpha*global_par_MODEL_TIME+global_par_PD_CeP+global_par_PD_CeA+global_par_epsilon;

	xdot=zeros(0,1);
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


