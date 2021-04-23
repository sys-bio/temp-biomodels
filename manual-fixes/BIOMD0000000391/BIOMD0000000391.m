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
% Model name = Arnold2011_Poolman2000_CalvinCycle_Starch
%
% is http://identifiers.org/biomodels.db/MODEL1109270007
% is http://identifiers.org/biomodels.db/BIOMD0000000391
% isDescribedBy http://identifiers.org/pubmed/22001849
% is http://identifiers.org/go/GO:0019253
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 2.0;
	x0(2) = 2.4;
	x0(3) = 0.0011;
	x0(4) = 0.02;
	x0(5) = 0.48;
	x0(6) = 0.669999999999999;
	x0(7) = 0.640764257004719;
	x0(8) = 0.05;
	x0(9) = 0.3;
	x0(10) = 2.0;
	x0(11) = 0.0747384155455904;
	x0(12) = 0.125186846038864;
	x0(13) = 0.0500747384155456;
	x0(14) = 1.47375779111085;
	x0(15) = 0.0854779518844294;
	x0(16) = 0.68;
	x0(17) = 0.82;
	x0(18) = 0.977800000000002;


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

% Compartment: id = chloroplast, name = chloroplast, constant
	compartment_chloroplast=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% assignmentRule: variable = Pi
	x(18)=15-2*(x(1)+x(3)+x(6)+x(9))-(x(2)+x(4)+x(5)+x(7)+x(8)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16));
% assignmentRule: variable = ADP
	x(17)=1.5-x(16);

% Reaction: id = RuBisCO, name = RuBisCo	% Local Parameter:   id =  Vm, name = Vm
	reaction_RuBisCO_Vm=340.0;
	% Local Parameter:   id =  K, name = K
	reaction_RuBisCO_K=0.02;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_RuBisCO_KR1=0.84;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_RuBisCO_KR2=0.04;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_RuBisCO_KR3=0.0075;
	% Local Parameter:   id =  KR4, name = KR4
	reaction_RuBisCO_KR4=0.9;
	% Local Parameter:   id =  KR5, name = KR5
	reaction_RuBisCO_KR5=0.07;

	reaction_RuBisCO=compartment_chloroplast*function_1(reaction_RuBisCO_Vm, x(1), reaction_RuBisCO_K, x(2), reaction_RuBisCO_KR1, x(6), reaction_RuBisCO_KR2, x(9), reaction_RuBisCO_KR3, x(18), reaction_RuBisCO_KR4, const_species_NADPH, reaction_RuBisCO_KR5);

% Reaction: id = PGA_K, name = PGA kinase	% Local Parameter:   id =  k1, name = k1
	reaction_PGA_K_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_PGA_K_k2=1.6129E12;

	reaction_PGA_K=compartment_chloroplast*(reaction_PGA_K_k1*x(2)*x(16)-reaction_PGA_K_k2*x(3)*x(17));

% Reaction: id = GAP_DH, name = GAP dehydrogenase	% Local Parameter:   id =  k1, name = k1
	reaction_GAP_DH_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_GAP_DH_k2=31.25;

	reaction_GAP_DH=compartment_chloroplast*(reaction_GAP_DH_k1*x(3)*const_species_NADPH*const_species_H-reaction_GAP_DH_k2*x(4)*const_species_NADP*x(18));

% Reaction: id = TP_I, name = TP isomerase	% Local Parameter:   id =  k1, name = k1
	reaction_TP_I_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_TP_I_k2=2.2727E7;

	reaction_TP_I=compartment_chloroplast*(reaction_TP_I_k1*x(4)-reaction_TP_I_k2*x(5));

% Reaction: id = FBP_A, name = FBP aldolase	% Local Parameter:   id =  k1, name = k1
	reaction_FBP_A_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_FBP_A_k2=7.0423E7;

	reaction_FBP_A=compartment_chloroplast*(reaction_FBP_A_k1*x(5)*x(4)-reaction_FBP_A_k2*x(6));

% Reaction: id = FBPase, name = FBP ase	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPase_Vm=200.0;
	% Local Parameter:   id =  K, name = K
	reaction_FBPase_K=0.03;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_FBPase_KR1=0.7;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_FBPase_KR2=12.0;

	reaction_FBPase=compartment_chloroplast*function_2(reaction_FBPase_Vm, x(6), reaction_FBPase_K, x(7), reaction_FBPase_KR1, x(18), reaction_FBPase_KR2);

% Reaction: id = F6P_TK, name = F6P transketolase	% Local Parameter:   id =  k1, name = k1
	reaction_F6P_TK_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_F6P_TK_k2=5.9524E9;

	reaction_F6P_TK=compartment_chloroplast*(reaction_F6P_TK_k1*x(4)*x(7)-reaction_F6P_TK_k2*x(11)*x(8));

% Reaction: id = SBP_A, name = SBP aldolase	% Local Parameter:   id =  k1, name = k1
	reaction_SBP_A_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_SBP_A_k2=3.84615E7;

	reaction_SBP_A=compartment_chloroplast*(reaction_SBP_A_k1*x(5)*x(8)-reaction_SBP_A_k2*x(9));

% Reaction: id = SBPase, name = SBP ase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SBPase_Vm=40.0;
	% Local Parameter:   id =  K, name = K
	reaction_SBPase_K=0.02;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_SBPase_KR1=12.0;

	reaction_SBPase=compartment_chloroplast*function_3(reaction_SBPase_Vm, x(9), reaction_SBPase_K, x(18), reaction_SBPase_KR1);

% Reaction: id = S7P_TK, name = S7P transketolase	% Local Parameter:   id =  k1, name = k1
	reaction_S7P_TK_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_S7P_TK_k2=5.8824E8;

	reaction_S7P_TK=compartment_chloroplast*(reaction_S7P_TK_k1*x(4)*x(10)-reaction_S7P_TK_k2*x(11)*x(12));

% Reaction: id = R5P_I, name = R5P isomerase	% Local Parameter:   id =  k1, name = k1
	reaction_R5P_I_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_R5P_I_k2=1.25E9;

	reaction_R5P_I=compartment_chloroplast*(reaction_R5P_I_k1*x(12)-reaction_R5P_I_k2*x(13));

% Reaction: id = Ru5P_E, name = Ru5P epimerase	% Local Parameter:   id =  k1, name = k1
	reaction_Ru5P_E_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_Ru5P_E_k2=7.46269E8;

	reaction_Ru5P_E=compartment_chloroplast*(reaction_Ru5P_E_k1*x(11)-reaction_Ru5P_E_k2*x(13));

% Reaction: id = Ru5P_K, name = Ru5P kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_Ru5P_K_Vm=1000.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_Ru5P_K_K1=0.05;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_Ru5P_K_KR1=2.0;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_Ru5P_K_KR2=0.7;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_Ru5P_K_KR3=4.0;
	% Local Parameter:   id =  KR41, name = KR41
	reaction_Ru5P_K_KR41=2.5;
	% Local Parameter:   id =  K2, name = K2
	reaction_Ru5P_K_K2=0.05;
	% Local Parameter:   id =  KR42, name = KR42
	reaction_Ru5P_K_KR42=0.4;

	reaction_Ru5P_K=compartment_chloroplast*function_4(reaction_Ru5P_K_Vm, x(13), x(16), reaction_Ru5P_K_K1, x(2), reaction_Ru5P_K_KR1, x(1), reaction_Ru5P_K_KR2, x(18), reaction_Ru5P_K_KR3, x(17), reaction_Ru5P_K_KR41, reaction_Ru5P_K_K2, reaction_Ru5P_K_KR42);

% Reaction: id = PG_I, name = PG isomerase	% Local Parameter:   id =  k1, name = k1
	reaction_PG_I_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_PG_I_k2=2.174E8;

	reaction_PG_I=compartment_chloroplast*(reaction_PG_I_k1*x(7)-reaction_PG_I_k2*x(14));

% Reaction: id = PG_M, name = PG mutase	% Local Parameter:   id =  k1, name = k1
	reaction_PG_M_k1=5.0E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_PG_M_k2=8.621E9;

	reaction_PG_M=compartment_chloroplast*(reaction_PG_M_k1*x(14)-reaction_PG_M_k2*x(15));

% Reaction: id = Starch_S, name = starch synthase	% Local Parameter:   id =  Vm, name = Vm
	reaction_Starch_S_Vm=40.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_Starch_S_K1=0.08;
	% Local Parameter:   id =  K2, name = K2
	reaction_Starch_S_K2=0.08;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_Starch_S_KR1=10.0;
	% Local Parameter:   id =  KA1, name = KA1
	reaction_Starch_S_KA1=0.1;
	% Local Parameter:   id =  KA2, name = KA2
	reaction_Starch_S_KA2=0.02;
	% Local Parameter:   id =  KA3, name = KA3
	reaction_Starch_S_KA3=0.02;

	reaction_Starch_S=compartment_chloroplast*function_5(reaction_Starch_S_Vm, x(15), x(16), reaction_Starch_S_K1, reaction_Starch_S_K2, x(17), reaction_Starch_S_KR1, x(18), reaction_Starch_S_KA1, x(2), reaction_Starch_S_KA2, x(7), reaction_Starch_S_KA3, x(6));

% Reaction: id = Starch_P, name = starch phosphorylase	% Local Parameter:   id =  Vm, name = Vm
	reaction_Starch_P_Vm=40.0;
	% Local Parameter:   id =  K, name = K
	reaction_Starch_P_K=0.1;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_Starch_P_KR1=0.05;

	reaction_Starch_P=compartment_chloroplast*function_3(reaction_Starch_P_Vm, x(18), reaction_Starch_P_K, x(15), reaction_Starch_P_KR1);

% Reaction: id = ATP_S, name = ATP synthetase	% Local Parameter:   id =  Vm, name = Vm
	reaction_ATP_S_Vm=350.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_ATP_S_K1=0.014;
	% Local Parameter:   id =  K2, name = K2
	reaction_ATP_S_K2=0.3;

	reaction_ATP_S=compartment_chloroplast*function_6(reaction_ATP_S_Vm, x(17), x(18), reaction_ATP_S_K1, reaction_ATP_S_K2);

% Reaction: id = TPT_PGA, name = TPT - PGA	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_PGA_Vm=250.0;
	% Local Parameter:   id =  KA, name = KA
	reaction_TPT_PGA_KA=0.74;
	% Local Parameter:   id =  K, name = K
	reaction_TPT_PGA_K=0.25;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_TPT_PGA_KR1=0.63;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_TPT_PGA_KR2=0.075;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_TPT_PGA_KR3=0.077;

	reaction_TPT_PGA=compartment_chloroplast*function_7(reaction_TPT_PGA_Vm, x(2), reaction_TPT_PGA_KA, const_species_Pext, reaction_TPT_PGA_K, x(18), reaction_TPT_PGA_KR1, x(4), reaction_TPT_PGA_KR2, x(5), reaction_TPT_PGA_KR3);

% Reaction: id = TPT_GAP, name = TPT - GAP	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_GAP_Vm=250.0;
	% Local Parameter:   id =  KA, name = KA
	reaction_TPT_GAP_KA=0.74;
	% Local Parameter:   id =  K, name = K
	reaction_TPT_GAP_K=0.075;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_TPT_GAP_KR1=0.63;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_TPT_GAP_KR2=0.25;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_TPT_GAP_KR3=0.077;

	reaction_TPT_GAP=compartment_chloroplast*function_7(reaction_TPT_GAP_Vm, x(4), reaction_TPT_GAP_KA, const_species_Pext, reaction_TPT_GAP_K, x(18), reaction_TPT_GAP_KR1, x(2), reaction_TPT_GAP_KR2, x(5), reaction_TPT_GAP_KR3);

% Reaction: id = TPT_DHAP, name = TPT - DHAP	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_DHAP_Vm=250.0;
	% Local Parameter:   id =  KA, name = KA
	reaction_TPT_DHAP_KA=0.74;
	% Local Parameter:   id =  K, name = K
	reaction_TPT_DHAP_K=0.077;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_TPT_DHAP_KR1=0.63;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_TPT_DHAP_KR2=0.25;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_TPT_DHAP_KR3=0.075;

	reaction_TPT_DHAP=compartment_chloroplast*function_7(reaction_TPT_DHAP_Vm, x(5), reaction_TPT_DHAP_KA, const_species_Pext, reaction_TPT_DHAP_K, x(18), reaction_TPT_DHAP_KR1, x(2), reaction_TPT_DHAP_KR2, x(4), reaction_TPT_DHAP_KR3);

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=0.21;

% Species:   id = NADP, name = NADP, constant	const_species_NADP=0.29;

% Species:   id = H, name = H, constant	const_species_H=1.25892541179417E-5;

% Species:   id = Pext, name = Pext, constant	const_species_Pext=0.5;

	xdot=zeros(18,1);
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO) + ( 1.0 * reaction_Ru5P_K));
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*(( 2.0 * reaction_RuBisCO) + (-1.0 * reaction_PGA_K) + (-1.0 * reaction_TPT_PGA));
	
% Species:   id = DPGA, name = DPGA, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_K) + (-1.0 * reaction_GAP_DH));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*(( 1.0 * reaction_GAP_DH) + (-1.0 * reaction_TP_I) + (-1.0 * reaction_FBP_A) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_S7P_TK) + (-1.0 * reaction_TPT_GAP));
	
% Species:   id = DHAP, name = DHAP, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_TP_I) + (-1.0 * reaction_FBP_A) + (-1.0 * reaction_SBP_A) + (-1.0 * reaction_TPT_DHAP));
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(6) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBP_A) + (-1.0 * reaction_FBPase));
	
% Species:   id = F6P, name = F6P, affected by kineticLaw
	xdot(7) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBPase) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_PG_I));
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(8) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + (-1.0 * reaction_SBP_A));
	
% Species:   id = SBP, name = SBP, affected by kineticLaw
	xdot(9) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBP_A) + (-1.0 * reaction_SBPase));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(10) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBPase) + (-1.0 * reaction_S7P_TK));
	
% Species:   id = X5P, name = X5P, affected by kineticLaw
	xdot(11) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + ( 1.0 * reaction_S7P_TK) + (-1.0 * reaction_Ru5P_E));
	
% Species:   id = R5P, name = R5P, affected by kineticLaw
	xdot(12) = (1/(compartment_chloroplast))*(( 1.0 * reaction_S7P_TK) + (-1.0 * reaction_R5P_I));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(13) = (1/(compartment_chloroplast))*(( 1.0 * reaction_R5P_I) + ( 1.0 * reaction_Ru5P_E) + (-1.0 * reaction_Ru5P_K));
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(14) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PG_I) + (-1.0 * reaction_PG_M));
	
% Species:   id = G1P, name = G1P, affected by kineticLaw
	xdot(15) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PG_M) + (-1.0 * reaction_Starch_S) + ( 1.0 * reaction_Starch_P));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(16) = (1/(compartment_chloroplast))*((-1.0 * reaction_PGA_K) + (-1.0 * reaction_Ru5P_K) + (-1.0 * reaction_Starch_S) + ( 1.0 * reaction_ATP_S));
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Pi, name = Pi, involved in a rule 	xdot(18) = x(18);
end

function z=function_2(Vm,S,K,R1,KR1,R2,KR2), z=(Vm*S/(S+K*(1+R1/KR1+R2/KR2)));end

function z=function_7(Vm,S,KA,A,K,R1,KR1,R2,KR2,R3,KR3), z=(Vm*S/(S*(1+KA/A)+K*(1+(1+KA/A)*(R1/KR1+R2/KR2+R3/KR3))));end

function z=function_4(Vm,S1,S2,K1,R1,KR1,R2,KR2,R3,KR3,R4,KR41,K2,KR42), z=(Vm*S1*S2/((S1+K1*(1+R1/KR1+R2/KR2+R3/KR3))*(S2*(1+R4/KR41)+K2*(1+R4/KR42))));end

function z=function_6(Vm,s1,s2,K1,K2), z=(Vm*s1*s2/((s1+K1)*(s2+K2)));end

function z=function_1(Vm,S,K,R1,KR1,R2,KR2,R3,KR3,R4,KR4,R5,KR5), z=(Vm*S/(S+K*(1+R1/KR1+R2/KR2+R3/KR3+R4/KR4+R5/KR5)));end

function z=function_3(Vm,S,K,R1,KR1), z=(Vm*S/(S+K*(1+R1/KR1)));end

function z=function_5(Vm,S1,S2,K1,K2,R1,KR1,R2,KA1,A1,KA2,A2,KA3,A3), z=(Vm*S1*S2/((S1+K1)*(1+R1/KR1)*(S2+K2*(1+K2*R2/(KA1*A1+KA2*A2+KA3*A3)))));end

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


