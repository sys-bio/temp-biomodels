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
% Model name = Mitchell2013 - Liver Iron Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1302260000
% is http://identifiers.org/biomodels.db/BIOMD0000000498
% isDescribedBy http://identifiers.org/pubmed/24244122
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 5.0E-9;
	x0(2) = 0.0;
	x0(3) = 1.66E-10;
	x0(4) = 0.0;
	x0(5) = 3.56E-11;
	x0(6) = 1.0E-9;
	x0(7) = 1.3E-6;
	x0(8) = 1.0E-9;
	x0(9) = 1.16E-6;
	x0(10) = 4.0E-7;
	x0(11) = 0.0;
	x0(12) = 2.0E-7;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 3.0E-6;


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

% Compartment: id = compartment_1, name = LiverCell, constant
	compartment_compartment_1=1.0;
% Compartment: id = compartment_3, name = intercell, constant
	compartment_compartment_3=1.0;
% Parameter:   id =  parameter_1, name = Fe2GutQUant
% assignmentRule: variable = parameter_1
	global_par_parameter_1=piecewise(1E-7, ((-5E-13)*(time-40000)^2+0.0001) < 1E-7, (-5E-13)*(time-40000)^2+0.0001);

% Reaction: id = reaction_1, name = Fpn Export	% Local Parameter:   id =  a, name = a
	reaction_reaction_1_a=2.0;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_1_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_1_K=3.0E-6;

	reaction_reaction_1=function_1(reaction_reaction_1_a, x(8), reaction_reaction_1_n, reaction_reaction_1_K, x(7));

% Reaction: id = reaction_2, name = TfR1 expression	% Local Parameter:   id =  a, name = a
	reaction_reaction_2_a=6.0E-12;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_2_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_2_K=1.0E-6;

	reaction_reaction_2=compartment_compartment_3*function_2(reaction_reaction_2_a, reaction_reaction_2_n, reaction_reaction_2_K, x(9));

% Reaction: id = reaction_3, name = TfR1 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=8.37E-6;

	reaction_reaction_3=compartment_compartment_3*reaction_reaction_3_k1*x(10);

% Reaction: id = reaction_4, name = Ferroportin Expression	% Local Parameter:   id =  a, name = a
	reaction_reaction_4_a=1.0E-9;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_4_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_4_K=5.0E-6;

	reaction_reaction_4=compartment_compartment_1*function_3(reaction_reaction_4_a, x(9), reaction_reaction_4_n, reaction_reaction_4_K);

% Reaction: id = reaction_8, name = IRP expresion	% Local Parameter:   id =  a, name = a
	reaction_reaction_8_a=4.0E-11;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_8_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_8_K=1.0E-6;

	reaction_reaction_8=compartment_compartment_1*function_3(reaction_reaction_8_a, x(7), reaction_reaction_8_n, reaction_reaction_8_K);

% Reaction: id = reaction_9, name = IRP degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=1.597E-5;

	reaction_reaction_9=compartment_compartment_1*reaction_reaction_9_k1*x(9);

% Reaction: id = reaction_11, name = Fpn degradation	% Local Parameter:   id =  a, name = a
	reaction_reaction_11_a=2.315E-4;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_11_n=5.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_11_K=5.0E-9;

	reaction_reaction_11=compartment_compartment_1*function_7(reaction_reaction_11_a, x(1), reaction_reaction_11_n, reaction_reaction_11_K, x(8));

% Reaction: id = reaction_12, name = HFE degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=6.418E-5;

	reaction_reaction_12=compartment_compartment_3*reaction_reaction_12_k1*x(12);

% Reaction: id = reaction_15, name = TfR2 degradation	% Local Parameter:   id =  a, name = a
	reaction_reaction_15_a=3.2E-5;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_15_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_15_K=2.5E-6;

	reaction_reaction_15=compartment_compartment_3*function_4(reaction_reaction_15_a, const_species_species_43, reaction_reaction_15_n, reaction_reaction_15_K, x(19));

% Reaction: id = reaction_17, name = Hepcidin expression	% Local Parameter:   id =  basal, name = basal
	reaction_reaction_17_basal=0.0;
	% Local Parameter:   id =  a, name = a
	reaction_reaction_17_a=5.0E-12;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_17_n=5.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_17_K=1.35E-7;
	% Local Parameter:   id =  a1, name = a1
	reaction_reaction_17_a1=5.0E-12;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_17_K1=6.0E-7;

	reaction_reaction_17=compartment_compartment_1*function_11(reaction_reaction_17_basal, reaction_reaction_17_a, x(17), reaction_reaction_17_n, reaction_reaction_17_K, reaction_reaction_17_a1, x(18), reaction_reaction_17_K1);

% Reaction: id = reaction_18, name = Hepcidin degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=5.6E-4;

	reaction_reaction_18=compartment_compartment_1*reaction_reaction_18_k1*x(1);

% Reaction: id = reaction_21, name = HFE TfR1 binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=1102000.0;

	reaction_reaction_21=compartment_compartment_3*reaction_reaction_21_k1*x(12)*x(10);

% Reaction: id = reaction_22, name = HFE TfR1 release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=0.08;

	reaction_reaction_22=compartment_compartment_3*reaction_reaction_22_k1*x(13);

% Reaction: id = reaction_23, name = TfR1 binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=837400.0;

	reaction_reaction_23=compartment_compartment_3*reaction_reaction_23_k1*const_species_species_43*x(10);

% Reaction: id = reaction_24, name = TfR1 release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_24_k1=9.142E-4;

	reaction_reaction_24=compartment_compartment_3*reaction_reaction_24_k1*x(11);

% Reaction: id = reaction_25, name = HFE TfR2 binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=3.9438E11;

	reaction_reaction_25=compartment_compartment_3*reaction_reaction_25_k1*x(12)^2*x(19);

% Reaction: id = reaction_26, name = HFE TfR2 release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_26_k1=0.0018;

	reaction_reaction_26=compartment_compartment_3*reaction_reaction_26_k1*x(17);

% Reaction: id = reaction_27, name = TfR2 binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_27_k1=222390.0;

	reaction_reaction_27=compartment_compartment_3*reaction_reaction_27_k1*const_species_species_43*x(19);

% Reaction: id = reaction_28, name = TfR2 release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_28_k1=0.0061;

	reaction_reaction_28=compartment_compartment_3*reaction_reaction_28_k1*x(14);

% Reaction: id = reaction_29, name = TfR1 binding 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=121400.0;

	reaction_reaction_29=compartment_compartment_3*reaction_reaction_29_k1*x(11)*const_species_species_43;

% Reaction: id = reaction_30, name = TfR1 release 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_30_k1=0.003535;

	reaction_reaction_30=compartment_compartment_3*reaction_reaction_30_k1*x(15);

% Reaction: id = reaction_31, name = HFE TfR1 binding 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_31_k1=1102000.0;

	reaction_reaction_31=compartment_compartment_3*reaction_reaction_31_k1*x(13)*x(12);

% Reaction: id = reaction_32, name = HFE TfR1 release 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_32_k1=0.08;

	reaction_reaction_32=compartment_compartment_3*reaction_reaction_32_k1*x(16);

% Reaction: id = reaction_35, name = TfR2 binding 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_35_k1=69600.0;

	reaction_reaction_35=compartment_compartment_3*reaction_reaction_35_k1*x(14)*const_species_species_43;

% Reaction: id = reaction_36, name = TfR2 release 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_36_k1=0.024;

	reaction_reaction_36=compartment_compartment_3*reaction_reaction_36_k1*x(18);

% Reaction: id = reaction_6, name = TfR1 iron internalisation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.8333;

	reaction_reaction_6=reaction_reaction_6_k1*x(15);

% Reaction: id = reaction_7, name = TfR2 iron internalisation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.8333;

	reaction_reaction_7=reaction_reaction_7_k1*x(18);

% Reaction: id = reaction_44, name = outFlow	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_44_k1=4.0E-4;

	reaction_reaction_44=compartment_compartment_1*reaction_reaction_44_k1*x(7);

% Reaction: id = reaction_45, name = Ferritin Iron binding	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_45_k1=4.71E10;

	reaction_reaction_45=compartment_compartment_1*reaction_reaction_45_k1*x(7)*x(3);

% Reaction: id = reaction_46, name = Ferritin Iron release	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=22922.0;

	reaction_reaction_46=compartment_compartment_1*reaction_reaction_46_k1*x(2);

% Reaction: id = reaction_47, name = Ferritin Iron internalisation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_47_k1=108000.0;

	reaction_reaction_47=compartment_compartment_1*reaction_reaction_47_k1*x(2);

% Reaction: id = reaction_48, name = Ferritin internalised iron release	% Local Parameter:   id =  kloss, name = kloss
	reaction_reaction_48_kloss=13.112;

	reaction_reaction_48=compartment_compartment_1*function_8(x(4), reaction_reaction_48_kloss, x(4), x(3));

% Reaction: id = reaction_49, name = ferritin expression	% Local Parameter:   id =  a, name = a
	reaction_reaction_49_a=2.312E-13;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_49_n=1.0;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_49_K=1.0E-6;

	reaction_reaction_49=compartment_compartment_1*function_3(reaction_reaction_49_a, x(9), reaction_reaction_49_n, reaction_reaction_49_K);

% Reaction: id = reaction_67, name = Ferritin Degredation Full	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_67_k1=1.203E-5;

	reaction_reaction_67=compartment_compartment_1*reaction_reaction_67_k1*x(3);

% Reaction: id = reaction_73, name = Ferritin Degredation Full Iron Release	% Local Parameter:   id =  K, name = K
	reaction_reaction_73_K=1.203E-5;

	reaction_reaction_73=compartment_compartment_1*function_12(reaction_reaction_73_K, x(4), x(3), x(3));

% Reaction: id = reaction_5, name = HFETfR degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=8.37E-7;

	reaction_reaction_5=compartment_compartment_3*reaction_reaction_5_k1*x(16);

% Reaction: id = reaction_10, name = HFETfR2 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=8.37E-5;

	reaction_reaction_10=compartment_compartment_3*reaction_reaction_10_k1*x(17);

% Reaction: id = reaction_16, name = Heme uptake	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_16_Km=1.25E-4;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_16_V=1.034E-5;

	reaction_reaction_16=function_10(const_species_species_11, reaction_reaction_16_Km, reaction_reaction_16_V);

% Reaction: id = reaction_19, name = Heme export	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_19_Km=1.78E-5;
	% Local Parameter:   id =  V, name = V
	reaction_reaction_19_V=2.18E-5;

	reaction_reaction_19=function_10(x(6), reaction_reaction_19_Km, reaction_reaction_19_V);

% Reaction: id = reaction_20, name = HO1 exp	% Local Parameter:   id =  a, name = a
	reaction_reaction_20_a=2.1432E-15;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_20_K=1.0E-9;

	reaction_reaction_20=compartment_compartment_1*function_9(reaction_reaction_20_a, x(6), reaction_reaction_20_K);

% Reaction: id = reaction_33, name = HO1 Deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_33_k1=3.209E-5;

	reaction_reaction_33=compartment_compartment_1*reaction_reaction_33_k1*x(5);

% Reaction: id = reaction_34, name = Heme oxygenation	% Local Parameter:   id =  C, name = C
	reaction_reaction_34_C=17777.7;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_34_K=2.0E-6;

	reaction_reaction_34=compartment_compartment_1*function_6(x(5), reaction_reaction_34_C, x(6), reaction_reaction_34_K);

% Species:   id = species_43, name = Tf-Fe_intercell, constant	const_species_species_43=5.0E-6;

% Species:   id = species_11, name = Heme_intercell, constant	const_species_species_11=1.0E-7;

	xdot=zeros(19,1);
	
% Species:   id = species_7, name = Hamp, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_24, name = Fe-FT, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47));
	
% Species:   id = species_25, name = FT, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_67));
	
% Species:   id = species_26, name = FT1, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_73));
	
% Species:   id = species_1, name = HO-1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_33));
	
% Species:   id = species_5, name = Heme, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_34));
	
% Species:   id = species_2, name = LIP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-2.0 * reaction_reaction_1) + ( 4.0 * reaction_reaction_6) + ( 4.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_34));
	
% Species:   id = species_4, name = Fpn, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_6, name = IRP, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_3, name = TfR, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_12, name = Tf-Fe-TfR1, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30));
	
% Species:   id = species_8, name = HFE, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_3))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-2.0 * reaction_reaction_25) + ( 2.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32));
	
% Species:   id = species_9, name = HFE-TfR, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32));
	
% Species:   id = species_15, name = Tf-Fe-TfR2, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_36));
	
% Species:   id = species_16, name = 2(Tf-Fe)-TfR1, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_17, name = 2HFE-TfR, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_18, name = 2HFE-TfR2, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_19, name = 2(Tf-Fe)-TfR2, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_10, name = TfR2, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_3))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_7));
end

function z=function_5(v), z=(v);end

function z=function_10(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_3(a,M,n,K), z=(a*(1-M^n/(K^n+M^n)));end

function z=function_2(a,n,K,M), z=(a*M^n/(K^n+M^n));end

function z=function_7(a,M,n,K,L), z=(a*M^n/(K^n+M^n)*L);end

function z=function_4(a,M,n,K,L), z=(a*(1-M^n/(K^n+M^n))*L);end

function z=function_9(a,M,K), z=(a*M/(K+M));end

function z=function_8(S,kloss,FT1,FT), z=(S*kloss*(1+0.048*FT1/FT/(1+FT1/FT)));end

function z=function_12(K,FT1,FT,S), z=(K*FT1/FT*S);end

function z=function_1(a,M,n,K,S), z=(a*M^n/(K^n+M^n)*S);end

function z=function_6(E,C,S,K), z=(E*C*S/(K+S));end

function z=function_11(basal,a,M,n,K,a1,M1,K1), z=(basal+a*M^n/(K^n+M^n)+a1*M1/(K1+M1));end

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


