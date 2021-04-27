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
% Model name = Teusink1998_Glycolysis_TurboDesign
%
% is http://identifiers.org/biomodels.db/MODEL1007200002
% is http://identifiers.org/biomodels.db/BIOMD0000000253
% isDescribedBy http://identifiers.org/pubmed/9612078
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.1;
	x0(2) = 1.0;
	x0(3) = 4.0;
	x0(4) = 10.0;
	x0(5) = 0;
	x0(6) = 0;


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
	compartment_cell=1.0;
% Parameter:   id =  lambda1, name = lambda1
% Parameter:   id =  lambda2, name = lambda2
% Parameter:   id =  lambda3, name = lambda3
% Parameter:   id =  R, name = R
% Parameter:   id =  T, name = T
% Parameter:   id =  L, name = L
% Parameter:   id =  KRHMP, name = KRHMP
	global_par_KRHMP=1.0;
% Parameter:   id =  gR, name = gR
	global_par_gR=10.0;
% Parameter:   id =  c1, name = c1
	global_par_c1=5.0E-4;
% Parameter:   id =  L0, name = L0
	global_par_L0=1000.0;
% Parameter:   id =  KRATP, name = KRATP
	global_par_KRATP=0.06;
% Parameter:   id =  gT, name = gT
	global_par_gT=1.0;
% Parameter:   id =  c2, name = c2
	global_par_c2=1.0;
% Parameter:   id =  KiATP, name = KiATP
	global_par_KiATP=10.0;
% Parameter:   id =  ci, name = ci
	global_par_ci=10.0;
% assignmentRule: variable = Tre6P
	x(5)=x(1)^2;
% assignmentRule: variable = ADP
	x(6)=5-x(3);
% assignmentRule: variable = lambda1
	global_par_lambda1=x(1)/global_par_KRHMP;
% assignmentRule: variable = lambda2
	global_par_lambda2=x(3)/global_par_KRATP;
% assignmentRule: variable = lambda3
	global_par_lambda3=x(3)/global_par_KiATP;
% assignmentRule: variable = R
	global_par_R=1+global_par_lambda1+global_par_lambda2+global_par_gR*global_par_lambda1*global_par_lambda2;
% assignmentRule: variable = T
	global_par_T=1+global_par_c1*global_par_lambda1+global_par_c2*global_par_lambda2+global_par_gT*global_par_c1*global_par_lambda1*global_par_c2*global_par_lambda2;
% assignmentRule: variable = L
	global_par_L=global_par_L0*((1+global_par_ci*global_par_lambda3)/(1+global_par_lambda3))^2;

% Reaction: id = HK, name = hexokinase	% Local Parameter:   id =  VHK, name = VHK
	reaction_HK_VHK=68.0;
	% Local Parameter:   id =  KATP, name = KATP
	reaction_HK_KATP=0.15;
	% Local Parameter:   id =  KGlc, name = KGlc
	reaction_HK_KGlc=1.0;
	% Local Parameter:   id =  KiTre6P, name = KiTre6P
	reaction_HK_KiTre6P=4.422;
	% Local Parameter:   id =  wild_type, name = wild_type
	reaction_HK_wild_type=1.0;

	reaction_HK=compartment_cell*reaction_HK_VHK*x(4)*x(3)/(reaction_HK_KGlc*reaction_HK_KATP)/((1+x(4)/reaction_HK_KGlc+reaction_HK_wild_type*x(5)/reaction_HK_KiTre6P)*(1+x(3)/reaction_HK_KATP));

% Reaction: id = PFK, name = phosphofructokinase	% Local Parameter:   id =  VPFK, name = VPFK
	reaction_PFK_VPFK=30.0;

	reaction_PFK=compartment_cell*reaction_PFK_VPFK*global_par_gR*global_par_lambda1*global_par_lambda2*global_par_R/(global_par_R^2+global_par_L*global_par_T^2);

% Reaction: id = lower, name = lower	% Local Parameter:   id =  Vlower, name = Vlower
	reaction_lower_Vlower=20.0;
	% Local Parameter:   id =  KFru16P2, name = KFru16P2
	reaction_lower_KFru16P2=1.0;
	% Local Parameter:   id =  KADP, name = KADP
	reaction_lower_KADP=0.1;

	reaction_lower=compartment_cell*reaction_lower_Vlower*x(2)*x(6)/(reaction_lower_KFru16P2*reaction_lower_KADP)/((1+x(2)/reaction_lower_KFru16P2)*(1+x(6)/reaction_lower_KADP));

% Reaction: id = ATPase, name = ATPase	% Local Parameter:   id =  VATPase, name = VATPase
	reaction_ATPase_VATPase=68.0;
	% Local Parameter:   id =  KATP, name = KATP
	reaction_ATPase_KATP=3.0;

	reaction_ATPase=compartment_cell*reaction_ATPase_VATPase*x(3)/(reaction_ATPase_KATP+x(3));

	xdot=zeros(6,1);
	
% Species:   id = HMP, name = hexose monophosphate, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_HK) + (-1.0 * reaction_PFK));
	
% Species:   id = Fru16P2, name = fructose 1,6-bisphosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_PFK) + (-1.0 * reaction_lower));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_HK) + (-1.0 * reaction_PFK) + ( 4.0 * reaction_lower) + (-1.0 * reaction_ATPase));
	
% Species:   id = Glc, name = glucose
%WARNING speciesID: Glc, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = Tre6P, name = trehalose 6-phosphate, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(6) = x(6);
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


