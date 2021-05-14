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
% Model name = Theinmozhi2018 - Mechanism of PD1 inhibiting TCR signaling in Tumor immune regulation
%
% is http://identifiers.org/biomodels.db/MODEL1812040008
% is http://identifiers.org/biomodels.db/BIOMD0000000724
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 25.0;
	x0(2) = 25.0;
	x0(3) = 25.0;
	x0(4) = 25.0;
	x0(5) = 0.0;
	x0(6) = 100.0;
	x0(7) = 50.0;
	x0(8) = 500.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 300.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 250.0;
	x0(17) = 500.0;
	x0(18) = 0.0;
	x0(19) = 250.0;
	x0(20) = 0.0;
	x0(21) = 50.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 300.0;
	x0(25) = 0.0;
	x0(26) = 500.0;
	x0(27) = 300.0;
	x0(28) = 0.0;
	x0(29) = 300.0;
	x0(30) = 300.0;
	x0(31) = 300.0;
	x0(32) = 300.0;
	x0(33) = 0.0;
	x0(34) = 300.0;
	x0(35) = 300.0;
	x0(36) = 50.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 50.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Kdpa_yiya, name = Kdpa,yiya
% Parameter:   id =  Kdpi_yi, name = Kdpi,yi
% Parameter:   id =  Kdpi_yiya, name = Kdpi,yiya
% Parameter:   id =  Kdpa_ya, name = Kdpa,ya
% Parameter:   id =  Kdpa_pi, name = Kdpa,pi
% Parameter:   id =  Kpi_i, name = Kpi,i
	global_par_Kpi_i=6.0E-7;
% Parameter:   id =  Kpi_ya, name = Kpi,ya
	global_par_Kpi_ya=6.0E-5;
% Parameter:   id =  Kpa_i, name = Kpa,i
	global_par_Kpa_i=1.0E-6;
% Parameter:   id =  Kpa_yi, name = Kpa,yi
	global_par_Kpa_yi=7.5E-4;
% Parameter:   id =  k, name = k
	global_par_k=41.0;
% Parameter:   id =  Kp_pd1, name = Kp,pd1
	global_par_Kp_pd1=7.5;
% Parameter:   id =  KMp_pd1, name = KMp,pd1
	global_par_KMp_pd1=1000.0;
% Parameter:   id =  Ka_shp, name = Ka,shp
	global_par_Ka_shp=0.0065;
% Parameter:   id =  Kd1_shp, name = Kd1,shp
	global_par_Kd1_shp=10.0;
% Parameter:   id =  Kd2_shp, name = Kd2,shp
	global_par_Kd2_shp=1.0;
% Parameter:   id =  Kdp_cp2, name = Kdp,cp2
	global_par_Kdp_cp2=5.0E-8;
% Parameter:   id =  Kp_cd28, name = Kp,cd28
	global_par_Kp_cd28=1.0;
% Parameter:   id =  KMp_cd28, name = KMp,cd28
	global_par_KMp_cd28=1000.0;
% Parameter:   id =  Kdp_cd28, name = Kdp,cd28
	global_par_Kdp_cd28=5.0;
% Parameter:   id =  KMdp_cd28, name = KMdp,cd28
	global_par_KMdp_cd28=500.0;
% Parameter:   id =  Ka_pi3k, name = Ka,pi3k
	global_par_Ka_pi3k=1.4E-6;
% Parameter:   id =  Kd_pi3k, name = Kd,pi3k
	global_par_Kd_pi3k=9.0E-4;
% Parameter:   id =  Kp_cd3, name = Kp,cd3
	global_par_Kp_cd3=3.29;
% Parameter:   id =  KMp_cd3, name = KMp,cd3
	global_par_KMp_cd3=80.0;
% Parameter:   id =  Kdp_cd3, name = Kdp,cd3
	global_par_Kdp_cd3=5.0;
% Parameter:   id =  KMdp_cd3, name = KMdp,cd3
	global_par_KMdp_cd3=150.0;
% Parameter:   id =  Ka_zap, name = Ka,zap
	global_par_Ka_zap=7.0E-5;
% Parameter:   id =  Kd_zap, name = Kd,zap
	global_par_Kd_zap=0.001;
% Parameter:   id =  Kp1_zap, name = Kp1,zap
	global_par_Kp1_zap=2.0E-6;
% Parameter:   id =  Kp2_zap, name = Kp2,zap
	global_par_Kp2_zap=3.0E-5;
% Parameter:   id =  Kp_lat, name = Kp,lat
	global_par_Kp_lat=0.001;
% Parameter:   id =  Ka_gads, name = Ka,gads
	global_par_Ka_gads=5.0E-4;
% Parameter:   id =  Kd_gads, name = Kd,gads
	global_par_Kd_gads=1.5;
% Parameter:   id =  Ka_slp, name = Ka,slp
	global_par_Ka_slp=0.015;
% Parameter:   id =  Kd_slp, name = Kd,slp
	global_par_Kd_slp=0.12;
% Parameter:   id =  Kp_slp, name = Kp,slp
	global_par_Kp_slp=0.003;
% Parameter:   id =  perc_SHP2_bound, name = perc_SHP2_bound
% Parameter:   id =  CD3z_phosphorylated, name = CD3z_phosphorylated
% Parameter:   id =  CD28_phosphorylated, name = CD28_phosphorylated
% Parameter:   id =  perc_SHP2_free, name = perc_SHP2_free
% Parameter:   id =  perc_PI3K_free, name = perc_PI3K_free
% Parameter:   id =  perc_ZAP70_free, name = perc_ZAP70_free
% Parameter:   id =  ZAP70_phos_Y315, name = ZAP70_phos_Y315
% Parameter:   id =  ZAP70_phos_Y93, name = ZAP70_phos_Y93
% Parameter:   id =  LCK_phos_Y505, name = LCK_phos_Y505
% Parameter:   id =  LCK_phos_Y394, name = LCK_phos_Y394
% Parameter:   id =  LAT_phosphorylated, name = LAT_phosphorylated
% Parameter:   id =  perc_LCK_active, name = perc_LCK_active
% Parameter:   id =  perc_LCK_inactive, name = perc_LCK_inactive
% Parameter:   id =  LCK_switch, name = LCK_switch
	global_par_LCK_switch=0.0;
% Parameter:   id =  ModelValue_0, name = Initial for LCK_switch
	global_par_ModelValue_0=0.0;
% assignmentRule: variable = SLP76t
	x(35)=x(32)+x(37)+x(33);
% assignmentRule: variable = Kdpa_yiya
	global_par_Kdpa_yiya=2.4E-5*global_par_ModelValue_0;
% assignmentRule: variable = ZAP70t
	x(27)=x(24)+x(23)+x(22)+x(25);
% assignmentRule: variable = CD28t
	x(19)=x(16)+x(15)+x(18);
% assignmentRule: variable = Kdpi_yiya
	global_par_Kdpi_yiya=1.2E-5*global_par_ModelValue_0;
% assignmentRule: variable = LCKactive
	x(7)=x(3)+x(4);
% assignmentRule: variable = LATt
	x(30)=x(29)+x(28)+x(38)+x(33)+x(37);
% assignmentRule: variable = LCKinactive
	x(39)=x(1)+x(2)+x(5);
% assignmentRule: variable = Kdpa_pi
	global_par_Kdpa_pi=1.2E-7*global_par_ModelValue_0;
% assignmentRule: variable = PI3Kt
	x(26)=x(17)+x(18);
% assignmentRule: variable = CD3t
	x(36)=x(21)+x(20)+x(23)+x(22)+x(25);
% assignmentRule: variable = Kdpi_yi
	global_par_Kdpi_yi=2.4E-5*global_par_ModelValue_0;
% assignmentRule: variable = perc_LCK_inactive
	global_par_perc_LCK_inactive=x(39)/(x(1)+x(5)+x(3)+x(2)+x(4))*100;
% assignmentRule: variable = perc_LCK_active
	global_par_perc_LCK_active=x(7)/(x(1)+x(5)+x(3)+x(2)+x(4))*100;
% assignmentRule: variable = LAT_phosphorylated
	global_par_LAT_phosphorylated=x(28)+x(38)+x(33)+x(37);
% assignmentRule: variable = perc_ZAP70_free
	global_par_perc_ZAP70_free=x(24)/(x(24)+x(23)+x(22)+x(25))*100;
% assignmentRule: variable = LCK_phos_Y394
	global_par_LCK_phos_Y394=x(3)+x(4)+x(5);
% assignmentRule: variable = LCK_phos_Y505
	global_par_LCK_phos_Y505=x(2)+x(4)+x(5);
% assignmentRule: variable = ZAP70_phos_Y93
	global_par_ZAP70_phos_Y93=x(25);
% assignmentRule: variable = CD28_phosphorylated
	global_par_CD28_phosphorylated=x(18)+x(15);
% assignmentRule: variable = ZAP70_phos_Y315
	global_par_ZAP70_phos_Y315=x(25)+x(25);
% assignmentRule: variable = LCKt
	x(6)=x(1)+x(3)+x(2)+x(4)+x(5);
% assignmentRule: variable = perc_PI3K_free
	global_par_perc_PI3K_free=x(17)/(x(18)+x(17))*100;
% assignmentRule: variable = CD3z_phosphorylated
	global_par_CD3z_phosphorylated=x(20)+x(23)+x(22)+x(25);
% assignmentRule: variable = GADSt
	x(34)=x(31)+x(38)+x(33)+x(37);
% assignmentRule: variable = Kdpa_ya
	global_par_Kdpa_ya=6E-6*global_par_ModelValue_0;
% assignmentRule: variable = CPactive
	x(14)=x(11)+x(13);
% assignmentRule: variable = perc_SHP2_free
	global_par_perc_SHP2_free=x(12)/(x(12)+x(14))*100;
% assignmentRule: variable = perc_SHP2_bound
	global_par_perc_SHP2_bound=x(14)/(x(12)+x(14))*100;

% Reaction: id = LCK_P_LCKyi_inh, name = LCK_P_LCKyi_inh
	reaction_LCK_P_LCKyi_inh=compartment_Cell*global_par_Kpi_i*x(1);

% Reaction: id = LCK_P_LCKya_act, name = LCK_P_LCKya_act
	reaction_LCK_P_LCKya_act=compartment_Cell*global_par_Kpa_i*x(1);

% Reaction: id = LCKya_P_LCKyiya_act, name = LCKya_P_LCKyiya_act
	reaction_LCKya_P_LCKyiya_act=compartment_Cell*global_par_Kpi_ya*x(3);

% Reaction: id = LCKyi_P_LCKpi_inh, name = LCKyi_P_LCKpi_inh
	reaction_LCKyi_P_LCKpi_inh=compartment_Cell*global_par_Kpa_yi*x(2);

% Reaction: id = LCKyiya_DP_LCKyi, name = LCKyiya_DP_LCKyi
	reaction_LCKyiya_DP_LCKyi=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kdpi_yiya, x(14), x(4));

% Reaction: id = LCKya_DP_LCKi, name = LCKya_DP_LCKi
	reaction_LCKya_DP_LCKi=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kdpa_ya, x(14), x(3));

% Reaction: id = LCKyi_DP_LCKi, name = LCKyi_DP_LCKi
	reaction_LCKyi_DP_LCKi=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kdpi_yi, x(14), x(2));

% Reaction: id = LCKyiya_DP_LCKya, name = LCKyiya_DP_LCKya
	reaction_LCKyiya_DP_LCKya=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kdpi_yiya, x(14), x(4));

% Reaction: id = LCKpi_DP_LCKyi, name = LCKpi_DP_LCKyi
	reaction_LCKpi_DP_LCKyi=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kdpa_pi, x(14), x(5));

% Reaction: id = PD1_P_PD1p1_act, name = PD1_P_PD1p1_act
	reaction_PD1_P_PD1p1_act=compartment_Cell*Equation_for_PD1_activation(global_par_Kp_pd1, x(7), x(8), global_par_KMp_pd1, x(9), x(10), x(6), global_par_k);

% Reaction: id = PD1p1_P_PD1p2_act, name = PD1p1_P_PD1p2_act
	reaction_PD1p1_P_PD1p2_act=compartment_Cell*SMM_Enzyme_based(global_par_Kp_pd1, x(7), x(9), global_par_KMp_pd1);

% Reaction: id = PD1p1_Bd_SHP2, name = PD1p1_Bd_SHP2
	reaction_PD1p1_Bd_SHP2=compartment_Cell*(global_par_Ka_shp*x(9)*x(12)-global_par_Kd1_shp*x(11));

% Reaction: id = PD1p2_Bd_SHP2, name = PD1p2_Bd_SHP2
	reaction_PD1p2_Bd_SHP2=compartment_Cell*(global_par_Ka_shp*x(10)*x(12)-global_par_Kd1_shp*x(13));

% Reaction: id = CP2_Diss_SHP2_PD1p1, name = CP2_Diss_SHP2_PD1p1
	reaction_CP2_Diss_SHP2_PD1p1=compartment_Cell*global_par_Kd2_shp*x(13);

% Reaction: id = CP2_DP_CP1, name = CP2_DP_CP1
	reaction_CP2_DP_CP1=compartment_Cell*global_par_Kdp_cp2*x(13);

% Reaction: id = CP1_Diss_PD1_SHP2, name = CP1_Diss_PD1_SHP2
	reaction_CP1_Diss_PD1_SHP2=compartment_Cell*global_par_Kd2_shp*x(11);

% Reaction: id = CD28i_P_CD28a, name = CD28i_P_CD28a
	reaction_CD28i_P_CD28a=compartment_Cell*SMM_Enzyme_based(global_par_Kp_cd28, x(7), x(16), global_par_KMp_cd28);

% Reaction: id = CD28a_DP_CD28i, name = CD28a_DP_CD28i
	reaction_CD28a_DP_CD28i=compartment_Cell*SMM_Enzyme_based(global_par_Kdp_cd28, x(14), x(15), global_par_KMdp_cd28);

% Reaction: id = CD28a_Bd_PI3K, name = CD28a_Bd_PI3K
	reaction_CD28a_Bd_PI3K=compartment_Cell*(global_par_Ka_pi3k*x(15)*x(17)-global_par_Kd_pi3k*x(18));

% Reaction: id = CD3i_P_CD3a, name = CD3i_P_CD3a
	reaction_CD3i_P_CD3a=compartment_Cell*SMM_Enzyme_based(global_par_Kp_cd3, x(7), x(21), global_par_KMp_cd3);

% Reaction: id = CD3a_DP_CD3i, name = CD3a_DP_CD3i
	reaction_CD3a_DP_CD3i=compartment_Cell*SMM_Enzyme_based(global_par_Kdp_cd3, x(14), x(20), global_par_KMdp_cd3);

% Reaction: id = CD3a_Bd_ZAP70, name = CD3a_Bd_ZAP70
	reaction_CD3a_Bd_ZAP70=compartment_Cell*(global_par_Ka_zap*x(20)*x(24)-global_par_Kd_zap*x(23));

% Reaction: id = ZAP70i_P_ZAP70a1, name = ZAP70i_P_ZAP70a1
	reaction_ZAP70i_P_ZAP70a1=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kp1_zap, x(7), x(23));

% Reaction: id = ZAP70a1_P_ZAP70a2, name = ZAP70a1_P_ZAP70a2
	reaction_ZAP70a1_P_ZAP70a2=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kp2_zap, x(7), x(22));

% Reaction: id = LATi_P_LATa, name = LATi_P_LATa
	reaction_LATi_P_LATa=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kp_lat, x(25), x(29));

% Reaction: id = LATa_Bd_GADS, name = LATa_Bd_GADS
	reaction_LATa_Bd_GADS=compartment_Cell*(global_par_Ka_gads*x(28)*x(31)-global_par_Kd_gads*x(38));

% Reaction: id = GADSa_Bd_SLP76, name = GADSa_Bd_SLP76
	reaction_GADSa_Bd_SLP76=compartment_Cell*(global_par_Ka_slp*x(38)*x(32)-global_par_Kd_slp*x(33));

% Reaction: id = SLP76i_P_SLC76a, name = SLP76i_P_SLC76a
	reaction_SLP76i_P_SLC76a=compartment_Cell*Equation_for_Enzymatic_Dephosphorylation(global_par_Kp_slp, x(25), x(33));

	xdot=zeros(39,1);
	
% Species:   id = LCKi, name = LCKi, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_LCK_P_LCKyi_inh) + (-1.0 * reaction_LCK_P_LCKya_act) + ( 1.0 * reaction_LCKya_DP_LCKi) + ( 1.0 * reaction_LCKyi_DP_LCKi));
	
% Species:   id = LCKyi, name = LCKyi, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_LCK_P_LCKyi_inh) + (-1.0 * reaction_LCKyi_P_LCKpi_inh) + ( 1.0 * reaction_LCKyiya_DP_LCKyi) + (-1.0 * reaction_LCKyi_DP_LCKi) + ( 1.0 * reaction_LCKpi_DP_LCKyi));
	
% Species:   id = LCKya, name = LCKya, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_LCK_P_LCKya_act) + (-1.0 * reaction_LCKya_P_LCKyiya_act) + (-1.0 * reaction_LCKya_DP_LCKi) + ( 1.0 * reaction_LCKyiya_DP_LCKya));
	
% Species:   id = LCKyiya, name = LCKyiya, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_LCKya_P_LCKyiya_act) + (-1.0 * reaction_LCKyiya_DP_LCKyi) + (-1.0 * reaction_LCKyiya_DP_LCKya));
	
% Species:   id = LCKpi, name = LCKpi, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_LCKyi_P_LCKpi_inh) + (-1.0 * reaction_LCKpi_DP_LCKyi));
	
% Species:   id = LCKt, name = LCKt, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = LCKactive, name = LCKactive, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = PD1, name = PD1, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*((-1.0 * reaction_PD1_P_PD1p1_act) + ( 1.0 * reaction_CP1_Diss_PD1_SHP2));
	
% Species:   id = PD1p1, name = PD1p1, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_PD1_P_PD1p1_act) + (-1.0 * reaction_PD1p1_P_PD1p2_act) + (-1.0 * reaction_PD1p1_Bd_SHP2) + ( 1.0 * reaction_CP2_Diss_SHP2_PD1p1));
	
% Species:   id = PD1p2, name = PD1p2, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_PD1p1_P_PD1p2_act) + (-1.0 * reaction_PD1p2_Bd_SHP2));
	
% Species:   id = CP1, name = CP1, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_PD1p1_Bd_SHP2) + ( 1.0 * reaction_CP2_DP_CP1) + (-1.0 * reaction_CP1_Diss_PD1_SHP2));
	
% Species:   id = SHP2, name = SHP2, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*((-1.0 * reaction_PD1p1_Bd_SHP2) + (-1.0 * reaction_PD1p2_Bd_SHP2) + ( 1.0 * reaction_CP2_Diss_SHP2_PD1p1) + ( 1.0 * reaction_CP1_Diss_PD1_SHP2));
	
% Species:   id = CP2, name = CP2, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*(( 1.0 * reaction_PD1p2_Bd_SHP2) + (-1.0 * reaction_CP2_Diss_SHP2_PD1p1) + (-1.0 * reaction_CP2_DP_CP1));
	
% Species:   id = CPactive, name = CPactive, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = CD28a, name = CD28a, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*(( 1.0 * reaction_CD28i_P_CD28a) + (-1.0 * reaction_CD28a_DP_CD28i) + (-1.0 * reaction_CD28a_Bd_PI3K));
	
% Species:   id = CD28i, name = CD28i, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*((-1.0 * reaction_CD28i_P_CD28a) + ( 1.0 * reaction_CD28a_DP_CD28i));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*((-1.0 * reaction_CD28a_Bd_PI3K));
	
% Species:   id = PI3Kb, name = PI3Kb, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*(( 1.0 * reaction_CD28a_Bd_PI3K));
	
% Species:   id = CD28t, name = CD28t, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = CD3a, name = CD3a, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*(( 1.0 * reaction_CD3i_P_CD3a) + (-1.0 * reaction_CD3a_DP_CD3i) + (-1.0 * reaction_CD3a_Bd_ZAP70));
	
% Species:   id = CD3i, name = CD3i, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*((-1.0 * reaction_CD3i_P_CD3a) + ( 1.0 * reaction_CD3a_DP_CD3i));
	
% Species:   id = ZAP70a1, name = ZAP70a1, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*(( 1.0 * reaction_ZAP70i_P_ZAP70a1) + (-1.0 * reaction_ZAP70a1_P_ZAP70a2));
	
% Species:   id = ZAP70i, name = ZAP70i, affected by kineticLaw
	xdot(23) = (1/(compartment_Cell))*(( 1.0 * reaction_CD3a_Bd_ZAP70) + (-1.0 * reaction_ZAP70i_P_ZAP70a1));
	
% Species:   id = ZAP70, name = ZAP70, affected by kineticLaw
	xdot(24) = (1/(compartment_Cell))*((-1.0 * reaction_CD3a_Bd_ZAP70));
	
% Species:   id = ZAP70a2, name = ZAP70a2, affected by kineticLaw
	xdot(25) = (1/(compartment_Cell))*(( 1.0 * reaction_ZAP70a1_P_ZAP70a2));
	
% Species:   id = PI3Kt, name = PI3Kt, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = ZAP70t, name = ZAP70t, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = LATa, name = LATa, affected by kineticLaw
	xdot(28) = (1/(compartment_Cell))*(( 1.0 * reaction_LATi_P_LATa) + (-1.0 * reaction_LATa_Bd_GADS));
	
% Species:   id = LATi, name = LATi, affected by kineticLaw
	xdot(29) = (1/(compartment_Cell))*((-1.0 * reaction_LATi_P_LATa));
	
% Species:   id = LATt, name = LATt, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = GADS, name = GADS, affected by kineticLaw
	xdot(31) = (1/(compartment_Cell))*((-1.0 * reaction_LATa_Bd_GADS));
	
% Species:   id = SLP76, name = SLP76, affected by kineticLaw
	xdot(32) = (1/(compartment_Cell))*((-1.0 * reaction_GADSa_Bd_SLP76));
	
% Species:   id = SLP76i, name = SLP76i, affected by kineticLaw
	xdot(33) = (1/(compartment_Cell))*(( 1.0 * reaction_GADSa_Bd_SLP76) + (-1.0 * reaction_SLP76i_P_SLC76a));
	
% Species:   id = GADSt, name = GADSt, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = SLP76t, name = SLP76t, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = CD3t, name = CD3t, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = SLP76a, name = SLP76a, affected by kineticLaw
	xdot(37) = (1/(compartment_Cell))*(( 1.0 * reaction_SLP76i_P_SLC76a));
	
% Species:   id = GADSa, name = GADSa, affected by kineticLaw
	xdot(38) = (1/(compartment_Cell))*(( 1.0 * reaction_LATa_Bd_GADS) + (-1.0 * reaction_GADSa_Bd_SLP76));
	
% Species:   id = LCKinactive, name = LCKinactive, involved in a rule 	xdot(39) = x(39);
end

function z=SMM_Enzyme_based(kcat,Enzyme,Substrate,Km), z=(kcat*Enzyme*Substrate/(Km+Substrate));end

function z=Equation_for_PD1_activation(kcat,Enzyme,Substrate,Km,X1,X2,Y1,k), z=(kcat*Enzyme*Substrate/(Km+Substrate)*(1-(X1+X2)/(Y1*k)));end

function z=Equation_for_Enzymatic_Dephosphorylation(ka,Enzyme,Substrate), z=(ka*Enzyme*Substrate);end

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


