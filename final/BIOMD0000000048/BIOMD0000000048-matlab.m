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
% Model name = Kholodenko1999 - EGFR signaling
%
% is http://identifiers.org/biomodels.db/MODEL6624193277
% is http://identifiers.org/biomodels.db/BIOMD0000000048
% isDescribedBy http://identifiers.org/pubmed/10514507
% is http://identifiers.org/biomodels.db/MODEL6624193277
% is http://identifiers.org/biomodels.db/BIOMD0000000048
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 680.0;
	x0(2) = 100.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 105.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 85.0;
	x0(11) = 0.0;
	x0(12) = 34.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 150.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;


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

% Compartment: id = compartment, name = cytoplasm, constant
	compartment_compartment=3.0E-12;

% Reaction: id = v1, name = EGF_binds_to_EGFR	% Local Parameter:   id =  k1f, name = k1f
	reaction_v1_k1f=0.003;
	% Local Parameter:   id =  k1b, name = k1b
	reaction_v1_k1b=0.06;

	reaction_v1=(reaction_v1_k1f*x(2)*x(1)-reaction_v1_k1b*x(3))*compartment_compartment;

% Reaction: id = v2, name = association_of_2_Ra_into_dimer	% Local Parameter:   id =  k2f, name = k2f
	reaction_v2_k2f=0.01;
	% Local Parameter:   id =  k2b, name = k2b
	reaction_v2_k2b=0.1;

	reaction_v2=(reaction_v2_k2f*x(3)*x(3)-reaction_v2_k2b*x(4))*compartment_compartment;

% Reaction: id = v3, name = phosphorylation_of_R2	% Local Parameter:   id =  k3f, name = k3f
	reaction_v3_k3f=1.0;
	% Local Parameter:   id =  k3b, name = k3b
	reaction_v3_k3b=0.01;

	reaction_v3=(reaction_v3_k3f*x(4)-reaction_v3_k3b*x(5))*compartment_compartment;

% Reaction: id = v4, name = dephosphorylation_of_RP	% Local Parameter:   id =  V4, name = V4
	reaction_v4_V4=450.0;
	% Local Parameter:   id =  K4, name = K4
	reaction_v4_K4=50.0;

	reaction_v4=reaction_v4_V4*x(5)/(reaction_v4_K4+x(5))*compartment_compartment;

% Reaction: id = v5, name = binding_of_PLCg_to_RP	% Local Parameter:   id =  k5f, name = k5f
	reaction_v5_k5f=0.06;
	% Local Parameter:   id =  k5b, name = k5b
	reaction_v5_k5b=0.2;

	reaction_v5=(reaction_v5_k5f*x(5)*x(6)-reaction_v5_k5b*x(7))*compartment_compartment;

% Reaction: id = v6, name = phosphorylation_of_PLCg	% Local Parameter:   id =  k6f, name = k6f
	reaction_v6_k6f=1.0;
	% Local Parameter:   id =  k6b, name = k6b
	reaction_v6_k6b=0.05;

	reaction_v6=(reaction_v6_k6f*x(7)-reaction_v6_k6b*x(8))*compartment_compartment;

% Reaction: id = v7, name = dissociation_of_RPLCgP	% Local Parameter:   id =  k7f, name = k7f
	reaction_v7_k7f=0.3;
	% Local Parameter:   id =  k7b, name = k7b
	reaction_v7_k7b=0.006;

	reaction_v7=(reaction_v7_k7f*x(8)-reaction_v7_k7b*x(5)*x(9))*compartment_compartment;

% Reaction: id = v8, name = dephosphorylation_of_PLCgP	% Local Parameter:   id =  V8, name = V8
	reaction_v8_V8=1.0;
	% Local Parameter:   id =  K8, name = K8
	reaction_v8_K8=100.0;

	reaction_v8=reaction_v8_V8*x(9)/(reaction_v8_K8+x(9))*compartment_compartment;

% Reaction: id = v9, name = binding_of_Grb2_to_RP	% Local Parameter:   id =  k9f, name = k9f
	reaction_v9_k9f=0.003;
	% Local Parameter:   id =  k9b, name = k9b
	reaction_v9_k9b=0.05;

	reaction_v9=(reaction_v9_k9f*x(5)*x(10)-reaction_v9_k9b*x(11))*compartment_compartment;

% Reaction: id = v10, name = binding_of_SOS_to_RG	% Local Parameter:   id =  k10f, name = k10f
	reaction_v10_k10f=0.01;
	% Local Parameter:   id =  k10b, name = k10b
	reaction_v10_k10b=0.06;

	reaction_v10=(reaction_v10_k10f*x(11)*x(12)-reaction_v10_k10b*x(13))*compartment_compartment;

% Reaction: id = v11, name = dissociation_of_RGS	% Local Parameter:   id =  k11f, name = k11f
	reaction_v11_k11f=0.03;
	% Local Parameter:   id =  k11b, name = k11b
	reaction_v11_k11b=0.0045;

	reaction_v11=(reaction_v11_k11f*x(13)-reaction_v11_k11b*x(5)*x(14))*compartment_compartment;

% Reaction: id = v12, name = dissociation_of_GS	% Local Parameter:   id =  k12f, name = k12f
	reaction_v12_k12f=0.0015;
	% Local Parameter:   id =  k12b, name = k12b
	reaction_v12_k12b=1.0E-4;

	reaction_v12=(reaction_v12_k12f*x(14)-reaction_v12_k12b*x(10)*x(12))*compartment_compartment;

% Reaction: id = v13, name = binding_of_Shc_to_RP	% Local Parameter:   id =  k13f, name = k13f
	reaction_v13_k13f=0.09;
	% Local Parameter:   id =  k13b, name = k13b
	reaction_v13_k13b=0.6;

	reaction_v13=(reaction_v13_k13f*x(5)*x(15)-reaction_v13_k13b*x(16))*compartment_compartment;

% Reaction: id = v14, name = phosphorylation_of_RSh	% Local Parameter:   id =  k14f, name = k14f
	reaction_v14_k14f=6.0;
	% Local Parameter:   id =  k14b, name = k14b
	reaction_v14_k14b=0.06;

	reaction_v14=(reaction_v14_k14f*x(16)-reaction_v14_k14b*x(17))*compartment_compartment;

% Reaction: id = v15, name = dissociation_of_RShp	% Local Parameter:   id =  k15f, name = k15f
	reaction_v15_k15f=0.3;
	% Local Parameter:   id =  k15b, name = k15b
	reaction_v15_k15b=9.0E-4;

	reaction_v15=(reaction_v15_k15f*x(17)-reaction_v15_k15b*x(18)*x(5))*compartment_compartment;

% Reaction: id = v16, name = dephosphorylation_of_ShP	% Local Parameter:   id =  V16, name = V16
	reaction_v16_V16=1.7;
	% Local Parameter:   id =  K16, name = K16
	reaction_v16_K16=340.0;

	reaction_v16=reaction_v16_V16*x(18)/(reaction_v16_K16+x(18))*compartment_compartment;

% Reaction: id = v17, name = binding_of_Grb2_to_RShP	% Local Parameter:   id =  k17f, name = k17f
	reaction_v17_k17f=0.003;
	% Local Parameter:   id =  k17b, name = k17b
	reaction_v17_k17b=0.1;

	reaction_v17=(reaction_v17_k17f*x(17)*x(10)-reaction_v17_k17b*x(19))*compartment_compartment;

% Reaction: id = v18, name = dissociation_of_RShG	% Local Parameter:   id =  k18f, name = k18f
	reaction_v18_k18f=0.3;
	% Local Parameter:   id =  k18b, name = k18b
	reaction_v18_k18b=9.0E-4;

	reaction_v18=(reaction_v18_k18f*x(19)-reaction_v18_k18b*x(5)*x(20))*compartment_compartment;

% Reaction: id = v19, name = binding_of_SOS_to_RShG	% Local Parameter:   id =  k19f, name = k19f
	reaction_v19_k19f=0.01;
	% Local Parameter:   id =  k19b, name = k19b
	reaction_v19_k19b=0.0214;

	reaction_v19=(reaction_v19_k19f*x(19)*x(12)-reaction_v19_k19b*x(21))*compartment_compartment;

% Reaction: id = v20, name = dissociation_of_RShGS	% Local Parameter:   id =  k20f, name = k20f
	reaction_v20_k20f=0.12;
	% Local Parameter:   id =  k20b, name = k20b
	reaction_v20_k20b=2.4E-4;

	reaction_v20=(reaction_v20_k20f*x(21)-reaction_v20_k20b*x(22)*x(5))*compartment_compartment;

% Reaction: id = v21, name = binding_of_Grb2_to_ShP	% Local Parameter:   id =  k21f, name = k21f
	reaction_v21_k21f=0.003;
	% Local Parameter:   id =  k21b, name = k21b
	reaction_v21_k21b=0.1;

	reaction_v21=(reaction_v21_k21f*x(18)*x(10)-reaction_v21_k21b*x(20))*compartment_compartment;

% Reaction: id = v22, name = binding_of_SOS_to_ShG	% Local Parameter:   id =  k22f, name = k22f
	reaction_v22_k22f=0.03;
	% Local Parameter:   id =  k22b, name = k22b
	reaction_v22_k22b=0.064;

	reaction_v22=(reaction_v22_k22f*x(20)*x(12)-reaction_v22_k22b*x(22))*compartment_compartment;

% Reaction: id = v23, name = dissociation_of_ShGS	% Local Parameter:   id =  k23f, name = k23f
	reaction_v23_k23f=0.1;
	% Local Parameter:   id =  k23b, name = k23b
	reaction_v23_k23b=0.021;

	reaction_v23=(reaction_v23_k23f*x(22)-reaction_v23_k23b*x(18)*x(14))*compartment_compartment;

% Reaction: id = v24, name = association_of_RShP_and_GS	% Local Parameter:   id =  k24f, name = k24f
	reaction_v24_k24f=0.009;
	% Local Parameter:   id =  k24b, name = k24b
	reaction_v24_k24b=0.0429;

	reaction_v24=(reaction_v24_k24f*x(17)*x(14)-reaction_v24_k24b*x(21))*compartment_compartment;

% Reaction: id = v25, name = translocation_of_PLCgP	% Local Parameter:   id =  k25f, name = k25f
	reaction_v25_k25f=1.0;
	% Local Parameter:   id =  k25b, name = k25b
	reaction_v25_k25b=0.03;

	reaction_v25=(reaction_v25_k25f*x(9)-reaction_v25_k25b*x(23))*compartment_compartment;

	xdot=zeros(23,1);
	
% Species:   id = EGF, name = Epidermal_Growth_Factor, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1));
	
% Species:   id = R, name = EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v1));
	
% Species:   id = Ra, name = EGF_EGFR, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-2.0 * reaction_v2));
	
% Species:   id = R2, name = (EGF_EGFR)2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v4));
	
% Species:   id = RP, name = (EGF_EGFR)2-P, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v11) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v15) + ( 1.0 * reaction_v18) + ( 1.0 * reaction_v20));
	
% Species:   id = PLCg, name = PLCg, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v8));
	
% Species:   id = RPLCg, name = (EGF_EGFR)2_PLCg, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = RPLCgP, name = (EGF_EGFR)2_PLCg-P, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7));
	
% Species:   id = PLCgP, name = PLCg-P, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + (-1.0 * reaction_v25));
	
% Species:   id = Grb, name = Grb2, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_v9) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v17) + (-1.0 * reaction_v21));
	
% Species:   id = RG, name = (EGF_EGFR)2_Grb2, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = SOS, name = SOS, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_v10) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v19) + (-1.0 * reaction_v22));
	
% Species:   id = RGS, name = (EGF_EGFR)2_Grb2_SOS, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v11));
	
% Species:   id = GS, name = Grb2_SOS, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12) + ( 1.0 * reaction_v23) + (-1.0 * reaction_v24));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_v13) + ( 1.0 * reaction_v16));
	
% Species:   id = RSh, name = (EGF_EGFR)2_Shc, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14));
	
% Species:   id = RShP, name = (EGF_EGFR)_Shc-P, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_v14) + (-1.0 * reaction_v15) + (-1.0 * reaction_v17) + (-1.0 * reaction_v24));
	
% Species:   id = ShP, name = Shc-P, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v16) + (-1.0 * reaction_v21) + ( 1.0 * reaction_v23));
	
% Species:   id = RShG, name = (EGF_EGFR)2_Shc_Grb2, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + (-1.0 * reaction_v19));
	
% Species:   id = ShG, name = Shc_Grb2, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_v18) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = RShGS, name = (EGF_EGFR)2_Shc_Grb2_SOS, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_v19) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v24));
	
% Species:   id = ShGS, name = Shc_Grb2_SOS, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_v20) + ( 1.0 * reaction_v22) + (-1.0 * reaction_v23));
	
% Species:   id = PLCgl, name = PLCgP-I, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_v25));
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


