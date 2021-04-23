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
% Model name = Arnold2011_Laisk2006_CalvinCycle_Starch_Sucrose
%
% is http://identifiers.org/biomodels.db/MODEL1109270008
% is http://identifiers.org/biomodels.db/BIOMD0000000392
% isDescribedBy http://identifiers.org/pubmed/22001849
%


function main()
%Initial conditions vector
	x0=zeros(42,1);
	x0(1) = 0.002;
	x0(2) = 9.2303030303025E-6;
	x0(3) = 0.001201;
	x0(4) = 2.711E-4;
	x0(5) = 3.206E-4;
	x0(6) = 7.045E-4;
	x0(7) = 2.966E-4;
	x0(8) = 0.0024;
	x0(9) = 5.0E-4;
	x0(10) = 2.49908421059103E-4;
	x0(11) = 2.50091578940897E-4;
	x0(12) = 6.7E-4;
	x0(13) = 0.0022;
	x0(14) = 7.33422825505269E-4;
	x0(15) = 7.33542392915314E-4;
	x0(16) = 7.33034781579417E-4;
	x0(17) = 5.0E-5;
	x0(18) = 3.0E-4;
	x0(19) = 0.002;
	x0(20) = 2.5E-4;
	x0(21) = 8.33231656462569E-5;
	x0(22) = 8.33492525797069E-5;
	x0(23) = 8.33275817740362E-5;
	x0(24) = 6.295E-6;
	x0(25) = 6.8E-4;
	x0(26) = 8.2E-4;
	x0(27) = 0.0109928959090909;
	x0(28) = 4.36233478328384E-6;
	x0(29) = 0.0;
	x0(30) = 0.0023;
	x0(31) = 0.00114957873687187;
	x0(32) = 0.00115042126312813;
	x0(33) = 0.002;
	x0(34) = 7.8E-9;
	x0(35) = 0.0058;
	x0(36) = 0.00193356926724116;
	x0(37) = 0.0019338844904131;
	x0(38) = 0.00193254624234574;
	x0(39) = 5.7E-4;
	x0(40) = 6.4E-4;
	x0(41) = 0.0;
	x0(42) = 0.00157545454545454;


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
% Parameter:   id =  Et, name = Et
	global_par_Et=0.0028030303030303;
% Parameter:   id =  ADT, name = ADT
	global_par_ADT=0.0015;
% Parameter:   id =  ADTc, name = ADTc
	global_par_ADTc=0.001;
% Parameter:   id =  UDTc, name = UDTc
	global_par_UDTc=0.001;
% Parameter:   id =  NADPT, name = NADPT
	global_par_NADPT=5.0E-4;
% Parameter:   id =  PiT, name = PiT
	global_par_PiT=0.0284090909090909;
% Parameter:   id =  PiTc, name = PiTc
	global_par_PiTc=0.0170454545454545;
% Parameter:   id =  q12, name = q12
	global_par_q12=2.22786254125735E12;
% Parameter:   id =  Kp12, name = Kp12
	global_par_Kp12=224014.808032967;
% Parameter:   id =  q1, name = q1
	global_par_q1=0.129053067280279;
% Parameter:   id =  W4, name = W4
% Parameter:   id =  V28, name = V28
	global_par_V28=7.386364E-5;
% assignmentRule: variable = ADPc
	x(40)=global_par_ADTc-const_species_ATPc;
% assignmentRule: variable = GAP
	x(10)=x(9)/(1+1.0007329);
% assignmentRule: variable = Ru5P
	x(23)=x(20)*0.99974/(1+0.99974+0.99974/1.000053);
% assignmentRule: variable = F6P
	x(14)=x(13)*0.999837/(1+0.999837+0.999308);
% assignmentRule: variable = Pic
	x(42)=global_par_PiTc-2*(x(33)+const_species_UTPc+const_species_ATPc+const_species_PiPic)-(x(29)+x(30)+x(35)+x(41)+x(39)+const_species_UDPc+x(40));
% assignmentRule: variable = X5P
	x(21)=x(20)*0.99974/1.000053/(1+0.99974+0.99974/1.000053);
% assignmentRule: variable = G6P
	x(15)=x(13)/(1+0.999837+0.999308);
% assignmentRule: variable = G1P
	x(16)=x(13)*0.999308/(1+0.999837+0.999308);
% assignmentRule: variable = G1Pc
	x(38)=x(35)*0.999308/(1+0.999837+0.999308);
% assignmentRule: variable = DHAP
	x(11)=1.0007329*x(9)/(1+1.0007329);
% assignmentRule: variable = G6Pc
	x(37)=x(35)/(1+0.999837+0.999308);
% assignmentRule: variable = F6Pc
	x(36)=x(35)*0.999837/(1+0.999837+0.999308);
% assignmentRule: variable = R5P
	x(22)=x(20)/(1+0.99974+0.99974/1.000053);
% assignmentRule: variable = ADP
	x(26)=global_par_ADT-x(25);
% assignmentRule: variable = Pi
	x(27)=global_par_PiT-2*(x(4)+x(5)+x(1)+x(12)+x(18)+x(25)+const_species_PiPi)-(x(6)+x(8)+x(9)+x(13)+x(17)+x(19)+x(20)+x(26)+x(24));
% assignmentRule: variable = GAPc
	x(31)=x(30)/(1+1.0007329);
% assignmentRule: variable = DHAPc
	x(32)=1.0007329*x(30)/(1+1.0007329);
% assignmentRule: variable = CO2
	x(28)=(1.2x(2)-5/(0.38+0.015)+8*4*0.00055*3030.3*x(3)*const_species_O2/2)/(1/(0.38+0.015)+8*4*0.00055*300000*x(3));
% assignmentRule: variable = E
	x(2)=global_par_Et-(x(3)+x(4)+x(5)+x(6)+x(7));
% assignmentRule: variable = W4
	global_par_W4=6*x(7)-70000*x(27)*x(2);

% Reaction: id = RuBisCO_1, name = RuBisCO (1)	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_1_k1=50000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_RuBisCO_1_k2=0.9;

	reaction_RuBisCO_1=compartment_chloroplast*(reaction_RuBisCO_1_k1*x(1)*x(2)-reaction_RuBisCO_1_k2*x(3));

% Reaction: id = RuBisCO_2_CO2, name = RuBisCO (2) - V(CO2)	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_2_CO2_k1=300000.0;

	reaction_RuBisCO_2_CO2=compartment_chloroplast*reaction_RuBisCO_2_CO2_k1*x(3)*x(28);

% Reaction: id = RuBisCO_4, name = RuBisCO (4)	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_4_k1=6.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_RuBisCO_4_k2=0.0;

	reaction_RuBisCO_4=compartment_chloroplast*(reaction_RuBisCO_4_k1*x(4)-reaction_RuBisCO_4_k2*x(8)*x(6));

% Reaction: id = RuBisCO_5_EP, name = RuBisCO (5) - EP	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_5_EP_k1=6.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_RuBisCO_5_EP_k2=70000.0;

	reaction_RuBisCO_5_EP=compartment_chloroplast*(reaction_RuBisCO_5_EP_k1*x(6)-reaction_RuBisCO_5_EP_k2*x(8)*x(2));

% Reaction: id = RuBisCO_6_O2, name = RuBisCO (6) - V(O2)	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_6_O2_k1=3030.3;

	reaction_RuBisCO_6_O2=compartment_chloroplast*reaction_RuBisCO_6_O2_k1*x(3)*const_species_O2;

% Reaction: id = RuBisCO_7, name = RuBisCO (7)	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_7_k1=3.0;

	reaction_RuBisCO_7=compartment_chloroplast*reaction_RuBisCO_7_k1*x(5);

% Reaction: id = PGA_K, name = PGA kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_PGA_K_Vm=0.0170455;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_PGA_K_Ks1=0.0011122;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_PGA_K_Ks2=3.307E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_PGA_K_Kp1=2.7035E-4;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_PGA_K_Kp2=5.3013E-4;
	% Local Parameter:   id =  Kp3, name = Kp3
	reaction_PGA_K_Kp3=0.0027397;

	reaction_PGA_K=compartment_chloroplast*function_23(reaction_PGA_K_Vm, x(8), x(25), x(10), x(26), x(27), global_par_q1, reaction_PGA_K_Ks1, reaction_PGA_K_Ks2, reaction_PGA_K_Kp1, reaction_PGA_K_Kp2, reaction_PGA_K_Kp3);

% Reaction: id = FBP_A, name = Aldolase (FBP)	% Local Parameter:   id =  q, name = q
	reaction_FBP_A_q=1.18815;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBP_A_Ks1=2.7035E-4;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_FBP_A_Ks2=3.6393E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBP_A_Kp1=2.0129E-5;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBP_A_Vm=0.022727;

	reaction_FBP_A=compartment_chloroplast*function_24(x(10), x(11), x(12), reaction_FBP_A_q, reaction_FBP_A_Ks1, reaction_FBP_A_Ks2, reaction_FBP_A_Kp1, reaction_FBP_A_Vm);

% Reaction: id = FBPase, name = FBPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPase_Vm=0.011364;
	% Local Parameter:   id =  q, name = q
	reaction_FBPase_q=0.77294;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBPase_Ks1=3.2842E-5;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBPase_Kp1=6.3429E-5;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_FBPase_Kp2=0.0017914;

	reaction_FBPase=compartment_chloroplast*function_25(reaction_FBPase_Vm, x(12), x(14), x(27), reaction_FBPase_q, reaction_FBPase_Ks1, reaction_FBPase_Kp1, reaction_FBPase_Kp2);

% Reaction: id = F6P_TK, name = Transketolase (F6P)	% Local Parameter:   id =  Vm, name = Vm
	reaction_F6P_TK_Vm=0.170455;
	% Local Parameter:   id =  q, name = q
	reaction_F6P_TK_q=0.99943;
	% Local Parameter:   id =  K1, name = K1
	reaction_F6P_TK_K1=6.1349E-4;
	% Local Parameter:   id =  K2, name = K2
	reaction_F6P_TK_K2=1.1438E-4;
	% Local Parameter:   id =  K1s2, name = K1s2
	reaction_F6P_TK_K1s2=2.7035E-4;
	% Local Parameter:   id =  K2s1, name = K2s1
	reaction_F6P_TK_K2s1=5.407E-4;
	% Local Parameter:   id =  K2r1, name = K2r1
	reaction_F6P_TK_K2r1=1.7677E-4;
	% Local Parameter:   id =  K2s2, name = K2s2
	reaction_F6P_TK_K2s2=9.0464E-5;

	reaction_F6P_TK=compartment_chloroplast*Transketolase(reaction_F6P_TK_Vm, reaction_F6P_TK_q, x(14), x(10), x(17), x(21), reaction_F6P_TK_K1, reaction_F6P_TK_K2, reaction_F6P_TK_K1s2, reaction_F6P_TK_K2s1, x(19), reaction_F6P_TK_K2r1, reaction_F6P_TK_K2s2, x(22));

% Reaction: id = SBP_A, name = Aldolase (SBP)	% Local Parameter:   id =  q, name = q
	reaction_SBP_A_q=1.18815;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SBP_A_Ks1=1.7677E-4;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_SBP_A_Ks2=3.6393E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_SBP_A_Kp1=2.0129E-5;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_SBP_A_Vm=0.011364;

	reaction_SBP_A=compartment_chloroplast*function_24(x(17), x(11), x(18), reaction_SBP_A_q, reaction_SBP_A_Ks1, reaction_SBP_A_Ks2, reaction_SBP_A_Kp1, reaction_SBP_A_Vm);

% Reaction: id = SBPase, name = SBPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SBPase_Vm=0.00568182;
	% Local Parameter:   id =  q, name = q
	reaction_SBPase_q=0.77294;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SBPase_Ks1=1.2713E-5;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_SBPase_Kp1=1.5597E-5;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_SBPase_Kp2=0.006744;

	reaction_SBPase=compartment_chloroplast*function_26(reaction_SBPase_Vm, x(18), x(19), x(27), reaction_SBPase_q, reaction_SBPase_Ks1, reaction_SBPase_Kp1, reaction_SBPase_Kp2);

% Reaction: id = S7P_TK, name = Transketolase (S7P)	% Local Parameter:   id =  Vm, name = Vm
	reaction_S7P_TK_Vm=0.0821023;
	% Local Parameter:   id =  q, name = q
	reaction_S7P_TK_q=0.99996;
	% Local Parameter:   id =  K1, name = K1
	reaction_S7P_TK_K1=6.1349E-4;
	% Local Parameter:   id =  K2, name = K2
	reaction_S7P_TK_K2=1.1438E-4;
	% Local Parameter:   id =  K1s2, name = K1s2
	reaction_S7P_TK_K1s2=2.7035E-4;
	% Local Parameter:   id =  K2s1, name = K2s1
	reaction_S7P_TK_K2s1=1.7677E-4;
	% Local Parameter:   id =  K2r1, name = K2r1
	reaction_S7P_TK_K2r1=5.407E-4;
	% Local Parameter:   id =  K2s2, name = K2s2
	reaction_S7P_TK_K2s2=9.0464E-5;

	reaction_S7P_TK=compartment_chloroplast*Transketolase(reaction_S7P_TK_Vm, reaction_S7P_TK_q, x(19), x(10), x(22), x(21), reaction_S7P_TK_K1, reaction_S7P_TK_K2, reaction_S7P_TK_K1s2, reaction_S7P_TK_K2s1, x(14), reaction_S7P_TK_K2r1, reaction_S7P_TK_K2s2, x(17));

% Reaction: id = Ru5P_K, name = Ru5P kinase	% Local Parameter:   id =  q, name = q
	reaction_Ru5P_K_q=1.05289;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_Ru5P_K_Ks1=3.63934E-5;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_Ru5P_K_Ks2=5.5117E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_Ru5P_K_Kp1=9.95868E-5;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_Ru5P_K_Kp2=9.11825E-5;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_Ru5P_K_Vm=0.568182;

	reaction_Ru5P_K=compartment_chloroplast*function_27(x(23), x(25), x(1), x(26), reaction_Ru5P_K_q, reaction_Ru5P_K_Ks1, reaction_Ru5P_K_Ks2, reaction_Ru5P_K_Kp1, reaction_Ru5P_K_Kp2, reaction_Ru5P_K_Vm);

% Reaction: id = ATP_S, name = ATP synthase	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_ATP_S_Ks1=3.1808E-4;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_ATP_S_Ks2=3.1612E-4;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_ATP_S_Vm=0.0284091;

	reaction_ATP_S=compartment_chloroplast*function_24(x(26), x(27), x(25), global_par_q12, reaction_ATP_S_Ks1, reaction_ATP_S_Ks2, global_par_Kp12, reaction_ATP_S_Vm);

% Reaction: id = AGPase, name = AGPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_AGPase_Vm=0.00113636;
	% Local Parameter:   id =  q, name = q
	reaction_AGPase_q=0.11059;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_AGPase_Ks1=0.0010398;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_AGPase_Ks2=1.1023E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_AGPase_Kp1=5.3013E-4;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_AGPase_Kp2=0.01951;

	reaction_AGPase=compartment_chloroplast*function_28(reaction_AGPase_Vm, x(8), x(27), x(16), x(25), x(24), const_species_PiPi, reaction_AGPase_q, reaction_AGPase_Ks1, reaction_AGPase_Ks2, reaction_AGPase_Kp1, reaction_AGPase_Kp2);

% Reaction: id = StS, name = Starch synthase	% Local Parameter:   id =  Vm, name = Vm
	reaction_StS_Vm=0.00284091;
	% Local Parameter:   id =  q, name = q
	reaction_StS_q=1.00326;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_StS_Ks1=2.12052E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_StS_Kp1=6.36157E-4;

	reaction_StS=compartment_chloroplast*function_29(reaction_StS_Vm, x(24), x(26), reaction_StS_q, reaction_StS_Ks1, reaction_StS_Kp1);

% Reaction: id = TPT_TP, name = TPT (TP)	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_TP_Vm=0.0568182;
	% Local Parameter:   id =  Ks, name = Ks
	reaction_TPT_TP_Ks=9.3583E-5;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_TPT_TP_Kr1=8.9213E-4;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_TPT_TP_Kr2=9.8597E-5;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_TPT_TP_Kp=9.6372E-5;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_TPT_TP_Kr3=5.4107E-4;
	% Local Parameter:   id =  Kr4, name = Kr4
	reaction_TPT_TP_Kr4=9.4837E-5;

	reaction_TPT_TP=TPTout(reaction_TPT_TP_Vm, x(9), reaction_TPT_TP_Ks, x(8), reaction_TPT_TP_Kr1, x(27), reaction_TPT_TP_Kr2, x(30), reaction_TPT_TP_Kp, x(29), reaction_TPT_TP_Kr3, x(42), reaction_TPT_TP_Kr4);

% Reaction: id = TPT_PGA, name = TPT (PGA)	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_PGA_Vm=0.0568182;
	% Local Parameter:   id =  Ks, name = Ks
	reaction_TPT_PGA_Ks=8.9213E-4;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_TPT_PGA_Kr1=9.3583E-5;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_TPT_PGA_Kr2=9.8597E-5;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_TPT_PGA_Kp=5.4107E-4;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_TPT_PGA_Kr3=9.6372E-5;
	% Local Parameter:   id =  Kr4, name = Kr4
	reaction_TPT_PGA_Kr4=9.4837E-5;

	reaction_TPT_PGA=TPTout(reaction_TPT_PGA_Vm, x(8), reaction_TPT_PGA_Ks, x(9), reaction_TPT_PGA_Kr1, x(27), reaction_TPT_PGA_Kr2, x(29), reaction_TPT_PGA_Kp, x(30), reaction_TPT_PGA_Kr3, x(42), reaction_TPT_PGA_Kr4);

% Reaction: id = FBPc_A, name = cyt. Aldolase (FBP)	% Local Parameter:   id =  q, name = q
	reaction_FBPc_A_q=1.00224;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBPc_A_Ks1=2.78407E-4;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_FBPc_A_Ks2=3.74778E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBPc_A_Kp1=2.10226E-5;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPc_A_Vm=0.00568182;

	reaction_FBPc_A=compartment_cytosol*function_24(x(31), x(32), x(33), reaction_FBPc_A_q, reaction_FBPc_A_Ks1, reaction_FBPc_A_Ks2, reaction_FBPc_A_Kp1, reaction_FBPc_A_Vm);

% Reaction: id = FBPcase, name = cyt. FBPase	% Local Parameter:   id =  Vm, name = Vm
	reaction_FBPcase_Vm=0.00113636;
	% Local Parameter:   id =  q, name = q
	reaction_FBPcase_q=0.792367;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_FBPcase_Ks1=2.2129E-5;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_FBPcase_Kr1=1.1065E-6;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_FBPcase_Kp1=6.5319E-5;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_FBPcase_Kp2=0.0018624;

	reaction_FBPcase=compartment_cytosol*function_30(reaction_FBPcase_Vm, x(33), x(36), x(42), reaction_FBPcase_q, reaction_FBPcase_Ks1, x(34), reaction_FBPcase_Kr1, reaction_FBPcase_Kp1, reaction_FBPcase_Kp2);

% Reaction: id = UGPase, name = UGPase	% Local Parameter:   id =  q, name = q
	reaction_UGPase_q=1.6219;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_UGPase_Ks1=3.2124E-5;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_UGPase_Ks2=2.364E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_UGPase_Kp1=1.4393E-4;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_UGPase_Kp2=0.0013192;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_UGPase_Vm=0.00410568;

	reaction_UGPase=compartment_cytosol*function_27(x(38), const_species_UTPc, x(39), const_species_PiPic, reaction_UGPase_q, reaction_UGPase_Ks1, reaction_UGPase_Ks2, reaction_UGPase_Kp1, reaction_UGPase_Kp2, reaction_UGPase_Vm);

% Reaction: id = SucPc_S, name = Sucrose synthase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SucPc_S_Vm=7.38636E-5;
	% Local Parameter:   id =  q, name = q
	reaction_SucPc_S_q=1.00012;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SucPc_S_Ks1=2.78407E-4;
	% Local Parameter:   id =  Kr11, name = Kr11
	reaction_SucPc_S_Kr11=0.00920241;
	% Local Parameter:   id =  Ks2, name = Ks2
	reaction_SucPc_S_Ks2=1.10717E-4;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_SucPc_S_Kp1=6.42157E-4;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_SucPc_S_Kp2=3.74778E-4;
	% Local Parameter:   id =  Kr12, name = Kr12
	reaction_SucPc_S_Kr12=0.00164329;

	reaction_SucPc_S=compartment_cytosol*function_31(reaction_SucPc_S_Vm, x(36), x(39), const_species_UDPc, x(41), const_species_Hc, reaction_SucPc_S_q, reaction_SucPc_S_Ks1, x(42), reaction_SucPc_S_Kr11, reaction_SucPc_S_Ks2, reaction_SucPc_S_Kp1, reaction_SucPc_S_Kp2, reaction_SucPc_S_Kr12);

% Reaction: id = SucPc_P, name = Sucrose phosphatase	% Local Parameter:   id =  Vm, name = Vm
	reaction_SucPc_P_Vm=0.0010267;
	% Local Parameter:   id =  q, name = q
	reaction_SucPc_P_q=1.35286;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_SucPc_P_Ks1=5.354E-5;
	% Local Parameter:   id =  Kp1, name = Kp1
	reaction_SucPc_P_Kp1=0.01;
	% Local Parameter:   id =  Kp2, name = Kp2
	reaction_SucPc_P_Kp2=0.002191;

	reaction_SucPc_P=compartment_cytosol*function_25(reaction_SucPc_P_Vm, x(41), const_species_Succ, x(42), reaction_SucPc_P_q, reaction_SucPc_P_Ks1, reaction_SucPc_P_Kp1, reaction_SucPc_P_Kp2);

% Reaction: id = F6Pc_K, name = F6Pc kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_F6Pc_K_Vm=1.02614E-7;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_F6Pc_K_Ks1=0.001;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_F6Pc_K_Kr1=0.001;
	% Local Parameter:   id =  Kr2, name = Kr2
	reaction_F6Pc_K_Kr2=0.0015;

	reaction_F6Pc_K=compartment_cytosol*function_32(reaction_F6Pc_K_Vm, x(36), reaction_F6Pc_K_Ks1, x(42), reaction_F6Pc_K_Kr1, x(30), x(29), reaction_F6Pc_K_Kr2);

% Reaction: id = F26BPc_P, name = F26BPc phosphatase	% Local Parameter:   id =  Vm, name = Vm
	reaction_F26BPc_P_Vm=2.05284E-10;
	% Local Parameter:   id =  Ks1, name = Ks1
	reaction_F26BPc_P_Ks1=1.0E-9;
	% Local Parameter:   id =  Kr1, name = Kr1
	reaction_F26BPc_P_Kr1=0.002;
	% Local Parameter:   id =  Kr3, name = Kr3
	reaction_F26BPc_P_Kr3=0.001;
	% Local Parameter:   id =  Kr4, name = Kr4
	reaction_F26BPc_P_Kr4=1.0E-4;

	reaction_F26BPc_P=compartment_cytosol*function_33(reaction_F26BPc_P_Vm, x(34), reaction_F26BPc_P_Ks1, x(30), x(29), reaction_F26BPc_P_Kr1, x(42), reaction_F26BPc_P_Kr3, x(35), reaction_F26BPc_P_Kr4);

% Species:   id = PiPi, name = PiPi, constant	const_species_PiPi=1.0E-6;

% Species:   id = H, name = H, constant	const_species_H=0.0891250931577478;

% Species:   id = O2, name = O2, constant	const_species_O2=2.6E-4;

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=2.1E-4;

% Species:   id = NADP, name = NADP, constant	const_species_NADP=2.9E-4;

% Species:   id = UTPc, name = UTPc, constant	const_species_UTPc=3.6E-4;

% Species:   id = UDPc, name = UDPc, constant	const_species_UDPc=6.4E-4;

% Species:   id = ATPc, name = ATPc, constant	const_species_ATPc=3.6E-4;

% Species:   id = Succ, name = Succ, constant	const_species_Succ=0.0;

% Species:   id = PiPic, name = PiPic, constant	const_species_PiPic=4.0E-5;

% Species:   id = Hc, name = Hc, constant	const_species_Hc=0.158489318357816;

	xdot=zeros(42,1);
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO_1) + ( 1.0 * reaction_Ru5P_K));
	
% Species:   id = E, name = E, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = ER, name = ER, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_1) + (-1.0 * reaction_RuBisCO_2_CO2) + (-1.0 * reaction_RuBisCO_6_O2));
	
% Species:   id = EPP, name = EPP, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_2_CO2) + (-1.0 * reaction_RuBisCO_4));
	
% Species:   id = EPG, name = EPG, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_6_O2) + (-1.0 * reaction_RuBisCO_7));
	
% Species:   id = EP, name = EP, affected by kineticLaw
	xdot(6) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_4) + (-1.0 * reaction_RuBisCO_5_EP) + ( 1.0 * reaction_RuBisCO_7));
	
% Species:   id = EOP, name = EOP, affected by kineticLaw
	xdot(7) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO_5_EOP));
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(8) = (1/(compartment_chloroplast))*(( 1.0 * reaction_RuBisCO_4) + ( 1.0 * reaction_RuBisCO_5_EP) + ( 0.5 * reaction_RuBisCO_6_O2) + (-1.0 * reaction_PGA_K) + (-1.0 * reaction_TPT_PGA));
	
% Species:   id = TP, name = TP, affected by kineticLaw
	xdot(9) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_K) + (-2.0 * reaction_FBP_A) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_SBP_A) + (-1.0 * reaction_S7P_TK) + (-1.0 * reaction_TPT_TP));
	
% Species:   id = GAP, name = GAP, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = DHAP, name = DHAP, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(12) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBP_A) + (-1.0 * reaction_FBPase));
	
% Species:   id = HeP, name = HeP, affected by kineticLaw
	xdot(13) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBPase) + (-1.0 * reaction_F6P_TK) + (-1.0 * reaction_AGPase));
	
% Species:   id = F6P, name = F6P, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = G6P, name = G6P, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = G1P, name = G1P, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(17) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + (-1.0 * reaction_SBP_A));
	
% Species:   id = SBP, name = SBP, affected by kineticLaw
	xdot(18) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBP_A) + (-1.0 * reaction_SBPase));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(19) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBPase) + (-1.0 * reaction_S7P_TK));
	
% Species:   id = PeP, name = PeP, affected by kineticLaw
	xdot(20) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK) + ( 2.0 * reaction_S7P_TK) + (-1.0 * reaction_Ru5P_K));
	
% Species:   id = X5P, name = X5P, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = R5P, name = R5P, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = Ru5P, name = Ru5P, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = ADPG, name = ADPG, affected by kineticLaw
	xdot(24) = (1/(compartment_chloroplast))*(( 1.0 * reaction_AGPase) + (-1.0 * reaction_StS));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(25) = (1/(compartment_chloroplast))*((-0.5 * reaction_RuBisCO_6_O2) + (-1.0 * reaction_PGA_K) + (-1.0 * reaction_Ru5P_K) + ( 1.0 * reaction_ATP_S) + (-1.0 * reaction_AGPase));
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = Pi, name = Pi, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = CO2, name = CO2, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = PGAc, name = PGAc, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol))*(( 1.0 * reaction_TPT_PGA));
	
% Species:   id = TPc, name = TPc, affected by kineticLaw
	xdot(30) = (1/(compartment_cytosol))*(( 1.0 * reaction_TPT_TP) + (-2.0 * reaction_FBPc_A));
	
% Species:   id = GAPc, name = GAPc, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = DHAPc, name = DHAPc, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = FBPc, name = FBPc, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol))*(( 1.0 * reaction_FBPc_A) + (-1.0 * reaction_FBPcase));
	
% Species:   id = F26BPc, name = F26BPc, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol))*(( 1.0 * reaction_F6Pc_K) + (-1.0 * reaction_F26BPc_P));
	
% Species:   id = HePc, name = HePc, affected by kineticLaw
	xdot(35) = (1/(compartment_cytosol))*(( 1.0 * reaction_FBPcase) + (-1.0 * reaction_UGPase) + (-1.0 * reaction_SucPc_S) + (-1.0 * reaction_F6Pc_K) + ( 1.0 * reaction_F26BPc_P));
	
% Species:   id = F6Pc, name = F6Pc, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = G6Pc, name = G6Pc, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = G1Pc, name = G1Pc, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = UDPGc, name = UDPGc, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol))*(( 1.0 * reaction_UGPase) + (-1.0 * reaction_SucPc_S));
	
% Species:   id = ADPc, name = ADPc, involved in a rule 	xdot(40) = x(40);
	
% Species:   id = SucPc, name = SucPc, affected by kineticLaw
	xdot(41) = (1/(compartment_cytosol))*(( 1.0 * reaction_SucPc_S) + (-1.0 * reaction_SucPc_P));
	
% Species:   id = Pic, name = Pic, involved in a rule 	xdot(42) = x(42);
end

function z=function_34(v), z=(v);end

function z=function_30(Vm,s1,p1,p2,q,Ks1,r1,Kr1,Kp1,Kp2), z=(Vm*s1*(s1-p1*p2/q)/((Ks1*(1+r1/Kr1))^2*((s1/(Ks1*(1+r1/Kr1)))^2+(1+p1/Kp1)*(1+p2/Kp2))));end

function z=TPTout(Vm,s,Ks,r1,Kr1,r2,Kr2,p,Kp,r3,Kr3,r4,Kr4), z=(Vm/(s/Ks+r1/Kr1+r2/Kr2+p/Kp+r3/Kr3+r4/Kr4+(s/Ks+r1/Kr1+r2/Kr2)*(p/Kp+r3/Kr3+r4/Kr4))*(s*(p/Kp+r3/Kr3+r4/Kr4)/Ks-p*(s/Ks+r1/Kr1+r2/Kr2)/Kp));end

function z=function_29(Vm,s1,p1,q,Ks1,Kp1), z=(Vm*(s1-p1/q)/(Ks1*(1+s1/Ks1+p1/Kp1)));end

function z=function_32(Vm,s1,Ks1,r1,Kr1,r2,r3,Kr2), z=(Vm*s1/Ks1*(1+r1/Kr1)/(1+(r2+r3)/Kr2));end

function z=function_27(s1,s2,p1,p2,q,Ks1,Ks2,Kp1,Kp2,Vm), z=(Vm*(s1*s2-p1*p2/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+(1+p1/Kp1)*(1+p2/Kp2)-1)));end

function z=function_28(Vm,r1,r2,s1,s2,p1,p2,q,Ks1,Ks2,Kp1,Kp2), z=(Vm*(r1/r2)^2*(s1*s2-p1*p2/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+(1+p1/Kp1)*(1+p2/Kp2)-1)));end

function z=function_23(Vm,s1,s2,p1,p2,p3,q,Ks1,Ks2,Kp1,Kp2,Kp3), z=(Vm*(s1*s2-p1*p2*p3/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+p1/Kp1+p2/Kp2+p3/Kp3+p1*p2*p3/(Kp1*Kp2*Kp3))));end

function z=function_33(Vm,s1,Ks1,r1,r2,Kr1,r3,Kr3,r4,Kr4), z=(Vm*s1/Ks1*(1+(r1+r2)/Kr1)/(1+r3/Kr3+r4/Kr4));end

function z=function_31(Vm,s1,s2,p1,p2,p3,q,Ks1,r1,Kr11,Ks2,Kp1,Kp2,Kr12), z=(Vm*s1*(s1*s2-p1*p2*p3/q)/((Ks1*(1+r1/Kr11))^2*Ks2*((1+(s1/(Ks1*(1+r1/Kr11)))^2)*(1+s2/Ks2)+(1+p1/Kp1)*(1+p2/Kp2)-1+r1/Kr12)));end

function z=function_25(Vm,s1,p1,p2,q,Ks1,Kp1,Kp2), z=(Vm*(s1-p1*p2/q)/(Ks1*(1+s1/Ks1+p1/Kp1+p1*p2/(Kp1*Kp2))));end

function z=Transketolase(Vm,q,s1,s2,p1,p2,K1,K2,K1s2,K2s1,r1,K2r1,K2s2,r2), z=(Vm*(q*s1*s2-p1*p2)/(K1*K2*(1+(1+s2/K1s2)*(s1/K2s1+r1/K2r1)+s2/K2s2+1/K2*(p2*(1+p1*r2/K1)+p1+r2))));end

function z=function_24(s1,s2,p1,q,Ks1,Ks2,Kp1,Vm), z=(Vm*(s1*s2-p1/q)/(Ks1*Ks2*((1+s1/Ks1)*(1+s2/Ks2)+p1/Kp1)));end

function z=function_26(Vm,s1,p1,p2,q,Ks1,Kp1,Kp2), z=(Vm*(s1-p1*p2/q)/(Ks1*(s1/Ks1+(1+p1/Kp1)*(1+p2/Kp2))));end

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


