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
% Model name = Bianconi2012 - EGFR and IGF1R pathway in lung cancer
%
% is http://identifiers.org/biomodels.db/MODEL1209230000
% is http://identifiers.org/biomodels.db/BIOMD0000000427
% isDescribedBy http://identifiers.org/pubmed/21620944
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 8000.0;
	x0(2) = 120000.0;
	x0(3) = 0.0;
	x0(4) = 120000.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 600000.0;
	x0(8) = 0.0;
	x0(9) = 800.0;
	x0(10) = 120000.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 600000.0;
	x0(14) = 120000.0;
	x0(15) = 120000.0;
	x0(16) = 0.0;
	x0(17) = 600000.0;
	x0(18) = 120000.0;
	x0(19) = 120000.0;
	x0(20) = 120000.0;
	x0(21) = 0.0;


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

% Compartment: id = cell_nsclc, name = cell_nsclc, constant
	compartment_cell_nsclc=1.0;
% Parameter:   id =  gamma_IGFR, name = gamma_IGFR
	global_par_gamma_IGFR=0.02;
% Parameter:   id =  kd_PI3K_a, name = kd_PI3K_a
	global_par_kd_PI3K_a=0.005;
% Parameter:   id =  k_P90Rsk_ERKActive, name = k_P90Rsk_ERKActive
	global_par_k_P90Rsk_ERKActive=0.0213697;
% Parameter:   id =  KM_P90Rsk_ERKActive, name = KM_P90Rsk_ERKActive
	global_par_KM_P90Rsk_ERKActive=763523.0;
% Parameter:   id =  gamma_EGFR, name = gamma_EGFR
	global_par_gamma_EGFR=0.02;

% Reaction: id = SOS_conformational_activation, name = SOS conformational activation	% Local Parameter:   id =  k_SOS_E, name = k_SOS_E
	reaction_SOS_conformational_activation_k_SOS_E=694.731;
	% Local Parameter:   id =  n_SOS, name = n_SOS
	reaction_SOS_conformational_activation_n_SOS=1.0;
	% Local Parameter:   id =  KM_SOS_E, name = KM_SOS_E
	reaction_SOS_conformational_activation_KM_SOS_E=6086070.0;

	reaction_SOS_conformational_activation=reaction_SOS_conformational_activation_k_SOS_E*x(1)*x(2)^reaction_SOS_conformational_activation_n_SOS/(reaction_SOS_conformational_activation_KM_SOS_E^reaction_SOS_conformational_activation_n_SOS+x(2)^reaction_SOS_conformational_activation_n_SOS);

% Reaction: id = kRas_Activation, name = kRas Activation	% Local Parameter:   id =  k_Ras_SOS, name = k_Ras_SOS
	reaction_kRas_Activation_k_Ras_SOS=32.344;
	% Local Parameter:   id =  n_Ras_SOS, name = n_Ras_SOS
	reaction_kRas_Activation_n_Ras_SOS=1.0;
	% Local Parameter:   id =  KM_Ras_SOS, name = KM_Ras_SOS
	reaction_kRas_Activation_KM_Ras_SOS=35954.3;

	reaction_kRas_Activation=x(3)*reaction_kRas_Activation_k_Ras_SOS*x(15)^reaction_kRas_Activation_n_Ras_SOS/(reaction_kRas_Activation_KM_Ras_SOS^reaction_kRas_Activation_n_Ras_SOS+x(15)^reaction_kRas_Activation_n_Ras_SOS);

% Reaction: id = EGFR_degradation, name = EGFR degradation
	reaction_EGFR_degradation=global_par_gamma_EGFR*x(1);

% Reaction: id = ERK_activationBy_Mek, name = ERK activation by Mek	% Local Parameter:   id =  k_ERK_MekActive, name = k_ERK_MekActive
	reaction_ERK_activationBy_Mek_k_ERK_MekActive=9.85367;
	% Local Parameter:   id =  KM_ERK_MekActive, name = KM_ERK_MekActive
	reaction_ERK_activationBy_Mek_KM_ERK_MekActive=1007340.0;

	reaction_ERK_activationBy_Mek=x(6)*reaction_ERK_activationBy_Mek_k_ERK_MekActive*x(7)/(reaction_ERK_activationBy_Mek_KM_ERK_MekActive+x(7));

% Reaction: id = SOS_deactivationBy_P90, name = SOS deactivation by P90	% Local Parameter:   id =  k_D_SOS_P90Rsk, name = k_D_SOS_P90Rsk
	reaction_SOS_deactivationBy_P90_k_D_SOS_P90Rsk=161197.0;
	% Local Parameter:   id =  n_D_SOS, name = n_D_SOS
	reaction_SOS_deactivationBy_P90_n_D_SOS=1.0;
	% Local Parameter:   id =  KM_D_SOS_P90Rsk, name = KM_D_SOS_P90Rsk
	reaction_SOS_deactivationBy_P90_KM_D_SOS_P90Rsk=896896.0;

	reaction_SOS_deactivationBy_P90=x(21)*reaction_SOS_deactivationBy_P90_k_D_SOS_P90Rsk*x(3)^reaction_SOS_deactivationBy_P90_n_D_SOS/(reaction_SOS_deactivationBy_P90_KM_D_SOS_P90Rsk^reaction_SOS_deactivationBy_P90_n_D_SOS+x(3)^reaction_SOS_deactivationBy_P90_n_D_SOS);

% Reaction: id = SOS_activationBy_IGF, name = SOS activation by IGF	% Local Parameter:   id =  k_A_SOS_I, name = k_A_SOS_I
	reaction_SOS_activationBy_IGF_k_A_SOS_I=500.0;
	% Local Parameter:   id =  n_A_SOS_I, name = n_A_SOS_I
	reaction_SOS_activationBy_IGF_n_A_SOS_I=1.0;
	% Local Parameter:   id =  KM_A_SOS_I, name = KM_A_SOS_I
	reaction_SOS_activationBy_IGF_KM_A_SOS_I=100000.0;

	reaction_SOS_activationBy_IGF=x(9)*reaction_SOS_activationBy_IGF_k_A_SOS_I*x(2)^reaction_SOS_activationBy_IGF_n_A_SOS_I/(reaction_SOS_activationBy_IGF_KM_A_SOS_I^reaction_SOS_activationBy_IGF_n_A_SOS_I+x(2)^reaction_SOS_activationBy_IGF_n_A_SOS_I);

% Reaction: id = PI3KCA_activationBy_IGF1R, name = PI3KCA activation by IGF1R	% Local Parameter:   id =  k_PI3K_IGF1R, name = k_PI3K_IGF1R
	reaction_PI3KCA_activationBy_IGF1R_k_PI3K_IGF1R=10.6737;
	% Local Parameter:   id =  n_PI3K_I, name = n_PI3K_I
	reaction_PI3KCA_activationBy_IGF1R_n_PI3K_I=1.0;
	% Local Parameter:   id =  KM_PI3K_IGF1R, name = KM_PI3K_IGF1R
	reaction_PI3KCA_activationBy_IGF1R_KM_PI3K_IGF1R=184912.0;

	reaction_PI3KCA_activationBy_IGF1R=x(9)*reaction_PI3KCA_activationBy_IGF1R_k_PI3K_IGF1R*x(10)^reaction_PI3KCA_activationBy_IGF1R_n_PI3K_I/(reaction_PI3KCA_activationBy_IGF1R_KM_PI3K_IGF1R^reaction_PI3KCA_activationBy_IGF1R_n_PI3K_I+x(10)^reaction_PI3KCA_activationBy_IGF1R_n_PI3K_I);

% Reaction: id = PI3KCA_activationBy_EGF, name = PI3KCA activation by EGF	% Local Parameter:   id =  k_PI3K_EGF1R, name = k_PI3K_EGF1R
	reaction_PI3KCA_activationBy_EGF_k_PI3K_EGF1R=10.6737;
	% Local Parameter:   id =  n_PI3K_E, name = n_PI3K_E
	reaction_PI3KCA_activationBy_EGF_n_PI3K_E=1.0;
	% Local Parameter:   id =  KM_PI3K_EGF1R, name = KM_PI3K_EGF1R
	reaction_PI3KCA_activationBy_EGF_KM_PI3K_EGF1R=184912.0;

	reaction_PI3KCA_activationBy_EGF=x(1)*reaction_PI3KCA_activationBy_EGF_k_PI3K_EGF1R*x(1)*x(10)^reaction_PI3KCA_activationBy_EGF_n_PI3K_E/(reaction_PI3KCA_activationBy_EGF_KM_PI3K_EGF1R^reaction_PI3KCA_activationBy_EGF_n_PI3K_E+x(10)^reaction_PI3KCA_activationBy_EGF_n_PI3K_E);

% Reaction: id = Akt_activationBy_PI3KCA, name = Akt activation by PI3KCA	% Local Parameter:   id =  k_AKT_PI3K, name = k_AKT_PI3K
	reaction_Akt_activationBy_PI3KCA_k_AKT_PI3K=0.0566279;
	% Local Parameter:   id =  n_AKT_PI3K, name = n_AKT_PI3K
	reaction_Akt_activationBy_PI3KCA_n_AKT_PI3K=1.0;
	% Local Parameter:   id =  KM_AKT_PI3K, name = KM_AKT_PI3K
	reaction_Akt_activationBy_PI3KCA_KM_AKT_PI3K=653951.0;

	reaction_Akt_activationBy_PI3KCA=x(11)*reaction_Akt_activationBy_PI3KCA_k_AKT_PI3K*x(13)^reaction_Akt_activationBy_PI3KCA_n_AKT_PI3K/(reaction_Akt_activationBy_PI3KCA_KM_AKT_PI3K^reaction_Akt_activationBy_PI3KCA_n_AKT_PI3K+x(13)^reaction_Akt_activationBy_PI3KCA_n_AKT_PI3K);

% Reaction: id = Akt_deactivation, name = Akt deactivation	% Local Parameter:   id =  kd_AKT, name = kd_AKT
	reaction_Akt_deactivation_kd_AKT=0.005;

	reaction_Akt_deactivation=reaction_Akt_deactivation_kd_AKT*x(12);

% Reaction: id = ERK_deactivationBy_PP2A, name = ERK deactivation by PP2A	% Local Parameter:   id =  k_ERKactive_PP2A, name = k_ERKactive_PP2A
	reaction_ERK_deactivationBy_PP2A_k_ERKactive_PP2A=8.8912;
	% Local Parameter:   id =  n_ERKactive_PP2A, name = n_ERKactive_PP2A
	reaction_ERK_deactivationBy_PP2A_n_ERKactive_PP2A=1.0;
	% Local Parameter:   id =  KM_ERKactive_PP2A, name = KM_ERKactive_PP2A
	reaction_ERK_deactivationBy_PP2A_KM_ERKactive_PP2A=3496490.0;

	reaction_ERK_deactivationBy_PP2A=x(14)*reaction_ERK_deactivationBy_PP2A_k_ERKactive_PP2A*x(8)^reaction_ERK_deactivationBy_PP2A_n_ERKactive_PP2A/(reaction_ERK_deactivationBy_PP2A_KM_ERKactive_PP2A^reaction_ERK_deactivationBy_PP2A_n_ERKactive_PP2A+x(8)^reaction_ERK_deactivationBy_PP2A_n_ERKactive_PP2A);

% Reaction: id = PI3KCA_activationBy_kRas, name = PI3KCA activation by kRas	% Local Parameter:   id =  k_PI3K_Ras, name = k_PI3K_Ras
	reaction_PI3KCA_activationBy_kRas_k_PI3K_Ras=0.0771067;
	% Local Parameter:   id =  n_PI3K_Ras, name = n_PI3K_Ras
	reaction_PI3KCA_activationBy_kRas_n_PI3K_Ras=1.0;
	% Local Parameter:   id =  KM_PI3K_Ras, name = KM_PI3K_Ras
	reaction_PI3KCA_activationBy_kRas_KM_PI3K_Ras=272056.0;

	reaction_PI3KCA_activationBy_kRas=x(5)*reaction_PI3KCA_activationBy_kRas_k_PI3K_Ras*x(10)^reaction_PI3KCA_activationBy_kRas_n_PI3K_Ras/(reaction_PI3KCA_activationBy_kRas_KM_PI3K_Ras^reaction_PI3KCA_activationBy_kRas_n_PI3K_Ras+x(10)^reaction_PI3KCA_activationBy_kRas_n_PI3K_Ras);

% Reaction: id = Raf_activationBy_kRas, name = Raf activation by kRas	% Local Parameter:   id =  k_Raf_RasActive, name = k_Raf_RasActive
	reaction_Raf_activationBy_kRas_k_Raf_RasActive=0.884096;
	% Local Parameter:   id =  n_Raf_RasActive, name = n_Raf_RasActive
	reaction_Raf_activationBy_kRas_n_Raf_RasActive=1.0;
	% Local Parameter:   id =  KM_Raf_RasActive, name = KM_Raf_RasActive
	reaction_Raf_activationBy_kRas_KM_Raf_RasActive=62464.6;

	reaction_Raf_activationBy_kRas=x(5)*reaction_Raf_activationBy_kRas_k_Raf_RasActive*x(4)^reaction_Raf_activationBy_kRas_n_Raf_RasActive/(reaction_Raf_activationBy_kRas_KM_Raf_RasActive+x(4)^reaction_Raf_activationBy_kRas_n_Raf_RasActive);

% Reaction: id = Mek_activationBy_Raf, name = Mek activation by Raf	% Local Parameter:   id =  k_Mek_PP2A, name = k_Mek_PP2A
	reaction_Mek_activationBy_Raf_k_Mek_PP2A=185.759;
	% Local Parameter:   id =  n_Mek_PP2A, name = n_Mek_PP2A
	reaction_Mek_activationBy_Raf_n_Mek_PP2A=1.0;
	% Local Parameter:   id =  KM_MekPP2A, name = KM_MekPP2A
	reaction_Mek_activationBy_Raf_KM_MekPP2A=4768350.0;

	reaction_Mek_activationBy_Raf=x(16)*reaction_Mek_activationBy_Raf_k_Mek_PP2A*x(17)^reaction_Mek_activationBy_Raf_n_Mek_PP2A/(reaction_Mek_activationBy_Raf_KM_MekPP2A^reaction_Mek_activationBy_Raf_n_Mek_PP2A+x(17)^reaction_Mek_activationBy_Raf_n_Mek_PP2A);

% Reaction: id = Raf_deactivationBy_Akt, name = Raf deactivation by Akt	% Local Parameter:   id =  k_Raf_AKT, name = k_Raf_AKT
	reaction_Raf_deactivationBy_Akt_k_Raf_AKT=15.1212;
	% Local Parameter:   id =  n_Raf_AKT, name = n_Raf_AKT
	reaction_Raf_deactivationBy_Akt_n_Raf_AKT=1.0;
	% Local Parameter:   id =  KM_Raf_AKT, name = KM_Raf_AKT
	reaction_Raf_deactivationBy_Akt_KM_Raf_AKT=119355.0;

	reaction_Raf_deactivationBy_Akt=x(12)*reaction_Raf_deactivationBy_Akt_k_Raf_AKT*x(16)^reaction_Raf_deactivationBy_Akt_n_Raf_AKT/(reaction_Raf_deactivationBy_Akt_KM_Raf_AKT^reaction_Raf_deactivationBy_Akt_n_Raf_AKT+x(16)^reaction_Raf_deactivationBy_Akt_n_Raf_AKT);

% Reaction: id = Ras_deactivation, name = Ras deactivation by RasGab	% Local Parameter:   id =  k_RasActiveRasGap, name = k_RasActiveRasGap
	reaction_Ras_deactivation_k_RasActiveRasGap=1509.36;
	% Local Parameter:   id =  n_RasActiveRasGap, name = n_RasActiveRasGap
	reaction_Ras_deactivation_n_RasActiveRasGap=1.0;
	% Local Parameter:   id =  KM_RasActiveRasGap, name = KM_RasActiveRasGap
	reaction_Ras_deactivation_KM_RasActiveRasGap=1432410.0;

	reaction_Ras_deactivation=x(18)*reaction_Ras_deactivation_k_RasActiveRasGap*x(5)^reaction_Ras_deactivation_n_RasActiveRasGap/(reaction_Ras_deactivation_KM_RasActiveRasGap^reaction_Ras_deactivation_n_RasActiveRasGap+x(5)^reaction_Ras_deactivation_n_RasActiveRasGap);

% Reaction: id = Mek_deactivation, name = Mek deactivation by PP2A	% Local Parameter:   id =  k_MekActivePP2A, name = k_MekActivePP2A
	reaction_Mek_deactivation_k_MekActivePP2A=2.83243;
	% Local Parameter:   id =  n_MekActivePP2A, name = n_MekActivePP2A
	reaction_Mek_deactivation_n_MekActivePP2A=1.0;
	% Local Parameter:   id =  KM_MekActivePP2A, name = KM_MekActivePP2A
	reaction_Mek_deactivation_KM_MekActivePP2A=518753.0;

	reaction_Mek_deactivation=x(14)*reaction_Mek_deactivation_k_MekActivePP2A*x(6)^reaction_Mek_deactivation_n_MekActivePP2A/(reaction_Mek_deactivation_KM_MekActivePP2A^reaction_Mek_deactivation_n_MekActivePP2A+x(6)^reaction_Mek_deactivation_n_MekActivePP2A);

% Reaction: id = IGFR_active_degradation, name = IGFR active degradation
	reaction_IGFR_active_degradation=global_par_gamma_IGFR*x(9);

% Reaction: id = PI3KCA_deactivation, name = PI3KCA deactivation
	reaction_PI3KCA_deactivation=global_par_kd_PI3K_a*x(11);

% Reaction: id = Raf_deactivation, name = Raf deactivation by RafPP	% Local Parameter:   id =  k_RasActive_RafPP, name = k_RasActive_RafPP
	reaction_Raf_deactivation_k_RasActive_RafPP=0.126329;
	% Local Parameter:   id =  n_RasActive_RafPP, name = n_RasActive_RafPP
	reaction_Raf_deactivation_n_RasActive_RafPP=1.0;
	% Local Parameter:   id =  KM_RasActive_RafPP, name = KM_RasActive_RafPP
	reaction_Raf_deactivation_KM_RasActive_RafPP=1061.71;

	reaction_Raf_deactivation=x(19)*reaction_Raf_deactivation_k_RasActive_RafPP*x(16)^reaction_Raf_deactivation_n_RasActive_RafPP/(reaction_Raf_deactivation_KM_RasActive_RafPP^reaction_Raf_deactivation_n_RasActive_RafPP+x(16)^reaction_Raf_deactivation_n_RasActive_RafPP);

% Reaction: id = P90_activationBy_ERK, name = P90 activation by ERK
	reaction_P90_activationBy_ERK=x(8)*global_par_k_P90Rsk_ERKActive*x(20)/(global_par_KM_P90Rsk_ERKActive+x(20));

% Reaction: id = P90_deactivation, name = P90 deactivation	% Local Parameter:   id =  kd_P90Rsk, name = kd_P90Rsk
	reaction_P90_deactivation_kd_P90Rsk=0.005;

	reaction_P90_deactivation=reaction_P90_deactivation_kd_P90Rsk*x(21);

	xdot=zeros(21,1);
	
% Species:   id = EGFR_active, name = EGFR_active, affected by kineticLaw
	xdot(1) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_SOS_conformational_activation) + ( 1.0 * reaction_SOS_conformational_activation) + (-1.0 * reaction_EGFR_degradation) + (-1.0 * reaction_PI3KCA_activationBy_EGF) + ( 1.0 * reaction_PI3KCA_activationBy_EGF));
	
% Species:   id = D_SOS, name = D_SOS, affected by kineticLaw
	xdot(2) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_SOS_conformational_activation) + ( 1.0 * reaction_SOS_deactivationBy_P90) + (-1.0 * reaction_SOS_activationBy_IGF));
	
% Species:   id = A_SOS, name = A_SOS, affected by kineticLaw
	xdot(3) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_SOS_conformational_activation) + (-1.0 * reaction_kRas_Activation) + ( 1.0 * reaction_kRas_Activation) + (-1.0 * reaction_SOS_deactivationBy_P90) + ( 1.0 * reaction_SOS_activationBy_IGF));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(4) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_Raf_activationBy_kRas) + ( 1.0 * reaction_Raf_deactivationBy_Akt) + ( 1.0 * reaction_Raf_deactivation));
	
% Species:   id = Ras_active, name = Ras_active, affected by kineticLaw
	xdot(5) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_kRas_Activation) + (-1.0 * reaction_PI3KCA_activationBy_kRas) + ( 1.0 * reaction_PI3KCA_activationBy_kRas) + (-1.0 * reaction_Raf_activationBy_kRas) + ( 1.0 * reaction_Raf_activationBy_kRas) + (-1.0 * reaction_Ras_deactivation));
	
% Species:   id = Mek_active, name = Mek_active, affected by kineticLaw
	xdot(6) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_ERK_activationBy_Mek) + ( 1.0 * reaction_ERK_activationBy_Mek) + ( 1.0 * reaction_Mek_activationBy_Raf) + (-1.0 * reaction_Mek_deactivation));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(7) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_ERK_activationBy_Mek) + ( 1.0 * reaction_ERK_deactivationBy_PP2A));
	
% Species:   id = ERK_active, name = ERK_active, affected by kineticLaw
	xdot(8) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_ERK_activationBy_Mek) + (-1.0 * reaction_ERK_deactivationBy_PP2A) + (-1.0 * reaction_P90_activationBy_ERK) + ( 1.0 * reaction_P90_activationBy_ERK));
	
% Species:   id = IGFR_active, name = IGFR_active, affected by kineticLaw
	xdot(9) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_SOS_activationBy_IGF) + ( 1.0 * reaction_SOS_activationBy_IGF) + (-1.0 * reaction_PI3KCA_activationBy_IGF1R) + ( 1.0 * reaction_PI3KCA_activationBy_IGF1R) + (-1.0 * reaction_IGFR_active_degradation));
	
% Species:   id = PI3KCA, name = PI3KCA, affected by kineticLaw
	xdot(10) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_PI3KCA_activationBy_IGF1R) + (-1.0 * reaction_PI3KCA_activationBy_EGF) + (-1.0 * reaction_PI3KCA_activationBy_kRas) + ( 1.0 * reaction_PI3KCA_deactivation));
	
% Species:   id = PI3KCA_active, name = PI3KCA_active, affected by kineticLaw
	xdot(11) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_PI3KCA_activationBy_IGF1R) + ( 1.0 * reaction_PI3KCA_activationBy_EGF) + (-1.0 * reaction_Akt_activationBy_PI3KCA) + ( 1.0 * reaction_Akt_activationBy_PI3KCA) + ( 1.0 * reaction_PI3KCA_activationBy_kRas) + (-1.0 * reaction_PI3KCA_deactivation));
	
% Species:   id = AKT_active, name = AKT_active, affected by kineticLaw
	xdot(12) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_Akt_activationBy_PI3KCA) + (-1.0 * reaction_Akt_deactivation) + (-1.0 * reaction_Raf_deactivationBy_Akt) + ( 1.0 * reaction_Raf_deactivationBy_Akt));
	
% Species:   id = AKT, name = AKT, affected by kineticLaw
	xdot(13) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_Akt_activationBy_PI3KCA) + ( 1.0 * reaction_Akt_deactivation));
	
% Species:   id = PP2A, name = PP2A, affected by kineticLaw
	xdot(14) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_ERK_deactivationBy_PP2A) + ( 1.0 * reaction_ERK_deactivationBy_PP2A) + (-1.0 * reaction_Mek_deactivation) + ( 1.0 * reaction_Mek_deactivation));
	
% Species:   id = Ras, name = Ras, affected by kineticLaw
	xdot(15) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_kRas_Activation) + ( 1.0 * reaction_Ras_deactivation));
	
% Species:   id = Raf_active, name = Raf_active, affected by kineticLaw
	xdot(16) = (1/(compartment_cell_nsclc))*(( 1.0 * reaction_Raf_activationBy_kRas) + (-1.0 * reaction_Mek_activationBy_Raf) + ( 1.0 * reaction_Mek_activationBy_Raf) + (-1.0 * reaction_Raf_deactivationBy_Akt) + (-1.0 * reaction_Raf_deactivation));
	
% Species:   id = Mek, name = Mek, affected by kineticLaw
	xdot(17) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_Mek_activationBy_Raf) + ( 1.0 * reaction_Mek_deactivation));
	
% Species:   id = RasGapActive, name = RasGapActive, affected by kineticLaw
	xdot(18) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_Ras_deactivation) + ( 1.0 * reaction_Ras_deactivation));
	
% Species:   id = RafPP, name = RafPP, affected by kineticLaw
	xdot(19) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_Raf_deactivation) + ( 1.0 * reaction_Raf_deactivation));
	
% Species:   id = P90RskInactive, name = P90RskInactive, affected by kineticLaw
	xdot(20) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_P90_activationBy_ERK) + ( 1.0 * reaction_P90_deactivation));
	
% Species:   id = P90Rsk_Active, name = P90Rsk_Active, affected by kineticLaw
	xdot(21) = (1/(compartment_cell_nsclc))*((-1.0 * reaction_SOS_deactivationBy_P90) + ( 1.0 * reaction_SOS_deactivationBy_P90) + ( 1.0 * reaction_P90_activationBy_ERK) + (-1.0 * reaction_P90_deactivation));
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


