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
% Model name = Heitzler2012 - GPCR signalling
%
% isInstanceOf http://identifiers.org/biomodels.db/MODEL1012080000
% isInstanceOf http://identifiers.org/bto/BTO:0000671
% isInstanceOf http://identifiers.org/taxonomy/9606
% isInstanceOf http://identifiers.org/go/GO:0007178
% isInstanceOf http://identifiers.org/go/GO:0038166
% isDescribedBy http://identifiers.org/go/GO:0007178
% isDescribedBy http://identifiers.org/go/GO:0038166
% isDescribedBy http://identifiers.org/pubmed/22735336
% is http://identifiers.org/biomodels.db/MODEL1012080000
% is http://identifiers.org/biomodels.db/BIOMD0000000842
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 0.08;
	x0(2) = 56.99;
	x0(3) = 4.243;
	x0(4) = 0.997;
	x0(5) = 0.009;
	x0(6) = 8.842;
	x0(7) = 0.002;
	x0(8) = 0.015;
	x0(9) = 0.015;
	x0(10) = 0.858;
	x0(11) = 0.483;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.89944;
	x0(20) = 1.518;
	x0(21) = 0.03;


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

% Compartment: id = compartmentOne, name = Cell, constant
	compartment_compartmentOne=1.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=3.11E-4;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0178;
% Parameter:   id =  k2, name = k2
	global_par_k2=7.6;
% Parameter:   id =  k3, name = k3
	global_par_k3=4.63;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0787;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.65;
% Parameter:   id =  k6, name = k6
	global_par_k6=5.0985;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.461;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.77;
% Parameter:   id =  k9, name = k9
	global_par_k9=3.04;
% Parameter:   id =  k10, name = k10
	global_par_k10=2.27;
% Parameter:   id =  k11, name = k11
	global_par_k11=2.61;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.59;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.00619;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.0311;
% Parameter:   id =  k15, name = k15
	global_par_k15=6.54E-5;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.0723;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.0665;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.59;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.205;
% Parameter:   id =  k20, name = k20
	global_par_k20=1.04;
% Parameter:   id =  k21, name = k21
	global_par_k21=4.2E-4;
% Parameter:   id =  k22, name = k22
	global_par_k22=14.44;
% Parameter:   id =  k23, name = k23
	global_par_k23=1.05;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.347;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.762;
% Parameter:   id =  GRK23, name = GRK23
	global_par_GRK23=0.899447579;
% Parameter:   id =  GRK56, name = GRK56
	global_par_GRK56=1.5180818;
% Parameter:   id =  GRK23_si, name = GRK23_si
	global_par_GRK23_si=0.478865092;
% Parameter:   id =  GRK56_si, name = GRK56_si
	global_par_GRK56_si=0.00103512491;
% Parameter:   id =  P0_Ro, name = P0_Ro
	global_par_P0_Ro=0.00173556731;
% Parameter:   id =  P0_a_Ro, name = P0_a_Ro
	global_par_P0_a_Ro=2.09075206E-5;
% Parameter:   id =  barr2_0_si, name = barr2_0_si
	global_par_barr2_0_si=1.12306963E-4;
% Parameter:   id =  nDAG, name = nDAG
	global_par_nDAG=4.11974423;
% Parameter:   id =  nPKC, name = nPKC
	global_par_nPKC=7.20901786;
% assignmentRule: variable = pERK
	x(21)=x(8)+x(9);

% Reaction: id = R_1, name = Cons_Gp_activation
	reaction_R_1=compartment_compartmentOne*Function_for_R_1(x(2), compartment_compartmentOne, global_par_k0);

% Reaction: id = R_2, name = Gp activation HR-P1
	reaction_R_2=compartment_compartmentOne*Function_for_R_2(x(2), x(13), compartment_compartmentOne, global_par_k1);

% Reaction: id = R_3, name = Gp activation HR
	reaction_R_3=compartment_compartmentOne*Function_for_R_3(x(2), x(1), compartment_compartmentOne, global_par_k2);

% Reaction: id = R_4, name = DAG production
	reaction_R_4=compartment_compartmentOne*Function_for_R_4(x(12), x(4), compartment_compartmentOne, global_par_k3);

% Reaction: id = R_5, name = PKC activation DAG
	reaction_R_5=compartment_compartmentOne*Function_for_R_5(x(5), x(6), compartment_compartmentOne, global_par_k4);

% Reaction: id = R_6, name = ERk phosphorylation PKC
	reaction_R_6=compartment_compartmentOne*Function_for_R_6(x(3), x(7), compartment_compartmentOne, global_par_k5);

% Reaction: id = R_7, name = Gp_a deactivation
	reaction_R_7=compartment_compartmentOne*Function_for_R_7(x(12), compartment_compartmentOne, global_par_k6);

% Reaction: id = R_8, name = DAG catalysis
	reaction_R_8=compartment_compartmentOne*Function_for_R_8(x(5), compartment_compartmentOne, global_par_k7);

% Reaction: id = R_9, name = PKC_a deactivation
	reaction_R_9=compartment_compartmentOne*Function_for_R_9(x(7), compartment_compartmentOne, global_par_k8);

% Reaction: id = R_10, name = G_pERK_dephosphorylation
	reaction_R_10=compartment_compartmentOne*Function_for_R_10(x(8), compartment_compartmentOne, global_par_k9);

% Reaction: id = R_11, name = HR phosphorylation GRK23
	reaction_R_11=compartment_compartmentOne*Function_for_R_11(global_par_GRK23, x(1), compartment_compartmentOne, global_par_k10);

% Reaction: id = R_12, name = b-arrestin1 HR-P1 binding
	reaction_R_12=compartment_compartmentOne*Function_for_R_12(x(13), x(10), compartment_compartmentOne, global_par_k11);

% Reaction: id = R_13, name = HR-P1-b-arrestin1 dissociation
	reaction_R_13=compartment_compartmentOne*Function_for_R_13(x(14), compartment_compartmentOne, global_par_k13);

% Reaction: id = R_14, name = b-arrestin2 HR-P1 binding
	reaction_R_14=compartment_compartmentOne*Function_for_R_14(x(13), x(11), compartment_compartmentOne, global_par_k12);

% Reaction: id = R_15, name = HR-P1-b-arrestin2 dissociation
	reaction_R_15=compartment_compartmentOne*Function_for_R_15(x(15), compartment_compartmentOne, global_par_k14);

% Reaction: id = R_16, name = HR-P1-b-arrestin1 dissociation 2
	reaction_R_16=compartment_compartmentOne*Function_for_R_16(x(14), compartment_compartmentOne, global_par_k15);

% Reaction: id = R_17, name = HR-P1-b-arrestin2 dissociation 2
	reaction_R_17=compartment_compartmentOne*Function_for_R_17(x(15), compartment_compartmentOne, global_par_k16);

% Reaction: id = R_18, name = HR phosphorylation GRK56
	reaction_R_18=compartment_compartmentOne*Function_for_R_18(global_par_GRK56, x(1), compartment_compartmentOne, global_par_k18);

% Reaction: id = R_19, name = HR-P2 dephosphorylation
	reaction_R_19=compartment_compartmentOne*Function_for_R_19(x(16), compartment_compartmentOne, global_par_k17);

% Reaction: id = R_20, name = b-arrestin2 HR binding
	reaction_R_20=compartment_compartmentOne*Function_for_R_20(x(1), x(11), compartment_compartmentOne, global_par_k19);

% Reaction: id = R_21, name = HR_b-arrestin2 dissociation
	reaction_R_21=compartment_compartmentOne*Function_for_R_21(x(17), compartment_compartmentOne, global_par_k23);

% Reaction: id = R_22, name = b-arrestin2 HR-P2 binding
	reaction_R_22=compartment_compartmentOne*Function_for_R_22(x(16), x(11), compartment_compartmentOne, global_par_k20);

% Reaction: id = R_23, name = HR-P2-b-arrestin2 dissociation
	reaction_R_23=compartment_compartmentOne*Function_for_R_23(x(18), compartment_compartmentOne, global_par_k24);

% Reaction: id = R_24, name = ERK phosphorylation 1
	reaction_R_24=compartment_compartmentOne*Function_for_R_24(x(3), x(17), compartment_compartmentOne, global_par_k21);

% Reaction: id = R_25, name = ERK phosphorylation 2
	reaction_R_25=compartment_compartmentOne*Function_for_R_25(x(3), x(18), compartment_compartmentOne, global_par_k22);

% Reaction: id = R_26, name = b_pERK dephosphorylation
	reaction_R_26=compartment_compartmentOne*Function_for_R_26(x(9), compartment_compartmentOne, global_par_k25);

	xdot=zeros(21,1);
	
% Species:   id = HR, name = HR, affected by kineticLaw
	xdot(1) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_3) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_11) + ( 1.0 * reaction_R_16) + ( 1.0 * reaction_R_17) + (-1.0 * reaction_R_18) + ( 1.0 * reaction_R_19) + (-1.0 * reaction_R_20) + ( 1.0 * reaction_R_21));
	
% Species:   id = G, name = Gp, affected by kineticLaw
	xdot(2) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_1) + (-1.0 * reaction_R_2) + (-1.0 * reaction_R_3) + ( 1.0 * reaction_R_7));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(3) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_6) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_24) + (-1.0 * reaction_R_25) + ( 1.0 * reaction_R_26));
	
% Species:   id = PIP2, name = PIP2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_4) + ( 1.0 * reaction_R_8));
	
% Species:   id = DAG, name = DAG, affected by kineticLaw
	xdot(5) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_4) + (-1.0 * reaction_R_5) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_8));
	
% Species:   id = PKC, name = PKC, affected by kineticLaw
	xdot(6) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_5) + ( 1.0 * reaction_R_9));
	
% Species:   id = PKC_a, name = PKC_a, affected by kineticLaw
	xdot(7) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_5) + (-1.0 * reaction_R_6) + ( 1.0 * reaction_R_6) + (-1.0 * reaction_R_9));
	
% Species:   id = GpERK, name = Gp_pERK, affected by kineticLaw
	xdot(8) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_6) + (-1.0 * reaction_R_10));
	
% Species:   id = bpERK, name = b_pERK, affected by kineticLaw
	xdot(9) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_24) + ( 1.0 * reaction_R_25) + (-1.0 * reaction_R_26));
	
% Species:   id = barr1, name = b-arrestin1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_12) + ( 1.0 * reaction_R_13) + ( 1.0 * reaction_R_16));
	
% Species:   id = barr2, name = b-arrestin2, affected by kineticLaw
	xdot(11) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_14) + ( 1.0 * reaction_R_15) + ( 1.0 * reaction_R_17) + (-1.0 * reaction_R_20) + ( 1.0 * reaction_R_21) + (-1.0 * reaction_R_22) + ( 1.0 * reaction_R_23));
	
% Species:   id = G_a, name = Gp_a, affected by kineticLaw
	xdot(12) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_1) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_4) + ( 1.0 * reaction_R_4) + (-1.0 * reaction_R_7));
	
% Species:   id = HRP1, name = HR-P1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_2) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_11) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_13) + (-1.0 * reaction_R_14) + ( 1.0 * reaction_R_15));
	
% Species:   id = Hbarr1RP1, name = HR-P1-b-arrestin1, affected by kineticLaw
	xdot(14) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_12) + (-1.0 * reaction_R_13) + (-1.0 * reaction_R_16));
	
% Species:   id = Hbarr2RP1, name = HR-P1-b-arrestin2, affected by kineticLaw
	xdot(15) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_14) + (-1.0 * reaction_R_15) + (-1.0 * reaction_R_17));
	
% Species:   id = HRP2, name = HR-P2, affected by kineticLaw
	xdot(16) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_18) + (-1.0 * reaction_R_19) + (-1.0 * reaction_R_22) + ( 1.0 * reaction_R_23));
	
% Species:   id = HRbarr2, name = HR_b-arrestin2, affected by kineticLaw
	xdot(17) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_20) + (-1.0 * reaction_R_21) + (-1.0 * reaction_R_24) + ( 1.0 * reaction_R_24));
	
% Species:   id = Hbarr2RP2, name = HR-P2-b-arrestin2, affected by kineticLaw
	xdot(18) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_22) + (-1.0 * reaction_R_23) + (-1.0 * reaction_R_25) + ( 1.0 * reaction_R_25));
	
% Species:   id = GRK2_3, name = GRK2/3
% Warning species is not changed by either rules or reactions
	xdot(19) = ;
	
% Species:   id = GRK5_6, name = GRK5/6
% Warning species is not changed by either rules or reactions
	xdot(20) = ;
	
% Species:   id = pERK, name = pERK, involved in a rule 	xdot(21) = x(21);
end

function z=Function_for_R_16(Hbarr1RP1,compartmentOne,k15), z=(k15*Hbarr1RP1/compartmentOne);end

function z=Function_for_R_21(HRbarr2,compartmentOne,k23), z=(k23*HRbarr2/compartmentOne);end

function z=Function_for_R_18(GRK56,HR,compartmentOne,k18), z=(k18*GRK56*HR/compartmentOne);end

function z=Function_for_R_24(ERK,HRbarr2,compartmentOne,k21), z=(k21*ERK*HRbarr2/compartmentOne);end

function z=Function_for_R_22(HRP2,barr2,compartmentOne,k20), z=(k20*barr2*HRP2/compartmentOne);end

function z=Function_for_R_19(HRP2,compartmentOne,k17), z=(k17*HRP2/compartmentOne);end

function z=Function_for_R_20(HR,barr2,compartmentOne,k19), z=(k19*barr2*HR/compartmentOne);end

function z=Function_for_R_23(Hbarr2RP2,compartmentOne,k24), z=(k24*Hbarr2RP2/compartmentOne);end

function z=Function_for_R_17(Hbarr2RP1,compartmentOne,k16), z=(k16*Hbarr2RP1/compartmentOne);end

function z=Function_for_R_26(bpERK,compartmentOne,k25), z=(k25*bpERK/compartmentOne);end

function z=Function_for_R_25(ERK,Hbarr2RP2,compartmentOne,k22), z=(k22*ERK*Hbarr2RP2/compartmentOne);end

function z=Function_for_R_2(G,HRP1,compartmentOne,k1), z=(k1*G*HRP1/compartmentOne);end

function z=Function_for_R_5(DAG,PKC,compartmentOne,k4), z=(k4*DAG*PKC/compartmentOne);end

function z=Function_for_R_1(G,compartmentOne,k0), z=(k0*G/compartmentOne);end

function z=Function_for_R_4(G_a,PIP2,compartmentOne,k3), z=(k3*G_a*PIP2/compartmentOne);end

function z=Function_for_R_6(ERK,PKC_a,compartmentOne,k5), z=(k5*ERK*PKC_a/compartmentOne);end

function z=Function_for_R_3(G,HR,compartmentOne,k2), z=(k2*G*HR/compartmentOne);end

function z=Function_for_R_10(GpERK,compartmentOne,k9), z=(k9*GpERK/compartmentOne);end

function z=Function_for_R_11(GRK23,HR,compartmentOne,k10), z=(k10*GRK23*HR/compartmentOne);end

function z=Function_for_R_12(HRP1,barr1,compartmentOne,k11), z=(k11*barr1*HRP1/compartmentOne);end

function z=Function_for_R_13(Hbarr1RP1,compartmentOne,k13), z=(k13*Hbarr1RP1/compartmentOne);end

function z=Function_for_R_14(HRP1,barr2,compartmentOne,k12), z=(k12*barr2*HRP1/compartmentOne);end

function z=Function_for_R_7(G_a,compartmentOne,k6), z=(k6*G_a/compartmentOne);end

function z=Function_for_R_8(DAG,compartmentOne,k7), z=(k7*DAG/compartmentOne);end

function z=Function_for_R_9(PKC_a,compartmentOne,k8), z=(k8*PKC_a/compartmentOne);end

function z=Function_for_R_15(Hbarr2RP1,compartmentOne,k14), z=(k14*Hbarr2RP1/compartmentOne);end

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


