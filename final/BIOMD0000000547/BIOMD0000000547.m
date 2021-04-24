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
% Model name = Talemi2014 - Arsenic toxicity and detoxification mechanisms in yeast
%
% is http://identifiers.org/biomodels.db/MODEL1403280000
% is http://identifiers.org/biomodels.db/BIOMD0000000547
% isDescribedBy http://identifiers.org/pubmed/24798644
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 5.0E-9;
	x0(2) = 6.5755E-16;
	x0(3) = 5.12422021489774E-17;
	x0(4) = 8.29875779785102E-15;
	x0(5) = 1.41558600877709E-15;
	x0(6) = 8.44139912229068E-17;
	x0(7) = 1.5801923932594E-17;
	x0(8) = 3.31525035810391E-12;
	x0(9) = 2.08447005232452E-11;
	x0(10) = 3.94647E-13;
	x0(11) = 5.29105658389632E-12;
	x0(12) = 4.8E-11;


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

% Compartment: id = compartment_2, name = Medium, constant
	compartment_compartment_2=5.0E-11;
% Compartment: id = compartment_3, name = Cell, constant
	compartment_compartment_3=5.0E-14;
% Compartment: id = compartment_1, name = Vac, constant
	compartment_compartment_1=2.0E-14;
% Compartment: id = compartment_4, name = Cell-vac, constant
	compartment_compartment_4=3.0E-14;
% Parameter:   id =  parameter_5, name = AsIIIex_initial
	global_par_parameter_5=100.0;
% Parameter:   id =  parameter_6, name = AsIIIex_shock
	global_par_parameter_6=1000.0;
% Parameter:   id =  parameter_7, name = AsIIIex_t1
	global_par_parameter_7=0.0;
% Parameter:   id =  parameter_8, name = AsIIex_t2
	global_par_parameter_8=3600.0;
% Parameter:   id =  parameter_9, name = AsIIIex_tm
	global_par_parameter_9=30.0;
% Parameter:   id =  parameter_10, name = Asngpermil_tot
% Parameter:   id =  parameter_11, name = Asmolweight
	global_par_parameter_11=74.9216;
% Parameter:   id =  parameter_13, name = Asngpermil_in
% Parameter:   id =  parameter_14, name = Asngpermil_pro
% Parameter:   id =  parameter_15, name = Asngpermil_GS3
% Parameter:   id =  parameter_16, name = Asngpermil_vac
% Parameter:   id =  parameter_17, name = Hog1PPfit
% Parameter:   id =  parameter_18, name = Fps1Pfit
% Parameter:   id =  parameter_1, name = Fps1PPmax
	global_par_parameter_1=0.0299643;
% Parameter:   id =  parameter_2, name = k18
% Parameter:   id =  parameter_3, name = k20
% Parameter:   id =  parameter_4, name = D_AsIIIin_initial 
	global_par_parameter_4=13.1549;
% Parameter:   id =  parameter_12, name = Hog1_SUM
% Parameter:   id =  parameter_19, name = GSH_wt
	global_par_parameter_19=1600.0;
% Parameter:   id =  parameter_20, name = GSH_Acr3Hog1D
	global_par_parameter_20=5.99924;
% Parameter:   id =  parameter_21, name = GSH_Acr3
	global_par_parameter_21=2.82037;
% Parameter:   id =  parameter_22, name = GSH_damping_factor
% Parameter:   id =  parameter_23, name = ko-8
	global_par_parameter_23=1.0;
% Parameter:   id =  parameter_24, name = Ycf1_increase
	global_par_parameter_24=20.0;
% Parameter:   id =  parameter_25, name = v12_ko
	global_par_parameter_25=1.0;
% Parameter:   id =  parameter_26, name = v4_k
	global_par_parameter_26=0.0757274;
% Parameter:   id =  parameter_27, name = v5_k1
	global_par_parameter_27=161.334;
% Parameter:   id =  parameter_28, name = v4_ko
	global_par_parameter_28=1.0;
% Parameter:   id =  parameter_29, name = v6_k
	global_par_parameter_29=2.57134E-4;
% Parameter:   id =  parameter_30, name = v6_k1
	global_par_parameter_30=1102.15;
% Parameter:   id =  parameter_31, name = v6_kb
	global_par_parameter_31=0.0730991;
% Parameter:   id =  parameter_32, name = v7_k1
	global_par_parameter_32=0.0719168;
% Parameter:   id =  parameter_33, name = v1_k
	global_par_parameter_33=0.00215551;
% Parameter:   id =  parameter_34, name = v14_Vmax
	global_par_parameter_34=1.0;
% Parameter:   id =  parameter_35, name = v14_Km
	global_par_parameter_35=5.16159E-6;
% Parameter:   id =  parameter_36, name = v10_k
	global_par_parameter_36=3.49703E-6;
% Parameter:   id =  parameter_37, name = v11_k
	global_par_parameter_37=1.92773E-7;
% Parameter:   id =  parameter_38, name = v10_ko
	global_par_parameter_38=1.0;
% Parameter:   id =  parameter_39, name = v8_k
	global_par_parameter_39=0.202797;
% Parameter:   id =  parameter_40, name = v9_k1
	global_par_parameter_40=6.1432;
% Parameter:   id =  parameter_41, name = v2_k1
	global_par_parameter_41=0.00880734;
% Parameter:   id =  parameter_42, name = v3_k1
	global_par_parameter_42=6.56918E-4;
% Parameter:   id =  parameter_43, name = v13_k1
	global_par_parameter_43=9.01422E-13;
% Parameter:   id =  Compartment_3, name = Initial for Cell-vac
	global_par_Compartment_3=3.0E-14;
% Parameter:   id =  Metabolite_9, name = Initial for AsIIIin
	global_par_Metabolite_9=13.1549;
% Parameter:   id =  Metabolite_6, name = Initial for Acr3
	global_par_Metabolite_6=3.16038478651879E-4;
% Parameter:   id =  Metabolite_5, name = Initial for Fps1
	global_par_Metabolite_5=0.00168827982445814;
% Parameter:   id =  Metabolite_0, name = Initial for AsIIIex
	global_par_Metabolite_0=100.0;
% Parameter:   id =  Compartment_2, name = Initial for Vac
	global_par_Compartment_2=2.0E-14;
% Parameter:   id =  ModelValue_13, name = Initial for Fps1PPmax
	global_par_ModelValue_13=0.0299643;
% Parameter:   id =  ModelValue_22, name = Initial for ko-8
	global_par_ModelValue_22=1.0;
% Parameter:   id =  Asngpermil_ex, name = Asngpermil_ex
% assignmentRule: variable = parameter_10
	global_par_parameter_10=(x(10)/compartment_compartment_4+x(11)/compartment_compartment_4+x(9)/compartment_compartment_4)*global_par_Compartment_3*global_par_parameter_11*10^9+x(8)/compartment_compartment_1*global_par_Compartment_2*global_par_parameter_11*10^9;
% assignmentRule: variable = parameter_13
	global_par_parameter_13=x(10)/compartment_compartment_4*global_par_Compartment_3*global_par_parameter_11*10^9;
% assignmentRule: variable = parameter_14
	global_par_parameter_14=x(11)/compartment_compartment_4*global_par_Compartment_3*global_par_parameter_11*10^9;
% assignmentRule: variable = parameter_15
	global_par_parameter_15=x(9)/compartment_compartment_4*global_par_Compartment_3*global_par_parameter_11*10^9;
% assignmentRule: variable = species_6
	x(1)=piecewise(global_par_parameter_5, time < global_par_parameter_7, piecewise((global_par_parameter_5+global_par_parameter_6)*exp((global_par_parameter_8-time)/global_par_parameter_9), time > global_par_parameter_8, global_par_parameter_5+global_par_parameter_6*(1-exp((global_par_parameter_7-time)/global_par_parameter_9))))*compartment_compartment_2;
% assignmentRule: variable = parameter_16
	global_par_parameter_16=x(8)/compartment_compartment_1*global_par_Compartment_2*global_par_parameter_11*10^9;
% assignmentRule: variable = parameter_18
	global_par_parameter_18=100*x(5)/compartment_compartment_3/global_par_ModelValue_13;
% assignmentRule: variable = parameter_2
	global_par_parameter_2=global_par_parameter_43*global_par_Metabolite_6/global_par_Metabolite_9;
% assignmentRule: variable = parameter_3
	global_par_parameter_3=piecewise(global_par_parameter_33*global_par_Metabolite_5*(global_par_Metabolite_0-global_par_Metabolite_9)/(global_par_Metabolite_6*global_par_Metabolite_9), global_par_parameter_25 > 0, 0);
% assignmentRule: variable = parameter_12
	global_par_parameter_12=x(4)/compartment_compartment_3+x(3)/compartment_compartment_3;
% assignmentRule: variable = parameter_17
	global_par_parameter_17=100*x(3)/compartment_compartment_3/global_par_parameter_12;
% assignmentRule: variable = parameter_22
	global_par_parameter_22=piecewise(1, global_par_ModelValue_22 > 0, 0.2175);
% assignmentRule: variable = Asngpermil_ex
	global_par_Asngpermil_ex=x(1)/compartment_compartment_2*compartment_compartment_3*global_par_parameter_11*10^9;

% Reaction: id = reaction_1, name = v1
	reaction_reaction_1=function_1(compartment_compartment_3, x(6)/compartment_compartment_3, global_par_parameter_33, x(1)/compartment_compartment_2, x(10)/compartment_compartment_4);

% Reaction: id = reaction_4, name = v4
	reaction_reaction_4=compartment_compartment_3*function_3(x(4)/compartment_compartment_3, x(10)/compartment_compartment_4, global_par_parameter_26, global_par_parameter_28);

% Reaction: id = reaction_5, name = v5
	reaction_reaction_5=global_par_parameter_27*x(3);

% Reaction: id = reaction_6, name = v7
	reaction_reaction_6=global_par_parameter_32*x(5);

% Reaction: id = reaction_7, name = v2
	reaction_reaction_7=global_par_parameter_41*x(10);

% Reaction: id = reaction_8, name = v3
	reaction_reaction_8=global_par_parameter_42*x(11);

% Reaction: id = reaction_9, name = v8
	reaction_reaction_9=compartment_compartment_4*function_2(global_par_parameter_39, global_par_parameter_22, x(10)/compartment_compartment_4, x(12)/compartment_compartment_4);

% Reaction: id = reaction_10, name = v10
	reaction_reaction_10=function_4(global_par_parameter_38, x(2)/compartment_compartment_3, global_par_parameter_36, compartment_compartment_1, x(9)/compartment_compartment_4);

% Reaction: id = reaction_13, name = v12
	reaction_reaction_13=compartment_compartment_3*function_7(x(10)/compartment_compartment_4, global_par_parameter_2, global_par_parameter_25);

% Reaction: id = reaction_14, name = v13
	reaction_reaction_14=global_par_parameter_43*x(7);

% Reaction: id = reaction_15, name = v14
	reaction_reaction_15=function_5(compartment_compartment_3, x(7)/compartment_compartment_3, global_par_parameter_34, x(10)/compartment_compartment_4, global_par_parameter_35);

% Reaction: id = reaction_16, name = v6
	reaction_reaction_16=compartment_compartment_3*function_6(x(6)/compartment_compartment_3, global_par_parameter_29, x(10)/compartment_compartment_4, x(3)/compartment_compartment_3, global_par_parameter_30, global_par_parameter_31);

% Reaction: id = reaction_17, name = v9
	reaction_reaction_17=global_par_parameter_40*x(9);

% Reaction: id = reaction_18, name = v11
	reaction_reaction_18=function_8(compartment_compartment_1, global_par_parameter_37, x(8)/compartment_compartment_1);

	xdot=zeros(12,1);
	
% Species:   id = species_6, name = AsIIIex, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = species_5, name = Ycf1
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = species_10, name = Hog1PP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5);
	
% Species:   id = species_9, name = Hog1, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5);
	
% Species:   id = species_15, name = Fps1P, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_16);
	
% Species:   id = species_11, name = Fps1, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_16);
	
% Species:   id = species_14, name = Acr3, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14);
	
% Species:   id = species_4, name = vAsGS3, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_18);
	
% Species:   id = species_3, name = AsGS3, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18);
	
% Species:   id = species_1, name = AsIIIin, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_17);
	
% Species:   id = species_2, name = AsIIIProt, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8);
	
% Species:   id = species_7, name = GSH, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_17);
end

function z=function_3(S,M,k,ko), z=(k*ko*M*S);end

function z=function_7(M,k,ko), z=(k*ko*M);end

function z=function_6(Substrate,k,Mod1,Mod,k1,kb), z=(Substrate*(k*Mod1+k1*Mod+kb));end

function z=function_2(k,ko,sub,sub2), z=(k*ko*sub*sub2);end

function z=function_1(V,Mod,k,Ex,In), z=((36*pi)^(1/3)*V^(2/3)*Mod*k*(Ex-In));end

function z=function_8(V,k,Sub), z=((36*pi)^(1/3)*V^(2/3)*k*Sub);end

function z=function_4(ko,Mod,k,V,Sub), z=(ko*Mod*k*(36*pi)^(1/3)*V^(2/3)*Sub);end

function z=function_5(V,Mod,Vmax,Sub,Km), z=((36*pi)^(1/3)*V^(2/3)*Mod*Vmax*Sub/(Km+Sub));end

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


