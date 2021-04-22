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
% Model name = Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model
%
% is http://identifiers.org/biomodels.db/MODEL1611280000
% is http://identifiers.org/biomodels.db/BIOMD0000000623
% isDescribedBy http://identifiers.org/pubmed/19804630
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000033
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 0.0;
	x0(2) = 80000.0;
	x0(3) = 0.0;
	x0(4) = 120000.0;
	x0(5) = 0.0;
	x0(6) = 120000.0;
	x0(7) = 0.0;
	x0(8) = 120000.0;
	x0(9) = 0.0;
	x0(10) = 600000.0;
	x0(11) = 0.0;
	x0(12) = 600000.0;
	x0(13) = 0.0;
	x0(14) = 120000.0;
	x0(15) = 0.0;
	x0(16) = 120000.0;
	x0(17) = 0.0;
	x0(18) = 120000.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 120000.0;
	x0(22) = 0.0;
	x0(23) = 120000.0;
	x0(24) = 0.0;
	x0(25) = 120000.0;


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

% Compartment: id = compartment_0, name = compartment, constant
	compartment_compartment_0=1.0;

% Reaction: id = reaction_0, name = EGF_Binding_Unbinding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=2.18503E-5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_0_k2=0.121008;

	reaction_reaction_0=compartment_compartment_0*(reaction_reaction_0_k1*const_species_species_25*x(2)-reaction_reaction_0_k2*x(1));

% Reaction: id = reaction_1, name = Sos_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_1_Kcat=694.731;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_1_km=6086070.0;

	reaction_reaction_1=compartment_compartment_0*Menten_Explicit_Enzyme_1(reaction_reaction_1_Kcat, reaction_reaction_1_km, x(1), x(4));

% Reaction: id = reaction_2, name = Sos_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=2.5;

	reaction_reaction_2=compartment_compartment_0*reaction_reaction_2_k1*x(3);

% Reaction: id = reaction_3, name = Ras_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_3_Kcat=32.344;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_3_km=35954.3;

	reaction_reaction_3=compartment_compartment_0*Menten_Explicit_Enzyme_2(reaction_reaction_3_Kcat, reaction_reaction_3_km, x(3), x(6));

% Reaction: id = reaction_4, name = Ras_Deactivation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_4_Kcat=1509.36;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_4_km=1432410.0;

	reaction_reaction_4=compartment_compartment_0*Menten_Explicit_Enzyme_3(reaction_reaction_4_Kcat, reaction_reaction_4_km, const_species_species_28, x(5));

% Reaction: id = reaction_5, name = Raf1_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_5_Kcat=0.884096;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_5_km=62464.6;

	reaction_reaction_5=compartment_compartment_0*Menten_Explicit_Enzyme_4(reaction_reaction_5_Kcat, reaction_reaction_5_km, x(5), x(8));

% Reaction: id = reaction_6, name = Raf1_Deactivation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_6_Kcat=0.126329;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_6_km=1061.71;

	reaction_reaction_6=compartment_compartment_0*Menten_Explicit_Enzyme_5(reaction_reaction_6_Kcat, reaction_reaction_6_km, const_species_species_27, x(7));

% Reaction: id = reaction_7, name = Mek_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_7_Kcat=185.759;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_7_km=4768350.0;

	reaction_reaction_7=compartment_compartment_0*Menten_Explicit_Enzyme_6(reaction_reaction_7_Kcat, reaction_reaction_7_km, x(7), x(10));

% Reaction: id = reaction_8, name = Mek_Deactivation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_8_Kcat=2.83243;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_8_km=518753.0;

	reaction_reaction_8=compartment_compartment_0*Menten_Explicit_Enzyme_7(reaction_reaction_8_Kcat, reaction_reaction_8_km, const_species_species_26, x(9));

% Reaction: id = reaction_9, name = Erk_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_9_Kcat=9.85367;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_9_km=1007340.0;

	reaction_reaction_9=compartment_compartment_0*Menten_Explicit_Enzyme_8(reaction_reaction_9_Kcat, reaction_reaction_9_km, x(12), x(9));

% Reaction: id = reaction_10, name = Erk_Deactivation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_10_Kcat=8.8912;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_10_km=3496490.0;

	reaction_reaction_10=compartment_compartment_0*Menten_Explicit_Enzyme_9(reaction_reaction_10_Kcat, reaction_reaction_10_km, x(11), const_species_species_26);

% Reaction: id = reaction_11, name = P90Rsk_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_11_Kcat=0.0213697;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_11_km=763523.0;

	reaction_reaction_11=compartment_compartment_0*Menten_Explicit_Enzyme_10(reaction_reaction_11_Kcat, reaction_reaction_11_km, x(11), x(14));

% Reaction: id = reaction_12, name = P90Rsk_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.005;

	reaction_reaction_12=compartment_compartment_0*reaction_reaction_12_k1*x(13);

% Reaction: id = reaction_13, name = Sos_Feedback_Deactivation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_13_Kcat=1611.97;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_13_km=896896.0;

	reaction_reaction_13=compartment_compartment_0*Menten_Explicit_Enzyme_11(reaction_reaction_13_Kcat, reaction_reaction_13_km, x(13), x(3));

% Reaction: id = reaction_14, name = PI3K_Activation_EGFR	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_14_Kcat=10.6737;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_14_km=184912.0;

	reaction_reaction_14=compartment_compartment_0*Menten_Explicit_Enzyme_12(reaction_reaction_14_Kcat, reaction_reaction_14_km, x(1), x(16));

% Reaction: id = reaction_15, name = PI3K_Activation_Ras	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_15_Kcat=0.0771067;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_15_km=272056.0;

	reaction_reaction_15=compartment_compartment_0*Menten_Explicit_Enzyme_13(reaction_reaction_15_Kcat, reaction_reaction_15_km, x(16), x(5));

% Reaction: id = reaction_16, name = PI3K_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.005;

	reaction_reaction_16=compartment_compartment_0*reaction_reaction_16_k1*x(15);

% Reaction: id = reaction_17, name = Akt_Activation	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_17_Kcat=0.0566279;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_17_km=653951.0;

	reaction_reaction_17=compartment_compartment_0*Menten_Explicit_Enzyme_14(reaction_reaction_17_Kcat, reaction_reaction_17_km, x(15), x(18));

% Reaction: id = reaction_18, name = Akt_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.005;

	reaction_reaction_18=compartment_compartment_0*reaction_reaction_18_k1*x(17);

% Reaction: id = reaction_19, name = Raf1_Deactivation_Akt	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_reaction_19_Kcat=15.1212;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_19_km=119355.0;

	reaction_reaction_19=compartment_compartment_0*Menten_Explicit_Enzyme_15(reaction_reaction_19_Kcat, reaction_reaction_19_km, x(17), x(7));

% Reaction: id = reaction_20, name = EGFReceptor_Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=0.2;

	reaction_reaction_20=compartment_compartment_0*reaction_reaction_20_k1*x(1);

% Reaction: id = reaction_21, name = C3G_Activation	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_21_kcat=694.731;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_21_km=6086070.0;

	reaction_reaction_21=compartment_compartment_0*MM_Explicit_Enzyme_1(reaction_reaction_21_kcat, reaction_reaction_21_km, x(1), x(21));

% Reaction: id = reaction_22, name = C3G_Deactivation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=2.5;

	reaction_reaction_22=compartment_compartment_0*reaction_reaction_22_k1*x(20);

% Reaction: id = reaction_23, name = Rap1_Activation	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_23_kcat=32.344;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_23_km=35954.3;

	reaction_reaction_23=compartment_compartment_0*MM_Explicit_Enzyme_2(reaction_reaction_23_kcat, reaction_reaction_23_km, x(20), x(23));

% Reaction: id = reaction_24, name = Rap1_Deactivation	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_24_kcat=1509.36;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_24_km=1432410.0;

	reaction_reaction_24=compartment_compartment_0*MM_Explicit_Enzyme_3(reaction_reaction_24_kcat, reaction_reaction_24_km, x(22), const_species_species_29);

% Reaction: id = reaction_25, name = bRaf_Activation	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_25_kcat=0.884096;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_25_km=62464.6;

	reaction_reaction_25=compartment_compartment_0*MM_Explicit_Enzyme_4(reaction_reaction_25_kcat, reaction_reaction_25_km, x(22), x(25));

% Reaction: id = reaction_26, name = bRaf_Deactivation	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_26_kcat=0.126329;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_26_km=1061.71;

	reaction_reaction_26=compartment_compartment_0*MM_Explicit_Enzyme_5(reaction_reaction_26_kcat, reaction_reaction_26_km, x(24), const_species_species_27);

% Reaction: id = reaction_27, name = Mek_Activation_bRaf	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_27_kcat=185.759;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_27_km=4768350.0;

	reaction_reaction_27=compartment_compartment_0*MM_Explicit_Enzyme_6(reaction_reaction_27_kcat, reaction_reaction_27_km, x(24), x(10));

% Reaction: id = reaction_29, name = EGFReceptor_Degradtion_Free	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=0.00125;

	reaction_reaction_29=compartment_compartment_0*reaction_reaction_29_k1*x(2);

% Reaction: id = reaction_30, name = bRaf_Activation_Ras	% Local Parameter:   id =  kcat, name = kcat
	reaction_reaction_30_kcat=0.884096;
	% Local Parameter:   id =  km, name = km
	reaction_reaction_30_km=62464.6;

	reaction_reaction_30=compartment_compartment_0*MM_Explicit_Enzyme_7(reaction_reaction_30_kcat, reaction_reaction_30_km, x(25), x(5));

% Species:   id = species_25, name = EGF, constant	const_species_species_25=1.0002E7;

% Species:   id = species_26, name = PP2AActive, constant	const_species_species_26=120000.0;

% Species:   id = species_27, name = Raf1PPtase, constant	const_species_species_27=120000.0;

% Species:   id = species_28, name = RasGapActive, constant	const_species_species_28=120000.0;

% Species:   id = species_29, name = Rap1Gap, constant	const_species_species_29=120000.0;

% Species:   id = species_30, name = proEGFReceptor, constant	const_species_species_30=1.0;

	xdot=zeros(25,1);
	
% Species:   id = species_0, name = boundEGFReceptor, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_1, name = freeEGFReceptor, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_2, name = SosActive, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_3, name = SosInactive, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = species_4, name = RasActive, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_5, name = RasInactive, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_6, name = Raf1Active, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_7, name = Raf1Inactive, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = species_8, name = MekActive, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_27));
	
% Species:   id = species_9, name = MekInactive, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_10, name = ErkActive, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_11, name = ErkInactive, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_12, name = P90RskActive, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = species_13, name = P90RskInactive, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_14, name = PI3KActive, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = species_15, name = PI3KInactive, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = species_16, name = AktActive, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_17, name = AktInactive, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_18, name = degradedEGFReceptor, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_29));
	
% Species:   id = species_19, name = C3GActive, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_20, name = C3GInactive, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22));
	
% Species:   id = species_21, name = Rap1Active, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_22, name = Rap1Inactive, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = species_23, name = bRafActive, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_30));
	
% Species:   id = species_24, name = bRafInactive, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_30));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Menten_Explicit_Enzyme_12(Kcat,km,species_0,species_15), z=(Kcat*species_0*species_15/(km+species_15));end

function z=MM_Explicit_Enzyme_5(kcat,km,species_23,species_27), z=(kcat*species_27*species_23/(km+species_23));end

function z=Menten_Explicit_Enzyme_14(Kcat,km,species_14,species_17), z=(Kcat*species_14*species_17/(km+species_17));end

function z=Menten_Explicit_Enzyme_9(Kcat,km,species_10,species_26), z=(Kcat*species_26*species_10/(km+species_10));end

function z=MM_Explicit_Enzyme_7(kcat,km,species_24,species_4), z=(kcat*species_4*species_24/(km+species_24));end

function z=Menten_Explicit_Enzyme_4(Kcat,km,species_4,species_7), z=(Kcat*species_4*species_7/(km+species_7));end

function z=Menten_Explicit_Enzyme_6(Kcat,km,species_6,species_9), z=(Kcat*species_6*species_9/(km+species_9));end

function z=MM_Explicit_Enzyme_4(kcat,km,species_21,species_24), z=(kcat*species_21*species_24/(km+species_24));end

function z=Menten_Explicit_Enzyme_2(Kcat,km,species_2,species_5), z=(Kcat*species_2*species_5/(km+species_5));end

function z=Menten_Explicit_Enzyme_7(Kcat,km,species_26,species_8), z=(Kcat*species_26*species_8/(km+species_8));end

function z=Menten_Explicit_Enzyme_11(Kcat,km,species_12,species_2), z=(Kcat*species_12*species_2/(km+species_2));end

function z=Menten_Explicit_Enzyme_15(Kcat,km,species_16,species_6), z=(Kcat*species_16*species_6/(km+species_6));end

function z=MM_Explicit_Enzyme_1(kcat,km,species_0,species_20), z=(kcat*species_0*species_20/(km+species_20));end

function z=Menten_Explicit_Enzyme_10(Kcat,km,species_10,species_13), z=(Kcat*species_10*species_13/(km+species_13));end

function z=Menten_Explicit_Enzyme_5(Kcat,km,species_27,species_6), z=(Kcat*species_27*species_6/(km+species_6));end

function z=Menten_Explicit_Enzyme_8(Kcat,km,species_11,species_8), z=(Kcat*species_8*species_11/(km+species_11));end

function z=Menten_Explicit_Enzyme_13(Kcat,km,species_15,species_4), z=(Kcat*species_4*species_15/(km+species_15));end

function z=Menten_Explicit_Enzyme_3(Kcat,km,species_28,species_4), z=(Kcat*species_28*species_4/(km+species_4));end

function z=MM_Explicit_Enzyme_2(kcat,km,species_19,species_22), z=(kcat*species_19*species_22/(km+species_22));end

function z=Menten_Explicit_Enzyme_1(Kcat,km,species_0,species_3), z=(Kcat*species_0*species_3/(km+species_3));end

function z=MM_Explicit_Enzyme_3(kcat,km,species_21,species_29), z=(kcat*species_29*species_21/(km+species_21));end

function z=MM_Explicit_Enzyme_6(kcat,km,species_23,species_9), z=(kcat*species_23*species_9/(km+species_9));end

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


