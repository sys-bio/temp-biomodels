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
% Model name = Pritchard2002_glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL8293171637
% is http://identifiers.org/biomodels.db/BIOMD0000000172
% isDescribedBy http://identifiers.org/pubmed/12180966
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000064
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 2.0;
	x0(2) = 0.097652231064563;
	x0(3) = 2.52512746499271;
	x0(4) = 2.67504014044787;
	x0(5) = 1.28198768168719;
	x0(6) = 0.624976405532373;
	x0(7) = 6.22132076069411;
	x0(8) = 0.292884853320091;
	x0(9) = 0.02;
	x0(10) = 1.00415254899644;
	x0(11) = 0.0451809175780963;
	x0(12) = 1.50329030201531;
	x0(13) = 7.36873499865602E-4;
	x0(14) = 0.0867096979846952;
	x0(15) = 0.885688538360659;
	x0(16) = 0.127695817386632;
	x0(17) = 0.0632352144936527;
	x0(18) = 1.81531251192736;
	x0(19) = 0.178140579850657;
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

% Compartment: id = cell, name = cytosol, constant
	compartment_cell=1.0;
% Compartment: id = ext, name = exterior, constant
	compartment_ext=1.0;

% Reaction: id = HXT, name = glucose transport	% Local Parameter:   id =  Vmax_1, name = Vmax_1
	reaction_HXT_Vmax_1=97.24;
	% Local Parameter:   id =  Kglc_1, name = Kglc_1
	reaction_HXT_Kglc_1=1.1918;
	% Local Parameter:   id =  Ki_1, name = Ki_1
	reaction_HXT_Ki_1=0.91;

	reaction_HXT=reaction_HXT_Vmax_1*(x(1)-x(2))/reaction_HXT_Kglc_1/(1+(x(1)+x(2))/reaction_HXT_Kglc_1+reaction_HXT_Ki_1*x(1)*x(2)/reaction_HXT_Kglc_1^2);

% Reaction: id = HK, name = hexokinase	% Local Parameter:   id =  Vmax_2, name = Vmax_2
	reaction_HK_Vmax_2=236.7;
	% Local Parameter:   id =  Kglc_2, name = Kglc_2
	reaction_HK_Kglc_2=0.08;
	% Local Parameter:   id =  Katp_2, name = Katp_2
	reaction_HK_Katp_2=0.15;
	% Local Parameter:   id =  Keq_2, name = Keq_2
	reaction_HK_Keq_2=2000.0;
	% Local Parameter:   id =  Kg6p_2, name = Kg6p_2
	reaction_HK_Kg6p_2=30.0;
	% Local Parameter:   id =  Kadp_2, name = Kadp_2
	reaction_HK_Kadp_2=0.23;

	reaction_HK=compartment_cell*reaction_HK_Vmax_2*(x(2)*x(3)/(reaction_HK_Kglc_2*reaction_HK_Katp_2)-x(4)*x(5)/(reaction_HK_Kglc_2*reaction_HK_Katp_2*reaction_HK_Keq_2))/((1+x(2)/reaction_HK_Kglc_2+x(4)/reaction_HK_Kg6p_2)*(1+x(3)/reaction_HK_Katp_2+x(5)/reaction_HK_Kadp_2));

% Reaction: id = PGI, name = phosphoglucose isomerase	% Local Parameter:   id =  Vmax_3, name = Vmax_3
	reaction_PGI_Vmax_3=1056.0;
	% Local Parameter:   id =  Kg6p_3, name = Kg6p_3
	reaction_PGI_Kg6p_3=1.4;
	% Local Parameter:   id =  Keq_3, name = Keq_3
	reaction_PGI_Keq_3=0.29;
	% Local Parameter:   id =  Kf6p_3, name = Kf6p_3
	reaction_PGI_Kf6p_3=0.3;

	reaction_PGI=compartment_cell*reaction_PGI_Vmax_3*(x(4)/reaction_PGI_Kg6p_3-x(6)/(reaction_PGI_Kg6p_3*reaction_PGI_Keq_3))/(1+x(4)/reaction_PGI_Kg6p_3+x(6)/reaction_PGI_Kf6p_3);

% Reaction: id = PFK, name = phosphofructosekinase	% Local Parameter:   id =  Vmax_4, name = Vmax_4
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

	reaction_PFK=compartment_cell*reaction_PFK_Vmax_4*reaction_PFK_gR_4*x(6)/reaction_PFK_Kf6p_4*x(3)/reaction_PFK_Katp_4*(1+x(6)/reaction_PFK_Kf6p_4+x(3)/reaction_PFK_Katp_4+reaction_PFK_gR_4*x(6)/reaction_PFK_Kf6p_4*x(3)/reaction_PFK_Katp_4)/((1+x(6)/reaction_PFK_Kf6p_4+x(3)/reaction_PFK_Katp_4+reaction_PFK_gR_4*x(6)/reaction_PFK_Kf6p_4*x(3)/reaction_PFK_Katp_4)^2+reaction_PFK_L0_4*((1+reaction_PFK_Ciatp_4*x(3)/reaction_PFK_Kiatp_4)/(1+x(3)/reaction_PFK_Kiatp_4))^2*((1+reaction_PFK_Camp_4*x(8)/reaction_PFK_Kamp_4)/(1+x(8)/reaction_PFK_Kamp_4))^2*((1+reaction_PFK_Cf26_4*x(9)/reaction_PFK_Kf26_4+reaction_PFK_Cf16_4*x(7)/reaction_PFK_Kf16_4)/(1+x(9)/reaction_PFK_Kf26_4+x(7)/reaction_PFK_Kf16_4))^2*(1+reaction_PFK_Catp_4*x(3)/reaction_PFK_Katp_4)^2);

% Reaction: id = ALD, name = fructosebisphosphate aldolase	% Local Parameter:   id =  Vmax_5, name = Vmax_5
	reaction_ALD_Vmax_5=94.69;
	% Local Parameter:   id =  Kf16bp_5, name = Kf16bp_5
	reaction_ALD_Kf16bp_5=0.3;
	% Local Parameter:   id =  Keq_5, name = Keq_5
	reaction_ALD_Keq_5=0.069;
	% Local Parameter:   id =  Kdhap_5, name = Kdhap_5
	reaction_ALD_Kdhap_5=2.0;
	% Local Parameter:   id =  Kgap_5, name = Kgap_5
	reaction_ALD_Kgap_5=2.4;
	% Local Parameter:   id =  Kigap_5, name = Kigap_5
	reaction_ALD_Kigap_5=10.0;

	reaction_ALD=compartment_cell*reaction_ALD_Vmax_5*(x(7)/reaction_ALD_Kf16bp_5-x(10)*x(11)/(reaction_ALD_Kf16bp_5*reaction_ALD_Keq_5))/(1+x(7)/reaction_ALD_Kf16bp_5+x(10)/reaction_ALD_Kdhap_5+x(11)/reaction_ALD_Kgap_5+x(7)*x(11)/(reaction_ALD_Kf16bp_5*reaction_ALD_Kigap_5)+x(10)*x(11)/(reaction_ALD_Kdhap_5*reaction_ALD_Kgap_5));

% Reaction: id = TPI, name = triosephosphate isomerase	% Local Parameter:   id =  k1_6, name = k1_6
	reaction_TPI_k1_6=450000.0;
	% Local Parameter:   id =  k2_6, name = k2_6
	reaction_TPI_k2_6=1.0E7;

	reaction_TPI=compartment_cell*(reaction_TPI_k1_6*x(10)-reaction_TPI_k2_6*x(11));

% Reaction: id = GAPDH, name = glyceraldehyde phosphate dehydrogenase	% Local Parameter:   id =  C_7, name = C_7
	reaction_GAPDH_C_7=1.0;
	% Local Parameter:   id =  Vmaxf_7, name = Vmaxf_7
	reaction_GAPDH_Vmaxf_7=1152.0;
	% Local Parameter:   id =  Kgap_7, name = Kgap_7
	reaction_GAPDH_Kgap_7=0.21;
	% Local Parameter:   id =  Knad_7, name = Knad_7
	reaction_GAPDH_Knad_7=0.09;
	% Local Parameter:   id =  Vmaxr_7, name = Vmaxr_7
	reaction_GAPDH_Vmaxr_7=6719.0;
	% Local Parameter:   id =  Kbpg_7, name = Kbpg_7
	reaction_GAPDH_Kbpg_7=0.0098;
	% Local Parameter:   id =  Knadh_7, name = Knadh_7
	reaction_GAPDH_Knadh_7=0.06;

	reaction_GAPDH=compartment_cell*reaction_GAPDH_C_7*(reaction_GAPDH_Vmaxf_7*x(11)*x(12)/(reaction_GAPDH_Kgap_7*reaction_GAPDH_Knad_7)-reaction_GAPDH_Vmaxr_7*x(13)*x(14)/(reaction_GAPDH_Kbpg_7*reaction_GAPDH_Knadh_7))/((1+x(11)/reaction_GAPDH_Kgap_7+x(13)/reaction_GAPDH_Kbpg_7)*(1+x(12)/reaction_GAPDH_Knad_7+x(14)/reaction_GAPDH_Knadh_7));

% Reaction: id = PGK, name = 3-phosphoglycerate kinase	% Local Parameter:   id =  Vmax_8, name = Vmax_8
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

	reaction_PGK=compartment_cell*reaction_PGK_Vmax_8*(reaction_PGK_Keq_8*x(13)*x(5)-x(15)*x(3))/(reaction_PGK_Kp3g_8*reaction_PGK_Katp_8)/((1+x(13)/reaction_PGK_Kbpg_8+x(15)/reaction_PGK_Kp3g_8)*(1+x(5)/reaction_PGK_Kadp_8+x(3)/reaction_PGK_Katp_8));

% Reaction: id = PGM, name = phosphoglyceromutase	% Local Parameter:   id =  Vmax_9, name = Vmax_9
	reaction_PGM_Vmax_9=2585.0;
	% Local Parameter:   id =  Kp3g_9, name = Kp3g_9
	reaction_PGM_Kp3g_9=1.2;
	% Local Parameter:   id =  Keq_9, name = Keq_9
	reaction_PGM_Keq_9=0.19;
	% Local Parameter:   id =  Kp2g_9, name = Kp2g_9
	reaction_PGM_Kp2g_9=0.08;

	reaction_PGM=compartment_cell*reaction_PGM_Vmax_9*(x(15)/reaction_PGM_Kp3g_9-x(16)/(reaction_PGM_Kp3g_9*reaction_PGM_Keq_9))/(1+x(15)/reaction_PGM_Kp3g_9+x(16)/reaction_PGM_Kp2g_9);

% Reaction: id = ENO, name = enolase	% Local Parameter:   id =  Vmax_10, name = Vmax_10
	reaction_ENO_Vmax_10=201.6;
	% Local Parameter:   id =  Kp2g_10, name = Kp2g_10
	reaction_ENO_Kp2g_10=0.04;
	% Local Parameter:   id =  Keq_10, name = Keq_10
	reaction_ENO_Keq_10=6.7;
	% Local Parameter:   id =  Kpep_10, name = Kpep_10
	reaction_ENO_Kpep_10=0.5;

	reaction_ENO=compartment_cell*reaction_ENO_Vmax_10*(x(16)/reaction_ENO_Kp2g_10-x(17)/(reaction_ENO_Kp2g_10*reaction_ENO_Keq_10))/(1+x(16)/reaction_ENO_Kp2g_10+x(17)/reaction_ENO_Kpep_10);

% Reaction: id = PYK, name = pyruvate kinase	% Local Parameter:   id =  Vmax_11, name = Vmax_11
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

	reaction_PYK=compartment_cell*reaction_PYK_Vmax_11*(x(17)*x(5)/(reaction_PYK_Kpep_11*reaction_PYK_Kadp_11)-x(18)*x(3)/(reaction_PYK_Kpep_11*reaction_PYK_Kadp_11*reaction_PYK_Keq_11))/((1+x(17)/reaction_PYK_Kpep_11+x(18)/reaction_PYK_Kpyr_11)*(1+x(5)/reaction_PYK_Kadp_11+x(3)/reaction_PYK_Katp_11));

% Reaction: id = PDC, name = pyruvate decarboxylase	% Local Parameter:   id =  Vmax_12, name = Vmax_12
	reaction_PDC_Vmax_12=857.8;
	% Local Parameter:   id =  Kpyr_12, name = Kpyr_12
	reaction_PDC_Kpyr_12=4.33;
	% Local Parameter:   id =  nH_12, name = nH_12
	reaction_PDC_nH_12=1.9;

	reaction_PDC=compartment_cell*reaction_PDC_Vmax_12*(x(18)/reaction_PDC_Kpyr_12)^reaction_PDC_nH_12/(1+(x(18)/reaction_PDC_Kpyr_12)^reaction_PDC_nH_12);

% Reaction: id = ADH, name = alcohol dehydrogenase	% Local Parameter:   id =  Vmax_13, name = Vmax_13
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

	reaction_ADH=compartment_cell*reaction_ADH_Vmax_13*(x(21)*x(12)/(reaction_ADH_Ketoh_13*reaction_ADH_Kinad_13)-x(19)*x(14)/(reaction_ADH_Ketoh_13*reaction_ADH_Kinad_13*reaction_ADH_Keq_13))/(1+x(12)/reaction_ADH_Kinad_13+x(21)*reaction_ADH_Knad_13/(reaction_ADH_Kinad_13*reaction_ADH_Ketoh_13)+x(19)*reaction_ADH_Knadh_13/(reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13)+x(14)/reaction_ADH_Kinadh_13+x(21)*x(12)/(reaction_ADH_Kinad_13*reaction_ADH_Ketoh_13)+x(12)*x(19)*reaction_ADH_Knadh_13/(reaction_ADH_Kinad_13*reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13)+x(21)*x(14)*reaction_ADH_Knad_13/(reaction_ADH_Kinad_13*reaction_ADH_Kinadh_13*reaction_ADH_Ketoh_13)+x(19)*x(14)/(reaction_ADH_Kacald_13*reaction_ADH_Kinadh_13)+x(21)*x(12)*x(19)/(reaction_ADH_Kinad_13*reaction_ADH_Kiacald_13*reaction_ADH_Ketoh_13)+x(21)*x(19)*x(14)/(reaction_ADH_Kietoh_13*reaction_ADH_Kinadh_13*reaction_ADH_Kacald_13));

% Reaction: id = ATPase	% Local Parameter:   id =  Katpase_14, name = Katpase_14
	reaction_ATPase_Katpase_14=39.5;

	reaction_ATPase=compartment_cell*reaction_ATPase_Katpase_14*x(3);

% Reaction: id = AK	% Local Parameter:   id =  k1_15, name = k1_15
	reaction_AK_k1_15=45.0;
	% Local Parameter:   id =  k2_15, name = k2_15
	reaction_AK_k2_15=100.0;

	reaction_AK=compartment_cell*(reaction_AK_k1_15*x(5)*x(5)-reaction_AK_k2_15*x(3)*x(8));

% Reaction: id = G3PDH, name = glycerol-3-phosphate dehydrogenase	% Local Parameter:   id =  Vmax_16, name = Vmax_16
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

	reaction_G3PDH=compartment_cell*reaction_G3PDH_Vmax_16*(x(10)/reaction_G3PDH_Kdhap_16*x(14)/reaction_G3PDH_Knadh_16-x(22)/reaction_G3PDH_Kdhap_16*x(12)/reaction_G3PDH_Knadh_16*1/reaction_G3PDH_Keq_16)/((1+x(10)/reaction_G3PDH_Kdhap_16+x(22)/reaction_G3PDH_Kglycerol_16)*(1+x(14)/reaction_G3PDH_Knadh_16+x(12)/reaction_G3PDH_Knad_16));

% Reaction: id = Glycogen_Branch, name = Glycogen_Branch	% Local Parameter:   id =  KGLYCOGEN_17, name = KGLYCOGEN_17
	reaction_Glycogen_Branch_KGLYCOGEN_17=6.0;

	reaction_Glycogen_Branch=compartment_cell*reaction_Glycogen_Branch_KGLYCOGEN_17;

% Reaction: id = Trehalose_Branch, name = Trehalose_Branch	% Local Parameter:   id =  Ktrehalose_18, name = Ktrehalose_18
	reaction_Trehalose_Branch_Ktrehalose_18=2.4;

	reaction_Trehalose_Branch=compartment_cell*reaction_Trehalose_Branch_Ktrehalose_18;

% Reaction: id = Succinate_Branch, name = Succinate_Branch	% Local Parameter:   id =  k_19, name = k_19
	reaction_Succinate_Branch_k_19=21.4;

	reaction_Succinate_Branch=compartment_cell*reaction_Succinate_Branch_k_19*x(19);

	xdot=zeros(25,1);
	
% Species:   id = GLCo, name = Glc(ext)
%WARNING speciesID: GLCo, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = GLCi, name = Glc(int), affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_HXT) + (-1.0 * reaction_HK));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_HK) + (-1.0 * reaction_PFK) + ( 1.0 * reaction_PGK) + ( 1.0 * reaction_PYK) + (-1.0 * reaction_ATPase) + ( 1.0 * reaction_AK) + (-1.0 * reaction_Glycogen_Branch) + (-1.0 * reaction_Trehalose_Branch));
	
% Species:   id = G6P, name = Glu6P, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_HK) + (-1.0 * reaction_PGI) + (-1.0 * reaction_Glycogen_Branch) + (-2.0 * reaction_Trehalose_Branch));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_HK) + ( 1.0 * reaction_PFK) + (-1.0 * reaction_PGK) + (-1.0 * reaction_PYK) + ( 1.0 * reaction_ATPase) + (-2.0 * reaction_AK) + ( 1.0 * reaction_Glycogen_Branch) + ( 1.0 * reaction_Trehalose_Branch));
	
% Species:   id = F6P, name = Fru6-P, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_PGI) + (-1.0 * reaction_PFK));
	
% Species:   id = F16bP, name = Fru1,6-P2, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_PFK) + (-1.0 * reaction_ALD));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_AK));
	
% Species:   id = F26bP, name = Fru2,6-P2
%WARNING speciesID: F26bP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = DHAP, name = glycerone phosphate, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_ALD) + (-1.0 * reaction_TPI) + (-1.0 * reaction_G3PDH));
	
% Species:   id = GAP, name = Gra3P, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_ALD) + ( 1.0 * reaction_TPI) + (-1.0 * reaction_GAPDH));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_GAPDH) + (-1.0 * reaction_ADH) + ( 1.0 * reaction_G3PDH) + (-3.0 * reaction_Succinate_Branch));
	
% Species:   id = BPG, name = Gri2,3P2, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_GAPDH) + (-1.0 * reaction_PGK));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_GAPDH) + ( 1.0 * reaction_ADH) + (-1.0 * reaction_G3PDH) + ( 3.0 * reaction_Succinate_Branch));
	
% Species:   id = P3G, name = Gri3P, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_PGK) + (-1.0 * reaction_PGM));
	
% Species:   id = P2G, name = Gri2P, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_PGM) + (-1.0 * reaction_ENO));
	
% Species:   id = PEP, name = phosphoenolpyruvate, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_ENO) + (-1.0 * reaction_PYK));
	
% Species:   id = PYR, name = pyruvate, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_PYK) + (-1.0 * reaction_PDC));
	
% Species:   id = AcAld, name = acetaldehyde, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_PDC) + ( 1.0 * reaction_ADH) + (-2.0 * reaction_Succinate_Branch));
	
% Species:   id = CO2, name = CO2
%WARNING speciesID: CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = EtOH, name = ethanol
%WARNING speciesID: EtOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = Glycerol, name = glycerol
%WARNING speciesID: Glycerol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = Glycogen, name = glycogen
%WARNING speciesID: Glycogen, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = Trehalose, name = trehalose
%WARNING speciesID: Trehalose, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = Succinate, name = succinate
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


