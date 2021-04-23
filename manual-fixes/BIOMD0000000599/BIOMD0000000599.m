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
% Model name = Coggins2014 - CXCL12 dependent recruitment of beta arrestin
%
% is http://identifiers.org/biomodels.db/MODEL1408060000
% is http://identifiers.org/biomodels.db/BIOMD0000000599
% isDescribedBy http://identifiers.org/pubmed/24896823
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 328437.241399281;
	x0(2) = 492655.862098776;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 133539.963932179;
	x0(15) = 5434.48582568463;
	x0(16) = 0.0;
	x0(17) = 345117.328033337;
	x0(18) = 97340.7848290227;
	x0(19) = 509483.771339917;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 271724.292902136;
	x0(23) = 8151.72873852455;
	x0(24) = 64893.856552701;
	x0(25) = 101234.416222443;
	x0(26) = 230078.21868896;
	x0(27) = 0.0;
	x0(28) = 181149.528601477;
	x0(29) = 151851.62433362;
	x0(30) = 1.16E8;


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

% Compartment: id = compartment_2, name = Intracellular, constant
	compartment_compartment_2=1.0;
% Parameter:   id =  parameter_1, name = kf,L12,4
	global_par_parameter_1=0.0021;
% Parameter:   id =  parameter_2, name = kf,L12,7
	global_par_parameter_2=0.0014;
% Parameter:   id =  parameter_3, name = kf,B,4
	global_par_parameter_3=8.5E-9;
% Parameter:   id =  parameter_4, name = kf,B,7
	global_par_parameter_4=1.4E-8;
% Parameter:   id =  parameter_5, name = KD,R4,L12
	global_par_parameter_5=40.0;
% Parameter:   id =  parameter_6, name = KD,R7,L12
	global_par_parameter_6=0.84;
% Parameter:   id =  parameter_9, name = KD,C4,B
	global_par_parameter_9=5100000.0;
% Parameter:   id =  parameter_10, name = KD,C7,B
	global_par_parameter_10=650000.0;
% Parameter:   id =  parameter_11, name = ke,R4B
	global_par_parameter_11=0.0023;
% Parameter:   id =  parameter_12, name = ke,R7B
	global_par_parameter_12=0.0039;
% Parameter:   id =  parameter_13, name = ke,C7Bi
	global_par_parameter_13=5.5E-4;
% Parameter:   id =  parameter_14, name = koff,B,4
	global_par_parameter_14=7.4E-4;
% Parameter:   id =  parameter_15, name = koff,B,7
	global_par_parameter_15=0.0025;
% Parameter:   id =  parameter_16, name = krec,R4Bi
	global_par_parameter_16=6.9E-5;
% Parameter:   id =  parameter_17, name = krec,R7Bii
	global_par_parameter_17=0.0011;
% Parameter:   id =  parameter_18, name = krec,C7Bii
	global_par_parameter_18=2.8E-4;
% Parameter:   id =  parameter_19, name = kdeg,C4Bii
	global_par_parameter_19=1.0E-4;
% Parameter:   id =  parameter_20, name = kdeg,L12i
	global_par_parameter_20=1.0E-4;
% Parameter:   id =  parameter_21, name = KD,R4,B
	global_par_parameter_21=7800000.0;
% Parameter:   id =  parameter_22, name = KD,R7,B
	global_par_parameter_22=2300000.0;
% Parameter:   id =  parameter_23, name = ke,C4B
	global_par_parameter_23=0.0047;
% Parameter:   id =  parameter_24, name = ke,C7B
	global_par_parameter_24=0.0021;
% Parameter:   id =  parameter_25, name = n4
	global_par_parameter_25=40000.0;
% Parameter:   id =  parameter_26, name = n7
	global_par_parameter_26=40000.0;
% Parameter:   id =  parameter_27, name = n47
	global_par_parameter_27=40000.0;
% Parameter:   id =  parameter_28, name = Nav
	global_par_parameter_28=6.02E23;
% Parameter:   id =  parameter_29, name = Vwell
	global_par_parameter_29=7.0E-5;
% Parameter:   id =  parameter_30, name = Vcell
	global_par_parameter_30=8.4E-12;
% Parameter:   id =  parameter_7, name = nmol_to_mol
	global_par_parameter_7=1.0E9;
% Parameter:   id =  Total4, name = Total4
% Parameter:   id =  Total7, name = Total7
% Parameter:   id =  _Beta, name = %Beta
% Parameter:   id =  _CXCR4, name = %CXCR4
% Parameter:   id =  _CXCR7, name = %CXCR7
% Parameter:   id =  Metabolite_1, name = Initial for Be
	global_par_Metabolite_1=328437.241399281;
% Parameter:   id =  Metabolite_3, name = Initial for Bp
	global_par_Metabolite_3=492655.862098776;
% Parameter:   id =  Metabolite_5, name = Initial for C4
	global_par_Metabolite_5=0.0;
% Parameter:   id =  Metabolite_15, name = Initial for C7
	global_par_Metabolite_15=0.0;
% Parameter:   id =  Metabolite_27, name = Initial for R4
	global_par_Metabolite_27=133539.963932179;
% Parameter:   id =  Metabolite_37, name = Initial for R7
	global_par_Metabolite_37=509483.771339917;
% assignmentRule: variable = Total4
	global_par_Total4=x(6)+x(7)+x(23);
% assignmentRule: variable = Total7
	global_par_Total7=x(11)+x(12)+x(16)+x(18)+x(29);
% assignmentRule: variable = _Beta
	global_par__Beta=(x(1)+x(2))/(global_par_Metabolite_1+global_par_Metabolite_3)*100;
% assignmentRule: variable = _CXCR4
	global_par__CXCR4=(x(3)+x(14))/(global_par_Metabolite_5+global_par_Metabolite_27)*100;
% assignmentRule: variable = _CXCR7
	global_par__CXCR7=(x(8)+x(19))/(global_par_Metabolite_15+global_par_Metabolite_37)*100;

% Reaction: id = reaction_7, name = Be binding R4
	reaction_reaction_7=compartment_compartment_2*function_1(global_par_parameter_21, global_par_parameter_3, x(14), x(15), x(1));

% Reaction: id = reaction_8, name = Bp binding R4
	reaction_reaction_8=compartment_compartment_2*function_2(global_par_parameter_21, global_par_parameter_3, x(14), x(23), x(2));

% Reaction: id = reaction_9, name = Be binding C4
	reaction_reaction_9=compartment_compartment_2*function_3(global_par_parameter_3, global_par_parameter_9, x(1), x(3), x(4));

% Reaction: id = reaction_10, name = Bp binding C4
	reaction_reaction_10=compartment_compartment_2*function_4(global_par_parameter_3, global_par_parameter_9, x(2), x(3), x(6));

% Reaction: id = reaction_11, name = Be binding R7
	reaction_reaction_11=compartment_compartment_2*function_5(global_par_parameter_22, global_par_parameter_4, x(1), x(19), x(24));

% Reaction: id = reaction_12, name = Bp binding R7
	reaction_reaction_12=compartment_compartment_2*function_8(global_par_parameter_22, global_par_parameter_4, x(18), x(19), x(2));

% Reaction: id = reaction_13, name = Be binding C7
	reaction_reaction_13=compartment_compartment_2*function_6(global_par_parameter_10, global_par_parameter_4, x(1), x(27), x(8));

% Reaction: id = reaction_14, name = Bp binding C7
	reaction_reaction_14=compartment_compartment_2*function_7(global_par_parameter_10, global_par_parameter_4, x(11), x(2), x(8));

% Reaction: id = reaction_15, name = Internalization of R4Be
	reaction_reaction_15=compartment_compartment_2*global_par_parameter_11*x(15);

% Reaction: id = reaction_16, name = Internalization of R4Bp
	reaction_reaction_16=compartment_compartment_2*global_par_parameter_11*x(23);

% Reaction: id = reaction_17, name = Internalization of C4Be
	reaction_reaction_17=compartment_compartment_2*global_par_parameter_23*x(4);

% Reaction: id = reaction_18, name = Internalization of C4Bp
	reaction_reaction_18=compartment_compartment_2*global_par_parameter_23*x(6);

% Reaction: id = reaction_19, name = Internalization of R7Be
	reaction_reaction_19=compartment_compartment_2*global_par_parameter_12*x(24);

% Reaction: id = reaction_20, name = Internalization of R7Bp
	reaction_reaction_20=compartment_compartment_2*global_par_parameter_12*x(18);

% Reaction: id = reaction_21, name = Internalization of C7Be
	reaction_reaction_21=compartment_compartment_2*global_par_parameter_24*x(27);

% Reaction: id = reaction_22, name = Internalization of C7Bp
	reaction_reaction_22=compartment_compartment_2*global_par_parameter_24*x(11);

% Reaction: id = reaction_23, name = Dissocation of Be from C4Bei
	reaction_reaction_23=compartment_compartment_2*global_par_parameter_14*x(21);

% Reaction: id = reaction_24, name = Dissociation of Bp from C4Bpi
	reaction_reaction_24=compartment_compartment_2*global_par_parameter_14*x(7);

% Reaction: id = reaction_25, name = Dissociation of Be from R7Bei
	reaction_reaction_25=compartment_compartment_2*global_par_parameter_15*x(25);

% Reaction: id = reaction_26, name = Dissociation of Bp from R7Bpi
	reaction_reaction_26=compartment_compartment_2*global_par_parameter_15*x(29);

% Reaction: id = reaction_27, name = Trafficking of C7Bei to late endosomes
	reaction_reaction_27=compartment_compartment_2*global_par_parameter_13*x(9);

% Reaction: id = reaction_28, name = Trafficking of C7Bpi to late endosomes
	reaction_reaction_28=compartment_compartment_2*global_par_parameter_13*x(12);

% Reaction: id = reaction_29, name = Recycling of R4Bei
	reaction_reaction_29=compartment_compartment_2*global_par_parameter_16*x(28);

% Reaction: id = reaction_30, name = Recycling of R4Bpi
	reaction_reaction_30=compartment_compartment_2*global_par_parameter_16*x(22);

% Reaction: id = reaction_31, name = Recycling of R7Beii
	reaction_reaction_31=compartment_compartment_2*global_par_parameter_17*x(26);

% Reaction: id = reaction_32, name = Recycling of R7Bpii
	reaction_reaction_32=compartment_compartment_2*global_par_parameter_17*x(17);

% Reaction: id = reaction_33, name = Recycling of C7Beii
	reaction_reaction_33=compartment_compartment_2*global_par_parameter_18*x(10);

% Reaction: id = reaction_34, name = Recycling of C7Bpii
	reaction_reaction_34=compartment_compartment_2*global_par_parameter_18*x(16);

% Reaction: id = reaction_35, name = Degradation of C4Beii
	reaction_reaction_35=compartment_compartment_2*global_par_parameter_19*x(5);

% Reaction: id = reaction_36, name = Degradation of C4Bpii
	reaction_reaction_36=compartment_compartment_2*global_par_parameter_19*x(20);

% Reaction: id = reaction_37, name = Degradation of L12i
	reaction_reaction_37=compartment_compartment_2*global_par_parameter_20*x(13);

% Reaction: id = reaction_1, name = L12 binding R4
	reaction_reaction_1=compartment_compartment_2*function_9(global_par_parameter_1, global_par_parameter_28, global_par_parameter_30, global_par_parameter_5, global_par_parameter_7, x(30), x(14), x(3));

% Reaction: id = reaction_2, name = L12 binding R7
	reaction_reaction_2=compartment_compartment_2*function_10(global_par_parameter_2, global_par_parameter_28, global_par_parameter_30, global_par_parameter_6, global_par_parameter_7, x(30), x(19), x(8));

% Reaction: id = reaction_3, name = L12 binding R4Be
	reaction_reaction_3=compartment_compartment_2*function_11(global_par_parameter_1, global_par_parameter_21, global_par_parameter_28, global_par_parameter_30, global_par_parameter_5, global_par_parameter_7, global_par_parameter_9, x(30), x(15), x(4));

% Reaction: id = reaction_4, name = L12 binding R4Bp
	reaction_reaction_4=compartment_compartment_2*function_12(global_par_parameter_1, global_par_parameter_21, global_par_parameter_28, global_par_parameter_30, global_par_parameter_5, global_par_parameter_7, global_par_parameter_9, x(30), x(23), x(6));

% Reaction: id = reaction_5, name = L12 binding R7Be
	reaction_reaction_5=compartment_compartment_2*function_13(global_par_parameter_10, global_par_parameter_2, global_par_parameter_22, global_par_parameter_28, global_par_parameter_30, global_par_parameter_6, global_par_parameter_7, x(30), x(24), x(27));

% Reaction: id = reaction_6, name = L12 binding R7Bp
	reaction_reaction_6=compartment_compartment_2*function_14(global_par_parameter_10, global_par_parameter_2, global_par_parameter_22, global_par_parameter_28, global_par_parameter_30, global_par_parameter_6, global_par_parameter_7, x(30), x(11), x(18));

	xdot=zeros(30,1);
	
% Species:   id = species_2, name = Be, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_33));
	
% Species:   id = species_3, name = Bp, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_34));
	
% Species:   id = species_4, name = C4, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_1));
	
% Species:   id = species_5, name = C4Be, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = species_6, name = C4Beii, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_7, name = C4Bp, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_8, name = C4Bpi, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_9, name = C7, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = species_10, name = C7Bei, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_11, name = C7Beii, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_33));
	
% Species:   id = species_12, name = C7Bp, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_13, name = C7Bpi, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_28));
	
% Species:   id = species_14, name = L12i, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_37));
	
% Species:   id = species_15, name = R4, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_1));
	
% Species:   id = species_16, name = R4Be, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_17, name = C7Bpii, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_34));
	
% Species:   id = species_18, name = R7Bpii, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_19, name = R7Bp, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_20, name = R7, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_21, name = C4Bpii, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_36));
	
% Species:   id = species_22, name = C4Bei, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_23, name = R4Bpi, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_30));
	
% Species:   id = species_24, name = R4Bp, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_25, name = R7Be, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_26, name = R7Bei, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_27, name = R7Beii, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_31));
	
% Species:   id = species_28, name = C7Be, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_5));
	
% Species:   id = species_29, name = R4Bei, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_30, name = R7Bpi, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_2))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_1, name = L12, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_2))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
end

function z=function_8(parameter_22,parameter_4,species_19,species_20,species_3), z=(parameter_4*(species_3*species_20-parameter_22*species_19));end

function z=function_5(parameter_22,parameter_4,species_2,species_20,species_25), z=(parameter_4*(species_2*species_20-parameter_22*species_25));end

function z=function_14(parameter_10,parameter_2,parameter_22,parameter_28,parameter_30,parameter_6,parameter_7,species_1,species_12,species_19), z=(parameter_2*parameter_7/(parameter_28*parameter_30)*(species_1*species_19-parameter_6*parameter_10*parameter_28*parameter_30/parameter_7/parameter_22*species_12));end

function z=function_13(parameter_10,parameter_2,parameter_22,parameter_28,parameter_30,parameter_6,parameter_7,species_1,species_25,species_28), z=(parameter_2*parameter_7/(parameter_28*parameter_30)*(species_1*species_25-parameter_6*parameter_10*parameter_28*parameter_30/parameter_7/parameter_22*species_28));end

function z=function_9(parameter_1,parameter_28,parameter_30,parameter_5,parameter_7,species_1,species_15,species_4), z=(parameter_1*parameter_7/(parameter_28*parameter_30)*(species_15*species_1-parameter_5*parameter_28*parameter_30/parameter_7*species_4));end

function z=function_11(parameter_1,parameter_21,parameter_28,parameter_30,parameter_5,parameter_7,parameter_9,species_1,species_16,species_5), z=(parameter_1*parameter_7/(parameter_28*parameter_30)*(species_1*species_16-parameter_5*parameter_9*parameter_28*parameter_30/parameter_7/parameter_21*species_5));end

function z=function_4(parameter_3,parameter_9,species_3,species_4,species_7), z=(parameter_3*(species_3*species_4-parameter_9*species_7));end

function z=function_2(parameter_21,parameter_3,species_15,species_24,species_3), z=(parameter_3*(species_3*species_15-parameter_21*species_24));end

function z=function_1(parameter_21,parameter_3,species_15,species_16,species_2), z=(parameter_3*(species_2*species_15-parameter_21*species_16));end

function z=function_10(parameter_2,parameter_28,parameter_30,parameter_6,parameter_7,species_1,species_20,species_9), z=(parameter_2*parameter_7/(parameter_28*parameter_30)*(species_20*species_1-parameter_6*parameter_28*parameter_30/parameter_7*species_9));end

function z=function_6(parameter_10,parameter_4,species_2,species_28,species_9), z=(parameter_4*(species_2*species_9-parameter_10*species_28));end

function z=function_3(parameter_3,parameter_9,species_2,species_4,species_5), z=(parameter_3*(species_2*species_4-parameter_9*species_5));end

function z=function_12(parameter_1,parameter_21,parameter_28,parameter_30,parameter_5,parameter_7,parameter_9,species_1,species_24,species_7), z=(parameter_1*parameter_7/(parameter_28*parameter_30)*(species_1*species_24-parameter_5*parameter_9*parameter_28*parameter_30/parameter_7/parameter_21*species_7));end

function z=function_7(parameter_10,parameter_4,species_12,species_3,species_9), z=(parameter_4*(species_3*species_9-parameter_10*species_12));end

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


