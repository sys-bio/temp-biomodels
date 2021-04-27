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
% Model name = Abell2011_CalciumSignaling_WithoutAdaptation
%
% is http://identifiers.org/biomodels.db/MODEL1108050000
% is http://identifiers.org/biomodels.db/BIOMD0000000354
% isDescribedBy http://identifiers.org/pubmed/21844332
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.05;
	x0(2) = 0.0;
	x0(3) = 0.002;
	x0(4) = 1000.0;
	x0(5) = 2.0;
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

% Compartment: id = cytosol, name = cytosol
% Warning compartment cytosol has no rule and is not constant
% Compartment: id = outside, name = Outside, constant
	compartment_outside=1.0;
% Compartment: id = ER_store, name = ER_store
% Warning compartment ER_store has no rule and is not constant
% Compartment: id = mitochondria, name = mito, constant
	compartment_mitochondria=1.0;
% Parameter:   id =  A, name = IP3R
	global_par_A=3.0;
% Parameter:   id =  B, name = SERCA
	global_par_B=0.266;
% Parameter:   id =  D, name = IP3degradation
	global_par_D=2.0;
% Parameter:   id =  E, name = IP3Rinhibition
	global_par_E=5.0;
% Parameter:   id =  F, name = IP3Rrecovery
	global_par_F=0.018;
% Parameter:   id =  k2, name = kSERCA
	global_par_k2=0.175;
% Parameter:   id =  L, name = ERleak
	global_par_L=0.01;
% Parameter:   id =  R, name = R
	global_par_R=1.0;
% Parameter:   id =  kIP3R, name = kIP3R
	global_par_kIP3R=0.175;
% Parameter:   id =  PMleak, name = PMleak
	global_par_PMleak=0.0346;
% Parameter:   id =  kSTIM, name = kSTIM
	global_par_kSTIM=1.0;
% Parameter:   id =  mw004dcb62_da5f_41c7_a7bd_033574894f48, name = STIM
	global_par_mw004dcb62_da5f_41c7_a7bd_033574894f48=0.02;
% Parameter:   id =  mw78dd80b8_e003_4c62_81d1_547d001767af, name = kIP3Rca
	global_par_mw78dd80b8_e003_4c62_81d1_547d001767af=0.13;
% Parameter:   id =  mw3a93c3a6_623a_44fe_84e9_a47823defd1f, name = kPMCA
	global_par_mw3a93c3a6_623a_44fe_84e9_a47823defd1f=0.2;
% Parameter:   id =  mwd21d3f76_d133_4053_8e44_02a538657e0a, name = PMCA
	global_par_mwd21d3f76_d133_4053_8e44_02a538657e0a=0.013;
% Parameter:   id =  mwf998b218_be11_4aa4_81ae_41141861fb42, name = kG
	global_par_mwf998b218_be11_4aa4_81ae_41141861fb42=1.0;
% Parameter:   id =  mwc714c217_c8fd_4024_912c_681cd6931f59, name = DirTransf
	global_par_mwc714c217_c8fd_4024_912c_681cd6931f59=0.03;
% Parameter:   id =  mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33, name = MitNaCaEx
	global_par_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33=0.005;
% Parameter:   id =  mw886be93a_22c7_4966_a1fa_113afd832ae3, name = UniPort
	global_par_mw886be93a_22c7_4966_a1fa_113afd832ae3=0.03;
% Parameter:   id =  mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d, name = kUniP
	global_par_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d=0.6;

% Reaction: id = kPLC, name = PLC: Receptor and Ca2+ regulated IP3 production
	reaction_kPLC=global_par_R*x(1);

% Reaction: id = JPump, name = SERCA: Pumps Ca2+ into ER Ca2+ stores
	reaction_JPump=global_par_B*x(1)^2/(x(1)^2+global_par_k2^2);

% Reaction: id = JChannel, name = IP3R: IP3 and Ca2+ regulated Ca2+ channel,  plus leak
	reaction_JChannel=(1-global_par_mwc714c217_c8fd_4024_912c_681cd6931f59)*(global_par_L+(1-x(3))*global_par_A*x(2)^2/(x(2)^2+global_par_kIP3R^2)*x(1)^2/(x(1)^2+global_par_mw78dd80b8_e003_4c62_81d1_547d001767af^2))*x(5);

% Reaction: id = kPhosphatase, name = IP3 phosphatase:  Degradation of IP3
	reaction_kPhosphatase=global_par_D*x(2);

% Reaction: id = inhibition_parameter1, name = Inhibition of IP3R (mechanism not well understood)
	reaction_inhibition_parameter1=global_par_E*x(1)^4/(x(1)^4+global_par_mwf998b218_be11_4aa4_81ae_41141861fb42^4)*(1-x(3));

% Reaction: id = inhibition_parameter2, name = Recovery of IP3R from Ca2+ iinhibition when Ca2+ drops
	reaction_inhibition_parameter2=global_par_F*x(3);

% Reaction: id = mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7, name = Regulation of Orai by STIM, plus leak
	reaction_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7=global_par_mw004dcb62_da5f_41c7_a7bd_033574894f48*(global_par_PMleak+global_par_kSTIM^8/(x(5)^8+global_par_kSTIM^8));

% Reaction: id = mw530793e3_76b2_4483_be11_e94364306712, name = PMCA:  Pumps Ca2+ across PM out of cell
	reaction_mw530793e3_76b2_4483_be11_e94364306712=global_par_mwd21d3f76_d133_4053_8e44_02a538657e0a*x(1)^2/(x(1)^2+global_par_mw3a93c3a6_623a_44fe_84e9_a47823defd1f^2);

% Reaction: id = mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4, name = UniporterFromCytosol
	reaction_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4=global_par_mw886be93a_22c7_4966_a1fa_113afd832ae3*x(1)^4/(x(1)^4+global_par_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d^4);

% Reaction: id = mw69f19152_7258_45b0_bf9e_b196f19d7e03, name = MitoToCytosol
	reaction_mw69f19152_7258_45b0_bf9e_b196f19d7e03=global_par_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33*x(6)/(x(6)+0.01);

% Reaction: id = ERtoMito, name = ERtoMito
	reaction_ERtoMito=global_par_mwc714c217_c8fd_4024_912c_681cd6931f59*(global_par_L+(1-x(3))*global_par_A*x(2)^2/(x(2)^2+global_par_kIP3R^2)*x(1)^2/(x(1)^2+global_par_mw78dd80b8_e003_4c62_81d1_547d001767af^2))*x(5);

	xdot=zeros(6,1);
	
% Species:   id = CaI, name = CaI, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_JPump) + ( 1.0 * reaction_JChannel) + ( 1.0 * reaction_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7) + (-1.0 * reaction_mw530793e3_76b2_4483_be11_e94364306712) + (-1.0 * reaction_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4) + ( 1.0 * reaction_mw69f19152_7258_45b0_bf9e_b196f19d7e03));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_kPLC) + (-1.0 * reaction_kPhosphatase));
	
% Species:   id = g, name = g, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_inhibition_parameter1) + (-1.0 * reaction_inhibition_parameter2));
	
% Species:   id = CaO, name = CaO
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = CaS, name = CaS, affected by kineticLaw
	xdot(5) = (1/(compartment_ER_store))*(( 1.0 * reaction_JPump) + (-1.0 * reaction_JChannel) + (-1.0 * reaction_ERtoMito));
	
% Species:   id = CaM, name = CaM, affected by kineticLaw
	xdot(6) = (1/(compartment_mitochondria))*(( 1.0 * reaction_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4) + (-1.0 * reaction_mw69f19152_7258_45b0_bf9e_b196f19d7e03) + ( 1.0 * reaction_ERtoMito));
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


