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
% Model name = Sharp2013 - Lipopolysaccharide induced NFkB activation
%
% is http://identifiers.org/biomodels.db/MODEL1303230000
% is http://identifiers.org/biomodels.db/BIOMD0000000489
% isDescribedBy http://identifiers.org/pubmed/23936158
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000139
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000140
% isDerivedFrom http://identifiers.org/pubmed/16166516
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 0.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.1;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.1;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;

% Reaction: id = reaction_1, name = MYD881) Receptor Complex Formation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.0E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=1.0E-4;

	reaction_reaction_1=compartment_compartment_1*(reaction_reaction_1_k1*const_species_species_4*const_species_species_3*const_species_species_1*const_species_species_8*const_species_species_6*const_species_species_2*const_species_species_7-reaction_reaction_1_k2*x(1));

% Reaction: id = reaction_2, name = MYD882) IRAK1 and TRAF6 Phosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.001;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=0.001;

	reaction_reaction_2=compartment_compartment_1*function_1(reaction_reaction_2_k1, x(1), x(2), const_species_species_10, reaction_reaction_2_k2, x(3));

% Reaction: id = reaction_3, name = MYD883) TAK/TAB Binds to TRAF6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.003;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=0.01;

	reaction_reaction_3=compartment_compartment_1*(reaction_reaction_3_k1*x(3)*const_species_species_12-reaction_reaction_3_k2*x(4));

% Reaction: id = reaction_4, name = MYD884) IKK Phosphorylation by TAK1	% Local Parameter:   id =  k, name = k
	reaction_reaction_4_k=0.1;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_4_Km=0.1;

	reaction_reaction_4=compartment_compartment_1*function_2(reaction_reaction_4_k, x(4), x(5), reaction_reaction_4_Km);

% Reaction: id = reaction_5, name = MYD885) IKK[P] Dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.1;

	reaction_reaction_5=compartment_compartment_1*reaction_reaction_5_k1*x(6);

% Reaction: id = reaction_6, name = TRIF01) Receptor Complex Formation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=1.0E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_6_k2=1.0E-4;

	reaction_reaction_6=compartment_compartment_1*(reaction_reaction_6_k1*const_species_species_4*const_species_species_3*const_species_species_1*const_species_species_8*const_species_species_18*const_species_species_17*const_species_species_16*const_species_species_53-reaction_reaction_6_k2*x(35));

% Reaction: id = reaction_7, name = TRIF02) IRF3 Phosphorylation	% Local Parameter:   id =  k, name = k
	reaction_reaction_7_k=0.1;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_7_Km=0.1;

	reaction_reaction_7=compartment_compartment_1*function_2(reaction_reaction_7_k, x(35), x(7), reaction_reaction_7_Km);

% Reaction: id = reaction_8, name = TRIF03) IRF3 Dephosphorylation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.1;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(8);

% Reaction: id = reaction_9, name = TRIF04) IRF3 Nuclear Import/Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_9_k2=0.1;

	reaction_reaction_9=compartment_compartment_1*(reaction_reaction_9_k1*x(8)-reaction_reaction_9_k2*x(9));

% Reaction: id = reaction_10, name = TRIF05) Inducible TNFa Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.02;

	reaction_reaction_10=compartment_compartment_1*reaction_reaction_10_k1*x(9)^2;

% Reaction: id = reaction_11, name = TRIF06) Constitutive TNFa Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.001;

	reaction_reaction_11=compartment_compartment_1*reaction_reaction_11_k1*const_species_species_22;

% Reaction: id = reaction_12, name = TRIF09) TNFa Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.1;

	reaction_reaction_12=compartment_compartment_1*reaction_reaction_12_k1*x(10);

% Reaction: id = reaction_13, name = TRIF10) TNFa Receptor Complex Formation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_13_k2=0.1;

	reaction_reaction_13=compartment_compartment_1*(reaction_reaction_13_k1*x(10)*const_species_species_25*const_species_species_27*const_species_species_26*const_species_species_16-reaction_reaction_13_k2*x(11));

% Reaction: id = reaction_14, name = TRIF11) IKK Phosphorylation by RIP1	% Local Parameter:   id =  k, name = k
	reaction_reaction_14_k=0.1;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_14_Km=0.1;

	reaction_reaction_14=compartment_compartment_1*function_2(reaction_reaction_14_k, x(11), x(5), reaction_reaction_14_Km);

% Reaction: id = reaction_15, name = NFkB01) IkBa:NFkB Binding 	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_15_k2=5.0E-4;

	reaction_reaction_15=compartment_compartment_1*(reaction_reaction_15_k1*x(12)*x(14)-reaction_reaction_15_k2*x(13));

% Reaction: id = reaction_16, name = NFkB02) IKK:IkBa:NFkB Binding (1)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.185;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=0.0125;

	reaction_reaction_16=compartment_compartment_1*(reaction_reaction_16_k1*x(6)*x(13)-reaction_reaction_16_k2*x(15));

% Reaction: id = reaction_17, name = NFkB03) IkBb:NFkB Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_17_k2=5.0E-4;

	reaction_reaction_17=compartment_compartment_1*(reaction_reaction_17_k1*x(16)*x(14)-reaction_reaction_17_k2*x(17));

% Reaction: id = reaction_18, name = NFkB04) IKK:IkBb:NFkB Binding (1)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.048;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_18_k2=0.00175;

	reaction_reaction_18=compartment_compartment_1*(reaction_reaction_18_k1*x(6)*x(17)-reaction_reaction_18_k2*x(18));

% Reaction: id = reaction_19, name = NFkB05) IkBe:NFkB Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=5.0E-4;

	reaction_reaction_19=compartment_compartment_1*(reaction_reaction_19_k1*x(19)*x(14)-reaction_reaction_19_k2*x(20));

% Reaction: id = reaction_20, name = NFkB06) IKK:IkBe:NFkB Binding (1)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.07;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_20_k2=0.00175;

	reaction_reaction_20=compartment_compartment_1*(reaction_reaction_20_k1*x(6)*x(20)-reaction_reaction_20_k2*x(21));

% Reaction: id = reaction_21, name = NFkB07) IKK:IkBa:NFkB Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=0.0204;

	reaction_reaction_21=compartment_compartment_1*reaction_reaction_21_k1*x(15);

% Reaction: id = reaction_22, name = NFkB08) IKK:IkBb:NFkB Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=0.0075;

	reaction_reaction_22=compartment_compartment_1*reaction_reaction_22_k1*x(18);

% Reaction: id = reaction_23, name = NFkB09) IKK:IkBe:NFkB Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=0.011;

	reaction_reaction_23=compartment_compartment_1*reaction_reaction_23_k1*x(21);

% Reaction: id = reaction_24, name = NFkB10) IkBa:NFkB Constitutive Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_24_k1=2.25E-5;

	reaction_reaction_24=compartment_compartment_1*reaction_reaction_24_k1*x(13);

% Reaction: id = reaction_25, name = NFkB11) IkBb:NFkB Constitutive Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=2.25E-5;

	reaction_reaction_25=compartment_compartment_1*reaction_reaction_25_k1*x(17);

% Reaction: id = reaction_26, name = NFkB12) IkBe:NFkB Constitutive Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_26_k1=2.25E-5;

	reaction_reaction_26=compartment_compartment_1*reaction_reaction_26_k1*x(20);

% Reaction: id = reaction_27, name = NFkB13) NFkB Nuclear Import/Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_27_k1=0.09;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_27_k2=8.0E-5;

	reaction_reaction_27=compartment_compartment_1*(reaction_reaction_27_k1*x(14)-reaction_reaction_27_k2*x(22));

% Reaction: id = reaction_28, name = NFkB14) Nuclear IkBa:NFkB Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_28_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_28_k2=5.0E-4;

	reaction_reaction_28=compartment_compartment_1*(reaction_reaction_28_k1*x(23)*x(22)-reaction_reaction_28_k2*x(24));

% Reaction: id = reaction_29, name = NFkB15) Nuclear IkBb:NFkB Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_29_k2=5.0E-4;

	reaction_reaction_29=compartment_compartment_1*(reaction_reaction_29_k1*x(25)*x(22)-reaction_reaction_29_k2*x(26));

% Reaction: id = reaction_30, name = NFkB16) Nuclear IkBe:NFkB Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_30_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_30_k2=5.0E-4;

	reaction_reaction_30=compartment_compartment_1*(reaction_reaction_30_k1*x(27)*x(22)-reaction_reaction_30_k2*x(28));

% Reaction: id = reaction_31, name = NFkB17) Constitutive IkBa mRNA Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_31_k1=1.54E-6;

	reaction_reaction_31=compartment_compartment_1*reaction_reaction_31_k1*const_species_species_22;

% Reaction: id = reaction_32, name = NFkB18) Inducible IkBa mRNA Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_32_k1=0.0165;

	reaction_reaction_32=compartment_compartment_1*reaction_reaction_32_k1*x(22)^2;

% Reaction: id = reaction_33, name = NFkB19) IkBa mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_33_k1=2.8E-4;

	reaction_reaction_33=compartment_compartment_1*reaction_reaction_33_k1*x(29);

% Reaction: id = reaction_34, name = NFkB20) Constitutive IkBb mRNA Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_34_k1=1.78E-7;

	reaction_reaction_34=compartment_compartment_1*reaction_reaction_34_k1*const_species_species_22;

% Reaction: id = reaction_35, name = NFkB21) IkBb mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_35_k1=2.8E-4;

	reaction_reaction_35=compartment_compartment_1*reaction_reaction_35_k1*x(30);

% Reaction: id = reaction_36, name = NFkB22) Constitutive IkBe mRNA Synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_36_k1=1.27E-7;

	reaction_reaction_36=compartment_compartment_1*reaction_reaction_36_k1*const_species_species_22;

% Reaction: id = reaction_37, name = NFkB23) IkBe mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_37_k1=2.8E-4;

	reaction_reaction_37=compartment_compartment_1*reaction_reaction_37_k1*x(31);

% Reaction: id = reaction_38, name = NFkB24) IKK:IkBa Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_38_k1=0.0225;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_38_k2=0.00125;

	reaction_reaction_38=compartment_compartment_1*(reaction_reaction_38_k1*x(6)*x(12)-reaction_reaction_38_k2*x(32));

% Reaction: id = reaction_39, name = NFkB25) IkBa Translation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_39_k1=0.00408;

	reaction_reaction_39=compartment_compartment_1*reaction_reaction_39_k1*x(29);

% Reaction: id = reaction_40, name = NFkB26) IkBa Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_40_k1=1.13E-4;

	reaction_reaction_40=compartment_compartment_1*reaction_reaction_40_k1*x(12);

% Reaction: id = reaction_41, name = NFkB27) IkBa Nuclear Import/Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_41_k1=3.0E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_41_k2=2.0E-4;

	reaction_reaction_41=compartment_compartment_1*(reaction_reaction_41_k1*x(12)-reaction_reaction_41_k2*x(23));

% Reaction: id = reaction_42, name = NFkB28) IKK:IkBb Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_42_k1=0.006;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_42_k2=0.00175;

	reaction_reaction_42=compartment_compartment_1*(reaction_reaction_42_k1*x(6)*x(16)-reaction_reaction_42_k2*x(33));

% Reaction: id = reaction_43, name = NFkB29) IkBb Translation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_43_k1=0.00408;

	reaction_reaction_43=compartment_compartment_1*reaction_reaction_43_k1*x(30);

% Reaction: id = reaction_44, name = NFkB30) IkBb Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_44_k1=1.13E-4;

	reaction_reaction_44=compartment_compartment_1*reaction_reaction_44_k1*x(16);

% Reaction: id = reaction_45, name = NFkB31) IkBb Nuclear Import/Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_45_k1=1.5E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_45_k2=1.0E-4;

	reaction_reaction_45=compartment_compartment_1*(reaction_reaction_45_k1*x(16)-reaction_reaction_45_k2*x(25));

% Reaction: id = reaction_46, name = NFkB32) IKK:IkBe Binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=0.009;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_46_k2=0.00175;

	reaction_reaction_46=compartment_compartment_1*(reaction_reaction_46_k1*x(6)*x(19)-reaction_reaction_46_k2*x(34));

% Reaction: id = reaction_47, name = NFkB33) IkBe Translation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_47_k1=0.00408;

	reaction_reaction_47=compartment_compartment_1*reaction_reaction_47_k1*x(31);

% Reaction: id = reaction_48, name = NFkB34) IkBe Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_48_k1=1.13E-4;

	reaction_reaction_48=compartment_compartment_1*reaction_reaction_48_k1*x(19);

% Reaction: id = reaction_49, name = NFkB35) IkBe Nuclear Import/Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_49_k1=1.5E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_49_k2=1.0E-4;

	reaction_reaction_49=compartment_compartment_1*(reaction_reaction_49_k1*x(19)-reaction_reaction_49_k2*x(27));

% Reaction: id = reaction_50, name = NFkB36) IKK:IkBa:NFkB Binding (2)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_50_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_50_k2=5.0E-4;

	reaction_reaction_50=compartment_compartment_1*(reaction_reaction_50_k1*x(32)*x(14)-reaction_reaction_50_k2*x(15));

% Reaction: id = reaction_51, name = NFkB37) IkBa:NFkB Nuclear Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_51_k1=0.0138;

	reaction_reaction_51=compartment_compartment_1*reaction_reaction_51_k1*x(24);

% Reaction: id = reaction_52, name = NFkB38) IKK:IkBb:NFkB Binding (2)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_52_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_52_k2=5.0E-4;

	reaction_reaction_52=compartment_compartment_1*(reaction_reaction_52_k1*x(33)*x(14)-reaction_reaction_52_k2*x(18));

% Reaction: id = reaction_53, name = NFkB39) IkBb:NFkB Nuclear Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_53_k1=0.0052;

	reaction_reaction_53=compartment_compartment_1*reaction_reaction_53_k1*x(26);

% Reaction: id = reaction_54, name = NFkB40) IKK:IkBe:NFkB Binding (2)	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_54_k1=0.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_54_k2=5.0E-4;

	reaction_reaction_54=compartment_compartment_1*(reaction_reaction_54_k1*x(34)*x(14)-reaction_reaction_54_k2*x(21));

% Reaction: id = reaction_55, name = NFkB41) IkBe:NFkB Nuclear Export	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_55_k1=0.0052;

	reaction_reaction_55=compartment_compartment_1*reaction_reaction_55_k1*x(28);

% Reaction: id = reaction_56, name = NFkB42) IKK:IkBa Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_56_k1=0.00407;

	reaction_reaction_56=compartment_compartment_1*reaction_reaction_56_k1*x(32);

% Reaction: id = reaction_57, name = NFkB43) IKK:IkBb Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_57_k1=0.0015;

	reaction_reaction_57=compartment_compartment_1*reaction_reaction_57_k1*x(33);

% Reaction: id = reaction_58, name = NFkB44) IKK:IkBe Catalysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_58_k1=0.0022;

	reaction_reaction_58=compartment_compartment_1*reaction_reaction_58_k1*x(34);

% Reaction: id = reaction_59, name = TRIF06a)Inducible TNFa Synthesis by NFkB	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_59_k1=0.001;

	reaction_reaction_59=compartment_compartment_1*reaction_reaction_59_k1*x(22)^2;

% Species:   id = species_1, name = CD14, constant	const_species_species_1=1.0;

% Species:   id = species_2, name = IRAK4, constant	const_species_species_2=1.0;

% Species:   id = species_3, name = LBP, constant	const_species_species_3=1.0;

% Species:   id = species_4, name = LPS, constant	const_species_species_4=1.0;

% Species:   id = species_6, name = MyD88, constant	const_species_species_6=1.0;

% Species:   id = species_7, name = TIRAP, constant	const_species_species_7=1.0;

% Species:   id = species_8, name = TLR4, constant	const_species_species_8=1.0;

% Species:   id = species_10, name = TRAF6, constant	const_species_species_10=1.0;

% Species:   id = species_12, name = TAK1:TAB1:TAB2, constant	const_species_species_12=1.0;

% Species:   id = species_16, name = RIP1, constant	const_species_species_16=1.0;

% Species:   id = species_17, name = TRAM, constant	const_species_species_17=1.0;

% Species:   id = species_18, name = TRIF, constant	const_species_species_18=1.0;

% Species:   id = species_22, name = source, constant	const_species_species_22=1.0;

% Species:   id = species_23, name = sink, constant	const_species_species_23=0.0;

% Species:   id = species_25, name = TNFR1, constant	const_species_species_25=1.0;

% Species:   id = species_26, name = TRADD, constant	const_species_species_26=1.0;

% Species:   id = species_27, name = TRAF2, constant	const_species_species_27=1.0;

% Species:   id = species_53, name = TBK1/IKKe, constant	const_species_species_53=1.0;

	xdot=zeros(35,1);
	
% Species:   id = species_5, name = LPS:LBP:CD14:TLR4:TIRAP:MyD88:IRAK4, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1));
	
% Species:   id = species_9, name = IRAK1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2));
	
% Species:   id = species_11, name = TRAF6:IRAK1[P], affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_13, name = TAK1:TAB1:TAB2:TRAF6, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3));
	
% Species:   id = species_14, name = IKK, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_15, name = IKK[P], affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58));
	
% Species:   id = species_19, name = IRF3, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = species_20, name = IRF3[P], affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_21, name = IRF3[P](nuc), affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-2.0 * reaction_reaction_10) + ( 2.0 * reaction_reaction_10));
	
% Species:   id = species_24, name = TNFa, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_59));
	
% Species:   id = species_28, name = TNFa:TNFR1:TRAF2:TRADD:RIP1, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_13));
	
% Species:   id = species_29, name = IkBa, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41));
	
% Species:   id = species_30, name = IkBa:NFkB, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_51));
	
% Species:   id = species_31, name = NFkB, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_54));
	
% Species:   id = species_32, name = IKK[P]:IkBa:NFkB, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_50));
	
% Species:   id = species_33, name = IkBb, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_34, name = IkBb:NFkB, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_53));
	
% Species:   id = species_35, name = IKK[P]:IkBb:NFkB, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = species_36, name = IkBe, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49));
	
% Species:   id = species_37, name = IkBe:NFkB, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_55));
	
% Species:   id = species_38, name = IKK[P]:IkBe:NFkB, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_54));
	
% Species:   id = species_39, name = NFkB(nuc), affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30) + (-2.0 * reaction_reaction_32) + ( 2.0 * reaction_reaction_32) + (-2.0 * reaction_reaction_59) + ( 2.0 * reaction_reaction_59));
	
% Species:   id = species_40, name = IkBa(nuc), affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = species_41, name = IkBa:NFkB(nuc), affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_51));
	
% Species:   id = species_42, name = IkBb(nuc), affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_45));
	
% Species:   id = species_43, name = IkBb:NFkB(nuc), affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_53));
	
% Species:   id = species_44, name = IkBe(nuc), affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_49));
	
% Species:   id = species_45, name = IkBe:NFkB(nuc), affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_55));
	
% Species:   id = species_46, name = IkBa_mRNA, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_39));
	
% Species:   id = species_47, name = IkBb_mRNA, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = species_48, name = IkBe_mRNA, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_47));
	
% Species:   id = species_49, name = IKK[P]:IkBa, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_56));
	
% Species:   id = species_50, name = IKK[P]:IkBb, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_57));
	
% Species:   id = species_51, name = IKK[P]:IkBe, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_58));
	
% Species:   id = species_52, name = LPS:LBP:CD14:TLR4:RIP1:TRAM:TRIF:TBK/IKKe, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_6));
end

function z=function_2(k,Enzyme,Substrate,Km), z=(k*Enzyme*Substrate/(Km+Substrate));end

function z=function_1(k1,Enzyme,Substrate1,Substrate2,k2,Product), z=(k1*Enzyme*Substrate1*Substrate2-k2*Product);end

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


