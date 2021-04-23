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
% Model name = DallePezze2012 - TSC-independent mTORC2 regulation
%
% is http://identifiers.org/biomodels.db/MODEL1506230001
% is http://identifiers.org/biomodels.db/BIOMD0000000581
% isDescribedBy http://identifiers.org/pubmed/22457331
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 12.1175;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 6.2175;
	x0(6) = 0.0;
	x0(7) = 4.3225;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 2.965;
	x0(13) = 0.0;
	x0(14) = 10.0;
	x0(15) = 73.2175;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 144.13;
	x0(19) = 0.0;
	x0(20) = 127.0725;
	x0(21) = 0.0;
	x0(22) = 12.1175;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 2.965;


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

% Compartment: id = compartment_1, name = Membrane, constant
	compartment_compartment_1=1.0;
% Compartment: id = compartment_2, name = Cytoplasm, constant
	compartment_compartment_2=1.0;

% Reaction: id = reaction_9, name = TSC_p_clx_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.00812537;

	reaction_reaction_9=compartment_compartment_2*reaction_reaction_9_k1*x(21);

% Reaction: id = reaction_16, name = p70S6K_T389_phosphorylation_by_mTORC1_pS2448	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.00573896;

	reaction_reaction_16=compartment_compartment_2*reaction_reaction_16_k1*x(20)*x(6);

% Reaction: id = reaction_17, name = p70S6K_pT389_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=0.00528455;

	reaction_reaction_17=compartment_compartment_2*reaction_reaction_17_k1*x(11);

% Reaction: id = reaction_22, name = IRS1_S636_phosphorylation_by_p70S6K_pT389	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=1.0;

	reaction_reaction_22=compartment_compartment_2*reaction_reaction_22_k1*x(12)*x(11);

% Reaction: id = reaction_23, name = IRS1_PI3K_phosphorylation_by_IR_beta_pY1146	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=0.134664;

	reaction_reaction_23=reaction_reaction_23_k1*x(12)*x(2);

% Reaction: id = reaction_31, name = Akt_T308_phosphorylation_by_IRS1_phos_PI3K	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_31_k1=0.699505;

	reaction_reaction_31=compartment_compartment_2*reaction_reaction_31_k1*x(18)*x(9);

% Reaction: id = reaction_32, name = Akt_pT308_S473_phosphorylation_by_mTORC2_pS2481	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_32_k1=4.50769;

	reaction_reaction_32=compartment_compartment_2*reaction_reaction_32_k1*x(13)*x(10);

% Reaction: id = reaction_33, name = TSC_clx_phosphorylation_by_Akt_pT308	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_33_k1=0.00627315;

	reaction_reaction_33=compartment_compartment_2*reaction_reaction_33_k1*x(14)*x(13);

% Reaction: id = reaction_40, name = mTORC1_S2448_activation_by_Amino_Acids	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_40_k1=0.0513784;

	reaction_reaction_40=compartment_compartment_2*reaction_reaction_40_k1*x(7)*const_species_species_28;

% Reaction: id = reaction_41, name = IR_beta_Y1146_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_41_k1=0.0253763;

	reaction_reaction_41=compartment_compartment_1*reaction_reaction_41_k1*x(1)*const_species_species_41;

% Reaction: id = reaction_46, name = IRS1_p_pi3K_phosphorylation_by_p70S6K_pT389	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=1.0E-4;

	reaction_reaction_46=compartment_compartment_2*reaction_reaction_46_k1*x(9)*x(11);

% Reaction: id = reaction_53, name = IRS1_pS636_degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_53_k1=1.00001E-4;

	reaction_reaction_53=compartment_compartment_2*reaction_reaction_53_k1*x(8);

% Reaction: id = reaction_55, name = IRS1_p_PI3K_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_55_k1=0.00328283;

	reaction_reaction_55=compartment_compartment_2*reaction_reaction_55_k1*x(9);

% Reaction: id = reaction_44, name = Akt_pT308_pS473_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_44_k1=7.52842;

	reaction_reaction_44=compartment_compartment_2*reaction_reaction_44_k1*x(19);

% Reaction: id = reaction_61, name = Akt_pT308_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_61_k1=4.0739;

	reaction_reaction_61=compartment_compartment_2*reaction_reaction_61_k1*x(13);

% Reaction: id = reaction_1, name = mTORC2_pS2481_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.0255714;

	reaction_reaction_1=compartment_compartment_2*reaction_reaction_1_k1*x(10);

% Reaction: id = reaction_2, name = IR_beta_pY1146_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.149328;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(2);

% Reaction: id = reaction_3, name = TSC_clx_phosphorylation_by_Akt_pT308_pS473	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=1.00039E-4;

	reaction_reaction_3=compartment_compartment_2*reaction_reaction_3_k1*x(14)*x(19);

% Reaction: id = reaction_4, name = IRS1_synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.0999968;

	reaction_reaction_4=compartment_compartment_2*reaction_reaction_4_k1*x(4);

% Reaction: id = reaction_5, name = IR_beta_ready	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.0309731;

	reaction_reaction_5=compartment_compartment_1*reaction_reaction_5_k1*x(3);

% Reaction: id = reaction_6, name = PRAS40_T246_phosphorylation_by_Akt_pT308_pS473	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=1.00001E-4;

	reaction_reaction_6=compartment_compartment_2*reaction_reaction_6_k1*x(15)*x(19);

% Reaction: id = reaction_7, name = mTORC1_pS2448_dephosphorylation_by_TSC_clx	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.999989;

	reaction_reaction_7=compartment_compartment_2*reaction_reaction_7_k1*x(6)*x(14);

% Reaction: id = reaction_8, name = PRAS40_T246_phosphorylation_by_Akt_pT308	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.0239178;

	reaction_reaction_8=compartment_compartment_2*reaction_reaction_8_k1*x(15)*x(13);

% Reaction: id = reaction_10, name = PRAS40_pT246_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.999991;

	reaction_reaction_10=compartment_compartment_2*reaction_reaction_10_k1*x(17);

% Reaction: id = reaction_11, name = PRAS40_pS183_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.403706;

	reaction_reaction_11=compartment_compartment_2*reaction_reaction_11_k1*x(16);

% Reaction: id = reaction_12, name = PRAS40_S183_phosphorylation_by_mTORC1_pS2448	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.073093;

	reaction_reaction_12=compartment_compartment_2*reaction_reaction_12_k1*x(15)*x(6);

% Reaction: id = reaction_18, name = mTORC2_S2481_phosphorylation_by_PI3K_variant_p	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.0318902;

	reaction_reaction_18=compartment_compartment_2*reaction_reaction_18_k1*x(5)*x(24);

% Reaction: id = reaction_13, name = Akt_pT308_S473_phosphorylation_by_PDK2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=5.90372;

	reaction_reaction_13=compartment_compartment_2*reaction_reaction_13_k1*x(13)*x(23);

% Reaction: id = reaction_14, name = PDK2_p_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=1.0;

	reaction_reaction_14=compartment_compartment_2*reaction_reaction_14_k1*x(23);

% Reaction: id = reaction_15, name = PDK2_phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.1;

	reaction_reaction_15=reaction_reaction_15_k1*x(22)*x(2);

% Reaction: id = reaction_19, name = PI3K_variant_phosphorylation_by_IR_beta_pY1146	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=0.999985;

	reaction_reaction_19=reaction_reaction_19_k1*x(25)*x(2);

% Reaction: id = reaction_20, name = PI3K_variant_p_dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=2.32165E-4;

	reaction_reaction_20=compartment_compartment_2*reaction_reaction_20_k1*x(24);

% Species:   id = species_41, name = Insulin, constant	const_species_species_41=100.0;

% Species:   id = species_28, name = Amino_Acids, constant	const_species_species_28=100.0;

% Species:   id = species_23, name = PI3K, constant	const_species_species_23=2.965;

	xdot=zeros(25,1);
	
% Species:   id = species_20, name = IR_beta, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_5));
	
% Species:   id = species_21, name = IR_beta_pY1146, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = species_15, name = IR_beta_refractory, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_1, name = Sink, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_5, name = mTORC2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_2, name = mTORC1_pS2448, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_11, name = mTORC1, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_19, name = IRS1_pS636_PI3K, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_53));
	
% Species:   id = species_7, name = IRS1_p_PI3K, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_55));
	
% Species:   id = species_22, name = mTORC2_pS2481, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_17, name = p70S6K_pT389, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_46));
	
% Species:   id = species_42, name = IRS1_PI3K, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_3, name = Akt_pT308, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_6, name = TSC_clx, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_9, name = PRAS40, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = species_12, name = PRAS40_pS183, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_10, name = PRAS40_pT246, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_27, name = Akt, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_61));
	
% Species:   id = species_4, name = Akt_pT308_pS473, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = species_47, name = p70S6K, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_17));
	
% Species:   id = species_8, name = TSC_p_clx, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = species_13, name = PDK2, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_14, name = PDK2_p, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = species_16, name = PI3K_variant_p, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_18, name = PI3K_variant, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20));
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


