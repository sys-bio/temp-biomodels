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
% Model name = Eungdamrong2007_Ras_Activation
%
% is http://identifiers.org/biomodels.db/MODEL1633592197
% is http://identifiers.org/biomodels.db/BIOMD0000000161
% isDescribedBy http://identifiers.org/pubmed/17098795
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL9071122126
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000075
% isDerivedFrom http://identifiers.org/pubmed/10579714
% isDerivedFrom http://identifiers.org/pubmed/10388786
%


function main()
%Initial conditions vector
	x0=zeros(46,1);
	x0(1) = 0.0;
	x0(2) = 4.02136;
	x0(3) = 30.1;
	x0(4) = 45.0;
	x0(5) = 2857.0;
	x0(6) = 142857.0;
	x0(7) = 186.0;
	x0(8) = 0.0;
	x0(9) = 2.264;
	x0(10) = 0.0;
	x0(11) = 21.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 100.0;
	x0(15) = 1072.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 9.056;
	x0(19) = 7.7825;
	x0(20) = 3.5375;
	x0(21) = 0.0;
	x0(22) = 50.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 2000.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 250.0;
	x0(34) = 2.0;
	x0(35) = 120400.0;
	x0(36) = 81.27;
	x0(37) = 502.67;
	x0(38) = 12.04;
	x0(39) = 120.4;
	x0(40) = 0.0;
	x0(41) = 99.33;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 400.0;
	x0(45) = 30.1;
	x0(46) = 0.0;


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

% Compartment: id = EC, name = EC, constant
	compartment_EC=1.0;
% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=0.976;
% Compartment: id = er, name = er, constant
	compartment_er=0.012;
% Compartment: id = Golgi, name = Golgi, constant
	compartment_Golgi=0.012;
% Compartment: id = PM, name = PM, constant
	compartment_PM=0.6;
% Compartment: id = erMembrane, name = erMembrane, constant
	compartment_erMembrane=0.0456;
% Compartment: id = GM, name = GM, constant
	compartment_GM=0.048;
% Parameter:   id =  KMOLE, name = KMOLE
	global_par_KMOLE=0.00166112956810631;
% Parameter:   id =  kStimSynPIP2_PIP2_synthesis, name = kStimSynPIP2_PIP2_synthesis
	global_par_kStimSynPIP2_PIP2_synthesis=0.01;
% Parameter:   id =  tauPIP2syn_PIP2_synthesis, name = tauPIP2syn_PIP2_synthesis
	global_par_tauPIP2syn_PIP2_synthesis=0.05;
% Parameter:   id =  PIP2syndecay_PIP2_synthesis, name = PIP2syndecay_PIP2_synthesis
	global_par_PIP2syndecay_PIP2_synthesis=10.0;
% Parameter:   id =  PIP2_basal_PIP2_synthesis, name = PIP2_basal_PIP2_synthesis
	global_par_PIP2_basal_PIP2_synthesis=1072.0;
% Parameter:   id =  kBasalSynPIP2_PIP2_synthesis, name = kBasalSynPIP2_PIP2_synthesis
	global_par_kBasalSynPIP2_PIP2_synthesis=0.045;
% Parameter:   id =  Rate_PIP2Synbasal_PIP2_synthesis, name = Rate_PIP2Synbasal_PIP2_synthesis
% Parameter:   id =  Rate_PIP2SynStim_PIP2_synthesis, name = Rate_PIP2SynStim_PIP2_synthesis
% Parameter:   id =  Vmax_Shc_phosphorylation, name = Vmax_Shc_phosphorylation
% Parameter:   id =  Vmax_RasGRP_DAG_GEF, name = Vmax_RasGRP_DAG_GEF
% Parameter:   id =  Vmax_CAPRI_GAP, name = Vmax_CAPRI_GAP
% Parameter:   id =  Vmax_CaRasGRP_act_RasGM, name = Vmax_CaRasGRP_act_RasGM
% Parameter:   id =  PIP_basal_PIP_synthesis, name = PIP_basal_PIP_synthesis
	global_par_PIP_basal_PIP_synthesis=2857.0;
% Parameter:   id =  kBasalSynPIP_PIP_synthesis, name = kBasalSynPIP_PIP_synthesis
	global_par_kBasalSynPIP_PIP_synthesis=0.0015;
% Parameter:   id =  kStimSynPIP_PIP_synthesis, name = kStimSynPIP_PIP_synthesis
	global_par_kStimSynPIP_PIP_synthesis=0.01;
% Parameter:   id =  tauPIPsyn_PIP_synthesis, name = tauPIPsyn_PIP_synthesis
	global_par_tauPIPsyn_PIP_synthesis=0.05;
% Parameter:   id =  PIPsyndecay_PIP_synthesis, name = PIPsyndecay_PIP_synthesis
	global_par_PIPsyndecay_PIP_synthesis=10.0;
% Parameter:   id =  Ratebasal_PIPsyn_PIP_synthesis, name = Ratebasal_PIPsyn_PIP_synthesis
% Parameter:   id =  Ratestim_PIPsyn_PIP_synthesis, name = Ratestim_PIPsyn_PIP_synthesis
% Parameter:   id =  Kon_reaction2, name = Kon_reaction2
	global_par_Kon_reaction2=2.1;
% Parameter:   id =  dinh_reaction2, name = dinh_reaction2
	global_par_dinh_reaction2=0.11;
% Parameter:   id =  Koff_reaction2, name = Koff_reaction2
% Parameter:   id =  Vmax_EGF_act_PLCgamma, name = Vmax_EGF_act_PLCgamma
% Parameter:   id =  dact_Ca_binds_IP3R, name = dact_Ca_binds_IP3R
	global_par_dact_Ca_binds_IP3R=0.2;
% Parameter:   id =  Kr_Ca_binds_IP3R, name = Kr_Ca_binds_IP3R
% Parameter:   id =  Vmax_Sos_act_RasPM, name = Vmax_Sos_act_RasPM
% assignmentRule: variable = Rate_PIP2Synbasal_PIP2_synthesis
	global_par_Rate_PIP2Synbasal_PIP2_synthesis=piecewise(0.581*global_par_kBasalSynPIP2_PIP2_synthesis*(-1+exp((global_par_PIP2_basal_PIP2_synthesis+(-x(15)))*1/global_par_PIP2_basal_PIP2_synthesis)), x(15) < global_par_PIP2_basal_PIP2_synthesis, 0);
% assignmentRule: variable = Rate_PIP2SynStim_PIP2_synthesis
	global_par_Rate_PIP2SynStim_PIP2_synthesis=piecewise(global_par_kStimSynPIP2_PIP2_synthesis*exp(-(t+(-global_par_tauPIP2syn_PIP2_synthesis))*1/global_par_PIP2syndecay_PIP2_synthesis), t > global_par_tauPIP2syn_PIP2_synthesis, 0);
% assignmentRule: variable = Vmax_Shc_phosphorylation
	global_par_Vmax_Shc_phosphorylation=0.2*x(16);
% assignmentRule: variable = Vmax_RasGRP_DAG_GEF
	global_par_Vmax_RasGRP_DAG_GEF=0.05*x(25);
% assignmentRule: variable = Vmax_CAPRI_GAP
	global_par_Vmax_CAPRI_GAP=10*x(8);
% assignmentRule: variable = Vmax_CaRasGRP_act_RasGM
	global_par_Vmax_CaRasGRP_act_RasGM=0.01*x(23);
% assignmentRule: variable = Ratebasal_PIPsyn_PIP_synthesis
	global_par_Ratebasal_PIPsyn_PIP_synthesis=piecewise(0.581*global_par_kBasalSynPIP_PIP_synthesis*(-1+exp((global_par_PIP_basal_PIP_synthesis+(-x(5)))*1/global_par_PIP_basal_PIP_synthesis)), x(5) < global_par_PIP_basal_PIP_synthesis, 0);
% assignmentRule: variable = Ratestim_PIPsyn_PIP_synthesis
	global_par_Ratestim_PIPsyn_PIP_synthesis=piecewise(global_par_kStimSynPIP_PIP_synthesis*exp(-(t+(-global_par_tauPIPsyn_PIP_synthesis))*1/global_par_PIPsyndecay_PIP_synthesis), t > global_par_tauPIPsyn_PIP_synthesis, 0);
% assignmentRule: variable = Koff_reaction2
	global_par_Koff_reaction2=global_par_dinh_reaction2*global_par_Kon_reaction2;
% assignmentRule: variable = Vmax_EGF_act_PLCgamma
	global_par_Vmax_EGF_act_PLCgamma=0.3*x(16);
% assignmentRule: variable = Kr_Ca_binds_IP3R
	global_par_Kr_Ca_binds_IP3R=1000*global_par_dact_Ca_binds_IP3R;
% assignmentRule: variable = Vmax_Sos_act_RasPM
	global_par_Vmax_Sos_act_RasPM=0.02*x(42);

% Reaction: id = PIP2_synthesis, name = PIP2 synthesis	% Local Parameter:   id =  I, name = I
	reaction_PIP2_synthesis_I=0.0;

	reaction_PIP2_synthesis=(global_par_Rate_PIP2Synbasal_PIP2_synthesis+global_par_Rate_PIP2SynStim_PIP2_synthesis)*x(5)*compartment_PM;

% Reaction: id = Shc_phosphorylation, name = Shc phosphorylation	% Local Parameter:   id =  I, name = I
	reaction_Shc_phosphorylation_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_Shc_phosphorylation_Km=1032.0;

	reaction_Shc_phosphorylation=global_par_Vmax_Shc_phosphorylation*x(7)*1/(reaction_Shc_phosphorylation_Km+x(7))*compartment_PM;

% Reaction: id = Ca_bind_CAPRI, name = Ca bind CAPRI	% Local Parameter:   id =  Kf, name = Kf
	reaction_Ca_bind_CAPRI_Kf=0.1;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_Ca_bind_CAPRI_Kr=0.5;

	reaction_Ca_bind_CAPRI=(reaction_Ca_bind_CAPRI_Kf*0.00166112956810631*x(17)*0.00166112956810631*x(3)+(-reaction_Ca_bind_CAPRI_Kr*0.00166112956810631*x(26)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = IP3_degradation, name = IP3 degradation	% Local Parameter:   id =  kIP3deg, name = kIP3deg
	reaction_IP3_degradation_kIP3deg=0.5;
	% Local Parameter:   id =  IP3_basal, name = IP3_basal
	reaction_IP3_degradation_IP3_basal=0.0;

	reaction_IP3_degradation=reaction_IP3_degradation_kIP3deg*(0.00166112956810631*x(21)+(-reaction_IP3_degradation_IP3_basal))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = RasGTP_depal_translocate, name = RasGTP depal translocate	% Local Parameter:   id =  I, name = I
	reaction_RasGTP_depal_translocate_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasGTP_depal_translocate_Kf=120.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasGTP_depal_translocate_Kr=0.01;

	reaction_RasGTP_depal_translocate=(reaction_RasGTP_depal_translocate_Kf*0.00166112956810631*x(28)+(-reaction_RasGTP_depal_translocate_Kr*x(1)))*compartment_GM;

% Reaction: id = ca_bind_rasGRP, name = ca bind rasGRP	% Local Parameter:   id =  Kf, name = Kf
	reaction_ca_bind_rasGRP_Kf=0.1;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_ca_bind_rasGRP_Kr=0.5;

	reaction_ca_bind_rasGRP=(reaction_ca_bind_rasGRP_Kf*0.00166112956810631*x(17)*0.00166112956810631*x(45)+(-reaction_ca_bind_rasGRP_Kr*0.00166112956810631*x(46)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = RasGRP_DAG_GEF, name = RasGRP_DAG GEF	% Local Parameter:   id =  I, name = I
	reaction_RasGRP_DAG_GEF_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_RasGRP_DAG_GEF_Km=600.0;

	reaction_RasGRP_DAG_GEF=global_par_Vmax_RasGRP_DAG_GEF*x(22)*1/(reaction_RasGRP_DAG_GEF_Km+x(22))*compartment_GM;

% Reaction: id = rasGTP_pal_translocation, name = rasGTP pal translocation	% Local Parameter:   id =  I, name = I
	reaction_rasGTP_pal_translocation_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_rasGTP_pal_translocation_Kf=120.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_rasGTP_pal_translocation_Kr=0.01;

	reaction_rasGTP_pal_translocation=(reaction_rasGTP_pal_translocation_Kf*0.00166112956810631*x(13)+(-reaction_rasGTP_pal_translocation_Kr*x(43)))*compartment_PM;

% Reaction: id = PLCg_dephos, name = PLCg dephos	% Local Parameter:   id =  I, name = I
	reaction_PLCg_dephos_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_PLCg_dephos_Kf=0.2;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_PLCg_dephos_Kr=0.0;

	reaction_PLCg_dephos=(reaction_PLCg_dephos_Kf*x(12)+(-reaction_PLCg_dephos_Kr*x(14)))*compartment_PM;

% Reaction: id = basal_GAP, name = basal GAP	% Local Parameter:   id =  I, name = I
	reaction_basal_GAP_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_basal_GAP_Kf=1.0E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_basal_GAP_Kr=0.0;

	reaction_basal_GAP=(reaction_basal_GAP_Kf*x(43)+(-reaction_basal_GAP_Kr*x(44)))*compartment_PM;

% Reaction: id = CAPRI_translocation, name = CAPRI translocation	% Local Parameter:   id =  I, name = I
	reaction_CAPRI_translocation_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_CAPRI_translocation_Kf=120.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CAPRI_translocation_Kr=0.1;

	reaction_CAPRI_translocation=(reaction_CAPRI_translocation_Kf*0.00166112956810631*x(26)+(-reaction_CAPRI_translocation_Kr*x(8)))*compartment_PM;

% Reaction: id = reaction5, name = reaction5	% Local Parameter:   id =  I, name = I
	reaction_reaction5_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_reaction5_Kf=0.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_reaction5_Kr=0.1;

	reaction_reaction5=(reaction_reaction5_Kf*x(24)*0.00166112956810631*x(45)+(-reaction_reaction5_Kr*x(25)))*compartment_GM;

% Reaction: id = RasGDP_pal, name = RasGDP pal	% Local Parameter:   id =  I, name = I
	reaction_RasGDP_pal_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasGDP_pal_Kf=0.015;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasGDP_pal_Kr=1.0E-5;

	reaction_RasGDP_pal=(reaction_RasGDP_pal_Kf*x(22)+(-reaction_RasGDP_pal_Kr*0.00166112956810631*x(30)))*compartment_GM;

% Reaction: id = CAPRI_GAP, name = CAPRI GAP	% Local Parameter:   id =  I, name = I
	reaction_CAPRI_GAP_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_CAPRI_GAP_Km=1200.0;

	reaction_CAPRI_GAP=global_par_Vmax_CAPRI_GAP*x(43)*1/(reaction_CAPRI_GAP_Km+x(43))*compartment_PM;

% Reaction: id = RasGDPpal_translocation, name = RasGDPpal translocation	% Local Parameter:   id =  I, name = I
	reaction_RasGDPpal_translocation_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasGDPpal_translocation_Kf=120.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasGDPpal_translocation_Kr=0.01;

	reaction_RasGDPpal_translocation=(reaction_RasGDPpal_translocation_Kf*0.00166112956810631*x(30)+(-reaction_RasGDPpal_translocation_Kr*x(44)))*compartment_PM;

% Reaction: id = sos_grb2_binding, name = sos grb2 binding	% Local Parameter:   id =  Kf, name = Kf
	reaction_sos_grb2_binding_Kf=0.025;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_sos_grb2_binding_Kr=0.0168;

	reaction_sos_grb2_binding=(reaction_sos_grb2_binding_Kf*0.00166112956810631*x(36)*0.00166112956810631*x(37)+(-reaction_sos_grb2_binding_Kr*0.00166112956810631*x(41)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = RasGDP_depal_translocate, name = RasGDP depal translocate	% Local Parameter:   id =  I, name = I
	reaction_RasGDP_depal_translocate_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasGDP_depal_translocate_Kf=120.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasGDP_depal_translocate_Kr=0.01;

	reaction_RasGDP_depal_translocate=(reaction_RasGDP_depal_translocate_Kf*0.00166112956810631*x(29)+(-reaction_RasGDP_depal_translocate_Kr*x(22)))*compartment_GM;

% Reaction: id = Ras_GTP_palm1, name = Ras GTP palm1	% Local Parameter:   id =  I, name = I
	reaction_Ras_GTP_palm1_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_Ras_GTP_palm1_Kf=1.58489319246111E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_Ras_GTP_palm1_Kr=1.0E-5;

	reaction_Ras_GTP_palm1=(reaction_Ras_GTP_palm1_Kf*x(1)+(-reaction_Ras_GTP_palm1_Kr*0.00166112956810631*x(13)))*compartment_GM;

% Reaction: id = RasPal_basal_GAP, name = RasPal basal GAP	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasPal_basal_GAP_Kf=1.0E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasPal_basal_GAP_Kr=0.0;

	reaction_RasPal_basal_GAP=(reaction_RasPal_basal_GAP_Kf*0.00166112956810631*x(13)+(-reaction_RasPal_basal_GAP_Kr*0.00166112956810631*x(30)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = basal_cyt_depal_GEF, name = basal cyt depal GEF	% Local Parameter:   id =  Kf, name = Kf
	reaction_basal_cyt_depal_GEF_Kf=1.0E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_basal_cyt_depal_GEF_Kr=0.0;

	reaction_basal_cyt_depal_GEF=(reaction_basal_cyt_depal_GEF_Kf*0.00166112956810631*x(28)+(-reaction_basal_cyt_depal_GEF_Kr*0.00166112956810631*x(29)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = caPLCe_gen_DAG, name = caPLCe gen DAG	% Local Parameter:   id =  I, name = I
	reaction_caPLCe_gen_DAG_I=0.0;
	% Local Parameter:   id =  kact, name = kact
	reaction_caPLCe_gen_DAG_kact=1.18;

	reaction_caPLCe_gen_DAG=reaction_caPLCe_gen_DAG_kact*x(33)*x(32)*compartment_GM;

% Reaction: id = CaRasGRP_act_RasGM, name = CaRasGRP act RasGM	% Local Parameter:   id =  I, name = I
	reaction_CaRasGRP_act_RasGM_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_CaRasGRP_act_RasGM_Km=1200.0;

	reaction_CaRasGRP_act_RasGM=global_par_Vmax_CaRasGRP_act_RasGM*x(22)*1/(reaction_CaRasGRP_act_RasGM_Km+x(22))*compartment_GM;

% Reaction: id = PIP2_hydrolysis, name = PIP2 hydrolysis	% Local Parameter:   id =  I, name = I
	reaction_PIP2_hydrolysis_I=0.0;
	% Local Parameter:   id =  k_PIP2hyd, name = k_PIP2hyd
	reaction_PIP2_hydrolysis_k_PIP2hyd=1.188;

	reaction_PIP2_hydrolysis=reaction_PIP2_hydrolysis_k_PIP2hyd*x(15)*x(12)*compartment_PM;

% Reaction: id = Sos_activation, name = Sos activation	% Local Parameter:   id =  I, name = I
	reaction_Sos_activation_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_Sos_activation_Kf=90.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_Sos_activation_Kr=0.1;

	reaction_Sos_activation=(reaction_Sos_activation_Kf*0.00166112956810631*x(41)*x(10)+(-reaction_Sos_activation_Kr*x(42)))*compartment_PM;

% Reaction: id = PIP_synthesis, name = PIP synthesis	% Local Parameter:   id =  I, name = I
	reaction_PIP_synthesis_I=0.0;

	reaction_PIP_synthesis=(global_par_Ratebasal_PIPsyn_PIP_synthesis+global_par_Ratestim_PIPsyn_PIP_synthesis)*x(6)*compartment_PM;

% Reaction: id = EGF_internalization, name = EGF_internalization	% Local Parameter:   id =  I, name = I
	reaction_EGF_internalization_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_EGF_internalization_Kf=0.002;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_EGF_internalization_Kr=0.0;

	reaction_EGF_internalization=reaction_EGF_internalization_Kf*x(16)*compartment_PM;

% Reaction: id = calcium_buffer, name = calcium buffer	% Local Parameter:   id =  Kf, name = Kf
	reaction_calcium_buffer_Kf=50.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_calcium_buffer_Kr=10.0;

	reaction_calcium_buffer=(reaction_calcium_buffer_Kf*0.00166112956810631*x(39)*0.00166112956810631*x(17)+(-reaction_calcium_buffer_Kr*0.00166112956810631*x(40)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = RasGM_basal_GAP, name = RasGM basal GAP	% Local Parameter:   id =  I, name = I
	reaction_RasGM_basal_GAP_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_RasGM_basal_GAP_Km=600.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_RasGM_basal_GAP_Vmax=1.0;

	reaction_RasGM_basal_GAP=reaction_RasGM_basal_GAP_Vmax*x(1)*1/(reaction_RasGM_basal_GAP_Km+x(1))*compartment_GM;

% Reaction: id = reaction0, name = reaction0	% Local Parameter:   id =  I, name = I
	reaction_reaction0_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_reaction0_Kf=0.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_reaction0_Kr=0.0;

	reaction_reaction0=(reaction_reaction0_Kf*x(10)+(-reaction_reaction0_Kr*x(7)))*compartment_PM;

% Reaction: id = EGFR_binding, name = EGFR_binding	% Local Parameter:   id =  I, name = I
	reaction_EGFR_binding_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_EGFR_binding_Kf=1.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_EGFR_binding_Kr=0.01;

	reaction_EGFR_binding=(reaction_EGFR_binding_Kf*0.00166112956810631*x(2)*x(11)+(-reaction_EGFR_binding_Kr*x(16)))*compartment_PM;

% Reaction: id = ca_act_PLCe, name = ca act PLCe	% Local Parameter:   id =  Kf, name = Kf
	reaction_ca_act_PLCe_Kf=3.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_ca_act_PLCe_Kr=1.0;

	reaction_ca_act_PLCe=(reaction_ca_act_PLCe_Kf*0.00166112956810631*x(17)*0.00166112956810631*x(38)+(-reaction_ca_act_PLCe_Kr*0.00166112956810631*x(31)))*compartment_cyt*1*1/global_par_KMOLE;

% Reaction: id = ras_act_PLCe, name = ras_act_PLCe	% Local Parameter:   id =  I, name = I
	reaction_ras_act_PLCe_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_ras_act_PLCe_Kf=15.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_ras_act_PLCe_Kr=1.0;

	reaction_ras_act_PLCe=(reaction_ras_act_PLCe_Kf*x(1)*0.00166112956810631*x(31)+(-reaction_ras_act_PLCe_Kr*x(32)))*compartment_GM;

% Reaction: id = RasGDP_depal2, name = RasGDP depal2	% Local Parameter:   id =  I, name = I
	reaction_RasGDP_depal2_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_RasGDP_depal2_Kf=1.0E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_RasGDP_depal2_Kr=0.0;

	reaction_RasGDP_depal2=(reaction_RasGDP_depal2_Kf*x(44)+(-reaction_RasGDP_depal2_Kr*0.00166112956810631*x(29)))*compartment_PM;

% Reaction: id = CaRasGRP_translocation, name = CaRasGRP translocation	% Local Parameter:   id =  I, name = I
	reaction_CaRasGRP_translocation_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_CaRasGRP_translocation_Kf=10.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CaRasGRP_translocation_Kr=5.0;

	reaction_CaRasGRP_translocation=(reaction_CaRasGRP_translocation_Kf*0.00166112956810631*x(46)+(-reaction_CaRasGRP_translocation_Kr*x(23)))*compartment_GM;

% Reaction: id = reaction2, name = reaction2	% Local Parameter:   id =  I, name = I
	reaction_reaction2_I=0.0;

	reaction_reaction2=(global_par_Kon_reaction2*x(19)*0.00166112956810631*x(17)+(-global_par_Koff_reaction2*x(20)))*compartment_erMembrane;

% Reaction: id = EGF_act_PLCgamma, name = EGF act PLCgamma	% Local Parameter:   id =  I, name = I
	reaction_EGF_act_PLCgamma_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_EGF_act_PLCgamma_Km=410.0;

	reaction_EGF_act_PLCgamma=global_par_Vmax_EGF_act_PLCgamma*x(14)*1/(reaction_EGF_act_PLCgamma_Km+x(14))*compartment_PM;

% Reaction: id = Ca_binds_IP3R, name = Ca_binds_IP3R	% Local Parameter:   id =  I, name = I
	reaction_Ca_binds_IP3R_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_Ca_binds_IP3R_Kf=1000.0;

	reaction_Ca_binds_IP3R=(x(18)*reaction_Ca_binds_IP3R_Kf*0.00166112956810631*x(17)+(-global_par_Kr_Ca_binds_IP3R*x(9)))*compartment_erMembrane;

% Reaction: id = reaction7, name = reaction7	% Local Parameter:   id =  I, name = I
	reaction_reaction7_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_reaction7_Kf=0.25;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_reaction7_Kr=0.0;

	reaction_reaction7=reaction_reaction7_Kf*x(24)*compartment_GM;

% Reaction: id = Sos_act_RasPM, name = Sos act RasPM	% Local Parameter:   id =  I, name = I
	reaction_Sos_act_RasPM_I=0.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_Sos_act_RasPM_Km=600.0;

	reaction_Sos_act_RasPM=global_par_Vmax_Sos_act_RasPM*x(44)*1/(reaction_Sos_act_RasPM_Km+x(44))*compartment_PM;

% Reaction: id = flux1, name = flux1	% Local Parameter:   id =  I, name = I
	reaction_flux1_I=0.0;
	% Local Parameter:   id =  vP, name = vP
	reaction_flux1_vP=0.0664;
	% Local Parameter:   id =  kP, name = kP
	reaction_flux1_kP=0.27;

	reaction_flux1=x(34)*x(4)*reaction_flux1_vP*0.00166112956810631*x(17)*0.00166112956810631*x(17)*1/(reaction_flux1_kP*reaction_flux1_kP+0.00166112956810631*x(17)*0.00166112956810631*x(17))*compartment_erMembrane*1*1/global_par_KMOLE;

% Reaction: id = flux0, name = flux0	% Local Parameter:   id =  I, name = I
	reaction_flux0_I=0.0;
	% Local Parameter:   id =  dI, name = dI
	reaction_flux0_dI=0.8;
	% Local Parameter:   id =  singleChanFlux, name = singleChanFlux
	reaction_flux0_singleChanFlux=4.69;

	reaction_flux0=(-0.25*x(34)*(x(9)+x(18))*(0.00166112956810631*x(35)+(-0.00166112956810631*x(17)))*(0.00166112956810631*x(21)*x(9)*x(19)*1/(0.00166112956810631*x(21)+reaction_flux0_dI)*1/(x(9)+x(18))*1/(x(20)+x(19)))^3*reaction_flux0_singleChanFlux)*compartment_erMembrane*1*1/global_par_KMOLE;

% Reaction: id = flux2, name = flux2	% Local Parameter:   id =  I, name = I
	reaction_flux2_I=0.0;
	% Local Parameter:   id =  vL, name = vL
	reaction_flux2_vL=3.16E-5;

	reaction_flux2=(-x(34)*(0.00166112956810631*x(35)+(-0.00166112956810631*x(17)))*reaction_flux2_vL)*compartment_erMembrane*1*1/global_par_KMOLE;

% Reaction: id = Ras_PM_depal1, name = Ras PM depal1	% Local Parameter:   id =  I, name = I
	reaction_Ras_PM_depal1_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_Ras_PM_depal1_Kf=1.0E-4;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_Ras_PM_depal1_Kr=0.0;

	reaction_Ras_PM_depal1=(reaction_Ras_PM_depal1_Kf*x(43)+(-reaction_Ras_PM_depal1_Kr*0.00166112956810631*x(28)))*compartment_PM;

	xdot=zeros(46,1);
	
% Species:   id = RasGTP_Golgi_GM, name = RasGTP_Golgi_GM, affected by kineticLaw
	xdot(1) = (1/(compartment_GM))*(( 1.0 * reaction_RasGTP_depal_translocate) + ( 1.0 * reaction_RasGRP_DAG_GEF) + (-1.0 * reaction_Ras_GTP_palm1) + ( 1.0 * reaction_CaRasGRP_act_RasGM) + (-1.0 * reaction_RasGM_basal_GAP) + (-1.0 * reaction_ras_act_PLCe));
	
% Species:   id = EGF_EC, name = EGF_EC
%WARNING speciesID: EGF_EC, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = CAPRI_cyt, name = CAPRI_cyt, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*((-1.0 * reaction_Ca_bind_CAPRI));
	
% Species:   id = serca, name = serca
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = PIP_PM, name = PIP_PM, affected by kineticLaw
	xdot(5) = (1/(compartment_PM))*((-1.0 * reaction_PIP2_synthesis) + ( 1.0 * reaction_PIP_synthesis));
	
% Species:   id = PI_PM, name = PI_PM, affected by kineticLaw
	xdot(6) = (1/(compartment_PM))*((-1.0 * reaction_PIP_synthesis));
	
% Species:   id = Shc_PM, name = Shc_PM, affected by kineticLaw
	xdot(7) = (1/(compartment_PM))*((-1.0 * reaction_Shc_phosphorylation) + ( 1.0 * reaction_reaction0));
	
% Species:   id = CaCAPRI_PM_PM, name = CaCAPRI_PM_PM, affected by kineticLaw
	xdot(8) = (1/(compartment_PM))*(( 1.0 * reaction_CAPRI_translocation));
	
% Species:   id = RactCa, name = RactCa, affected by kineticLaw
	xdot(9) = (1/(compartment_erMembrane))*(( 1.0 * reaction_Ca_binds_IP3R));
	
% Species:   id = Shc_star_PM, name = Shc_star_PM, affected by kineticLaw
	xdot(10) = (1/(compartment_PM))*(( 1.0 * reaction_Shc_phosphorylation) + (-1.0 * reaction_Sos_activation) + (-1.0 * reaction_reaction0));
	
% Species:   id = EGFR_PM, name = EGFR_PM, affected by kineticLaw
	xdot(11) = (1/(compartment_PM))*((-1.0 * reaction_EGFR_binding));
	
% Species:   id = PLC_act_PM, name = PLC_act_PM, affected by kineticLaw
	xdot(12) = (1/(compartment_PM))*((-1.0 * reaction_PLCg_dephos) + ( 1.0 * reaction_EGF_act_PLCgamma));
	
% Species:   id = RasGTP_pal_cyt, name = RasGTP_pal_cyt, affected by kineticLaw
	xdot(13) = (1/(compartment_cyt))*((-1.0 * reaction_rasGTP_pal_translocation) + ( 1.0 * reaction_Ras_GTP_palm1) + (-1.0 * reaction_RasPal_basal_GAP));
	
% Species:   id = PLC_PM, name = PLC_PM, affected by kineticLaw
	xdot(14) = (1/(compartment_PM))*(( 1.0 * reaction_PLCg_dephos) + (-1.0 * reaction_EGF_act_PLCgamma));
	
% Species:   id = PIP2_PM, name = PIP2_PM, affected by kineticLaw
	xdot(15) = (1/(compartment_PM))*(( 1.0 * reaction_PIP2_synthesis) + (-1.0 * reaction_PIP2_hydrolysis));
	
% Species:   id = Activated_EGFR_PM, name = Activated_EGFR_PM, affected by kineticLaw
	xdot(16) = (1/(compartment_PM))*((-1.0 * reaction_EGF_internalization) + ( 1.0 * reaction_EGFR_binding));
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(17) = (1/(compartment_cyt))*((-1.0 * reaction_Ca_bind_CAPRI) + (-1.0 * reaction_ca_bind_rasGRP) + (-1.0 * reaction_calcium_buffer) + (-1.0 * reaction_ca_act_PLCe) + (-1.0 * reaction_reaction2) + (-1.0 * reaction_Ca_binds_IP3R) + (-1.0 * reaction_flux1) + (-1.0 * reaction_flux0) + (-1.0 * reaction_flux2));
	
% Species:   id = Ract, name = Ract, affected by kineticLaw
	xdot(18) = (1/(compartment_erMembrane))*((-1.0 * reaction_Ca_binds_IP3R));
	
% Species:   id = Rinh, name = Rinh, affected by kineticLaw
	xdot(19) = (1/(compartment_erMembrane))*((-1.0 * reaction_reaction2));
	
% Species:   id = RinhCa, name = RinhCa, affected by kineticLaw
	xdot(20) = (1/(compartment_erMembrane))*(( 1.0 * reaction_reaction2));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(21) = (1/(compartment_cyt))*((-1.0 * reaction_IP3_degradation) + ( 1.0 * reaction_caPLCe_gen_DAG) + ( 1.0 * reaction_PIP2_hydrolysis));
	
% Species:   id = RasGDP_Golgi_GM, name = RasGDP_Golgi_GM, affected by kineticLaw
	xdot(22) = (1/(compartment_GM))*((-1.0 * reaction_RasGRP_DAG_GEF) + (-1.0 * reaction_RasGDP_pal) + ( 1.0 * reaction_RasGDP_depal_translocate) + (-1.0 * reaction_CaRasGRP_act_RasGM) + ( 1.0 * reaction_RasGM_basal_GAP));
	
% Species:   id = Ca_RasGRP_GM_GM, name = Ca_RasGRP_GM_GM, affected by kineticLaw
	xdot(23) = (1/(compartment_GM))*(( 1.0 * reaction_CaRasGRP_translocation));
	
% Species:   id = DAG_GM_GM, name = DAG_GM_GM, affected by kineticLaw
	xdot(24) = (1/(compartment_GM))*((-1.0 * reaction_reaction5) + ( 1.0 * reaction_caPLCe_gen_DAG) + (-1.0 * reaction_reaction7));
	
% Species:   id = RasGRP_DAG_GM, name = RasGRP_DAG_GM, affected by kineticLaw
	xdot(25) = (1/(compartment_GM))*(( 1.0 * reaction_reaction5));
	
% Species:   id = CaCAPRI_cyt, name = CaCAPRI_cyt, affected by kineticLaw
	xdot(26) = (1/(compartment_cyt))*(( 1.0 * reaction_Ca_bind_CAPRI) + (-1.0 * reaction_CAPRI_translocation));
	
% Species:   id = DAG_PM, name = DAG_PM, affected by kineticLaw
	xdot(27) = (1/(compartment_PM))*(( 1.0 * reaction_PIP2_hydrolysis));
	
% Species:   id = RasGTP_depal_cyt, name = RasGTP_depal_cyt, affected by kineticLaw
	xdot(28) = (1/(compartment_cyt))*((-1.0 * reaction_RasGTP_depal_translocate) + (-1.0 * reaction_basal_cyt_depal_GEF) + ( 1.0 * reaction_Ras_PM_depal1));
	
% Species:   id = RasGDP_depal_cyt, name = RasGDP_depal_cyt, affected by kineticLaw
	xdot(29) = (1/(compartment_cyt))*((-1.0 * reaction_RasGDP_depal_translocate) + ( 1.0 * reaction_basal_cyt_depal_GEF) + ( 1.0 * reaction_RasGDP_depal2));
	
% Species:   id = RasGDP_pal_cyt, name = RasGDP_pal_cyt, affected by kineticLaw
	xdot(30) = (1/(compartment_cyt))*(( 1.0 * reaction_RasGDP_pal) + (-1.0 * reaction_RasGDPpal_translocation) + ( 1.0 * reaction_RasPal_basal_GAP));
	
% Species:   id = Ca_PLCe_cyt, name = Ca_PLCe_cyt, affected by kineticLaw
	xdot(31) = (1/(compartment_cyt))*(( 1.0 * reaction_ca_act_PLCe) + (-1.0 * reaction_ras_act_PLCe));
	
% Species:   id = Ras_CaPLCe_GM, name = Ras_CaPLCe_GM, affected by kineticLaw
	xdot(32) = (1/(compartment_GM))*(( 1.0 * reaction_ras_act_PLCe));
	
% Species:   id = PIP2_GM_GM, name = PIP2_GM_GM
%WARNING speciesID: PIP2_GM_GM, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(33) = 0.0;
	
% Species:   id = ER_erMembrane, name = ER_erMembrane
%WARNING speciesID: ER_erMembrane, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(34) = 0.0;
	
% Species:   id = Ca_ER, name = Ca_ER, affected by kineticLaw
	xdot(35) = (1/(compartment_er))*(( 1.0 * reaction_flux1) + ( 1.0 * reaction_flux0) + ( 1.0 * reaction_flux2));
	
% Species:   id = Sos_cyt, name = Sos_cyt, affected by kineticLaw
	xdot(36) = (1/(compartment_cyt))*((-1.0 * reaction_sos_grb2_binding));
	
% Species:   id = Grb2_cyt, name = Grb2_cyt, affected by kineticLaw
	xdot(37) = (1/(compartment_cyt))*((-1.0 * reaction_sos_grb2_binding));
	
% Species:   id = PLCe_cyt, name = PLCe_cyt, affected by kineticLaw
	xdot(38) = (1/(compartment_cyt))*((-1.0 * reaction_ca_act_PLCe));
	
% Species:   id = buffer_cyt, name = buffer_cyt, affected by kineticLaw
	xdot(39) = (1/(compartment_cyt))*((-1.0 * reaction_calcium_buffer));
	
% Species:   id = ca_buffer_cyt, name = ca_buffer_cyt, affected by kineticLaw
	xdot(40) = (1/(compartment_cyt))*(( 1.0 * reaction_calcium_buffer));
	
% Species:   id = SosGrb2_cyt, name = SosGrb2_cyt, affected by kineticLaw
	xdot(41) = (1/(compartment_cyt))*(( 1.0 * reaction_sos_grb2_binding) + (-1.0 * reaction_Sos_activation));
	
% Species:   id = SGS_PM, name = SGS_PM, affected by kineticLaw
	xdot(42) = (1/(compartment_PM))*(( 1.0 * reaction_Sos_activation));
	
% Species:   id = RasGTP_PM, name = RasGTP_PM, affected by kineticLaw
	xdot(43) = (1/(compartment_PM))*(( 1.0 * reaction_rasGTP_pal_translocation) + (-1.0 * reaction_basal_GAP) + (-1.0 * reaction_CAPRI_GAP) + ( 1.0 * reaction_Sos_act_RasPM) + (-1.0 * reaction_Ras_PM_depal1));
	
% Species:   id = RasGDP_PM, name = RasGDP_PM, affected by kineticLaw
	xdot(44) = (1/(compartment_PM))*(( 1.0 * reaction_basal_GAP) + ( 1.0 * reaction_CAPRI_GAP) + ( 1.0 * reaction_RasGDPpal_translocation) + (-1.0 * reaction_RasGDP_depal2) + (-1.0 * reaction_Sos_act_RasPM));
	
% Species:   id = RasGRP_cyt, name = RasGRP_cyt, affected by kineticLaw
	xdot(45) = (1/(compartment_cyt))*((-1.0 * reaction_ca_bind_rasGRP) + (-1.0 * reaction_reaction5));
	
% Species:   id = CaRasGRP1_cyt, name = CaRasGRP1_cyt, affected by kineticLaw
	xdot(46) = (1/(compartment_cyt))*(( 1.0 * reaction_ca_bind_rasGRP) + (-1.0 * reaction_CaRasGRP_translocation));
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


