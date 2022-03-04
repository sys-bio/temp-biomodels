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
% Model name = Arnold2011_Zhu2007_CalvinCycle_Starch_Sucrose_Photorespiration
%
% is http://identifiers.org/biomodels.db/MODEL1109270009
% is http://identifiers.org/biomodels.db/BIOMD0000000393
% isDescribedBy http://identifiers.org/pubmed/22001849
%


function main()
%Initial conditions vector
	x0=zeros(48,1);
	x0(1) = 2.4;
	x0(2) = 0.0011;
	x0(3) = 0.0238095238095238;
	x0(4) = 0.476190476190476;
	x0(5) = 0.5;
	x0(6) = 0.669999999999999;
	x0(7) = 0.640764257004718;
	x0(8) = 1.47375779111085;
	x0(9) = 0.0854779518844294;
	x0(10) = 2.2;
	x0(11) = 0.05;
	x0(12) = 0.3;
	x0(13) = 2.0;
	x0(14) = 0.0747384155455904;
	x0(15) = 0.125186846038864;
	x0(16) = 0.0500747384155456;
	x0(17) = 0.25;
	x0(18) = 2.0;
	x0(19) = 0.68;
	x0(20) = 0.82;
	x0(21) = 1.4749;
	x0(22) = 0.0029;
	x0(23) = 0.36;
	x0(24) = 0.1812;
	x0(25) = 0.0035;
	x0(26) = 0.36;
	x0(27) = 0.028;
	x0(28) = 1.8;
	x0(29) = 7.5;
	x0(30) = 0.1812;
	x0(31) = 0.0;
	x0(32) = 0.109523809523809;
	x0(33) = 2.19047619047619;
	x0(34) = 2.3;
	x0(35) = 2.0;
	x0(36) = 1.68883505322742;
	x0(37) = 3.88432062242307;
	x0(38) = 0.226844324349507;
	x0(39) = 5.8;
	x0(40) = 7.8E-6;
	x0(41) = 0.57;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.18;
	x0(45) = 4.09998299977232;
	x0(46) = 4.0999844;
	x0(47) = 0.65;
	x0(48) = 1.40022767958214E-6;


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

% Compartment: id = chloroplast, name = chloroplast, constant
	compartment_chloroplast=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  cA, name = cA
	global_par_cA=1.5;
% Parameter:   id =  cP, name = cP
	global_par_cP=15.0;
% Parameter:   id =  cAc, name = cAc
	global_par_cAc=1.0;
% Parameter:   id =  cPc, name = cPc
	global_par_cPc=15.0;
% Parameter:   id =  cNc, name = cNc
	global_par_cNc=0.87;
% Parameter:   id =  cUc, name = cUc
	global_par_cUc=1.5;
% Parameter:   id =  E, name = E
	global_par_E=1.456965457;
% Parameter:   id =  Wc_min, name = Wc*min
% Parameter:   id =  Wo_min, name = Wo*min
% Parameter:   id =  K52a, name = K52a
% assignmentRule: variable = K52a
	global_par_K52a=0.0025*(1+x(40)/7global_par_E-5);
% assignmentRule: variable = R5P
	x(15)=x(17)/0.4/(1+1/0.4+1/0.67);
% assignmentRule: variable = G6P
	x(8)=x(10)/(1+1/2.3+0.058);
% assignmentRule: variable = DHAP
	x(4)=x(5)/(1+0.05);
% assignmentRule: variable = GAP
	x(3)=0.05*x(5)/(1+0.05);
% assignmentRule: variable = G1P
	x(9)=x(10)*0.058/(1+1/2.3+0.058);
% assignmentRule: variable = X5P
	x(14)=x(17)/0.67/(1+1/0.4+1/0.67);
% assignmentRule: variable = Pi
	x(21)=global_par_cP-2*(x(18)+x(2)+x(6)+x(12))-(x(1)+x(5)+x(10)+x(11)+x(13)+x(17)+x(19)+x(22));
% assignmentRule: variable = Ru5P
	x(16)=x(17)/(1+1/0.4+1/0.67);
% assignmentRule: variable = F6P
	x(7)=x(10)/2.3/(1+1/2.3+0.058);
% assignmentRule: variable = ADP
	x(20)=global_par_cA-x(19);
% assignmentRule: variable = G6Pc
	x(37)=x(39)/(1+1/2.3+0.0584);
% assignmentRule: variable = GAPc
	x(32)=0.05*x(34)/(1+0.05);
% assignmentRule: variable = PiTc
	x(46)=global_par_cPc-2*(x(35)+x(40))-(x(31)+x(34)+x(39)+x(42)+const_species_ATPc+const_species_UTPc);
% assignmentRule: variable = F6Pc
	x(36)=x(39)/2.3/(1+1/2.3+0.0584);
% assignmentRule: variable = Pic
	x(45)=12000000/2*((1+4*x(46)/12000000)^(0.5)-1);
% assignmentRule: variable = PiPic
	x(48)=x(46)-x(45);
% assignmentRule: variable = Wc_min
	global_par_Wc_min=2.913930914*const_species_CO2/(const_species_CO2+0.0115*(1+const_species_O2/0.222))*(1+x(18)/global_par_E-abs(1-x(18)/global_par_E))/2;
% assignmentRule: variable = G1Pc
	x(38)=x(39)*0.0584/(1+1/2.3+0.0584);
% assignmentRule: variable = DHAPc
	x(33)=x(34)/(1+0.05);
% assignmentRule: variable = UDPc
	x(44)=global_par_cUc-const_species_UTPc-x(41);
% assignmentRule: variable = Wo_min
	global_par_Wo_min=0.24*2.913930914*const_species_O2/(const_species_O2+0.222*(1+const_species_CO2/0.0115))*(1+x(18)/global_par_E-abs(1-x(18)/global_par_E))/2;
% assignmentRule: variable = ADPc
	x(47)=global_par_cAc-const_species_ATPc;

% Reaction: id = RuBisCO_CO2, name = RuBisCO - CO2	% Local Parameter:   id =  K, name = K
	reaction_RuBisCO_CO2_K=0.02;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_RuBisCO_CO2_KR1=0.84;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_RuBisCO_CO2_KR2=0.04;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_RuBisCO_CO2_KR3=0.075;
	% Local Parameter:   id =  KR4, name = KR4
	reaction_RuBisCO_CO2_KR4=0.9;
	% Local Parameter:   id =  KR5, name = KR5
	reaction_RuBisCO_CO2_KR5=0.07;

	reaction_RuBisCO_CO2=compartment_chloroplast*function_1(global_par_Wc_min, x(18), reaction_RuBisCO_CO2_K, x(1), reaction_RuBisCO_CO2_KR1, x(6), reaction_RuBisCO_CO2_KR2, x(12), reaction_RuBisCO_CO2_KR3, x(21), reaction_RuBisCO_CO2_KR4, const_species_NADPH, reaction_RuBisCO_CO2_KR5);

% Reaction: id = PGA_K, name = PGA kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_PGA_K_Vm=30.1408;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_PGA_K_Ks1=0.24;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_PGA_K_Ks2=0.39;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_PGA_K_Kr1=0.23;

	reaction_PGA_K=compartment_chloroplast*function_2(reaction_PGA_K_Vm, x(1), x(19), reaction_PGA_K_Ks1, reaction_PGA_K_Ks2, x(20), reaction_PGA_K_Kr1);

% Reaction: id = GAP_DH, name = GAP dehydrogenase	% Local Parameter:   id =  Vm, name = Vm
	reaction_GAP_DH_Vm=4.03948;
	% Local Parameter:   id =  K1, name = K1
	reaction_GAP_DH_K1=0.004;
	% Local Parameter:   id =  K2, name = K2
	reaction_GAP_DH_K2=0.1;

	reaction_GAP_DH=compartment_chloroplast*function_3(reaction_GAP_DH_Vm, x(2), const_species_NADPH, reaction_GAP_DH_K1, reaction_GAP_DH_K2);

% Reaction: id = FBP_A, name = FBP aldolase	% Local Parameter:   id =  q, name = q
	reaction_FBP_A_q=7.1;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBP_A_Ks1=0.3;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_FBP_A_Ks2=0.4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBP_A_Kp1=0.02;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBP_A_Vm=1.21889;

	reaction_FBP_A=compartment_chloroplast*function_4(x(3), x(4), x(6), reaction_FBP_A_q, reaction_FBP_A_Ks1, reaction_FBP_A_Ks2, reaction_FBP_A_Kp1, reaction_FBP_A_Vm);

% Reaction: id = FBPase, name = FBPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPase_Vm=0.72626;
	% Local Parameter:   id =  q, name = q
	reaction_FBPase_q=666000.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBPase_Ks1=0.033;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_FBPase_Kr1=0.7;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_FBPase_Kr2=12.0;

	reaction_FBPase=compartment_chloroplast*function_5(reaction_FBPase_Vm, x(6), x(7), x(21), reaction_FBPase_q, reaction_FBPase_Ks1, x(7), reaction_FBPase_Kr1, x(21), reaction_FBPase_Kr2);

% Reaction: id = F6P_TK, name = F6P transketolase	% Local Parameter:   id =  Vm, name = Vm
	reaction_F6P_TK_Vm=3.12207;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_F6P_TK_Ks1=0.1;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_F6P_TK_Ks2=0.1;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_F6P_TK_Kr1=0.1;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_F6P_TK_Kr2=0.1;
	% Local Parameter:   id =  q, name = q
	reaction_F6P_TK_q=10.0;

	reaction_F6P_TK=compartment_chloroplast*function_6(reaction_F6P_TK_Vm, x(7), x(3), x(14), x(11), reaction_F6P_TK_Ks1, reaction_F6P_TK_Ks2, x(14), reaction_F6P_TK_Kr1, x(11), reaction_F6P_TK_Kr2, reaction_F6P_TK_q);

% Reaction: id = SBP_A, name = SBP aldolase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SBP_A_Vm=1.21889;
	% Local Parameter:   id =  q, name = q
	reaction_SBP_A_q=1.017;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SBP_A_Ks1=0.4;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_SBP_A_Ks2=0.2;

	reaction_SBP_A=compartment_chloroplast*function_7(reaction_SBP_A_Vm, x(4), x(11), x(12), reaction_SBP_A_q, reaction_SBP_A_Ks1, reaction_SBP_A_Ks2);

% Reaction: id = SBPase, name = SBPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SBPase_Vm=0.324191;
	% Local Parameter:   id =  q, name = q
	reaction_SBPase_q=666000.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SBPase_Ks1=0.05;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_SBPase_Kr1=12.0;

	reaction_SBPase=compartment_chloroplast*function_8(reaction_SBPase_Vm, x(12), x(13), x(21), reaction_SBPase_q, reaction_SBPase_Ks1, x(21), reaction_SBPase_Kr1);

% Reaction: id = S7P_TK, name = S7P transketolase	% Local Parameter:   id =  Vm, name = Vm
	reaction_S7P_TK_Vm=3.12207;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_S7P_TK_Ks1=0.072;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_S7P_TK_Ks2=0.46;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_S7P_TK_Kr1=0.1;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_S7P_TK_Kr2=1.5;
	% Local Parameter:   id =  q, name = q
	reaction_S7P_TK_q=1.17647;

	reaction_S7P_TK=compartment_chloroplast*function_6(reaction_S7P_TK_Vm, x(3), x(13), x(14), x(15), reaction_S7P_TK_Ks1, reaction_S7P_TK_Ks2, x(14), reaction_S7P_TK_Kr1, x(15), reaction_S7P_TK_Kr2, reaction_S7P_TK_q);

% Reaction: id = Ru5P_K, name = Ru5P kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_Ru5P_K_Vm=10.8348;
	% Local Parameter:   id =  q, name = q
	reaction_Ru5P_K_q=6846.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_Ru5P_K_Ks1=0.05;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_Ru5P_K_Kr1=2.0;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_Ru5P_K_Kr2=0.7;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_Ru5P_K_Kr3=4.0;
	% Local Parameter:   id =  Kr41, name = Kr41
	reaction_Ru5P_K_Kr41=2.5;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_Ru5P_K_Ks2=0.059;
	% Local Parameter:   id =  Kr42, name = Kr42
	reaction_Ru5P_K_Kr42=0.4;

	reaction_Ru5P_K=compartment_chloroplast*function_9(reaction_Ru5P_K_Vm, x(16), x(19), x(18), x(20), reaction_Ru5P_K_q, reaction_Ru5P_K_Ks1, x(1), reaction_Ru5P_K_Kr1, x(18), reaction_Ru5P_K_Kr2, x(21), reaction_Ru5P_K_Kr3, x(20), reaction_Ru5P_K_Kr41, reaction_Ru5P_K_Ks2, reaction_Ru5P_K_Kr42);

% Reaction: id = ATP_S, name = ATP synthetase	% Local Parameter:   id =  q, name = q
	reaction_ATP_S_q=5.734;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_ATP_S_Ks1=0.014;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_ATP_S_Ks2=0.3;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_ATP_S_Kp1=0.3;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_ATP_S_Vm=15.0;

	reaction_ATP_S=compartment_chloroplast*function_4(x(20), x(21), x(19), reaction_ATP_S_q, reaction_ATP_S_Ks1, reaction_ATP_S_Ks2, reaction_ATP_S_Kp1, reaction_ATP_S_Vm);

% Reaction: id = AGPase, name = AGPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_AGPase_Vm=0.266843;
	% Local Parameter:   id =  K1, name = K1
	reaction_AGPase_K1=0.08;
	% Local Parameter:   id =  K2, name = K2
	reaction_AGPase_K2=0.08;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_AGPase_KR1=10.0;
	% Local Parameter:   id =  KA1, name = KA1
	reaction_AGPase_KA1=0.1;
	% Local Parameter:   id =  KA2, name = KA2
	reaction_AGPase_KA2=0.02;
	% Local Parameter:   id =  KA3, name = KA3
	reaction_AGPase_KA3=0.02;

	reaction_AGPase=compartment_chloroplast*function_10(reaction_AGPase_Vm, x(9), x(19), reaction_AGPase_K1, reaction_AGPase_K2, x(20), reaction_AGPase_KR1, x(21), reaction_AGPase_KA1, x(1), reaction_AGPase_KA2, x(7), reaction_AGPase_KA3, x(6));

% Reaction: id = TPT_PGA, name = TPT - PGA	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_PGA_Vm=1.24333;
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

	reaction_TPT_PGA=function_11(reaction_TPT_PGA_Vm, x(1), reaction_TPT_PGA_KA, x(45), reaction_TPT_PGA_K, x(21), reaction_TPT_PGA_KR1, x(3), reaction_TPT_PGA_KR2, x(4), reaction_TPT_PGA_KR3);

% Reaction: id = TPT_GAP, name = TPT - GAP	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_GAP_Vm=1.24333;
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

	reaction_TPT_GAP=function_11(reaction_TPT_GAP_Vm, x(3), reaction_TPT_GAP_KA, x(45), reaction_TPT_GAP_K, x(21), reaction_TPT_GAP_KR1, x(1), reaction_TPT_GAP_KR2, x(4), reaction_TPT_GAP_KR3);

% Reaction: id = TPT_DHAP, name = TPT - DHAP	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_DHAP_Vm=1.24333;
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

	reaction_TPT_DHAP=function_11(reaction_TPT_DHAP_Vm, x(4), reaction_TPT_DHAP_KA, x(45), reaction_TPT_DHAP_K, x(21), reaction_TPT_DHAP_KR1, x(1), reaction_TPT_DHAP_KR2, x(3), reaction_TPT_DHAP_KR3);

% Reaction: id = FBPc_A, name = FBPc aldolase	% Local Parameter:   id =  q, name = q
	reaction_FBPc_A_q=12.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBPc_A_Ks1=0.3;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_FBPc_A_Ks2=0.4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBPc_A_Kp1=0.02;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPc_A_Vm=0.107377;

	reaction_FBPc_A=compartment_cytosol*function_4(x(32), x(33), x(35), reaction_FBPc_A_q, reaction_FBPc_A_Ks1, reaction_FBPc_A_Ks2, reaction_FBPc_A_Kp1, reaction_FBPc_A_Vm);

% Reaction: id = FBPcase, name = FBPcase	% Local Parameter:   id =  q, name = q
	reaction_FBPcase_q=6663.0;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBPcase_Kp1=0.7;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_FBPcase_Kp2=12.0;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPcase_Vm=0.063979;

	reaction_FBPcase=compartment_cytosol*function_12(x(35), x(36), x(45), reaction_FBPcase_q, global_par_K52a, reaction_FBPcase_Kp1, reaction_FBPcase_Kp2, reaction_FBPcase_Vm);

% Reaction: id = UGPase, name = UGPase	% Local Parameter:   id =  q, name = q
	reaction_UGPase_q=0.31;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_UGPase_Ks1=0.14;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_UGPase_Ks2=0.1;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_UGPase_Kp1=0.12;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_UGPase_Kp2=0.11;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_UGPase_Vm=0.115403;

	reaction_UGPase=compartment_cytosol*function_13(x(38), const_species_UTPc, x(41), x(48), reaction_UGPase_q, reaction_UGPase_Ks1, reaction_UGPase_Ks2, reaction_UGPase_Kp1, reaction_UGPase_Kp2, reaction_UGPase_Vm);

% Reaction: id = SucPc_S, name = SucPc synthase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SucPc_S_Vm=0.0555034;
	% Local Parameter:   id =  q, name = q
	reaction_SucPc_S_q=10.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SucPc_S_Ks1=0.8;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_SucPc_S_Kr1=0.8;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_SucPc_S_Ks2=2.4;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_SucPc_S_Kr2=0.7;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_SucPc_S_Kr3=0.4;
	% Local Parameter:   id =  Kr4, name = Kr4
	reaction_SucPc_S_Kr4=50.0;
	% Local Parameter:   id =  Kr5, name = Kr5
	reaction_SucPc_S_Kr5=11.0;

	reaction_SucPc_S=compartment_cytosol*function_14(reaction_SucPc_S_Vm, x(36), x(41), x(42), x(44), reaction_SucPc_S_q, reaction_SucPc_S_Ks1, x(35), reaction_SucPc_S_Kr1, reaction_SucPc_S_Ks2, x(44), reaction_SucPc_S_Kr2, x(42), reaction_SucPc_S_Kr3, x(43), reaction_SucPc_S_Kr4, x(45), reaction_SucPc_S_Kr5);

% Reaction: id = SucPc_P, name = SucPc phosphatase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SucPc_P_Vm=0.555034;
	% Local Parameter:   id =  q, name = q
	reaction_SucPc_P_q=780.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SucPc_P_Ks1=0.35;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_SucPc_P_Kr1=80.0;

	reaction_SucPc_P=compartment_cytosol*function_8(reaction_SucPc_P_Vm, x(42), x(43), x(45), reaction_SucPc_P_q, reaction_SucPc_P_Ks1, x(43), reaction_SucPc_P_Kr1);

% Reaction: id = F6Pc_K, name = F6Pc kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_F6Pc_K_Vm=0.100915;
	% Local Parameter:   id =  q, name = q
	reaction_F6Pc_K_q=590.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_F6Pc_K_Ks1=0.5;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_F6Pc_K_Kr1=0.021;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_F6Pc_K_Kr2=0.7;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_F6Pc_K_Ks2=0.5;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_F6Pc_K_Kr3=0.16;

	reaction_F6Pc_K=compartment_cytosol*function_15(reaction_F6Pc_K_Vm, x(36), const_species_ATPc, x(40), x(47), reaction_F6Pc_K_q, reaction_F6Pc_K_Ks1, x(40), reaction_F6Pc_K_Kr1, x(33), reaction_F6Pc_K_Kr2, reaction_F6Pc_K_Ks2, x(47), reaction_F6Pc_K_Kr3);

% Reaction: id = F26BPc_P, name = F26BPc phosphatase	% Local Parameter:   id =  Vm, name = Vm
	reaction_F26BPc_P_Vm=0.0168192;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_F26BPc_P_Kr1=0.5;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_F26BPc_P_Kr2=0.1;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_F26BPc_P_Ks1=0.032;

	reaction_F26BPc_P=compartment_cytosol*function_16(reaction_F26BPc_P_Vm, x(40), x(45), reaction_F26BPc_P_Kr1, x(36), reaction_F26BPc_P_Kr2, reaction_F26BPc_P_Ks1);

% Reaction: id = Succ_Deg, name = Succ degradation	% Local Parameter:   id =  Km, name = Km
	reaction_Succ_Deg_Km=5.0;
	% Local Parameter:   id =  V, name = V
	reaction_Succ_Deg_V=2.0;

	reaction_Succ_Deg=compartment_cytosol*function_17(x(43), reaction_Succ_Deg_Km, reaction_Succ_Deg_V);

% Reaction: id = PGAc_Deg, name = PGAc degradation	% Local Parameter:   id =  Km, name = Km
	reaction_PGAc_Deg_Km=1.0;
	% Local Parameter:   id =  V, name = V
	reaction_PGAc_Deg_V=0.5;

	reaction_PGAc_Deg=compartment_cytosol*function_17(x(31), reaction_PGAc_Deg_Km, reaction_PGAc_Deg_V);

% Reaction: id = GPT_GCEAc, name = GPT - GCEAc	% Local Parameter:   id =  Km, name = Km
	reaction_GPT_GCEAc_Km=0.39;
	% Local Parameter:   id =  V, name = V
	reaction_GPT_GCEAc_V=5.0;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_GPT_GCEAc_Ki=0.28;

	reaction_GPT_GCEAc=function_18(x(30), x(26), reaction_GPT_GCEAc_Km, reaction_GPT_GCEAc_V, reaction_GPT_GCEAc_Ki);

% Reaction: id = GPT_GCEA, name = GPT - GCEA	% Local Parameter:   id =  Km, name = Km
	reaction_GPT_GCEA_Km=0.39;
	% Local Parameter:   id =  V, name = V
	reaction_GPT_GCEA_V=5.0;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_GPT_GCEA_Ki=0.28;

	reaction_GPT_GCEA=function_18(x(24), x(23), reaction_GPT_GCEA_Km, reaction_GPT_GCEA_V, reaction_GPT_GCEA_Ki);

% Reaction: id = GPT_GCA, name = GPT - GCA	% Local Parameter:   id =  Km, name = Km
	reaction_GPT_GCA_Km=0.2;
	% Local Parameter:   id =  V, name = V
	reaction_GPT_GCA_V=6.0;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_GPT_GCA_Ki=0.22;

	reaction_GPT_GCA=function_18(x(23), x(24), reaction_GPT_GCA_Km, reaction_GPT_GCA_V, reaction_GPT_GCA_Ki);

% Reaction: id = GPT_GCAc, name = GPT - GCAc	% Local Parameter:   id =  Km, name = Km
	reaction_GPT_GCAc_Km=0.2;
	% Local Parameter:   id =  V, name = V
	reaction_GPT_GCAc_V=6.0;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_GPT_GCAc_Ki=0.22;

	reaction_GPT_GCAc=function_18(x(26), x(30), reaction_GPT_GCAc_Km, reaction_GPT_GCAc_V, reaction_GPT_GCAc_Ki);

% Reaction: id = RuBisCO_O2, name = RuBisC0 - O2	% Local Parameter:   id =  K, name = K
	reaction_RuBisCO_O2_K=0.02;
	% Local Parameter:   id =  KR1, name = KR1
	reaction_RuBisCO_O2_KR1=0.84;
	% Local Parameter:   id =  KR2, name = KR2
	reaction_RuBisCO_O2_KR2=0.04;
	% Local Parameter:   id =  KR3, name = KR3
	reaction_RuBisCO_O2_KR3=0.075;
	% Local Parameter:   id =  KR4, name = KR4
	reaction_RuBisCO_O2_KR4=0.9;
	% Local Parameter:   id =  KR5, name = KR5
	reaction_RuBisCO_O2_KR5=0.07;

	reaction_RuBisCO_O2=compartment_chloroplast*function_1(global_par_Wo_min, x(18), reaction_RuBisCO_O2_K, x(1), reaction_RuBisCO_O2_KR1, x(6), reaction_RuBisCO_O2_KR2, x(12), reaction_RuBisCO_O2_KR3, x(21), reaction_RuBisCO_O2_KR4, const_species_NADPH, reaction_RuBisCO_O2_KR5);

% Reaction: id = PGCA_P, name = PGCA phosphatase	% Local Parameter:   id =  Vm, name = Vm
	reaction_PGCA_P_Vm=52.4199;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_PGCA_P_Ks1=0.026;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_PGCA_P_Kr1=94.0;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_PGCA_P_Kr2=2.55;

	reaction_PGCA_P=compartment_chloroplast*function_19(reaction_PGCA_P_Vm, x(22), reaction_PGCA_P_Ks1, x(23), reaction_PGCA_P_Kr1, x(21), reaction_PGCA_P_Kr2);

% Reaction: id = GCEA_K, name = GCEA kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_GCEA_K_Vm=5.71579;
	% Local Parameter:   id =  q, name = q
	reaction_GCEA_K_q=300.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_GCEA_K_Ks1=0.21;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_GCEA_K_Kr1=0.36;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_GCEA_K_Ks2=0.25;

	reaction_GCEA_K=compartment_chloroplast*function_20(reaction_GCEA_K_Vm, x(19), x(24), x(1), x(20), reaction_GCEA_K_q, reaction_GCEA_K_Ks1, x(1), reaction_GCEA_K_Kr1, reaction_GCEA_K_Ks2);

% Reaction: id = GCAc_Ox, name = GCAc oxidase	% Local Parameter:   id =  Km, name = Km
	reaction_GCAc_Ox_Km=0.1;
	% Local Parameter:   id =  V, name = V
	reaction_GCAc_Ox_V=1.45611;

	reaction_GCAc_Ox=compartment_cytosol*function_17(x(26), reaction_GCAc_Ox_Km, reaction_GCAc_Ox_V);

% Reaction: id = SERcGOAc_AT, name = SERc:GOAc aminotransferase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SERcGOAc_AT_Vm=3.30619;
	% Local Parameter:   id =  q, name = q
	reaction_SERcGOAc_AT_q=0.24;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SERcGOAc_AT_Ks1=2.7;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_SERcGOAc_AT_Kr1=33.0;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_SERcGOAc_AT_Ks2=0.15;

	reaction_SERcGOAc_AT=function_20(reaction_SERcGOAc_AT_Vm, x(29), x(27), x(25), x(28), reaction_SERcGOAc_AT_q, reaction_SERcGOAc_AT_Ks1, x(28), reaction_SERcGOAc_AT_Kr1, reaction_SERcGOAc_AT_Ks2);

% Reaction: id = GCEA_DH, name = GCEA dehydrogenase	% Local Parameter:   id =  Vm, name = Vm
	reaction_GCEA_DH_Vm=10.0098;
	% Local Parameter:   id =  q, name = q
	reaction_GCEA_DH_q=250000.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_GCEA_DH_Ks1=0.09;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_GCEA_DH_Kr1=12.0;

	reaction_GCEA_DH=function_21(reaction_GCEA_DH_Vm, x(25), const_species_NADH, x(30), const_species_NAD, reaction_GCEA_DH_q, reaction_GCEA_DH_Ks1, x(25), reaction_GCEA_DH_Kr1);

% Reaction: id = GLUcGOAc_AT, name = GLUc:GOAc aminotransferase	% Local Parameter:   id =  Vm, name = Vm
	reaction_GLUcGOAc_AT_Vm=2.74582;
	% Local Parameter:   id =  q, name = q
	reaction_GLUcGOAc_AT_q=607.0;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_GLUcGOAc_AT_Ks1=1.7;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_GLUcGOAc_AT_Kr1=2.0;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_GLUcGOAc_AT_Ks2=0.15;

	reaction_GLUcGOAc_AT=compartment_cytosol*function_20(reaction_GLUcGOAc_AT_Vm, const_species_GLUc, x(27), const_species_KGc, x(28), reaction_GLUcGOAc_AT_q, reaction_GLUcGOAc_AT_Ks1, x(28), reaction_GLUcGOAc_AT_Kr1, reaction_GLUcGOAc_AT_Ks2);

% Reaction: id = GLYc_DC, name = GLYc decarboxylase	% Local Parameter:   id =  Vm, name = Vm
	reaction_GLYc_DC_Vm=2.49475;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_GLYc_DC_Ks1=6.0;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_GLYc_DC_Kr1=4.0;

	reaction_GLYc_DC=compartment_cytosol*function_22(reaction_GLYc_DC_Vm, x(28), reaction_GLYc_DC_Ks1, x(29), reaction_GLYc_DC_Kr1);

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=0.21;

% Species:   id = CO2, name = CO2, constant	const_species_CO2=0.009;

% Species:   id = O2, name = O2, constant	const_species_O2=0.2646;

% Species:   id = NADP, name = NADP, constant	const_species_NADP=0.29;

% Species:   id = UTPc, name = UTPc, constant	const_species_UTPc=0.75;

% Species:   id = NAD, name = NAD, constant	const_species_NAD=0.4;

% Species:   id = NADH, name = NADH, constant	const_species_NADH=0.47;

% Species:   id = GLUc, name = GLUc, constant	const_species_GLUc=24.0;

% Species:   id = KGc, name = KGc, constant	const_species_KGc=0.4;

% Species:   id = ATPc, name = ATPc, constant	const_species_ATPc=0.35;

	xdot=zeros(48,1);
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*(( 2.0 * reaction_RuBisCO_CO2) + (-1.0 * reaction_PGA_K) + (-1.0 * reaction_TPT_PGA) + ( 1.0 * reaction_RuBisCO_O2) + ( 1.0 * reaction_GCEA_K));
	
% Species:   id = DPGA, name = DPGA, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_K) + (-1.0 * reaction_GAP_DH));
	
% Species:   id = GAP, name = GAP, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = DHAP, name = DHAP, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = TP, name = TP, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_GAP_DH) + (-2.0 * reaction_FBP_A) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_SBP_A) + (-1.0 * reaction_S7P_TK) + (-1.0 * reaction_TPT_GAP) + (-1.0 * reaction_TPT_DHAP));
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(6) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBP_A) + (-1.0 * reaction_FBPase));
	
% Species:   id = F6P, name = F6P, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = G6P, name = G6P, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = G1P, name = G1P, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = HeP, name = HeP, affected by kineticLaw
	xdot(10) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBPase) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_AGPase));
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(11) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + (-1.0 * reaction_SBP_A));
	
% Species:   id = SBP, name = SBP, affected by kineticLaw
	xdot(12) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBP_A) + (-1.0 * reaction_SBPase));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(13) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBPase) + (-1.0 * reaction_S7P_TK));
	
% Species:   id = X5P, name = X5P, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = R5P, name = R5P, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Ru5P, name = Ru5P, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = PeP, name = PeP, affected by kineticLaw
	xdot(17) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + ( 2.0 * reaction_S7P_TK) + (-1.0 * reaction_Ru5P_K));
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(18) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO_CO2) + ( 1.0 * reaction_Ru5P_K) + (-1.0 * reaction_RuBisCO_O2));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(19) = (1/(compartment_chloroplast))*((-1.0 * reaction_PGA_K) + (-1.0 * reaction_Ru5P_K) + ( 1.0 * reaction_ATP_S) + (-1.0 * reaction_AGPase) + (-1.0 * reaction_GCEA_K));
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = Pi, name = Pi, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = PGCA, name = PGCA, affected by kineticLaw
	xdot(22) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_O2) + (-1.0 * reaction_PGCA_P));
	
% Species:   id = GCA, name = GCA, affected by kineticLaw
	xdot(23) = (1/(compartment_chloroplast))*((-1.0 * reaction_GPT_GCA) + ( 1.0 * reaction_GPT_GCAc) + ( 1.0 * reaction_PGCA_P));
	
% Species:   id = GCEA, name = GCEA, affected by kineticLaw
	xdot(24) = (1/(compartment_chloroplast))*(( 1.0 * reaction_GPT_GCEAc) + (-1.0 * reaction_GPT_GCEA) + (-1.0 * reaction_GCEA_K));
	
% Species:   id = HPRc, name = HPRc, affected by kineticLaw
	xdot(25) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SERcGOAc_AT) + (-1.0 * reaction_GCEA_DH));
	
% Species:   id = GCAc, name = GCAc, affected by kineticLaw
	xdot(26) = (1/(compartment_cytosol))*(( 1.0 * reaction_GPT_GCA) + (-1.0 * reaction_GPT_GCAc) + (-1.0 * reaction_GCAc_Ox));
	
% Species:   id = GOAc, name = GOAc, affected by kineticLaw
	xdot(27) = (1/(compartment_cytosol))*(( 1.0 * reaction_GCAc_Ox) + (-1.0 * reaction_SERcGOAc_AT) + (-1.0 * reaction_GLUcGOAc_AT));
	
% Species:   id = GLYc, name = GLYc, affected by kineticLaw
	xdot(28) = (1/(compartment_cytosol))*(( 1.0 * reaction_SERcGOAc_AT) + ( 1.0 * reaction_GLUcGOAc_AT) + (-2.0 * reaction_GLYc_DC));
	
% Species:   id = SERc, name = SERc, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol))*((-1.0 * reaction_SERcGOAc_AT) + ( 1.0 * reaction_GLYc_DC));
	
% Species:   id = GCEAc, name = GCEAc, affected by kineticLaw
	xdot(30) = (1/(compartment_cytosol))*((-1.0 * reaction_GPT_GCEAc) + ( 1.0 * reaction_GPT_GCEA) + ( 1.0 * reaction_GCEA_DH));
	
% Species:   id = PGAc, name = PGAc, affected by kineticLaw
	xdot(31) = (1/(compartment_cytosol))*(( 1.0 * reaction_TPT_PGA) + (-1.0 * reaction_PGAc_Deg));
	
% Species:   id = GAPc, name = GAPc, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = DHAPc, name = DHAPc, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = TPc, name = TPc, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*(( 1.0 * reaction_TPT_GAP) + ( 1.0 * reaction_TPT_DHAP) + (-2.0 * reaction_FBPc_A));
	
% Species:   id = FBPc, name = FBPc, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_FBPc_A) + (-1.0 * reaction_FBPcase));
	
% Species:   id = F6Pc, name = F6Pc, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = G6Pc, name = G6Pc, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = G1Pc, name = G1Pc, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = HePc, name = HePc, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol))*(( 1.0 * reaction_FBPcase) + (-1.0 * reaction_UGPase) + (-1.0 * reaction_SucPc_S) + (-1.0 * reaction_F6Pc_K) + ( 1.0 * reaction_F26BPc_P));
	
% Species:   id = F26BPc, name = F26BPc, affected by kineticLaw
	xdot(40) = (1/(compartment_cytosol))*(( 1.0 * reaction_F6Pc_K) + (-1.0 * reaction_F26BPc_P));
	
% Species:   id = UDPGc, name = UDPGc, affected by kineticLaw
	xdot(41) = (1/(compartment_cytosol))*(( 1.0 * reaction_UGPase) + (-1.0 * reaction_SucPc_S));
	
% Species:   id = SucPc, name = SucPc, affected by kineticLaw
	xdot(42) = (1/(compartment_cytosol))*(( 1.0 * reaction_SucPc_S) + (-1.0 * reaction_SucPc_P));
	
% Species:   id = Succ, name = Succ, affected by kineticLaw
	xdot(43) = (1/(compartment_cytosol))*(( 1.0 * reaction_SucPc_P) + (-1.0 * reaction_Succ_Deg));
	
% Species:   id = UDPc, name = UDPc, involved in a rule 	xdot(44) = x(44);
	
% Species:   id = Pic, name = Pic, involved in a rule 	xdot(45) = x(45);
	
% Species:   id = PiTc, name = PiTc, involved in a rule 	xdot(46) = x(46);
	
% Species:   id = ADPc, name = ADPc, involved in a rule 	xdot(47) = x(47);
	
% Species:   id = PiPic, name = PiPic, involved in a rule 	xdot(48) = x(48);
end

function z=function_9(Vm,s1,s2,p1,p2,q,Ks1,r1,Kr1,r2,Kr2,r3,Kr3,r4,Kr41,Ks2,Kr42), z=(Vm*(s1*s2-p1*p2/q)/((s1+Ks1*(1+r1/Kr1+r2/Kr2+r3/Kr3))*(s2*(1+r4/Kr41)+Ks2*(1+r4/Kr42))));end

function z=function_18(substrate,Inhibitor,Km,V,Ki), z=(V*substrate/(Km+substrate+Km*Inhibitor/Ki));end

function z=function_17(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_5(Vm,s1,p1,p2,q,Ks1,r1,Kr1,r2,Kr2), z=(Vm*(s1-p1*p2/q)/(s1+Ks1*(1+r1/Kr1+r2/Kr2)));end

function z=function_14(Vm,s1,s2,p1,p2,q,Ks1,r1,Kr1,Ks2,r2,Kr2,r3,Kr3,r4,Kr4,r5,Kr5), z=(Vm*(s1*s2-p1*p2/q)/((s1+Ks1*(1+r1/Kr1))*(s2+Ks2*(1+r2/Kr2)*(1+r3/Kr3)*(1+r4/Kr4)*(1+r5/Kr5))));end

function z=function_21(Vm,s1,s2,p1,p2,q,Ks1,r1,Kr1), z=(Vm*(s1*s2-p1*p2/q)/(s1+Ks1*(1+r1/Kr1)));end

function z=function_15(Vm,s1,s2,p1,p2,q,Ks1,r1,Kr1,r2,Kr2,Ks2,r3,Kr3), z=(Vm*(s1*s2-p1*p2/q)/((s1+Ks1*(1+r1/Kr1)*(1+r2/Kr2))*(s2+Ks2*(1+r3/Kr3))));end

function z=function_4(s1,s2,p1,q,Ks1,Ks2,Kp1,Vm), z=(Vm*(s1*s2-p1/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+p1/Kp1)));end

function z=function_8(Vm,s1,p1,p2,q,Ks1,r1,Kr1), z=(Vm*(s1-p1*p2/q)/(s1+Ks1*(1+r1/Kr1)));end

function z=function_12(s1,p1,p2,q,Ks1,Kp1,Kp2,Vm), z=(Vm*(s1-p1*p2/q)/(Ks1*(s1/Ks1+(1+p1/Kp1)*(1+p2/Kp2))));end

function z=function_13(s1,s2,p1,p2,q,Ks1,Ks2,Kp1,Kp2,Vm), z=(Vm*(s1*s2-p1*p2/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+(1+p1/Kp1)*(1+p2/Kp2)-1)));end

function z=function_2(Vm,s1,s2,Ks1,Ks2,r1,Kr1), z=(Vm*s1*s2/((s1+Ks1)*(s2+Ks2*(1+r1/Kr1))));end

function z=function_10(Vm,S1,S2,K1,K2,R1,KR1,R2,KA1,A1,KA2,A2,KA3,A3), z=(Vm*S1*S2/((S1+K1)*(1+R1/KR1)*(S2+K2*(1+K2*R2/(KA1*A1+KA2*A2+KA3*A3)))));end

function z=function_19(Vm,s1,Ks1,r1,Kr1,r2,Kr2), z=(Vm*s1/(s1+Ks1*(1+r1/Kr1)*(1+r2/Kr2)));end

function z=function_20(Vm,s1,s2,p1,p2,q,Ks1,r1,Kr1,Ks2), z=(Vm*(s1*s2-p1*p2/q)/((s1+Ks1*(1+r1/Kr1))*(s2+Ks2)));end

function z=function_1(Vm,S,K,R1,KR1,R2,KR2,R3,KR3,R4,KR4,R5,KR5), z=(Vm*S/(S+K*(1+R1/KR1+R2/KR2+R3/KR3+R4/KR4+R5/KR5)));end

function z=function_3(Vm,s1,s2,K1,K2), z=(Vm*s1*s2/((s1+K1)*(s2+K2)));end

function z=function_22(Vm,s1,Ks1,r1,Kr1), z=(Vm*s1/(s1+Ks1*(1+r1/Kr1)));end

function z=function_16(Vm,s1,r1,Kr1,r2,Kr2,Ks1), z=(Vm*s1/((s1+Ks1)*(1+r1/Kr1)*(1+r2/Kr2)));end

function z=function_6(Vm,s1,s2,p1,p2,Ks1,Ks2,r1,Kr1,r2,Kr2,q), z=(Vm*(s1*s2-p1*p2/q)/((s1+Ks1*(1+r1/Kr1+r2/Kr2))*(s2+Ks2)));end

function z=function_7(Vm,s1,s2,p1,q,Ks1,Ks2), z=(Vm*(s1*s2-p1/q)/((s1+Ks1)*(s2+Ks2)));end

function z=function_11(Vm,S,KA,A,K,R1,KR1,R2,KR2,R3,KR3), z=(Vm*S/(S*(1+KA/A)+K*(1+(1+KA/A)*(R1/KR1+R2/KR2+R3/KR3))));end

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


