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
% Model name = Abell2011_CalciumSignaling_WithAdaptation
%
% is http://identifiers.org/biomodels.db/MODEL1108050001
% is http://identifiers.org/biomodels.db/BIOMD0000000355
% isDescribedBy http://identifiers.org/pubmed/21844332
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.05;
	x0(2) = 0.0;
	x0(3) = 0.002;
	x0(4) = 0.013;
	x0(5) = 0.266;
	x0(6) = 0.02;
	x0(7) = 1000.0;
	x0(8) = 0.0;
	x0(9) = 2.0;


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

% Compartment: id = cytosol, name = cytosol
% Warning compartment cytosol has no rule and is not constant
% Compartment: id = outside, name = Outside, constant
	compartment_outside=1.0;
% Compartment: id = mitochondria, name = mito, constant
	compartment_mitochondria=1.0;
% Compartment: id = ER_store, name = ER_store
% Warning compartment ER_store has no rule and is not constant
% Parameter:   id =  A, name = IP3R
	global_par_A=3.0;
% Parameter:   id =  B, name = SERCA0
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
% Parameter:   id =  mw92b257b7_00af_4fd6_a11b_8e4655a4ba65, name = kIP3R
	global_par_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65=0.175;
% Parameter:   id =  mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f, name = PMleak
	global_par_mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f=0.0346;
% Parameter:   id =  mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778, name = kSTIM
	global_par_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778=1.0;
% Parameter:   id =  mw004dcb62_da5f_41c7_a7bd_033574894f48, name = STIM0
	global_par_mw004dcb62_da5f_41c7_a7bd_033574894f48=0.02;
% Parameter:   id =  mw78dd80b8_e003_4c62_81d1_547d001767af, name = kIP3Rca
	global_par_mw78dd80b8_e003_4c62_81d1_547d001767af=0.13;
% Parameter:   id =  mw3a93c3a6_623a_44fe_84e9_a47823defd1f, name = kPMCA
	global_par_mw3a93c3a6_623a_44fe_84e9_a47823defd1f=0.2;
% Parameter:   id =  mwd21d3f76_d133_4053_8e44_02a538657e0a, name = PMCA0
	global_par_mwd21d3f76_d133_4053_8e44_02a538657e0a=0.013;
% Parameter:   id =  mwf998b218_be11_4aa4_81ae_41141861fb42, name = kG
	global_par_mwf998b218_be11_4aa4_81ae_41141861fb42=1.0;
% Parameter:   id =  mwfbff577a_4e9c_40fe_8777_eb0ceade28c9, name = ProtDeg
	global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9=1.0E-6;
% Parameter:   id =  mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c, name = DirTransf
	global_par_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c=0.03;
% Parameter:   id =  mwe3841c25_6042_49c2_9feb_90cbf6751167, name = kUnip
	global_par_mwe3841c25_6042_49c2_9feb_90cbf6751167=0.6;
% Parameter:   id =  mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43, name = MitNaCaEx
	global_par_mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43=0.005;
% Parameter:   id =  mwa3072851_e3e4_4767_ac41_49fa7c0de7a7, name = Uniport
	global_par_mwa3072851_e3e4_4767_ac41_49fa7c0de7a7=0.03;
% Parameter:   id =  mwd3b36919_202a_4fed_a3c8_1a3a60594404, name = cr
	global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404=8.0;

% Reaction: id = kPLC, name = PLC: Receptor and Ca2+ regulated IP3 production
	reaction_kPLC=global_par_R*x(1);

% Reaction: id = JPump, name = SERCA: Pumps Ca2+ into ER Ca2+ stores
	reaction_JPump=x(5)*x(1)^2/(x(1)^2+global_par_k2^2);

% Reaction: id = JChannel, name = IP3R: IP3 and Ca2+ regulated Ca2+ channel,  plus leak
	reaction_JChannel=(1-global_par_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c)*(global_par_L+(1-x(3))*global_par_A*x(2)^2/(x(2)^2+global_par_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65^2)*x(1)^2/(x(1)^2+global_par_mw78dd80b8_e003_4c62_81d1_547d001767af^2))*x(9);

% Reaction: id = kPhosphatase, name = IP3 phosphatase:  Degradation of IP3
	reaction_kPhosphatase=global_par_D*x(2);

% Reaction: id = inhibition_parameter1, name = Inhibition of IP3R (mechanism not well understood)
	reaction_inhibition_parameter1=global_par_E*x(1)^4/(x(1)^4+global_par_mwf998b218_be11_4aa4_81ae_41141861fb42^4)*(1-x(3));

% Reaction: id = inhibition_parameter2, name = Recovery of IP3R from Ca2+ iinhibition when Ca2+ drops
	reaction_inhibition_parameter2=global_par_F*x(3);

% Reaction: id = mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7, name = Regulation of Orai by STIM, plus leak
	reaction_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7=x(6)*(global_par_mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f+global_par_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778^8/(x(9)^8+global_par_mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778^8));

% Reaction: id = mw530793e3_76b2_4483_be11_e94364306712, name = PMCA:  Pumps Ca2+ across PM out of cell
	reaction_mw530793e3_76b2_4483_be11_e94364306712=x(4)*x(1)^2/(x(1)^2+global_par_mw3a93c3a6_623a_44fe_84e9_a47823defd1f^2);

% Reaction: id = mw5658298a_d96a_4b97_9a4f_6f06dad35824, name = PMCA synthesis
	reaction_mw5658298a_d96a_4b97_9a4f_6f06dad35824=global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9*global_par_mwd21d3f76_d133_4053_8e44_02a538657e0a*x(1)^4/((global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404-1)*0.05^4+x(1)^4);

% Reaction: id = mw700bd02b_9fc4_47e7_864a_967c03874dd6, name = PMCA degradation
	reaction_mw700bd02b_9fc4_47e7_864a_967c03874dd6=x(4)*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9;

% Reaction: id = mw06f8fde4_d97b_4d5f_b71e_d93aa53e9932, name = SERCA synthesis
	reaction_mw06f8fde4_d97b_4d5f_b71e_d93aa53e9932=1/global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404*global_par_B*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9*((global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404-1)*2^4+x(9)^4)/x(9)^4;

% Reaction: id = mw8021d532_dd9b_4e34_a865_c2bb1689b0b5, name = STIM/Orai synthesis
	reaction_mw8021d532_dd9b_4e34_a865_c2bb1689b0b5=1/(global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404*global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404)*global_par_mw004dcb62_da5f_41c7_a7bd_033574894f48*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9*((global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404-1)*2^2+x(9)^2)/x(9)^2*((global_par_mwd3b36919_202a_4fed_a3c8_1a3a60594404-1)*0.05^2+x(1)^2)/x(1)^2;

% Reaction: id = mw1f122e51_99cb_4a32_a12e_4c2921920a17, name = STIM/Orai degradation
	reaction_mw1f122e51_99cb_4a32_a12e_4c2921920a17=x(6)*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9;

% Reaction: id = mw89d547e1_8d48_4cd2_ba3d_e4390294089d, name = SERCA degradation
	reaction_mw89d547e1_8d48_4cd2_ba3d_e4390294089d=x(5)*global_par_mwfbff577a_4e9c_40fe_8777_eb0ceade28c9;

% Reaction: id = mwa61047ec_49c1_47b2_b78e_4d84a33d432a, name = CytToMito
	reaction_mwa61047ec_49c1_47b2_b78e_4d84a33d432a=global_par_mwa3072851_e3e4_4767_ac41_49fa7c0de7a7*x(1)^4/(x(1)^4+global_par_mwe3841c25_6042_49c2_9feb_90cbf6751167^4);

% Reaction: id = ERtoMito, name = ERtoMito
	reaction_ERtoMito=global_par_mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c*(global_par_L+(1-x(3))*global_par_A*x(2)^2/(x(2)^2+global_par_mw92b257b7_00af_4fd6_a11b_8e4655a4ba65^2)*x(1)^2/(x(1)^2+global_par_mw78dd80b8_e003_4c62_81d1_547d001767af^2))*x(9);

% Reaction: id = mw1c50c3d1_dab9_423a_8373_6a4c75479b54, name = MitoToCytosol
	reaction_mw1c50c3d1_dab9_423a_8373_6a4c75479b54=global_par_mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43*x(8)/(x(8)+0.01);

	xdot=zeros(9,1);
	
% Species:   id = CaI, name = CaI, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_JPump) + ( 1.0 * reaction_JChannel) + ( 1.0 * reaction_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7) + (-1.0 * reaction_mw530793e3_76b2_4483_be11_e94364306712) + (-1.0 * reaction_mwa61047ec_49c1_47b2_b78e_4d84a33d432a) + ( 1.0 * reaction_mw1c50c3d1_dab9_423a_8373_6a4c75479b54));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_kPLC) + (-1.0 * reaction_kPhosphatase));
	
% Species:   id = g, name = g, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_inhibition_parameter1) + (-1.0 * reaction_inhibition_parameter2));
	
% Species:   id = mwaf195932_a72c_4552_8cf2_b349b15d39c4, name = PMCA, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_mw5658298a_d96a_4b97_9a4f_6f06dad35824) + (-1.0 * reaction_mw700bd02b_9fc4_47e7_864a_967c03874dd6));
	
% Species:   id = mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3, name = SERCA, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_mw06f8fde4_d97b_4d5f_b71e_d93aa53e9932) + (-1.0 * reaction_mw89d547e1_8d48_4cd2_ba3d_e4390294089d));
	
% Species:   id = mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb, name = STIM, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_mw8021d532_dd9b_4e34_a865_c2bb1689b0b5) + (-1.0 * reaction_mw1f122e51_99cb_4a32_a12e_4c2921920a17));
	
% Species:   id = mwd6b792d8_c983_42c1_b3bc_2494d6a3363e, name = CaO
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
	
% Species:   id = mw013a7c64_a9ec_483c_b3b8_ed658337ee95, name = CaM, affected by kineticLaw
	xdot(8) = (1/(compartment_mitochondria))*(( 1.0 * reaction_mwa61047ec_49c1_47b2_b78e_4d84a33d432a) + ( 1.0 * reaction_ERtoMito) + (-1.0 * reaction_mw1c50c3d1_dab9_423a_8373_6a4c75479b54));
	
% Species:   id = CaS, name = CaS, affected by kineticLaw
	xdot(9) = (1/(compartment_ER_store))*(( 1.0 * reaction_JPump) + (-1.0 * reaction_JChannel) + (-1.0 * reaction_ERtoMito));
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


