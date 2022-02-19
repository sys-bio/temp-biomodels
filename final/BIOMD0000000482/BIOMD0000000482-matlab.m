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
% Model name = Noguchi2013 - Insulin dependent glucose metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1301020001
% is http://identifiers.org/biomodels.db/BIOMD0000000482
% isDescribedBy http://identifiers.org/pubmed/23670537
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1204060000
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 0.4726;
	x0(2) = 0.1723;
	x0(3) = 2.905;
	x0(4) = 0.7686;
	x0(5) = 888.77;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.1182;
	x0(10) = 0.0;
	x0(11) = 880.25;
	x0(12) = 0.0;
	x0(13) = 1.069E-5;
	x0(14) = 0.0;
	x0(15) = 137.5;
	x0(16) = 114.9;
	x0(17) = 9.571;
	x0(18) = 0.9872;
	x0(19) = 1001.0;
	x0(20) = 0.0022;
	x0(21) = 4.8248;
	x0(22) = 5.303;
	x0(23) = 0.5188;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = Vex, name = Vex, constant
	compartment_Vex=0.004;
% Compartment: id = Vin, name = Vin, constant
	compartment_Vin=2.64E-5;
% Parameter:   id =  V1, name = V1
	global_par_V1=8.97;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.0451;
% Parameter:   id =  V2_G6P, name = V2_G6P
	global_par_V2_G6P=7.71;
% Parameter:   id =  K2_G6P, name = K2_G6P
	global_par_K2_G6P=925.0;
% Parameter:   id =  V2_F16P, name = V2_F16P
	global_par_V2_F16P=0.0839;
% Parameter:   id =  K2_F16P, name = K2_F16P
	global_par_K2_F16P=0.597;
% Parameter:   id =  V3, name = V3
	global_par_V3=0.00229;
% Parameter:   id =  K3, name = K3
	global_par_K3=2.92;
% Parameter:   id =  V6, name = V6
	global_par_V6=0.00247;
% Parameter:   id =  K6, name = K6
	global_par_K6=0.996;
% Parameter:   id =  V7, name = V7
	global_par_V7=2.84E-5;
% Parameter:   id =  K7, name = K7
	global_par_K7=8.43;
% Parameter:   id =  V4_PYR, name = V4_PYR
	global_par_V4_PYR=23.6;
% Parameter:   id =  K4_PYR, name = K4_PYR
	global_par_K4_PYR=56.4;
% Parameter:   id =  V4_LAC, name = V4_LAC
	global_par_V4_LAC=1.2E-6;
% Parameter:   id =  K4_LAC, name = K4_LAC
	global_par_K4_LAC=0.0154;
% Parameter:   id =  V8_G6P, name = V8_G6P
	global_par_V8_G6P=2.02E-5;
% Parameter:   id =  K8_G6P, name = K8_G6P
	global_par_K8_G6P=0.791;
% Parameter:   id =  V8_G1P, name = V8_G1P
	global_par_V8_G1P=0.04;
% Parameter:   id =  K8_G1P, name = K8_G1P
	global_par_K8_G1P=69.8;
% Parameter:   id =  V5, name = V5
	global_par_V5=0.00112;
% Parameter:   id =  K5, name = K5
	global_par_K5=0.228;
% Parameter:   id =  V9_G1P, name = V9_G1P
	global_par_V9_G1P=0.488;
% Parameter:   id =  K9_G1P, name = K9_G1P
	global_par_K9_G1P=2.69;
% Parameter:   id =  V9_GLY, name = V9_GLY
	global_par_V9_GLY=1.02E-6;
% Parameter:   id =  K9_GLY, name = K9_GLY
	global_par_K9_GLY=6.23E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=112.76;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.9448;
% Parameter:   id =  s1, name = s1
	global_par_s1=1.722;
% Parameter:   id =  s2, name = s4
	global_par_s2=214.7;
% Parameter:   id =  s3, name = s2
	global_par_s3=46.54;
% Parameter:   id =  s4, name = s3
	global_par_s4=1.19;
% Parameter:   id =  k1_PEPCK, name = k1_PEPCK
	global_par_k1_PEPCK=0.12225;
% Parameter:   id =  k2_PEPCK, name = k2_PEPCK
	global_par_k2_PEPCK=0.0045985;
% Parameter:   id =  k3_PEPCK, name = k3_PEPCK
	global_par_k3_PEPCK=486.28;
% Parameter:   id =  k4_PEPCK, name = k4_PEPCK
	global_par_k4_PEPCK=0.0046101;
% Parameter:   id =  k5_PEPCK, name = k5_PEPCK
	global_par_k5_PEPCK=1.0958E-4;
% Parameter:   id =  k6_PEPCK, name = k6_PEPCK
	global_par_k6_PEPCK=0.0018592;
% Parameter:   id =  param1, name = param1
	global_par_param1=5.5702;
% Parameter:   id =  param2, name = param2
	global_par_param2=2.3969;
% Parameter:   id =  param3, name = param3
	global_par_param3=0.020934;
% Parameter:   id =  param4, name = param4
	global_par_param4=1.214E-5;
% Parameter:   id =  param5, name = param5
	global_par_param5=0.2751;
% Parameter:   id =  param6, name = param6
	global_par_param6=0.0072509;
% Parameter:   id =  param7, name = param7
	global_par_param7=758.12;
% Parameter:   id =  param8, name = param8
	global_par_param8=0.91758;
% Parameter:   id =  param9, name = param9
	global_par_param9=0.041292;
% Parameter:   id =  param10, name = param10
	global_par_param10=1.3032E-4;
% Parameter:   id =  param11, name = param11
	global_par_param11=1.92E-4;
% Parameter:   id =  param12, name = param12
	global_par_param12=0.029311;
% Parameter:   id =  param13, name = param13
	global_par_param13=4.4307E-5;
% Parameter:   id =  param14, name = param14
	global_par_param14=0.35211;
% Parameter:   id =  param15, name = param15
	global_par_param15=3.1385E-5;
% Parameter:   id =  param16, name = param16
	global_par_param16=0.0095934;
% Parameter:   id =  proIRS, name = proIRS
	global_par_proIRS=888.77;
% Parameter:   id =  insulin, name = insulin
	global_par_insulin=100.0;

% Reaction: id = v1, name = v1
	reaction_v1=(global_par_V1*x(16)/global_par_K1-global_par_V1*x(23)/global_par_K1)/(1+x(16)/global_par_K1+x(23)/global_par_K1);

% Reaction: id = v2, name = v2
	reaction_v2=((1+global_par_s1*x(10))*global_par_V2_G6P*x(23)/global_par_K2_G6P-global_par_V2_F16P*x(17)/global_par_K2_F16P)/(1+x(23)/global_par_K2_G6P+x(17)/global_par_K2_F16P);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_V3*x(17)/(global_par_K3+x(17));

% Reaction: id = v4, name = v4
	reaction_v4=(global_par_V4_PYR*x(18)/global_par_K4_PYR-global_par_V4_LAC*x(19)/global_par_K4_LAC)/(1+x(18)/global_par_K4_PYR+x(19)/global_par_K4_LAC);

% Reaction: id = v5, name = v5
	reaction_v5=(global_par_V5*x(15)/global_par_K5-global_par_V5*x(18)/global_par_K5)/(1+x(15)/global_par_K5+x(18)/global_par_K5);

% Reaction: id = v6, name = v6
	reaction_v6=global_par_V6*x(18)/(global_par_K6+x(18));

% Reaction: id = v7, name = v7
	reaction_v7=(1+global_par_s3*x(4))*global_par_V7*x(20)/(global_par_K7+x(20));

% Reaction: id = v8, name = v8
	reaction_v8=((1+global_par_s4*x(10))*global_par_V8_G6P*x(23)/global_par_K8_G6P-global_par_V8_G1P*x(22)/global_par_K8_G1P)/(1+x(23)/global_par_K8_G6P+x(22)/global_par_K8_G1P);

% Reaction: id = v9, name = v9
	reaction_v9=(global_par_V9_G1P*x(22)/global_par_K9_G1P-(1+global_par_s2*x(2))*global_par_V9_GLY*x(21)/global_par_K9_GLY)/(1+x(22)/global_par_K9_G1P+x(21)/global_par_K9_GLY);

% Reaction: id = metabolicENZ, name = metabolicENZ1
	reaction_metabolicENZ=x(2)*x(23)*global_par_k4;

% Reaction: id = reaction1, name = reaction1
	reaction_reaction1=(global_par_proIRS-x(5))*global_par_param1;

% Reaction: id = reaction2, name = reaction2
	reaction_reaction2=x(5)*global_par_insulin*global_par_param2-x(6)*global_par_param3;

% Reaction: id = reaction3, name = reaction3
	reaction_reaction3=x(6)*global_par_param4;

% Reaction: id = reaction4, name = reaction4
	reaction_reaction4=x(6)*x(12)*global_par_param5;

% Reaction: id = reaction5, name = reaction5
	reaction_reaction5=x(8)*global_par_param6;

% Reaction: id = reaction6, name = reaction6
	reaction_reaction6=x(5)*x(12)*global_par_param7;

% Reaction: id = reaction7, name = reaction7
	reaction_reaction7=x(7)*global_par_param8;

% Reaction: id = reaction8, name = reaction8
	reaction_reaction8=x(7)*global_par_param9;

% Reaction: id = reaction9, name = reaction9
	reaction_reaction9=x(7)*global_par_insulin*global_par_param10-x(8)*global_par_param11;

% Reaction: id = reaction10, name = reaction10
	reaction_reaction10=x(8)*global_par_param12;

% Reaction: id = reaction11, name = reaction11
	reaction_reaction11=x(6)*x(9)*global_par_param13;

% Reaction: id = reaction12, name = reaction12
	reaction_reaction12=x(10)*global_par_param14;

% Reaction: id = reaction13, name = reaction13
	reaction_reaction13=x(11)*x(10)*global_par_param15;

% Reaction: id = reaction14, name = reaction14
	reaction_reaction14=x(12)*global_par_param16;

% Reaction: id = reaction15, name = reaction15
	reaction_reaction15=x(10)*x(13)*global_par_k1_PEPCK;

% Reaction: id = reactionPEP1, name = reactionPEP1
	reaction_reactionPEP1=x(13)*global_par_k3_PEPCK-x(3)*global_par_k4_PEPCK;

% Reaction: id = reactionPEP2, name = reactionPEP2
	reaction_reactionPEP2=global_par_k5_PEPCK*x(3)-global_par_k6_PEPCK*x(4);

% Reaction: id = mw7c079c91_51e3_4732_8dca_23fb3cd716a7, name = reaction16
	reaction_mw7c079c91_51e3_4732_8dca_23fb3cd716a7=x(14)*global_par_k2_PEPCK;

% Reaction: id = mwfc720c89_b1b3_416a_8958_e9d0aff9f4a6, name = metabolicENZ2
	reaction_mwfc720c89_b1b3_416a_8958_e9d0aff9f4a6=x(1)*global_par_k3;

	xdot=zeros(23,1);
	
% Species:   id = GP, name = GP, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_metabolicENZ) + (-1.0 * reaction_mwfc720c89_b1b3_416a_8958_e9d0aff9f4a6));
	
% Species:   id = pGP, name = pGP, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_v9) + ( 1.0 * reaction_v9) + (-1.0 * reaction_metabolicENZ) + ( 1.0 * reaction_mwfc720c89_b1b3_416a_8958_e9d0aff9f4a6));
	
% Species:   id = mRNA, name = mRNA, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_reactionPEP1) + (-1.0 * reaction_reactionPEP2) + ( 1.0 * reaction_reactionPEP2));
	
% Species:   id = PEPCK, name = PEPCK, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v7) + ( 1.0 * reaction_reactionPEP2));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + (-1.0 * reaction_reaction6) + ( 1.0 * reaction_reaction7));
	
% Species:   id = p1IRS, name = p1IRS, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_reaction2) + (-1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction11));
	
% Species:   id = p2IRS, name = p2IRS, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction7) + (-1.0 * reaction_reaction8) + (-1.0 * reaction_reaction9));
	
% Species:   id = p1p2IRS, name = p1p2IRS, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction5) + ( 1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*((-1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction12));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_v2) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v8) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction12) + (-1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction13) + (-1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction15));
	
% Species:   id = mTOR, name = mTOR, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*((-1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction14));
	
% Species:   id = pmTOR, name = pmTOR, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*((-1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction6) + ( 1.0 * reaction_reaction6) + ( 1.0 * reaction_reaction13) + (-1.0 * reaction_reaction14));
	
% Species:   id = Foxo, name = Foxo, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*((-1.0 * reaction_reaction15) + (-1.0 * reaction_reactionPEP1) + ( 1.0 * reaction_reactionPEP1) + ( 1.0 * reaction_mw7c079c91_51e3_4732_8dca_23fb3cd716a7));
	
% Species:   id = pFoxo, name = pFoxo, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_reaction15) + (-1.0 * reaction_mw7c079c91_51e3_4732_8dca_23fb3cd716a7));
	
% Species:   id = PYRout, name = PYRout, affected by kineticLaw
	xdot(15) = (1/(compartment_Vex))*((-1.0 * reaction_v5));
	
% Species:   id = GLCex, name = GLCex, affected by kineticLaw
	xdot(16) = (1/(compartment_Vex))*((-1.0 * reaction_v1));
	
% Species:   id = F16P, name = F16P, affected by kineticLaw
	xdot(17) = (1/(compartment_Vin))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v7));
	
% Species:   id = PYRin, name = PYRin, affected by kineticLaw
	xdot(18) = (1/(compartment_Vin))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = LAC, name = LAC, affected by kineticLaw
	xdot(19) = (1/(compartment_Vin))*(( 1.0 * reaction_v4));
	
% Species:   id = OAA, name = OAA, affected by kineticLaw
	xdot(20) = (1/(compartment_Vin))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7));
	
% Species:   id = GLY, name = GLY, affected by kineticLaw
	xdot(21) = (1/(compartment_Vin))*(( 1.0 * reaction_v9));
	
% Species:   id = G1P, name = G1P, affected by kineticLaw
	xdot(22) = (1/(compartment_Vin))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9));
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(23) = (1/(compartment_Vin))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v8) + (-1.0 * reaction_metabolicENZ) + ( 1.0 * reaction_metabolicENZ));
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


