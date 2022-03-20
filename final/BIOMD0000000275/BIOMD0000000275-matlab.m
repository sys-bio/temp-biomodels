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
% Model name = Goldbeter2007_Somitogenesis_Switch
%
% is http://identifiers.org/biomodels.db/MODEL1011170000
% is http://identifiers.org/biomodels.db/BIOMD0000000275
% isDescribedBy http://identifiers.org/pubmed/17497689
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 1.0;
	x0(5) = 0;


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

% Compartment: id = PSM, name = PSM, constant
	compartment_PSM=1.0;
% Parameter:   id =  vs1, name = vs1
% Parameter:   id =  kd5, name = kd5
	global_par_kd5=0.0;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=1.0;
% Parameter:   id =  V0, name = V0
	global_par_V0=0.365;
% Parameter:   id =  Vsc, name = Vsc
	global_par_Vsc=7.1;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=0.2;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=1.0;
% Parameter:   id =  ks2, name = ks2
	global_par_ks2=1.0;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.28;
% Parameter:   id =  ks3, name = ks3
	global_par_ks3=1.0;
% Parameter:   id =  Ki, name = Ki
	global_par_Ki=0.2;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  kd4, name = kd4
	global_par_kd4=1.0;
% Parameter:   id =  ks1, name = ks1
	global_par_ks1=1.0;
% Parameter:   id =  RALDH2_0, name = RALDH2_0
	global_par_RALDH2_0=7.1;
% Parameter:   id =  x, name = x
	global_par_x=15.0;
% Parameter:   id =  L, name = L
	global_par_L=50.0;
% Parameter:   id =  M_0, name = M_0
	global_par_M_0=5.0;
% Parameter:   id =  rho, name = rho
% Parameter:   id =  alpha2, name = alpha2
% Parameter:   id =  alpha1, name = alpha1
% Parameter:   id =  Kr1, name = Kr1
	global_par_Kr1=1.0;
% Parameter:   id =  Kr2, name = Kr2
	global_par_Kr2=1.0;
% assignmentRule: variable = M_F
	x(5)=global_par_M_0*global_par_x/global_par_L;
% assignmentRule: variable = vs1
	global_par_vs1=global_par_ks1*global_par_RALDH2_0*(1-global_par_x/global_par_L);
% assignmentRule: variable = rho
	global_par_rho=global_par_alpha2/global_par_alpha1;
% assignmentRule: variable = alpha2
	global_par_alpha2=x(4)/(x(4)+global_par_Kr2);
% assignmentRule: variable = alpha1
	global_par_alpha1=x(1)/(x(1)+global_par_Kr1);

% Reaction: id = RA_synthesis
	reaction_RA_synthesis=compartment_PSM*global_par_vs1;

% Reaction: id = RA_decay
	reaction_RA_decay=compartment_PSM*global_par_kd5*x(1);

% Reaction: id = RA_deg_by_Cyp26
	reaction_RA_deg_by_Cyp26=compartment_PSM*global_par_kd1*x(1)*x(3);

% Reaction: id = M_C_transcription
	reaction_M_C_transcription=compartment_PSM*(global_par_V0+global_par_Vsc*x(4)^global_par_n/(global_par_Ka^global_par_n+x(4)^global_par_n));

% Reaction: id = M_C_decay
	reaction_M_C_decay=compartment_PSM*global_par_kd3*x(2);

% Reaction: id = C_translation
	reaction_C_translation=compartment_PSM*global_par_ks2*x(2);

% Reaction: id = C_decay
	reaction_C_decay=compartment_PSM*global_par_kd2*x(3);

% Reaction: id = FGF_synthesis
	reaction_FGF_synthesis=compartment_PSM*global_par_ks3*x(5)*global_par_Ki^global_par_m/(global_par_Ki^global_par_m+x(1)^global_par_m);

% Reaction: id = FGF_decay
	reaction_FGF_decay=compartment_PSM*global_par_kd4*x(4);

	xdot=zeros(5,1);
	
% Species:   id = RA, name = RA, affected by kineticLaw
	xdot(1) = (1/(compartment_PSM))*(( 1.0 * reaction_RA_synthesis) + (-1.0 * reaction_RA_decay) + (-1.0 * reaction_RA_deg_by_Cyp26));
	
% Species:   id = M_C, name = cyp26_mRNA, affected by kineticLaw
	xdot(2) = (1/(compartment_PSM))*(( 1.0 * reaction_M_C_transcription) + (-1.0 * reaction_M_C_decay));
	
% Species:   id = C, name = CYP26, affected by kineticLaw
	xdot(3) = (1/(compartment_PSM))*(( 1.0 * reaction_C_translation) + (-1.0 * reaction_C_decay));
	
% Species:   id = F, name = FGF, affected by kineticLaw
	xdot(4) = (1/(compartment_PSM))*(( 1.0 * reaction_FGF_synthesis) + (-1.0 * reaction_FGF_decay));
	
% Species:   id = M_F, name = FGF_mRNA, defined in a rule 	xdot(5) = x(5);
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


