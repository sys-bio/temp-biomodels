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
% Model name = Schaber2012 - Hog pathway in yeast
%
% is http://identifiers.org/biomodels.db/MODEL1209110001
% is http://identifiers.org/biomodels.db/BIOMD0000000429
% isDescribedBy http://identifiers.org/pubmed/23149687
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(16) = 29.5;
	x0(1) = 5310000.0;
	x0(2) = 9.6760009944572;
	x0(3) = 0.201092527399535;
	x0(4) = 3.57956846222666;
	x0(5) = 0.00385515442085361;
	x0(6) = 1.27698439056792;
	x0(7) = 1.34008635004982;
	x0(8) = 1.003;
	x0(9) = 1.39490913506788;
	x0(10) = 3.86572185643496;
	x0(11) = 0.00342460653415448;
	x0(12) = 0.201092527399535;
	x0(13) = 9.0E7;
	x0(14) = 0.0255278667484759;
	x0(15) = 0.0255278667484759;


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

% Compartment: id = compartment_1, name = Vos, defined by a Rule
% Compartment: id = compartment_2, name = Vex, constant
	compartment_compartment_2=50000.0;
% Compartment: id = compartment_3, name = V, defined by a Rule
% Compartment: id = compartment_4, name = M, constant
	compartment_compartment_4=1.0;
% Parameter:   id =  parameter_1, name = R
	global_par_parameter_1=8.314;
% Parameter:   id =  parameter_2, name = T
	global_par_parameter_2=303.15;
% Parameter:   id =  parameter_3, name = mol
	global_par_parameter_3=6.022E23;
% Parameter:   id =  parameter_4, name = phi
	global_par_parameter_4=0.93;
% Parameter:   id =  parameter_5, name = c2p
	global_par_parameter_5=1.0E-9;
% Parameter:   id =  parameter_6, name = tm
	global_par_parameter_6=10.0;
% Parameter:   id =  parameter_7, name = Lp
	global_par_parameter_7=0.013;
% Parameter:   id =  parameter_8, name = P0
	global_par_parameter_8=0.61;
% Parameter:   id =  parameter_9, name = eps
	global_par_parameter_9=14.3;
% Parameter:   id =  parameter_10, name = minf
	global_par_parameter_10=0.41;
% Parameter:   id =  parameter_11, name = ce_0
	global_par_parameter_11=260000.0;
% Parameter:   id =  parameter_12, name = V_0
	global_par_parameter_12=50.0;
% Parameter:   id =  parameter_13, name = Vb
	global_par_parameter_13=20.5;
% Parameter:   id =  parameter_14, name = maxHog1nucf
	global_par_parameter_14=0.8;
% Parameter:   id =  parameter_15, name = VP_0
	global_par_parameter_15=47.9119840840503;
% Parameter:   id =  parameter_16, name = Area
% Parameter:   id =  parameter_17, name = Hog1PPrelIniwt
	global_par_parameter_17=2.23;
% Parameter:   id =  parameter_18, name = N2uM
	global_par_parameter_18=5.62907756305974E-5;
% Parameter:   id =  parameter_19, name = ci_0
	global_par_parameter_19=502026.122077738;
% Parameter:   id =  parameter_20, name = cin_0
	global_par_parameter_20=322026.122077738;
% Parameter:   id =  parameter_21, name = Turgor
% Parameter:   id =  parameter_22, name = ActivationSln1_nlfb
% Parameter:   id =  parameter_23, name = NaCl
	global_par_parameter_23=0.4;
% Parameter:   id =  parameter_24, name = ActivOffsetSln1_nlfb
	global_par_parameter_24=-7.10539561053171E-4;
% Parameter:   id =  parameter_25, name = kHog1phos1
	global_par_parameter_25=42.6396538263077;
% Parameter:   id =  parameter_26, name = kHog1dephos
	global_par_parameter_26=1.78587;
% Parameter:   id =  parameter_27, name = ks
% Parameter:   id =  parameter_28, name = Fps1TransportCapacitty
% Parameter:   id =  parameter_29, name = FitVrel
% Parameter:   id =  parameter_30, name = FitHog1PPrel
% Parameter:   id =  parameter_31, name = FitProteinrel
% Parameter:   id =  parameter_32, name = FitGlyinrel
% Parameter:   id =  parameter_33, name = Turgor2Osm
% Parameter:   id =  parameter_34, name = Fps1ClosureRate
	global_par_parameter_34=0.128378897200866;
% Parameter:   id =  parameter_35, name = Protein_deg_k
	global_par_parameter_35=6.78688610600496E-5;
% Parameter:   id =  parameter_36, name = FitRNArel
% Parameter:   id =  parameter_37, name = Hog1Total
	global_par_parameter_37=0.382101784980495;
% Parameter:   id =  parameter_38, name = Pbs2Total
	global_par_parameter_38=0.12158807536209;
% Parameter:   id =  parameter_39, name = RNA_deg_k_MM
	global_par_parameter_39=7.09644965005112;
% Parameter:   id =  parameter_40, name = Sho1Total
	global_par_parameter_40=0.131157507219292;
% Parameter:   id =  parameter_41, name = kHog1phos2
	global_par_parameter_41=48.0003902091319;
% Parameter:   id =  parameter_42, name = Hog1PPrelIniSln1
	global_par_parameter_42=2.23;
% Parameter:   id =  parameter_43, name = Hog1PPrelIniSho1
	global_par_parameter_43=2.23;
% Parameter:   id =  parameter_44, name = Osmex
% Parameter:   id =  parameter_45, name = Osmin
% Parameter:   id =  parameter_46, name = Vos_0
	global_par_parameter_46=29.5;
% Parameter:   id =  parameter_47, name = A_0
	global_par_parameter_47=65.6342903668733;
% Parameter:   id =  parameter_48, name = ts
	global_par_parameter_48=600.0;
% Parameter:   id =  parameter_49, name = cen
% Parameter:   id =  parameter_50, name = Glyex_0
	global_par_parameter_50=1800.0;
% Parameter:   id =  parameter_51, name = Protein_0
	global_par_parameter_51=0.0454266559338921;
% Parameter:   id =  parameter_52, name = RNA_0
	global_par_parameter_52=0.034;
% Parameter:   id =  parameter_53, name = Glyin_0
	global_par_parameter_53=180000.0;
% Parameter:   id =  parameter_54, name = Hog1PP_0
	global_par_parameter_54=0.00681669584405203;
% Parameter:   id =  parameter_55, name = ActivOffsetSho1_nlfb
	global_par_parameter_55=-0.0036065403549782;
% Parameter:   id =  parameter_56, name = ActivationSho1_nlfb
% Parameter:   id =  parameter_57, name = Sho1BranchActive
	global_par_parameter_57=1.0;
% Parameter:   id =  parameter_58, name = Sln1BranchActive
	global_par_parameter_58=1.0;
% Parameter:   id =  parameter_59, name = Fps1TotalIni
	global_par_parameter_59=0.0510557334969518;
% Parameter:   id =  parameter_60, name = Fps1TotalTrans
% Parameter:   id =  parameter_61, name = TurgorActiv_h
	global_par_parameter_61=2.0;
% Parameter:   id =  parameter_62, name = TurgorActivation
% Parameter:   id =  parameter_63, name = TurgorDeactivation
% Parameter:   id =  parameter_64, name = v16_5_k
	global_par_parameter_64=0.00264562;
% Parameter:   id =  parameter_65, name = v16_6_k
	global_par_parameter_65=0.00320327093093651;
% Parameter:   id =  parameter_66, name = v16_7_k
	global_par_parameter_66=0.00529124000000002;
% Parameter:   id =  parameter_67, name = Hog1Activity
	global_par_parameter_67=0.001;
% Parameter:   id =  parameter_68, name = tinh
	global_par_parameter_68=600.0;
% Parameter:   id =  parameter_69, name = Hog1Inhibition
% Parameter:   id =  parameter_70, name = Inhibition
	global_par_parameter_70=0.0;
% Parameter:   id =  parameter_71, name = Fps1Delta
	global_par_parameter_71=1.0;
% Parameter:   id =  parameter_72, name = v2_k
	global_par_parameter_72=0.607124;
% Parameter:   id =  parameter_73, name = v1_fb_Ki
	global_par_parameter_73=0.00940584;
% Parameter:   id =  parameter_74, name = v1_fb_h
	global_par_parameter_74=0.345701;
% Parameter:   id =  parameter_75, name = v1_fb_k
	global_par_parameter_75=0.075474;
% Parameter:   id =  parameter_76, name = v11_k
	global_par_parameter_76=9.06781E-5;
% Parameter:   id =  parameter_77, name = v9_k
	global_par_parameter_77=18.1824;
% Parameter:   id =  parameter_78, name = v9_Km
	global_par_parameter_78=0.506878;
% Parameter:   id =  parameter_79, name = v4_k1
	global_par_parameter_79=0.00226722;
% Parameter:   id =  parameter_80, name = v3_fb_Ki
	global_par_parameter_80=0.297524;
% Parameter:   id =  parameter_81, name = v3_fb_h
	global_par_parameter_81=2.0793;
% Parameter:   id =  parameter_82, name = v3_fb_k
	global_par_parameter_82=0.00459138;
% Parameter:   id =  parameter_83, name = v15_5_k
	global_par_parameter_83=0.00529124;
% Parameter:   id =  parameter_84, name = v16_6_Ki
	global_par_parameter_84=0.0811033;
% Parameter:   id =  parameter_85, name = v16_6_h
	global_par_parameter_85=0.628719;
% Parameter:   id =  parameter_86, name = v13_k1
	global_par_parameter_86=680.818;
% Parameter:   id =  parameter_87, name = v13_k2
	global_par_parameter_87=46.8363;
% Parameter:   id =  parameter_88, name = v13_Km
	global_par_parameter_88=0.420741;
% assignmentRule: variable = compartment_3
	compartment_compartment_3=global_par_parameter_13+compartment_compartment_1;
% assignmentRule: variable = parameter_16
	global_par_parameter_16=(36*pi)^(1/3)*compartment_compartment_3^(2/3);
% assignmentRule: variable = parameter_21
	global_par_parameter_21=piecewise(global_par_parameter_9*log(compartment_compartment_3/global_par_parameter_15), compartment_compartment_3 > global_par_parameter_15, 0);
% assignmentRule: variable = parameter_22
	global_par_parameter_22=piecewise((global_par_parameter_47-global_par_parameter_16)/global_par_parameter_47-global_par_parameter_24, ((global_par_parameter_47-global_par_parameter_16)/global_par_parameter_47) > global_par_parameter_24, 0);
% assignmentRule: variable = parameter_27
	global_par_parameter_27=global_par_parameter_86*global_par_parameter_51*(1+global_par_parameter_87*global_par_parameter_54)/(global_par_parameter_88+global_par_parameter_51*(1+global_par_parameter_87*global_par_parameter_54))*global_par_parameter_46/(0.5*global_par_parameter_47*(global_par_parameter_53-global_par_parameter_50));
% assignmentRule: variable = parameter_28
	global_par_parameter_28=x(14)/compartment_compartment_4/global_par_parameter_59;
% assignmentRule: variable = parameter_29
	global_par_parameter_29=100*compartment_compartment_3/global_par_parameter_12;
% assignmentRule: variable = parameter_30
	global_par_parameter_30=100*x(3)/compartment_compartment_1*compartment_compartment_1/(global_par_parameter_14*global_par_parameter_37*global_par_parameter_46);
% assignmentRule: variable = parameter_31
	global_par_parameter_31=19.9*x(7)/compartment_compartment_1*compartment_compartment_1/(global_par_parameter_51*global_par_parameter_46);
% assignmentRule: variable = parameter_32
	global_par_parameter_32=17*x(1)/compartment_compartment_1*compartment_compartment_1/(global_par_parameter_53*global_par_parameter_46);
% assignmentRule: variable = parameter_33
	global_par_parameter_33=global_par_parameter_21/(global_par_parameter_1*global_par_parameter_2*global_par_parameter_5);
% assignmentRule: variable = parameter_36
	global_par_parameter_36=3.4*x(8)/compartment_compartment_1*compartment_compartment_1/(global_par_parameter_52*global_par_parameter_46);
% assignmentRule: variable = parameter_45
	global_par_parameter_45=x(1)/compartment_compartment_1+global_par_parameter_20*global_par_parameter_46/compartment_compartment_1;
% assignmentRule: variable = parameter_49
	global_par_parameter_49=piecewise(global_par_parameter_11-global_par_parameter_50+(1-exp((global_par_parameter_48-time)/global_par_parameter_6))*2*global_par_parameter_4*global_par_parameter_23*10^6, time > global_par_parameter_48, global_par_parameter_11-global_par_parameter_50);
% assignmentRule: variable = parameter_44
	global_par_parameter_44=global_par_parameter_49+x(13)/compartment_compartment_2;
% assignmentRule: variable = parameter_56
	global_par_parameter_56=piecewise((global_par_parameter_47-global_par_parameter_16)/global_par_parameter_47-global_par_parameter_55, ((global_par_parameter_47-global_par_parameter_16)/global_par_parameter_47) > global_par_parameter_55, 0);
% assignmentRule: variable = parameter_60
	global_par_parameter_60=x(14)/compartment_compartment_4+x(15)/compartment_compartment_4;
% assignmentRule: variable = parameter_62
	global_par_parameter_62=global_par_parameter_21^global_par_parameter_61/(global_par_parameter_8^global_par_parameter_61+global_par_parameter_21^global_par_parameter_61);
% assignmentRule: variable = parameter_63
	global_par_parameter_63=1-global_par_parameter_21^global_par_parameter_61/(global_par_parameter_8^global_par_parameter_61+global_par_parameter_21^global_par_parameter_61);
% assignmentRule: variable = parameter_69
	global_par_parameter_69=piecewise(piecewise(global_par_parameter_67, time > global_par_parameter_68, 1), global_par_parameter_70 == 1, 1);
% assignmentRule: variable = species_12
	x(12)=global_par_parameter_69*x(3)/compartment_compartment_1*compartment_compartment_1;
% rateRule: variable = compartment_1
compartment_compartment_1 = x(16);

% Reaction: id = reaction_1, name = v1_fb
	reaction_reaction_1=compartment_compartment_1*function_1(global_par_parameter_58, global_par_parameter_75, global_par_parameter_22, x(4)/compartment_compartment_1, x(12)/compartment_compartment_1, global_par_parameter_74, global_par_parameter_73);

% Reaction: id = reaction_2, name = v2
	reaction_reaction_2=compartment_compartment_1*function_2(global_par_parameter_72, x(6)/compartment_compartment_1, x(5)/compartment_compartment_1);

% Reaction: id = reaction_3, name = v5
	reaction_reaction_3=compartment_compartment_1*function_3(global_par_parameter_25, x(5)/compartment_compartment_1, x(2)/compartment_compartment_1, global_par_parameter_41, x(11)/compartment_compartment_1);

% Reaction: id = reaction_4, name = v6
	reaction_reaction_4=compartment_compartment_1*function_2(global_par_parameter_26, x(6)/compartment_compartment_1, x(9)/compartment_compartment_1);

% Reaction: id = reaction_5, name = v11
	reaction_reaction_5=compartment_compartment_1*function_4(global_par_parameter_76, x(8)/compartment_compartment_1);

% Reaction: id = reaction_6, name = v12
	reaction_reaction_6=global_par_parameter_35*x(7);

% Reaction: id = reaction_7, name = v13
	reaction_reaction_7=compartment_compartment_1*function_5(global_par_parameter_86, x(7)/compartment_compartment_1, global_par_parameter_87, x(12)/compartment_compartment_1, global_par_parameter_88);

% Reaction: id = reaction_8, name = v14
	reaction_reaction_8=function_6(global_par_parameter_16, x(13)/compartment_compartment_2, x(1)/compartment_compartment_1, global_par_parameter_28, global_par_parameter_27);

% Reaction: id = reaction_9, name = v9
	reaction_reaction_9=compartment_compartment_1*function_7(global_par_parameter_77, x(12)/compartment_compartment_1, global_par_parameter_78);

% Reaction: id = reaction_10, name = v10
	reaction_reaction_10=global_par_parameter_39*x(8);

% Reaction: id = reaction_11, name = v7
	reaction_reaction_11=compartment_compartment_1*function_3(global_par_parameter_25, x(5)/compartment_compartment_1, x(9)/compartment_compartment_1, global_par_parameter_41, x(11)/compartment_compartment_1);

% Reaction: id = reaction_12, name = v8
	reaction_reaction_12=compartment_compartment_1*function_2(global_par_parameter_26, x(6)/compartment_compartment_1, x(3)/compartment_compartment_1);

% Reaction: id = reaction_13, name = v4
	reaction_reaction_13=global_par_parameter_79*x(11);

% Reaction: id = reaction_14, name = v3_fb
	reaction_reaction_14=compartment_compartment_1*function_8(global_par_parameter_57, global_par_parameter_82, global_par_parameter_56, x(4)/compartment_compartment_1, x(10)/compartment_compartment_1, x(12)/compartment_compartment_1, global_par_parameter_80, global_par_parameter_81);

% Reaction: id = reaction_15, name = v15_5
	reaction_reaction_15=compartment_compartment_4*function_9(global_par_parameter_71, global_par_parameter_83, global_par_parameter_63, x(14)/compartment_compartment_4);

% Reaction: id = reaction_16, name = v16_6
	reaction_reaction_16=compartment_compartment_4*function_10(global_par_parameter_71, global_par_parameter_65, x(15)/compartment_compartment_4, x(12)/compartment_compartment_1, global_par_parameter_84, global_par_parameter_85);

	xdot=zeros(16,1);
	% rateRule: variable = compartment_1
	xdot(16) = (-global_par_parameter_7)*global_par_parameter_16*(global_par_parameter_21+global_par_parameter_5*global_par_parameter_1*global_par_parameter_2*(global_par_parameter_44-global_par_parameter_45));
	
% Species:   id = species_1, name = Glyin, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8);
	
% Species:   id = species_2, name = Hog1, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4);
	
% Species:   id = species_3, name = Hog1PP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12);
	
% Species:   id = species_4, name = Pbs2, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14);
	
% Species:   id = species_5, name = Pbs2P, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2);
	
% Species:   id = species_6, name = Phosphatase
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = species_7, name = Protein, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6);
	
% Species:   id = species_8, name = RNA, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10);
	
% Species:   id = species_9, name = Hog1P, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12);
	
% Species:   id = species_10, name = Sho1, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14);
	
% Species:   id = species_11, name = Sho1Pbs2P, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14);
	
% Species:   id = species_12, name = Hog1PPActive, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = species_13, name = Glyex, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_reaction_8);
	
% Species:   id = species_14, name = Fps1, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16);
	
% Species:   id = species_15, name = Fps1P, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16);
end

function z=function_10(ko,k,S,M,Ki,h), z=(ko*k*S/(1+(M/Ki)^h));end

function z=function_9(ko,k,M,S), z=(ko*k*M*S);end

function z=function_8(ko,k,M1,S1,S2,M2,Ki,h), z=(ko*k*M1*S1*S2/(1+(M2/Ki)^h));end

function z=function_4(k,M), z=(k*M);end

function z=function_6(A,P,S,f,ks), z=(f*ks*A*(S-P));end

function z=function_2(k,M,S), z=(k*M*S);end

function z=function_5(k1,M1,k2,M2,Km), z=(k1*M1*(1+k2*M2)/(Km+M1*(1+k2*M2)));end

function z=function_7(k,M,Km), z=(k*M/(Km+M));end

function z=function_3(k1,M1,S,k2,M2), z=(k1*M1*S+k2*M2*S);end

function z=function_1(ko,k,M1,S,M2,h,Ki), z=(ko*k*M1*S/(1+(M2/Ki)^h));end

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


