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
% Model name = Brännmark2013 - Insulin signalling in human adipocytes (normal condition)
%
% is http://identifiers.org/biomodels.db/MODEL1304190000
% is http://identifiers.org/biomodels.db/BIOMD0000000448
% isDescribedBy http://identifiers.org/pubmed/23400783
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000343
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 99.8737104842408;
	x0(2) = 0.00186253217635894;
	x0(3) = 0.0;
	x0(4) = 0.0188430465801578;
	x0(5) = 0.105583925473107;
	x0(6) = 82.9671997523599;
	x0(7) = 0.00119481841136737;
	x0(8) = 0.327454355438396;
	x0(9) = 16.7041510257561;
	x0(10) = 99.9983336594667;
	x0(11) = 0.00166634053318549;
	x0(12) = 68.1806649661901;
	x0(13) = 13.2964849666951;
	x0(14) = 16.8171941560617;
	x0(15) = 1.70566051030056;
	x0(16) = 86.5002472240273;
	x0(17) = 13.4997527759726;
	x0(18) = 99.8478148461591;
	x0(19) = 0.152185153840861;
	x0(20) = 83.8141018591099;
	x0(21) = 16.1858981408903;
	x0(22) = 26.523878746229;
	x0(23) = 73.476121253771;
	x0(24) = 99.2731987219547;
	x0(25) = 0.72680127804522;
	x0(26) = 92.7596420796038;
	x0(27) = 7.24035792039603;


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

% Compartment: id = cellvolume, name = cellvolume, constant
	compartment_cellvolume=1.0;
% Parameter:   id =  diabetes, name = diabetes
	global_par_diabetes=1.0;
% Parameter:   id =  k1a, name = k1a
	global_par_k1a=0.6331;
% Parameter:   id =  k1basal, name = k1basal
	global_par_k1basal=0.03683;
% Parameter:   id =  k1c, name = k1c
	global_par_k1c=0.8768;
% Parameter:   id =  k1d, name = k1d
	global_par_k1d=31.01;
% Parameter:   id =  k1f, name = k1f
	global_par_k1f=1840.0;
% Parameter:   id =  k1g, name = k1g
	global_par_k1g=1944.0;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=0.5471;
% Parameter:   id =  k2a, name = k2a
	global_par_k2a=3.227;
% Parameter:   id =  k2c, name = k2c
	global_par_k2c=5759.0;
% Parameter:   id =  k2basal, name = k2basal
	global_par_k2basal=0.04228;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=3424.0;
% Parameter:   id =  k2d, name = k2d
	global_par_k2d=280.8;
% Parameter:   id =  k2f, name = k2f
	global_par_k2f=2.913;
% Parameter:   id =  k2g, name = k2g
	global_par_k2g=0.2671;
% Parameter:   id =  k3a, name = k3a
	global_par_k3a=0.001377;
% Parameter:   id =  k3b, name = k3b
	global_par_k3b=0.09876;
% Parameter:   id =  k4a, name = k4a
	global_par_k4a=5790.0;
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=34.8;
% Parameter:   id =  k4c, name = k4c
	global_par_k4c=4.456;
% Parameter:   id =  k4e, name = k4e
	global_par_k4e=42.84;
% Parameter:   id =  k4f, name = k4f
	global_par_k4f=143.6;
% Parameter:   id =  k4h, name = k4h
	global_par_k4h=0.5361;
% Parameter:   id =  k5a1, name = k5a1
	global_par_k5a1=1.842;
% Parameter:   id =  k5a2, name = k5a2
	global_par_k5a2=0.05506;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=24.83;
% Parameter:   id =  k5d, name = k5d
	global_par_k5d=1.06;
% Parameter:   id =  km5, name = km5
	global_par_km5=2.65;
% Parameter:   id =  k5c, name = k5c
	global_par_k5c=0.08575;
% Parameter:   id =  k6f1, name = k6f1
	global_par_k6f1=2.652;
% Parameter:   id =  k6f2, name = k6f2
	global_par_k6f2=36.93;
% Parameter:   id =  km6, name = km6
	global_par_km6=30.54;
% Parameter:   id =  n6, name = n6
	global_par_n6=2.137;
% Parameter:   id =  k6b, name = k6b
	global_par_k6b=65.18;
% Parameter:   id =  k7f, name = k7f
	global_par_k7f=50.98;
% Parameter:   id =  k7b, name = k7b
	global_par_k7b=2286.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=724.2;
% Parameter:   id =  glut1, name = glut1
	global_par_glut1=7042.0;
% Parameter:   id =  k9f1, name = k9f1
	global_par_k9f1=0.1298;
% Parameter:   id =  k9b1, name = k9b1
	global_par_k9b1=0.04441;
% Parameter:   id =  k9f2, name = k9f2
	global_par_k9f2=3.329;
% Parameter:   id =  k9b2, name = k9b2
	global_par_k9b2=31.0;
% Parameter:   id =  km9, name = km9
	global_par_km9=5873.0;
% Parameter:   id =  n9, name = n9
	global_par_n9=0.9855;
% Parameter:   id =  scaleIR, name = scaleIR
	global_par_scaleIR=5.2022;
% Parameter:   id =  scaleIRS1, name = scaleIRS1
	global_par_scaleIRS1=0.37615;
% Parameter:   id =  scaleIRS1ds, name = scaleIRS1ds
	global_par_scaleIRS1ds=14.892;
% Parameter:   id =  scaleIRS1307, name = scaleIRS1307
	global_par_scaleIRS1307=0.058663;
% Parameter:   id =  scalePKB308, name = scalePKB308
	global_par_scalePKB308=0.043564;
% Parameter:   id =  scalePKB473, name = scalePKB473
	global_par_scalePKB473=0.012996;
% Parameter:   id =  scaleAS160, name = scaleAS160
	global_par_scaleAS160=0.026656;
% Parameter:   id =  scaleGLUCOSE, name = scaleGLUCOSE
	global_par_scaleGLUCOSE=0.040513;
% Parameter:   id =  scaleS6K, name = scaleS6K
	global_par_scaleS6K=0.74654;
% Parameter:   id =  scaleS6, name = scaleS6
	global_par_scaleS6=0.11494;
% Parameter:   id =  gluc, name = gluc
	global_par_gluc=0.05;
% Parameter:   id =  insulin, name = insulin
	global_par_insulin=10.0;
% Parameter:   id =  measuredIRp, name = measuredIRp
% Parameter:   id =  measuredIRint, name = measuredIRint
% Parameter:   id =  measuredIRS1p, name = measuredIRS1p
% Parameter:   id =  measuredIRS1307, name = measuredIRS1307
% Parameter:   id =  measuredPKB308p, name = measuredPKB308p
% Parameter:   id =  measuredPKB473p, name = measuredPKB473p
% Parameter:   id =  measuredAS160p, name = measuredAS160p
% Parameter:   id =  measuredmTORC1a, name = measuredmTORC1a
% Parameter:   id =  measuredS6Kp, name = measuredS6Kp
% Parameter:   id =  measuredS6p, name = measuredS6p
% Parameter:   id =  measuredmTORC2a, name = measuredmTORC2a
% Parameter:   id =  glucoseuptake, name = glucoseuptake
% assignmentRule: variable = measuredIRp
	global_par_measuredIRp=global_par_scaleIR*(x(2)+x(4));
% assignmentRule: variable = measuredIRint
	global_par_measuredIRint=x(5)+x(4);
% assignmentRule: variable = measuredIRS1p
	global_par_measuredIRS1p=global_par_scaleIRS1*(x(7)+x(8));
% assignmentRule: variable = measuredIRS1307
	global_par_measuredIRS1307=global_par_scaleIRS1307*(x(8)+x(9));
% assignmentRule: variable = measuredPKB308p
	global_par_measuredPKB308p=global_par_scalePKB308*(x(13)+x(15));
% assignmentRule: variable = measuredPKB473p
	global_par_measuredPKB473p=global_par_scalePKB473*(x(14)+x(15));
% assignmentRule: variable = measuredAS160p
	global_par_measuredAS160p=global_par_scaleAS160*x(21);
% assignmentRule: variable = measuredmTORC1a
	global_par_measuredmTORC1a=x(17);
% assignmentRule: variable = measuredS6Kp
	global_par_measuredS6Kp=global_par_scaleS6K*x(25);
% assignmentRule: variable = measuredS6p
	global_par_measuredS6p=global_par_scaleS6*x(27);
% assignmentRule: variable = measuredmTORC2a
	global_par_measuredmTORC2a=x(19);
% assignmentRule: variable = glucoseuptake
	global_par_glucoseuptake=global_par_k8*x(22)*global_par_gluc+global_par_glut1*global_par_gluc;

% Reaction: id = v1a, name = v1a
	reaction_v1a=x(1)*global_par_k1a*global_par_insulin;

% Reaction: id = v1basal, name = v1basal
	reaction_v1basal=global_par_k1basal*x(1);

% Reaction: id = v1c, name = v1c
	reaction_v1c=x(3)*global_par_k1c;

% Reaction: id = v1d, name = v1d
	reaction_v1d=x(2)*global_par_k1d;

% Reaction: id = v1e, name = v1e
	reaction_v1e=x(4)*global_par_k1f*x(11);

% Reaction: id = v1g, name = v1g
	reaction_v1g=x(2)*global_par_k1g;

% Reaction: id = v1r, name = v1r
	reaction_v1r=x(5)*global_par_k1r;

% Reaction: id = v2a, name = v2a
	reaction_v2a=x(6)*global_par_k2a*x(4);

% Reaction: id = v2b, name = v2b
	reaction_v2b=x(7)*global_par_k2b;

% Reaction: id = v2c, name = v2c
	reaction_v2c=x(7)*global_par_k2c*x(17)*global_par_diabetes;

% Reaction: id = v2d, name = v2d
	reaction_v2d=x(8)*global_par_k2d;

% Reaction: id = v2f, name = v2f
	reaction_v2f=x(8)*global_par_k2f;

% Reaction: id = v2basal, name = v2basal
	reaction_v2basal=x(6)*global_par_k2basal;

% Reaction: id = v2g, name = v2g
	reaction_v2g=x(9)*global_par_k2g;

% Reaction: id = v3a, name = v3a
	reaction_v3a=x(10)*global_par_k3a*x(7);

% Reaction: id = v3b, name = v3b
	reaction_v3b=x(11)*global_par_k3b;

% Reaction: id = v5a, name = v5a
	reaction_v5a=x(16)*(global_par_k5a1*x(15)+global_par_k5a2*x(13));

% Reaction: id = v5b, name = v5b
	reaction_v5b=x(17)*global_par_k5b;

% Reaction: id = v5c, name = v5c
	reaction_v5c=x(18)*global_par_k5c*x(4);

% Reaction: id = v5d, name = v5d
	reaction_v5d=global_par_k5d*x(19);

% Reaction: id = v4a, name = v4a
	reaction_v4a=global_par_k4a*x(12)*x(7);

% Reaction: id = v4b, name = v4b
	reaction_v4b=global_par_k4b*x(13);

% Reaction: id = v4c, name = v4c
	reaction_v4c=global_par_k4c*x(13)*x(19);

% Reaction: id = v4e, name = v4e
	reaction_v4e=global_par_k4e*x(14)*x(8);

% Reaction: id = v4f, name = v4f
	reaction_v4f=global_par_k4f*x(15);

% Reaction: id = v4h, name = v4h
	reaction_v4h=global_par_k4h*x(14);

% Reaction: id = v6f1, name = v6f1
	reaction_v6f1=x(20)*(global_par_k6f1*x(15)+global_par_k6f2*x(14)^global_par_n6/(global_par_km6^global_par_n6+x(14)^global_par_n6));

% Reaction: id = v6b1, name = v6b1
	reaction_v6b1=x(21)*global_par_k6b;

% Reaction: id = v7f, name = v7f
	reaction_v7f=x(23)*global_par_k7f*x(21);

% Reaction: id = v7b, name = v7b
	reaction_v7b=x(22)*global_par_k7b;

% Reaction: id = v9f1, name = v9f1
	reaction_v9f1=x(24)*global_par_k9f1*x(17)^global_par_n9/(global_par_km9^global_par_n9+x(17)^global_par_n9);

% Reaction: id = v9b1, name = v9b1
	reaction_v9b1=x(25)*global_par_k9b1;

% Reaction: id = v9f2, name = v9f2
	reaction_v9f2=x(26)*global_par_k9f2*x(25);

% Reaction: id = v9b2, name = v9b2
	reaction_v9b2=x(27)*global_par_k9b2;

	xdot=zeros(27,1);
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(1) = (1/(compartment_cellvolume))*((-1.0 * reaction_v1a) + (-1.0 * reaction_v1basal) + ( 1.0 * reaction_v1g) + ( 1.0 * reaction_v1r));
	
% Species:   id = IRp, name = IRp, affected by kineticLaw
	xdot(2) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v1basal) + ( 1.0 * reaction_v1c) + (-1.0 * reaction_v1d) + (-1.0 * reaction_v1g));
	
% Species:   id = IRins, name = IRins, affected by kineticLaw
	xdot(3) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v1a) + (-1.0 * reaction_v1c));
	
% Species:   id = IRip, name = IRip, affected by kineticLaw
	xdot(4) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v1d) + (-1.0 * reaction_v1e));
	
% Species:   id = IRi, name = IRi, affected by kineticLaw
	xdot(5) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v1e) + (-1.0 * reaction_v1r));
	
% Species:   id = IRS1, name = IRS1, affected by kineticLaw
	xdot(6) = (1/(compartment_cellvolume))*((-1.0 * reaction_v2a) + ( 1.0 * reaction_v2b) + (-1.0 * reaction_v2basal) + ( 1.0 * reaction_v2g));
	
% Species:   id = IRS1p, name = IRS1p, affected by kineticLaw
	xdot(7) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v2a) + (-1.0 * reaction_v2b) + (-1.0 * reaction_v2c) + ( 1.0 * reaction_v2d));
	
% Species:   id = IRS1p307, name = IRS1p307, affected by kineticLaw
	xdot(8) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v2c) + (-1.0 * reaction_v2d) + (-1.0 * reaction_v2f));
	
% Species:   id = IRS1307, name = IRS1307, affected by kineticLaw
	xdot(9) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v2f) + ( 1.0 * reaction_v2basal) + (-1.0 * reaction_v2g));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(10) = (1/(compartment_cellvolume))*((-1.0 * reaction_v3a) + ( 1.0 * reaction_v3b));
	
% Species:   id = Xp, name = Xp, affected by kineticLaw
	xdot(11) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v3a) + (-1.0 * reaction_v3b));
	
% Species:   id = PKB, name = PKB, affected by kineticLaw
	xdot(12) = (1/(compartment_cellvolume))*((-1.0 * reaction_v4a) + ( 1.0 * reaction_v4b) + ( 1.0 * reaction_v4h));
	
% Species:   id = PKB308p, name = PKB308p, affected by kineticLaw
	xdot(13) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v4a) + (-1.0 * reaction_v4b) + (-1.0 * reaction_v4c));
	
% Species:   id = PKB473p, name = PKB473p, affected by kineticLaw
	xdot(14) = (1/(compartment_cellvolume))*((-1.0 * reaction_v4e) + ( 1.0 * reaction_v4f) + (-1.0 * reaction_v4h));
	
% Species:   id = PKB308p473p, name = PKB308p473p, affected by kineticLaw
	xdot(15) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v4c) + ( 1.0 * reaction_v4e) + (-1.0 * reaction_v4f));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(16) = (1/(compartment_cellvolume))*((-1.0 * reaction_v5a) + ( 1.0 * reaction_v5b));
	
% Species:   id = mTORC1a, name = mTORC1a, affected by kineticLaw
	xdot(17) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v5a) + (-1.0 * reaction_v5b));
	
% Species:   id = mTORC2, name = mTORC2, affected by kineticLaw
	xdot(18) = (1/(compartment_cellvolume))*((-1.0 * reaction_v5c) + ( 1.0 * reaction_v5d));
	
% Species:   id = mTORC2a, name = mTORC2a, affected by kineticLaw
	xdot(19) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v5c) + (-1.0 * reaction_v5d));
	
% Species:   id = AS160, name = AS160, affected by kineticLaw
	xdot(20) = (1/(compartment_cellvolume))*((-1.0 * reaction_v6f1) + ( 1.0 * reaction_v6b1));
	
% Species:   id = AS160p, name = AS160p, affected by kineticLaw
	xdot(21) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v6f1) + (-1.0 * reaction_v6b1));
	
% Species:   id = GLUT4m, name = GLUT4m, affected by kineticLaw
	xdot(22) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v7f) + (-1.0 * reaction_v7b));
	
% Species:   id = GLUT4, name = GLUT4, affected by kineticLaw
	xdot(23) = (1/(compartment_cellvolume))*((-1.0 * reaction_v7f) + ( 1.0 * reaction_v7b));
	
% Species:   id = S6K, name = S6K, affected by kineticLaw
	xdot(24) = (1/(compartment_cellvolume))*((-1.0 * reaction_v9f1) + ( 1.0 * reaction_v9b1));
	
% Species:   id = S6Kp, name = S6Kp, affected by kineticLaw
	xdot(25) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v9f1) + (-1.0 * reaction_v9b1));
	
% Species:   id = S6, name = S6, affected by kineticLaw
	xdot(26) = (1/(compartment_cellvolume))*((-1.0 * reaction_v9f2) + ( 1.0 * reaction_v9b2));
	
% Species:   id = S6p, name = S6p, affected by kineticLaw
	xdot(27) = (1/(compartment_cellvolume))*(( 1.0 * reaction_v9f2) + (-1.0 * reaction_v9b2));
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


