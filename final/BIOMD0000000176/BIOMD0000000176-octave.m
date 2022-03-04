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
% Model name = Conant2007_WGD_glycolysis_2A3AB
%
% is http://identifiers.org/biomodels.db/MODEL2427095802
% is http://identifiers.org/biomodels.db/BIOMD0000000176
% isDescribedBy http://identifiers.org/pubmed/17667951
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 0.097652231064563;
	x0(2) = 2.52512746499271;
	x0(3) = 2.67504014044787;
	x0(4) = 1.28198768168719;
	x0(5) = 0.624976405532373;
	x0(6) = 6.22132076069411;
	x0(7) = 0.02;
	x0(8) = 0.292884853320091;
	x0(9) = 1.00415254899644;
	x0(10) = 0.0451809175780963;
	x0(11) = 1.50329030201531;
	x0(12) = 7.36873499865602E-4;
	x0(13) = 0.0867096979846952;
	x0(14) = 0.885688538360659;
	x0(15) = 0.127695817386632;
	x0(16) = 0.0632352144936527;
	x0(17) = 1.81531251192736;
	x0(18) = 0.178140579850657;
	x0(19) = 50.0;
	x0(20) = 1.0;
	x0(21) = 50.0;
	x0(22) = 0.15;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;


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

% Compartment: id = cyto, name = cytoplasm, constant
	compartment_cyto=1.0;
% Parameter:   id =  WGD_E, name = WGD enzyme conc change
	global_par_WGD_E=1.0;
% Parameter:   id =  fV_HXT, name = fV_HXT
	global_par_fV_HXT=1.0;
% Parameter:   id =  fV_HXK, name = fV_HXK
	global_par_fV_HXK=1.0;
% Parameter:   id =  fV_TDH, name = fV_TDH
	global_par_fV_TDH=1.0;
% Parameter:   id =  fV_ENO, name = fV_ENO
	global_par_fV_ENO=1.0;
% Parameter:   id =  fV_PFK, name = fV_PFK
	global_par_fV_PFK=1.0;
% Parameter:   id =  fV_FBA, name = fV_FBA
	global_par_fV_FBA=1.0;
% Parameter:   id =  fV_PYK, name = fV_PYK
	global_par_fV_PYK=1.0;
% Parameter:   id =  fV_PGK, name = fV_PGK
	global_par_fV_PGK=1.0;
% Parameter:   id =  fV_GPM, name = fV_GPM
	global_par_fV_GPM=1.0;
% Parameter:   id =  fV_PGI, name = fV_PGI
	global_par_fV_PGI=1.0;

% Reaction: id = HXT, name = HXT	% Local Parameter:   id =  Vmax_1, name = Vmax_1
	reaction_HXT_Vmax_1=97.24;
	% Local Parameter:   id =  Kglc_1, name = Kglc_1
	reaction_HXT_Kglc_1=1.1918;
	% Local Parameter:   id =  Ki_1, name = Ki_1
	reaction_HXT_Ki_1=0.91;

	reaction_HXT=reaction_HXT_Vmax_1*global_par_fV_HXT*global_par_WGD_E*(x(19)-x(1))/reaction_HXT_Kglc_1/(1+(x(19)+x(1))/reaction_HXT_Kglc_1+reaction_HXT_Ki_1*x(19)*x(1)/reaction_HXT_Kglc_1^2);

% Reaction: id = HXK, name = HXK	% Local Parameter:   id =  Vmax_2, name = Vmax_2
	reaction_HXK_Vmax_2=236.7;
	% Local Parameter:   id =  Kglc_2, name = Kglc_2
	reaction_HXK_Kglc_2=0.08;
	% Local Parameter:   id =  Katp_2, name = Katp_2
	reaction_HXK_Katp_2=0.15;
	% Local Parameter:   id =  Keq_2, name = Keq_2
	reaction_HXK_Keq_2=2000.0;
	% Local Parameter:   id =  Kg6p_2, name = Kg6p_2
	reaction_HXK_Kg6p_2=30.0;
	% Local Parameter:   id =  Kadp_2, name = Kadp_2
	reaction_HXK_Kadp_2=0.23;

	reaction_HXK=compartment_cyto*global_par_WGD_E*global_par_fV_HXK*reaction_HXK_Vmax_2*(x(1)*x(2)/(reaction_HXK_Kglc_2*reaction_HXK_Katp_2)-x(3)*x(4)/(reaction_HXK_Kglc_2*reaction_HXK_Katp_2*reaction_HXK_Keq_2))/((1+x(1)/reaction_HXK_Kglc_2+x(3)/reaction_HXK_Kg6p_2)*(1+x(2)/reaction_HXK_Katp_2+x(4)/reaction_HXK_Kadp_2));

% Reaction: id = PGI, name = PGI	% Local Parameter:   id =  Vmax_3, name = Vmax_3
	reaction_PGI_Vmax_3=1056.0;
	% Local Parameter:   id =  Kg6p_3, name = Kg6p_3
	reaction_PGI_Kg6p_3=1.4;
	% Local Parameter:   id =  Keq_3, name = Keq_3
	reaction_PGI_Keq_3=0.29;
	% Local Parameter:   id =  Kf6p_3, name = Kf6p_3
	reaction_PGI_Kf6p_3=0.3;

	reaction_PGI=compartment_cyto*reaction_PGI_Vmax_3*global_par_fV_PGI*global_par_WGD_E*(x(3)/reaction_PGI_Kg6p_3-x(5)/(reaction_PGI_Kg6p_3*reaction_PGI_Keq_3))/(1+x(3)/reaction_PGI_Kg6p_3+x(5)/reaction_PGI_Kf6p_3);

% Reaction: id = PFK, name = PFK	% Local Parameter:   id =  Vmax_4, name = Vmax_4
	reaction_PFK_Vmax_4=110.0;
	% Local Parameter:   id =  gR_4, name = gR_4
	reaction_PFK_gR_4=5.12;
	% Local Parameter:   id =  Kf6p_4, name = Kf6p_4
	reaction_PFK_Kf6p_4=0.1;
	% Local Parameter:   id =  Katp_4, name = Katp_4
	reaction_PFK_Katp_4=0.71;
	% Local Parameter:   id =  L0_4, name = L0_4
	reaction_PFK_L0_4=0.66;
	% Local Parameter:   id =  Ciatp_4, name = Ciatp_4
	reaction_PFK_Ciatp_4=100.0;
	% Local Parameter:   id =  Kiatp_4, name = Kiatp_4
	reaction_PFK_Kiatp_4=0.65;
	% Local Parameter:   id =  Camp_4, name = Camp_4
	reaction_PFK_Camp_4=0.0845;
	% Local Parameter:   id =  Kamp_4, name = Kamp_4
	reaction_PFK_Kamp_4=0.0995;
	% Local Parameter:   id =  Cf26_4, name = Cf26_4
	reaction_PFK_Cf26_4=0.0174;
	% Local Parameter:   id =  Kf26_4, name = Kf26_4
	reaction_PFK_Kf26_4=6.82E-4;
	% Local Parameter:   id =  Cf16_4, name = Cf16_4
	reaction_PFK_Cf16_4=0.397;
	% Local Parameter:   id =  Kf16_4, name = Kf16_4
	reaction_PFK_Kf16_4=0.111;
	% Local Parameter:   id =  Catp_4, name = Catp_4
	reaction_PFK_Catp_4=3.0;

	reaction_PFK=compartment_cyto*reaction_PFK_Vmax_4*global_par_fV_PFK*global_par_WGD_E*reaction_PFK_gR_4*x(5)/reaction_PFK_Kf6p_4*x(2)/reaction_PFK_Katp_4*(1+x(5)/reaction_PFK_Kf6p_4+x(2)/reaction_PFK_Katp_4+reaction_PFK_gR_4*x(5)/reaction_PFK_Kf6p_4*x(2)/reaction_PFK_Katp_4)/((1+x(5)/reaction_PFK_Kf6p_4+x(2)/reaction_PFK_Katp_4+reaction_PFK_gR_4*x(5)/reaction_PFK_Kf6p_4*x(2)/reaction_PFK_Katp_4)^2+reaction_PFK_L0_4*((1+reaction_PFK_Ciatp_4*x(2)/reaction_PFK_Kiatp_4)/(1+x(2)/reaction_PFK_Kiatp_4))^2*((1+reaction_PFK_Camp_4*x(8)/reaction_PFK_Kamp_4)/(1+x(8)/reaction_PFK_Kamp_4))^2*((1+reaction_PFK_Cf26_4*x(7)/reaction_PFK_Kf26_4+reaction_PFK_Cf16_4*x(6)/reaction_PFK_Kf16_4)/(1+x(7)/reaction_PFK_Kf26_4+x(6)/reaction_PFK_Kf16_4))^2*(1+reaction_PFK_Catp_4*x(2)/reaction_PFK_Katp_4)^2);

% Reaction: id = FBA, name = FBA	% Local Parameter:   id =  Vmax_5, name = Vmax_5
	reaction_FBA_Vmax_5=94.69;
	% Local Parameter:   id =  Kf16bp_5, name = Kf16bp_5
	reaction_FBA_Kf16bp_5=0.3;
	% Local Parameter:   id =  Keq_5, name = Keq_5
	reaction_FBA_Keq_5=0.069;
	% Local Parameter:   id =  Kdhap_5, name = Kdhap_5
	reaction_FBA_Kdhap_5=2.0;
	% Local Parameter:   id =  Kgap_5, name = Kgap_5
	reaction_FBA_Kgap_5=2.4;
	% Local Parameter:   id =  Kigap_5, name = Kigap_5
	reaction_FBA_Kigap_5=10.0;

	reaction_FBA=compartment_cyto*reaction_FBA_Vmax_5*global_par_fV_FBA*global_par_WGD_E*(x(6)/reaction_FBA_Kf16bp_5-x(9)*x(10)/(reaction_FBA_Kf16bp_5*reaction_FBA_Keq_5))/(1+x(6)/reaction_FBA_Kf16bp_5+x(9)/reaction_FBA_Kdhap_5+x(10)/reaction_FBA_Kgap_5+x(6)*x(10)/(reaction_FBA_Kf16bp_5*reaction_FBA_Kigap_5)+x(9)*x(10)/(reaction_FBA_Kdhap_5*reaction_FBA_Kgap_5));

% Reaction: id = TPI, name = TPI	% Local Parameter:   id =  k1_6, name = k1_6
	reaction_TPI_k1_6=450000.0;
	% Local Parameter:   id =  k2_6, name = k2_6
	reaction_TPI_k2_6=1.0E7;

	reaction_TPI=compartment_cyto*(reaction_TPI_k1_6*x(9)-reaction_TPI_k2_6*x(10));

% Reaction: id = TDH, name = TDH	% Local Parameter:   id =  C_7, name = C_7
	reaction_TDH_C_7=1.0;
	% Local Parameter:   id =  Vmaxf_7, name = Vmaxf_7
	reaction_TDH_Vmaxf_7=1152.0;
	% Local Parameter:   id =  Kgap_7, name = Kgap_7
	reaction_TDH_Kgap_7=0.21;
	% Local Parameter:   id =  Knad_7, name = Knad_7
	reaction_TDH_Knad_7=0.09;
	% Local Parameter:   id =  Vmaxr_7, name = Vmaxr_7
	reaction_TDH_Vmaxr_7=6719.0;
	% Local Parameter:   id =  Kbpg_7, name = Kbpg_7
	reaction_TDH_Kbpg_7=0.0098;
	% Local Parameter:   id =  Knadh_7, name = Knadh_7
	reaction_TDH_Knadh_7=0.06;

	reaction_TDH=compartment_cyto*reaction_TDH_C_7*(reaction_TDH_Vmaxf_7*global_par_fV_TDH*global_par_WGD_E*x(10)*x(11)/(reaction_TDH_Kgap_7*reaction_TDH_Knad_7)-reaction_TDH_Vmaxr_7*global_par_fV_TDH*global_par_WGD_E*x(12)*x(13)/(reaction_TDH_Kbpg_7*reaction_TDH_Knadh_7))/((1+x(10)/reaction_TDH_Kgap_7+x(12)/reaction_TDH_Kbpg_7)*(1+x(11)/reaction_TDH_Knad_7+x(13)/reaction_TDH_Knadh_7));

% Reaction: id = PGK, name = PGK	% Local Parameter:   id =  Vmax_8, name = Vmax_8
	reaction_PGK_Vmax_8=1288.0;
	% Local Parameter:   id =  Keq_8, name = Keq_8
	reaction_PGK_Keq_8=3200.0;
	% Local Parameter:   id =  Kp3g_8, name = Kp3g_8
	reaction_PGK_Kp3g_8=0.53;
	% Local Parameter:   id =  Katp_8, name = Katp_8
	reaction_PGK_Katp_8=0.3;
	% Local Parameter:   id =  Kbpg_8, name = Kbpg_8
	reaction_PGK_Kbpg_8=0.003;
	% Local Parameter:   id =  Kadp_8, name = Kadp_8
	reaction_PGK_Kadp_8=0.2;

	reaction_PGK=compartment_cyto*global_par_fV_PGK*reaction_PGK_Vmax_8*global_par_WGD_E*(reaction_PGK_Keq_8*x(12)*x(4)-x(14)*x(2))/(reaction_PGK_Kp3g_8*reaction_PGK_Katp_8)/((1+x(12)/reaction_PGK_Kbpg_8+x(14)/reaction_PGK_Kp3g_8)*(1+x(4)/reaction_PGK_Kadp_8+x(2)/reaction_PGK_Katp_8));

% Reaction: id = GPM, name = GPM	% Local Parameter:   id =  Vmax_9, name = Vmax_9
	reaction_GPM_Vmax_9=2585.0;
	% Local Parameter:   id =  Kp3g_9, name = Kp3g_9
	reaction_GPM_Kp3g_9=1.2;
	% Local Parameter:   id =  Keq_9, name = Keq_9
	reaction_GPM_Keq_9=0.19;
	% Local Parameter:   id =  Kp2g_9, name = Kp2g_9
	reaction_GPM_Kp2g_9=0.08;

	reaction_GPM=compartment_cyto*reaction_GPM_Vmax_9*global_par_fV_GPM*global_par_WGD_E*(x(14)/reaction_GPM_Kp3g_9-x(15)/(reaction_GPM_Kp3g_9*reaction_GPM_Keq_9))/(1+x(14)/reaction_GPM_Kp3g_9+x(15)/reaction_GPM_Kp2g_9);

% Reaction: id = ENO, name = ENO	% Local Parameter:   id =  Vmax_10, name = Vmax_10
	reaction_ENO_Vmax_10=201.6;
	% Local Parameter:   id =  Kp2g_10, name = Kp2g_10
	reaction_ENO_Kp2g_10=0.04;
	% Local Parameter:   id =  Keq_10, name = Keq_10
	reaction_ENO_Keq_10=6.7;
	% Local Parameter:   id =  Kpep_10, name = Kpep_10
	reaction_ENO_Kpep_10=0.5;

	reaction_ENO=compartment_cyto*reaction_ENO_Vmax_10*global_par_fV_ENO*global_par_WGD_E*(x(15)/reaction_ENO_Kp2g_10-x(16)/(reaction_ENO_Kp2g_10*reaction_ENO_Keq_10))/(1+x(15)/reaction_ENO_Kp2g_10+x(16)/reaction_ENO_Kpep_10);

% Reaction: id = PYK, name = PYK	% Local Parameter:   id =  Vmax_11, name = Vmax_11
	reaction_PYK_Vmax_11=1000.0;
	% Local Parameter:   id =  Kpep_11, name = Kpep_11
	reaction_PYK_Kpep_11=0.14;
	% Local Parameter:   id =  Kadp_11, name = Kadp_11
	reaction_PYK_Kadp_11=0.53;
	% Local Parameter:   id =  Keq_11, name = Keq_11
	reaction_PYK_Keq_11=6500.0;
	% Local Parameter:   id =  Kpyr_11, name = Kpyr_11
	reaction_PYK_Kpyr_11=21.0;
	% Local Parameter:   id =  Katp_11, name = Katp_11
	reaction_PYK_Katp_11=1.5;

	reaction_PYK=compartment_cyto*reaction_PYK_Vmax_11*global_par_fV_PYK*global_par_WGD_E*(x(16)*x(4)/(reaction_PYK_Kpep_11*reaction_PYK_Kadp_11)-x(17)*x(2)/(reaction_PYK_Kpep_11*reaction_PYK_Kadp_11*reaction_PYK_Keq_11))/((1+x(16)/reaction_PYK_Kpep_11+x(17)/reaction_PYK_Kpyr_11)*(1+x(4)/reaction_PYK_Kadp_11+x(2)/reaction_PYK_Katp_11));

% Reaction: id = PDC, name = PDC	% Local Parameter:   id =  Vmax_12, name = Vmax_12
	reaction_PDC_Vmax_12=857.8;
	% Local Parameter:   id =  Kpyr_12, name = Kpyr_12
	reaction_PDC_Kpyr_12=4.33;
	% Local Parameter:   id =  nH_12, name = nH_12
	reaction_PDC_nH_12=1.9;

	reaction_PDC=compartment_cyto*reaction_PDC_Vmax_12*global_par_WGD_E*(x(17)/reaction_PDC_Kpyr_12)^reaction_PDC_nH_12/(1+(x(17)/reaction_PDC_Kpyr_12)^reaction_PDC_nH_12);

% Reaction: id = ADH, name = ADH	% Local Parameter:   id =  Vmax_13, name = Vmax_13
	reaction_ADH_Vmax_13=209.5;
	% Local Parameter:   id =  Ketoh_13, name = Ketoh_13
	reaction_ADH_Ketoh_13=17.0;
	% Local Parameter:   id =  Kinad_13, name = Kinad_13
	reaction_ADH_Kinad_13=0.92;
	% Local Parameter:   id =  Keq_13, name = Keq_13
	reaction_ADH_Keq_13=6.9E-5;
	% Local Parameter:   id =  Knad_13, name = Knad_13
	reaction_ADH_Knad_13=0.17;
	% Local Parameter:   id =  Knadh_13, name = Knadh_13
	reaction_ADH_Knadh_13=0.11;
	% Local Parameter:   id =  Kinadh_13, name = Kinadh_13
	reaction_ADH_Kinadh_13=0.031;
	% Local Parameter:   id =  Kacald_13, name = Kacald_13
	reaction_ADH_Kacald_13=1.11;
	% Local Parameter:   id =  Kiacald_13, name = Kiacald_13
	reaction_ADH_Kiacald_13=1.1;
	% Local Parameter:   id =  Kietoh_13, name = Kietoh_13
	reaction_ADH_Kietoh_13=90.0;

	reaction_ADH=compartment_cyto*reaction_ADH_Vmax_13*global_par_WGD_E*(x(21)*x(11)/(reaction_ADH_Ketoh_13*reaction_ADH_Kinad_13)-x(18)*x(13)/(reaction_ADH_Ketoh_13*reaction_ADH_Kinad_13*reaction_ADH_Keq_13))/(1+x(11)/reaction_ADH_Kinad_13+x(21)*reaction_ADH_Knad_13/(reaction_ADH_Kinad_13*reaction_ADH_Ketoh_13)+x(18)*reaction_ADH_Knadh_13/(reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13)+x(13)/reaction_ADH_Kinadh_13+x(21)*x(11)/(reaction_ADH_Kinad_13*reaction_ADH_Ketoh_13)+x(11)*x(18)*reaction_ADH_Knadh_13/(reaction_ADH_Kinad_13*reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13)+x(21)*x(13)*reaction_ADH_Knad_13/(reaction_ADH_Kinad_13*reaction_ADH_Kinadh_13*reaction_ADH_Ketoh_13)+x(18)*x(13)/(reaction_ADH_Kacald_13*reaction_ADH_Kinadh_13)+x(21)*x(11)*x(18)/(reaction_ADH_Kinad_13*reaction_ADH_Kiacald_13*reaction_ADH_Ketoh_13)+x(21)*x(18)*x(13)/(reaction_ADH_Kietoh_13*reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13));

% Reaction: id = ATPase	% Local Parameter:   id =  Katpase_14, name = Katpase_14
	reaction_ATPase_Katpase_14=39.5;

	reaction_ATPase=compartment_cyto*reaction_ATPase_Katpase_14*x(2);

% Reaction: id = AK, name = adenylate kinase	% Local Parameter:   id =  k1_15, name = k1_15
	reaction_AK_k1_15=45.0;
	% Local Parameter:   id =  k2_15, name = k2_15
	reaction_AK_k2_15=100.0;

	reaction_AK=compartment_cyto*(reaction_AK_k1_15*x(4)*x(4)-reaction_AK_k2_15*x(2)*x(8));

% Reaction: id = G3PDH, name = G3PDH	% Local Parameter:   id =  Vmax_16, name = Vmax_16
	reaction_G3PDH_Vmax_16=47.11;
	% Local Parameter:   id =  Kdhap_16, name = Kdhap_16
	reaction_G3PDH_Kdhap_16=0.4;
	% Local Parameter:   id =  Knadh_16, name = Knadh_16
	reaction_G3PDH_Knadh_16=0.023;
	% Local Parameter:   id =  Keq_16, name = Keq_16
	reaction_G3PDH_Keq_16=4300.0;
	% Local Parameter:   id =  Kglycerol_16, name = Kglycerol_16
	reaction_G3PDH_Kglycerol_16=1.0;
	% Local Parameter:   id =  Knad_16, name = Knad_16
	reaction_G3PDH_Knad_16=0.93;

	reaction_G3PDH=compartment_cyto*reaction_G3PDH_Vmax_16*global_par_WGD_E*(x(9)/reaction_G3PDH_Kdhap_16*x(13)/reaction_G3PDH_Knadh_16-x(22)/reaction_G3PDH_Kdhap_16*x(11)/reaction_G3PDH_Knadh_16*1/reaction_G3PDH_Keq_16)/((1+x(9)/reaction_G3PDH_Kdhap_16+x(22)/reaction_G3PDH_Kglycerol_16)*(1+x(13)/reaction_G3PDH_Knadh_16+x(11)/reaction_G3PDH_Knad_16));

% Reaction: id = glycogen_branch, name = glycogenbranch	% Local Parameter:   id =  KGLYCOGEN_17, name = KGLYCOGEN_17
	reaction_glycogen_branch_KGLYCOGEN_17=6.0;

	reaction_glycogen_branch=compartment_cyto*reaction_glycogen_branch_KGLYCOGEN_17;

% Reaction: id = trehalose_synth, name = trehalose_synthesis	% Local Parameter:   id =  Ktrehalose_18, name = Ktrehalose_18
	reaction_trehalose_synth_Ktrehalose_18=2.4;

	reaction_trehalose_synth=compartment_cyto*reaction_trehalose_synth_Ktrehalose_18;

% Reaction: id = succinate_syn, name = succinate_synthesis	% Local Parameter:   id =  k_19, name = k_19
	reaction_succinate_syn_k_19=21.4;

	reaction_succinate_syn=compartment_cyto*reaction_succinate_syn_k_19*x(18);

	xdot=zeros(25,1);
	
% Species:   id = GLCi, name = GLCi, affected by kineticLaw
	xdot(1) = (1/(compartment_cyto))*(( 1.0 * reaction_HXT) + (-1.0 * reaction_HXK));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_cyto))*((-1.0 * reaction_HXK) + (-1.0 * reaction_PFK) + ( 1.0 * reaction_PGK) + ( 1.0 * reaction_PYK) + (-1.0 * reaction_ATPase) + ( 1.0 * reaction_AK) + (-1.0 * reaction_glycogen_branch) + (-1.0 * reaction_trehalose_synth));
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(3) = (1/(compartment_cyto))*(( 1.0 * reaction_HXK) + (-1.0 * reaction_PGI) + (-1.0 * reaction_glycogen_branch) + (-2.0 * reaction_trehalose_synth));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(4) = (1/(compartment_cyto))*(( 1.0 * reaction_HXK) + ( 1.0 * reaction_PFK) + (-1.0 * reaction_PGK) + (-1.0 * reaction_PYK) + ( 1.0 * reaction_ATPase) + (-2.0 * reaction_AK) + ( 1.0 * reaction_glycogen_branch) + ( 1.0 * reaction_trehalose_synth));
	
% Species:   id = F6P, name = F6P, affected by kineticLaw
	xdot(5) = (1/(compartment_cyto))*(( 1.0 * reaction_PGI) + (-1.0 * reaction_PFK));
	
% Species:   id = F16bP, name = F16bP, affected by kineticLaw
	xdot(6) = (1/(compartment_cyto))*(( 1.0 * reaction_PFK) + (-1.0 * reaction_FBA));
	
% Species:   id = F26bP, name = Fru2,6-P2
%WARNING speciesID: F26bP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(8) = (1/(compartment_cyto))*(( 1.0 * reaction_AK));
	
% Species:   id = DHAP, name = DHAP, affected by kineticLaw
	xdot(9) = (1/(compartment_cyto))*(( 1.0 * reaction_FBA) + (-1.0 * reaction_TPI) + (-1.0 * reaction_G3PDH));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(10) = (1/(compartment_cyto))*(( 1.0 * reaction_FBA) + ( 1.0 * reaction_TPI) + (-1.0 * reaction_TDH));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(11) = (1/(compartment_cyto))*((-1.0 * reaction_TDH) + (-1.0 * reaction_ADH) + ( 1.0 * reaction_G3PDH) + (-3.0 * reaction_succinate_syn));
	
% Species:   id = BPG, name = BPG, affected by kineticLaw
	xdot(12) = (1/(compartment_cyto))*(( 1.0 * reaction_TDH) + (-1.0 * reaction_PGK));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(13) = (1/(compartment_cyto))*(( 1.0 * reaction_TDH) + ( 1.0 * reaction_ADH) + (-1.0 * reaction_G3PDH) + ( 3.0 * reaction_succinate_syn));
	
% Species:   id = P3G, name = P3G, affected by kineticLaw
	xdot(14) = (1/(compartment_cyto))*(( 1.0 * reaction_PGK) + (-1.0 * reaction_GPM));
	
% Species:   id = P2G, name = P2G, affected by kineticLaw
	xdot(15) = (1/(compartment_cyto))*(( 1.0 * reaction_GPM) + (-1.0 * reaction_ENO));
	
% Species:   id = PEP, name = PEP, affected by kineticLaw
	xdot(16) = (1/(compartment_cyto))*(( 1.0 * reaction_ENO) + (-1.0 * reaction_PYK));
	
% Species:   id = PYR, name = PYR, affected by kineticLaw
	xdot(17) = (1/(compartment_cyto))*(( 1.0 * reaction_PYK) + (-1.0 * reaction_PDC));
	
% Species:   id = AcAld, name = AcAld, affected by kineticLaw
	xdot(18) = (1/(compartment_cyto))*(( 1.0 * reaction_PDC) + ( 1.0 * reaction_ADH) + (-2.0 * reaction_succinate_syn));
	
% Species:   id = GLCo, name = GLCo
%WARNING speciesID: GLCo, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = CO2, name = CO2
%WARNING speciesID: CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = EtOH, name = EtOH
%WARNING speciesID: EtOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = Glycerol, name = Glycerol
%WARNING speciesID: Glycerol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = Glycogen, name = Glycogen
%WARNING speciesID: Glycogen, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = Trehalose, name = Trehalose
%WARNING speciesID: Trehalose, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = Succinate, name = Succinate
%WARNING speciesID: Succinate, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
end

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


