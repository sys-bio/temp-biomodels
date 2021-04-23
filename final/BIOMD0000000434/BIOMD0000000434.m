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
% Model name = McAuley2012 - Whole-body Cholesterol Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1206010000
% is http://identifiers.org/biomodels.db/BIOMD0000000434
% isDescribedBy http://identifiers.org/pubmed/23046614
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 3150.0;
	x0(2) = 400.0;
	x0(3) = 467.0;
	x0(4) = 0.0;
	x0(5) = 60000.0;
	x0(6) = 0.0;
	x0(7) = 100.0;
	x0(8) = 57516.0;
	x0(9) = 10000.0;
	x0(10) = 100.0;
	x0(11) = 100.0;
	x0(12) = 20.0;
	x0(13) = 100.0;
	x0(14) = 0.0;
	x0(15) = 20.0;
	x0(16) = 100.0;
	x0(17) = 100.0;
	x0(18) = 100.0;
	x0(19) = 100.0;
	x0(20) = 0.0;
	x0(21) = 9363.0;
	x0(22) = 0.0;
	x0(23) = 45.0;
	x0(24) = 100.0;
	x0(25) = 100.0;
	x0(26) = 100.0;


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

% Compartment: id = Intake, name = Intake, constant
	compartment_Intake=1.0;
% Compartment: id = Intestine, name = Intestine, constant
	compartment_Intestine=1.0;
% Compartment: id = HepaticTissue, name = HepaticTissue, constant
	compartment_HepaticTissue=1.0;
% Compartment: id = PeripheralTissue, name = PeripheralTissue, constant
	compartment_PeripheralTissue=1.0;
% Compartment: id = Plasma, name = Plasma, constant
	compartment_Plasma=1.0;
% Compartment: id = Excreted, name = Excreted, constant
	compartment_Excreted=1.0;

% Reaction: id = reaction_1, name = Ingestion	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.0;

	reaction_reaction_1=reaction_reaction_1_k1*const_species_species_1;

% Reaction: id = reaction_2, name = Intestinal Cholesterol Synthesis	% Local Parameter:   id =  ICSmax, name = ICSmax
	reaction_reaction_2_ICSmax=100.0;
	% Local Parameter:   id =  ICt, name = ICt
	reaction_reaction_2_ICt=3120.0;
	% Local Parameter:   id =  IS, name = IS
	reaction_reaction_2_IS=5.0;

	reaction_reaction_2=function_1(reaction_reaction_2_ICSmax, x(1), reaction_reaction_2_ICt, reaction_reaction_2_IS);

% Reaction: id = reaction_3, name = Bile Salt Release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=6.0;

	reaction_reaction_3=reaction_reaction_3_k1*x(2);

% Reaction: id = reaction_4, name = Bile Salt Return	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=4.29;

	reaction_reaction_4=reaction_reaction_4_k1*x(3);

% Reaction: id = reaction_5, name = Bile Salt Excretion	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.856;

	reaction_reaction_5=reaction_reaction_5_k1*x(3);

% Reaction: id = reaction_6, name = Bile Salt Synthesis	% Local Parameter:   id =  k5, name = k5
	reaction_reaction_6_k5=2.66;

	reaction_reaction_6=function_2(reaction_reaction_6_k5, x(5), x(2));

% Reaction: id = reaction_7, name = Cholesterol Absorption	% Local Parameter:   id =  k6, name = k6
	reaction_reaction_7_k6=5.286E-4;

	reaction_reaction_7=function_3(reaction_reaction_7_k6, x(1), x(3));

% Reaction: id = reaction_8, name = Cholesterol Excretion	% Local Parameter:   id =  k7, name = k7
	reaction_reaction_8_k7=5.286E-4;

	reaction_reaction_8=function_4(reaction_reaction_8_k7, x(1), x(3));

% Reaction: id = reaction_9, name = Intestinal Nascent HDL Synthesis	% Local Parameter:   id =  k8, name = k8
	reaction_reaction_9_k8=5.0E-4;

	reaction_reaction_9=function_5(reaction_reaction_9_k8, x(8));

% Reaction: id = reaction_10, name = Billary Cholesterol Release	% Local Parameter:   id =  BCRmax, name = BCRmax
	reaction_reaction_10_BCRmax=2000.0;
	% Local Parameter:   id =  BCRt, name = BCRt
	reaction_reaction_10_BCRt=55326.0;
	% Local Parameter:   id =  BS, name = BS
	reaction_reaction_10_BS=5.0;

	reaction_reaction_10=function_6(reaction_reaction_10_BCRmax, reaction_reaction_10_BCRt, x(5), reaction_reaction_10_BS);

% Reaction: id = reaction_11, name = Hepatic Cholesterol Synthesis	% Local Parameter:   id =  HCSmax, name = HCSmax
	reaction_reaction_11_HCSmax=500.0;
	% Local Parameter:   id =  HCSt, name = HCSt
	reaction_reaction_11_HCSt=93925.0;
	% Local Parameter:   id =  HS, name = HS
	reaction_reaction_11_HS=5.0;

	reaction_reaction_11=function_7(reaction_reaction_11_HCSmax, x(5), reaction_reaction_11_HCSt, reaction_reaction_11_HS);

% Reaction: id = reaction_12, name = Hepatic Cholesterol Storage	% Local Parameter:   id =  k9, name = k9
	reaction_reaction_12_k9=1.0;

	reaction_reaction_12=function_8(reaction_reaction_12_k9, x(10), x(5));

% Reaction: id = reaction_13, name = Release of Stored Cholesterol	% Local Parameter:   id =  k10, name = k10
	reaction_reaction_13_k10=5.998;

	reaction_reaction_13=function_9(reaction_reaction_13_k10, x(11), x(9));

% Reaction: id = reaction_14, name = Hepatic Nascent HDL Synthesis	% Local Parameter:   id =  k11, name = k11
	reaction_reaction_14_k11=0.005;

	reaction_reaction_14=function_10(reaction_reaction_14_k11, x(8));

% Reaction: id = reaction_15, name = VLDL Cholesterol Formation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.016;

	reaction_reaction_15=reaction_reaction_15_k1*x(5);

% Reaction: id = reaction_16, name = Hepatic LDLR Synthesis	% Local Parameter:   id =  khrs, name = khrs
	reaction_reaction_16_khrs=100.0;

	reaction_reaction_16=function_11(reaction_reaction_16_khrs, const_species_species_19, x(5));

% Reaction: id = reaction_17, name = Hepatic LDL Receptor Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=0.01;

	reaction_reaction_17=reaction_reaction_17_k1*x(13);

% Reaction: id = reaction_18, name = VLDL Cholesterol ReUptake	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.0496;

	reaction_reaction_18=reaction_reaction_18_k1*x(12);

% Reaction: id = reaction_19, name = IDL Cholesterol Formation	% Local Parameter:   id =  k15, name = k15
	reaction_reaction_19_k15=0.43;

	reaction_reaction_19=function_12(reaction_reaction_19_k15, x(12), x(16));

% Reaction: id = reaction_20, name = IDL Cholesterol ReUptake	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.054;

	reaction_reaction_20=reaction_reaction_20_k1*x(15);

% Reaction: id = reaction_21, name = LDL Cholesterol Formation	% Local Parameter:   id =  k17, name = k17
	reaction_reaction_21_k17=0.38;

	reaction_reaction_21=function_13(reaction_reaction_21_k17, x(15), x(18));

% Reaction: id = reaction_22, name = Receptor Dependent Hepatic Uptake	% Local Parameter:   id =  k18, name = k18
	reaction_reaction_22_k18=0.068;

	reaction_reaction_22=function_14(reaction_reaction_22_k18, x(17), x(13));

% Reaction: id = reaction_23, name = Receptor Independent Hepatic Uptake	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=0.005;

	reaction_reaction_23=reaction_reaction_23_k1*x(17);

% Reaction: id = reaction_24, name = Receptor Dependent Peripheral Uptake	% Local Parameter:   id =  k20, name = k20
	reaction_reaction_24_k20=0.00675;

	reaction_reaction_24=function_15(reaction_reaction_24_k20, x(19), x(17));

% Reaction: id = reaction_25, name = Receptor Independent Peripheral Uptake	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=5.0E-6;

	reaction_reaction_25=reaction_reaction_25_k1*x(17);

% Reaction: id = reaction_26, name = Peripheral LDLR Synthesis	% Local Parameter:   id =  kprs, name = kprs
	reaction_reaction_26_kprs=100.0;

	reaction_reaction_26=function_16(reaction_reaction_26_kprs, const_species_species_26, x(8));

% Reaction: id = reaction_27, name = Peripheral LDL Receptor Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_27_k1=0.01;

	reaction_reaction_27=reaction_reaction_27_k1*x(19);

% Reaction: id = reaction_28, name = Peripheral Cholesterol Storage	% Local Parameter:   id =  k23, name = k23
	reaction_reaction_28_k23=0.017386;

	reaction_reaction_28=function_17(reaction_reaction_28_k23, x(10), x(8));

% Reaction: id = reaction_29, name = Release of Stored Peripheral Cholesterol	% Local Parameter:   id =  k24, name = k24
	reaction_reaction_29_k24=0.1068;

	reaction_reaction_29=function_18(reaction_reaction_29_k24, x(11), x(21));

% Reaction: id = reaction_30, name = Peripheral Steroid Production	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_30_k1=5.0E-4;

	reaction_reaction_30=reaction_reaction_30_k1*x(8);

% Reaction: id = reaction_31, name = HDL Cholesterol Formation	% Local Parameter:   id =  k26, name = k26
	reaction_reaction_31_k26=1.5E-5;

	reaction_reaction_31=function_19(reaction_reaction_31_k26, x(8), x(7), x(24));

% Reaction: id = reaction_32, name = Peripheral Cholesterol Synthesis	% Local Parameter:   id =  PCSmax, name = PCSmax
	reaction_reaction_32_PCSmax=500.0;
	% Local Parameter:   id =  PPCt, name = PPCt
	reaction_reaction_32_PPCt=80342.0;
	% Local Parameter:   id =  PCSS, name = PCSS
	reaction_reaction_32_PCSS=5.0;

	reaction_reaction_32=function_20(reaction_reaction_32_PCSmax, x(8), reaction_reaction_32_PPCt, reaction_reaction_32_PCSS);

% Reaction: id = reaction_33, name = CETP Mediated Transfer To VLDL	% Local Parameter:   id =  k27, name = k27
	reaction_reaction_33_k27=0.01;

	reaction_reaction_33=function_21(reaction_reaction_33_k27, x(23), x(25));

% Reaction: id = reaction_34, name = CETP Mediated TransferTo LDL	% Local Parameter:   id =  k28, name = k28
	reaction_reaction_34_k28=0.001;

	reaction_reaction_34=function_22(reaction_reaction_34_k28, x(23), x(25));

% Reaction: id = reaction_35, name = Reverse Cholesterol Transport	% Local Parameter:   id =  k29, name = k29
	reaction_reaction_35_k29=0.05;

	reaction_reaction_35=function_23(reaction_reaction_35_k29, x(23), x(26));

% Species:   id = species_1, name = DC, constant	const_species_species_1=304.0;

% Species:   id = species_3, name = ICS, constant	const_species_species_3=0.0;

% Species:   id = species_9, name = INHDLS, constant	const_species_species_9=0.0;

% Species:   id = species_12, name = HCS, constant	const_species_species_12=0.0;

% Species:   id = species_16, name = HNHDLS, constant	const_species_species_16=0.0;

% Species:   id = species_19, name = HLDLRsS, constant	const_species_species_19=600.0;

% Species:   id = species_26, name = PLDLRsS, constant	const_species_species_26=575.16;

% Species:   id = species_32, name = PCS, constant	const_species_species_32=0.0;

	xdot=zeros(26,1);
	
% Species:   id = species_2, name = IC, affected by kineticLaw
	xdot(1) = (1/(compartment_Intestine))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_4, name = HBS, affected by kineticLaw
	xdot(2) = (1/(compartment_HepaticTissue))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_5, name = IBS, affected by kineticLaw
	xdot(3) = (1/(compartment_Intestine))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_6, name = EBS, affected by kineticLaw
	xdot(4) = (1/(compartment_Excreted))*(( 1.0 * reaction_reaction_5));
	
% Species:   id = species_7, name = HFC, affected by kineticLaw
	xdot(5) = (1/(compartment_HepaticTissue))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_35));
	
% Species:   id = species_8, name = EC, affected by kineticLaw
	xdot(6) = (1/(compartment_Excreted))*(( 1.0 * reaction_reaction_8));
	
% Species:   id = species_10, name = NHDL, affected by kineticLaw
	xdot(7) = (1/(compartment_Plasma))*(( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_31));
	
% Species:   id = species_11, name = PFC, affected by kineticLaw
	xdot(8) = (1/(compartment_PeripheralTissue))*(( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32));
	
% Species:   id = species_13, name = HCE, affected by kineticLaw
	xdot(9) = (1/(compartment_HepaticTissue))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_14, name = ACAT
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = species_15, name = CEH
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = species_17, name = VLDLC, affected by kineticLaw
	xdot(12) = (1/(compartment_Plasma))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_33));
	
% Species:   id = species_18, name = HLDLRs, affected by kineticLaw
	xdot(13) = (1/(compartment_HepaticTissue))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_20, name = HLDLRD, affected by kineticLaw
	xdot(14) = (1/(compartment_HepaticTissue))*(( 1.0 * reaction_reaction_17));
	
% Species:   id = species_21, name = IDLC, affected by kineticLaw
	xdot(15) = (1/(compartment_Plasma))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_22, name = LPL
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = species_23, name = LDLC, affected by kineticLaw
	xdot(17) = (1/(compartment_Plasma))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_34));
	
% Species:   id = species_24, name = HSL
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = species_25, name = PLDLRs, affected by kineticLaw
	xdot(19) = (1/(compartment_PeripheralTissue))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_27, name = PLDLRD, affected by kineticLaw
	xdot(20) = (1/(compartment_PeripheralTissue))*(( 1.0 * reaction_reaction_27));
	
% Species:   id = species_28, name = PCE, affected by kineticLaw
	xdot(21) = (1/(compartment_PeripheralTissue))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_29, name = PSS, affected by kineticLaw
	xdot(22) = (1/(compartment_PeripheralTissue))*(( 1.0 * reaction_reaction_30));
	
% Species:   id = species_30, name = HDLC, affected by kineticLaw
	xdot(23) = (1/(compartment_Plasma))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_31, name = LCAT
% Warning species is not changed by either rules or reactions
	xdot(24) = ;
	
% Species:   id = species_33, name = CETP
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = species_34, name = SRB1
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
end

function z=function_1(ICSmax,IC,ICt,IS), z=(ICSmax/(1+(IC/ICt)^IS));end

function z=function_2(k5,HFC,HBS), z=(k5*HFC/HBS);end

function z=function_3(k6,IC,IBS), z=(k6*IC*IBS);end

function z=function_4(k7,IC,IBS), z=(k7*IC*IBS);end

function z=function_5(k8,PFC), z=(k8*PFC);end

function z=function_6(BCRmax,BCRt,HFC,BS), z=(BCRmax/(1+(BCRt/HFC)^BS));end

function z=function_7(HCSmax,HFC,HCSt,HS), z=(HCSmax/(1+(HFC/HCSt)^HS));end

function z=function_8(k9,ACAT,HFC), z=(k9*ACAT*HFC);end

function z=function_9(k10,CEH,HCE), z=(k10*CEH*HCE);end

function z=function_10(k11,PFC), z=(k11*PFC);end

function z=function_11(khrs,HLDLRsS,HFC), z=(khrs*HLDLRsS/HFC);end

function z=function_12(k15,VLDLC,LPL), z=(k15*VLDLC*LPL);end

function z=function_13(k17,IDLC,HSL), z=(k17*IDLC*HSL);end

function z=function_14(k18,LDLC,HLDLRs), z=(k18*LDLC*HLDLRs);end

function z=function_15(k20,PLDLRs,LDLC), z=(k20*PLDLRs*LDLC);end

function z=function_16(kprs,PLDLRsS,PFC), z=(kprs*PLDLRsS/PFC);end

function z=function_17(k23,ACAT,PFC), z=(k23*ACAT*PFC);end

function z=function_18(k24,CEH,PCE), z=(k24*CEH*PCE);end

function z=function_19(k26,PFC,NHDL,LCAT), z=(k26*PFC*NHDL*LCAT);end

function z=function_20(PCSmax,PFC,PPCt,PCSS), z=(PCSmax/(1+(PFC/PPCt)^PCSS));end

function z=function_21(k27,HDLC,CETP), z=(k27*HDLC*CETP);end

function z=function_22(k28,HDLC,CETP), z=(k28*HDLC*CETP);end

function z=function_23(k29,HDLC,SRB1), z=(k29*HDLC*SRB1);end

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


