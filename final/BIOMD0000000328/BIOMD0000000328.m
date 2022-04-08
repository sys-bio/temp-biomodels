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
% Model name = Bucher2011_Atorvastatin_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1103200000
% is http://identifiers.org/biomodels.db/BIOMD0000000328
% isDescribedBy http://identifiers.org/pubmed/21548957
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 8797.15;
	x0(2) = 30.56;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;


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
% Compartment: id = medium, name = medium, constant
	compartment_medium=2.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=0.0142;
% Parameter:   id =  CYP3A4_ASLpOH_Km1, name = CYP3A4_ASLpOH_Km1
	global_par_CYP3A4_ASLpOH_Km1=1400.0;
% Parameter:   id =  CYP3A4_ASLoOH_Km1, name = CYP3A4_ASLoOH_Km1
	global_par_CYP3A4_ASLoOH_Km1=3900.0;
% Parameter:   id =  CYP3A4_ASpOH_Km1, name = CYP3A4_ASpOH_Km1
	global_par_CYP3A4_ASpOH_Km1=25600.0;
% Parameter:   id =  CYP3A4_ASoOH_Km1, name = CYP3A4_ASoOH_Km1
	global_par_CYP3A4_ASoOH_Km1=29700.0;
% Parameter:   id =  Import_ASLpOH_k, name = Import_ASLpOH_k
	global_par_Import_ASLpOH_k=0.033729;
% Parameter:   id =  Import_ASLoOH_k, name = Import_ASLoOH_k
	global_par_Import_ASLoOH_k=0.026122;
% Parameter:   id =  Import_ASL_k, name = Import_ASL_k
	global_par_Import_ASL_k=0.2754;
% Parameter:   id =  fu_ASL, name = fu_ASL
	global_par_fu_ASL=0.22;
% Parameter:   id =  fu_AS, name = fu_AS
	global_par_fu_AS=0.22;
% Parameter:   id =  Import_ASpOH_k, name = Import_ASpOH_k
	global_par_Import_ASpOH_k=0.0039614;
% Parameter:   id =  Export_ASLpOH_k, name = Export_ASLpOH_k
	global_par_Export_ASLpOH_k=0.0011319;
% Parameter:   id =  Export_ASLoOH_k, name = Export_ASLoOH_k
	global_par_Export_ASLoOH_k=0.0026674;
% Parameter:   id =  k_CR_ASL_c, name = k_CR_ASL_c
	global_par_k_CR_ASL_c=3.55E-5;
% Parameter:   id =  k_CR_ASL_m, name = k_CR_ASL_m
	global_par_k_CR_ASL_m=0.005;
% Parameter:   id =  k_PON_OH_c, name = k_PON_OH_c
	global_par_k_PON_OH_c=0.0039829;
% Parameter:   id =  Export_ASoOH_k, name = Export_ASoOH_k
	global_par_Export_ASoOH_k=0.0015983;
% Parameter:   id =  Prot_k1, name = Prot_k1
	global_par_Prot_k1=8.52;
% Parameter:   id =  CYP3A4_ASoOH_Vmax, name = CYP3A4_ASoOH_Vmax
	global_par_CYP3A4_ASoOH_Vmax=47.4985;
% Parameter:   id =  CYP3A4_ASLpOH_Vmax, name = CYP3A4_ASLpOH_Vmax
	global_par_CYP3A4_ASLpOH_Vmax=17.4446;
% Parameter:   id =  CYP3A4_ASLoOH_Vmax, name = CYP3A4_ASLoOH_Vmax
	global_par_CYP3A4_ASLoOH_Vmax=39.1342;
% Parameter:   id =  UGT1A3_AS_Vmax, name = UGT1A3_AS_Vmax
	global_par_UGT1A3_AS_Vmax=13.5862;
% Parameter:   id =  UGT1A3_AS_Km1, name = UGT1A3_AS_Km1
	global_par_UGT1A3_AS_Km1=12000.0;
% Parameter:   id =  UGT1A3_AS_KI1, name = UGT1A3_AS_KI1
	global_par_UGT1A3_AS_KI1=75000.0;
% Parameter:   id =  k_PON_ASL_c, name = k_PON_ASL_c
	global_par_k_PON_ASL_c=0.0043734;
% Parameter:   id =  Export_AS_k, name = Export_AS_k
	global_par_Export_AS_k=0.002166;
% Parameter:   id =  Export_ASL_k, name = Export_ASL_k
	global_par_Export_ASL_k=0.021822;
% Parameter:   id =  Import_AS_k, name = Import_AS_k
	global_par_Import_AS_k=0.020335;
% Parameter:   id =  Import_ASoOH_k, name = Import_ASoOH_k
	global_par_Import_ASoOH_k=3.8875E-4;
% Parameter:   id =  Export_ASpOH_k, name = Export_ASpOH_k
	global_par_Export_ASpOH_k=7.9526E-4;
% Parameter:   id =  CYP3A4_ASpOH_Vmax, name = CYP3A4_ASpOH_Vmax
	global_par_CYP3A4_ASpOH_Vmax=15.7336;

% Reaction: id = Import_AS
	reaction_Import_AS=global_par_Import_AS_k*x(1);

% Reaction: id = Import_ASL
	reaction_Import_ASL=global_par_Import_ASL_k*x(2);

% Reaction: id = CYP3A4_ASpOH
	reaction_CYP3A4_ASpOH=global_par_CYP3A4_ASpOH_Vmax/global_par_CYP3A4_ASpOH_Km1*x(7)/(1+x(7)/global_par_CYP3A4_ASpOH_Km1+x(7)/global_par_CYP3A4_ASoOH_Km1+x(8)/global_par_CYP3A4_ASLpOH_Km1+x(8)/global_par_CYP3A4_ASLoOH_Km1);

% Reaction: id = CYP3A4_ASoOH
	reaction_CYP3A4_ASoOH=global_par_CYP3A4_ASoOH_Vmax/global_par_CYP3A4_ASoOH_Km1*x(7)/(1+x(7)/global_par_CYP3A4_ASpOH_Km1+x(7)/global_par_CYP3A4_ASoOH_Km1+x(8)/global_par_CYP3A4_ASLpOH_Km1+x(8)/global_par_CYP3A4_ASLoOH_Km1);

% Reaction: id = CYP3A4_ASLpOH
	reaction_CYP3A4_ASLpOH=global_par_CYP3A4_ASLpOH_Vmax/global_par_CYP3A4_ASLpOH_Km1*x(8)/(1+x(7)/global_par_CYP3A4_ASpOH_Km1+x(7)/global_par_CYP3A4_ASoOH_Km1+x(8)/global_par_CYP3A4_ASLpOH_Km1+x(8)/global_par_CYP3A4_ASLoOH_Km1);

% Reaction: id = CYP3A4_ASLoOH
	reaction_CYP3A4_ASLoOH=global_par_CYP3A4_ASLoOH_Vmax/global_par_CYP3A4_ASLoOH_Km1*x(8)/(1+x(7)/global_par_CYP3A4_ASpOH_Km1+x(7)/global_par_CYP3A4_ASoOH_Km1+x(8)/global_par_CYP3A4_ASLpOH_Km1+x(8)/global_par_CYP3A4_ASLoOH_Km1);

% Reaction: id = Export_ASoOH
	reaction_Export_ASoOH=global_par_Export_ASoOH_k*x(10);

% Reaction: id = UGT1A3_AS
	reaction_UGT1A3_AS=global_par_UGT1A3_AS_Vmax*x(7)/(global_par_UGT1A3_AS_Km1+x(7)+x(7)*x(7)/global_par_UGT1A3_AS_KI1);

% Reaction: id = R_ASASL_c
	reaction_R_ASASL_c=(global_par_k_CR_ASL_c+global_par_k_PON_ASL_c)*x(8);

% Reaction: id = CR_oOH
	reaction_CR_oOH=(global_par_k_CR_ASL_c+global_par_k_PON_OH_c)*x(12);

% Reaction: id = CR_pOH
	reaction_CR_pOH=(global_par_k_CR_ASL_c+global_par_k_PON_OH_c)*x(11);

% Reaction: id = Export_AS
	reaction_Export_AS=global_par_Export_AS_k*x(7);

% Reaction: id = Export_ASL
	reaction_Export_ASL=global_par_Export_ASL_k*x(8);

% Reaction: id = Import_ASLpOH
	reaction_Import_ASLpOH=global_par_Import_ASLpOH_k*x(4);

% Reaction: id = Import_ASLoOH
	reaction_Import_ASLoOH=global_par_Import_ASLoOH_k*x(6);

% Reaction: id = ASpOH_Prot
	reaction_ASpOH_Prot=global_par_Prot_k1*((1-global_par_fu_AS)/global_par_fu_AS*x(9)-x(13));

% Reaction: id = ASoOH_Prot
	reaction_ASoOH_Prot=global_par_Prot_k1*((1-global_par_fu_AS)/global_par_fu_AS*x(10)-x(14));

% Reaction: id = ASLpOH_Prot
	reaction_ASLpOH_Prot=global_par_Prot_k1*((1-global_par_fu_ASL)/global_par_fu_ASL*x(11)-x(15));

% Reaction: id = ASLoOH_Prot
	reaction_ASLoOH_Prot=global_par_Prot_k1*((1-global_par_fu_ASL)/global_par_fu_ASL*x(12)-x(16));

% Reaction: id = AS_Prot
	reaction_AS_Prot=global_par_Prot_k1*((1-global_par_fu_AS)/global_par_fu_AS*x(7)-x(17));

% Reaction: id = ASL_Prot
	reaction_ASL_Prot=global_par_Prot_k1*((1-global_par_fu_ASL)/global_par_fu_ASL*x(8)-x(18));

% Reaction: id = Import_ASpOH
	reaction_Import_ASpOH=global_par_Import_ASpOH_k*x(5);

% Reaction: id = R_ASASL_m
	reaction_R_ASASL_m=global_par_k_CR_ASL_m*x(2);

% Reaction: id = R_pOH_m
	reaction_R_pOH_m=global_par_k_CR_ASL_m*x(4);

% Reaction: id = R_oOH_m
	reaction_R_oOH_m=global_par_k_CR_ASL_m*x(6);

% Reaction: id = Export_ASLpOH
	reaction_Export_ASLpOH=global_par_Export_ASLpOH_k*x(11);

% Reaction: id = Export_ASLoOH
	reaction_Export_ASLoOH=global_par_Export_ASLoOH_k*x(12);

% Reaction: id = Export_ASpOH
	reaction_Export_ASpOH=global_par_Export_ASpOH_k*x(9);

% Reaction: id = Import_ASoOH
	reaction_Import_ASoOH=global_par_Import_ASoOH_k*x(3);

	xdot=zeros(18,1);
	
% Species:   id = AS_m, name = AS_m, affected by kineticLaw
	xdot(1) = (1/(compartment_medium))*((-1.0 * reaction_Import_AS) + ( 1.0 * reaction_Export_AS) + ( 1.0 * reaction_R_ASASL_m));
	
% Species:   id = ASL_m, name = ASL_m, affected by kineticLaw
	xdot(2) = (1/(compartment_medium))*((-1.0 * reaction_Import_ASL) + ( 1.0 * reaction_Export_ASL) + (-1.0 * reaction_R_ASASL_m));
	
% Species:   id = ASoOH_m, name = ASoOH_m, affected by kineticLaw
	xdot(3) = (1/(compartment_medium))*(( 1.0 * reaction_Export_ASoOH) + ( 1.0 * reaction_R_oOH_m) + (-1.0 * reaction_Import_ASoOH));
	
% Species:   id = ASLpOH_m, name = ASLpOH_m, affected by kineticLaw
	xdot(4) = (1/(compartment_medium))*((-1.0 * reaction_Import_ASLpOH) + (-1.0 * reaction_R_pOH_m) + ( 1.0 * reaction_Export_ASLpOH));
	
% Species:   id = ASpOH_m, name = ASpOH_m, affected by kineticLaw
	xdot(5) = (1/(compartment_medium))*((-1.0 * reaction_Import_ASpOH) + ( 1.0 * reaction_R_pOH_m) + ( 1.0 * reaction_Export_ASpOH));
	
% Species:   id = ASLoOH_m, name = ASLoOH_m, affected by kineticLaw
	xdot(6) = (1/(compartment_medium))*((-1.0 * reaction_Import_ASLoOH) + (-1.0 * reaction_R_oOH_m) + ( 1.0 * reaction_Export_ASLoOH));
	
% Species:   id = AS_c, name = AS_c, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_Import_AS) + (-1.0 * reaction_CYP3A4_ASpOH) + (-1.0 * reaction_CYP3A4_ASoOH) + (-1.0 * reaction_UGT1A3_AS) + ( 1.0 * reaction_R_ASASL_c) + (-1.0 * reaction_Export_AS) + (-1.0 * reaction_AS_Prot));
	
% Species:   id = ASL_c, name = ASL_c, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_Import_ASL) + (-1.0 * reaction_CYP3A4_ASLpOH) + (-1.0 * reaction_CYP3A4_ASLoOH) + ( 1.0 * reaction_UGT1A3_AS) + (-1.0 * reaction_R_ASASL_c) + (-1.0 * reaction_Export_ASL) + (-1.0 * reaction_ASL_Prot));
	
% Species:   id = ASpOH_c, name = ASpOH_c, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_CYP3A4_ASpOH) + ( 1.0 * reaction_CR_pOH) + (-1.0 * reaction_ASpOH_Prot) + ( 1.0 * reaction_Import_ASpOH) + (-1.0 * reaction_Export_ASpOH));
	
% Species:   id = ASoOH_c, name = ASoOH_c, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_CYP3A4_ASoOH) + (-1.0 * reaction_Export_ASoOH) + ( 1.0 * reaction_CR_oOH) + (-1.0 * reaction_ASoOH_Prot) + ( 1.0 * reaction_Import_ASoOH));
	
% Species:   id = ASLpOH_c, name = ASLpOH_c, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_CYP3A4_ASLpOH) + (-1.0 * reaction_CR_pOH) + ( 1.0 * reaction_Import_ASLpOH) + (-1.0 * reaction_ASLpOH_Prot) + (-1.0 * reaction_Export_ASLpOH));
	
% Species:   id = ASLoOH_c, name = ASLoOH_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_CYP3A4_ASLoOH) + (-1.0 * reaction_CR_oOH) + ( 1.0 * reaction_Import_ASLoOH) + (-1.0 * reaction_ASLoOH_Prot) + (-1.0 * reaction_Export_ASLoOH));
	
% Species:   id = ASpOH_b, name = ASpOH_b, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_ASpOH_Prot));
	
% Species:   id = ASoOH_b, name = ASoOH_b, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_ASoOH_Prot));
	
% Species:   id = ASLpOH_b, name = ASLpOH_b, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_ASLpOH_Prot));
	
% Species:   id = ASLoOH_b, name = ASLoOH_b, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_ASLoOH_Prot));
	
% Species:   id = AS_b, name = AS_b, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_AS_Prot));
	
% Species:   id = ASL_b, name = ASL_b, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_ASL_Prot));
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


