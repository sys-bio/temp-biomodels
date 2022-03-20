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
% Model name = Neves2008 - Role of cell shape and size in controlling intracellular signalling
%
% is http://identifiers.org/biomodels.db/MODEL8609366518
% is http://identifiers.org/biomodels.db/BIOMD0000000182
% isDescribedBy http://identifiers.org/pubmed/18485874
%


function main()
%Initial conditions vector
	x0=zeros(37,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 2167.2;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 240.8;
	x0(8) = 3010000.0;
	x0(9) = 0.0;
	x0(10) = 120.4;
	x0(11) = 120.4;
	x0(12) = 94.0;
	x0(13) = 0.0;
	x0(14) = 6020.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 108.36;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 120.4;
	x0(22) = 0.0;
	x0(23) = 300.0;
	x0(24) = 3010000.0;
	x0(25) = 0.602;
	x0(26) = 60.2;
	x0(27) = 216.72;
	x0(28) = 120.4;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 301.0;
	x0(35) = 0.0;
	x0(36) = 60.2;
	x0(37) = 0.0;


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

% Compartment: id = cyto, name = cyto, constant
	compartment_cyto=1.0;
% Compartment: id = extra, name = extra, constant
	compartment_extra=0.111111111111111;
% Compartment: id = cyto_mem, name = cyto_mem, constant
	compartment_cyto_mem=0.2;
% Parameter:   id =  KMOLE, name = KMOLE
	global_par_KMOLE=0.00166112956810631;
% Parameter:   id =  Vmax_pde4_p_pde4_p, name = Vmax_pde4_p_pde4_p
% Parameter:   id =  kcat_PPase_Raf, name = kcat_PPase_Raf
	global_par_kcat_PPase_Raf=5.0;
% Parameter:   id =  Vmax_PPase_Raf, name = Vmax_PPase_Raf
% Parameter:   id =  Vmax_PDE4_PDE4, name = Vmax_PDE4_PDE4
% Parameter:   id =  Vmax_MEK_activates_MAPK, name = Vmax_MEK_activates_MAPK
% Parameter:   id =  kcat_PKA_activates_Raf, name = kcat_PKA_activates_Raf
	global_par_kcat_PKA_activates_Raf=10.0;
% Parameter:   id =  Vmax_PKA_activates_Raf, name = Vmax_PKA_activates_Raf
% Parameter:   id =  Vmax_AC_active_AC_active, name = Vmax_AC_active_AC_active
% Parameter:   id =  Vmax_highKM_PDE, name = Vmax_highKM_PDE
% Parameter:   id =  kcat_PKA_P_PTP, name = kcat_PKA_P_PTP
	global_par_kcat_PKA_P_PTP=0.2;
% Parameter:   id =  Vmax_PKA_P_PTP, name = Vmax_PKA_P_PTP
% Parameter:   id =  Vmax_AC_basal_AC_basal, name = Vmax_AC_basal_AC_basal
% Parameter:   id =  Vmax_grk_GRK, name = Vmax_grk_GRK
% Parameter:   id =  Vmax_PKA_P_PDE, name = Vmax_PKA_P_PDE
% Parameter:   id =  Vmax_Raf_activates_MEK, name = Vmax_Raf_activates_MEK
% Parameter:   id =  kcat_PTP_PKA, name = kcat_PTP_PKA
	global_par_kcat_PTP_PKA=0.1;
% Parameter:   id =  Vmax_PTP_PKA, name = Vmax_PTP_PKA
% Parameter:   id =  kcat_PTP, name = kcat_PTP
	global_par_kcat_PTP=1.06;
% Parameter:   id =  Vmax_PTP, name = Vmax_PTP
% Parameter:   id =  kcat_PPase_MAPK, name = kcat_PPase_MAPK
	global_par_kcat_PPase_MAPK=0.636;
% Parameter:   id =  Vmax_PPase_MAPK, name = Vmax_PPase_MAPK
% Parameter:   id =  Vmax_pp2a_4_pp2a_4, name = Vmax_pp2a_4_pp2a_4
% Parameter:   id =  kcat_pp_ptp_pp_ptp, name = kcat_pp_ptp_pp_ptp
	global_par_kcat_pp_ptp_pp_ptp=5.0;
% Parameter:   id =  Vmax_pp_ptp, name = Vmax_pp_ptp
% Parameter:   id =  Vmax_GRK_bg_GRK_bg, name = Vmax_GRK_bg_GRK_bg
% Parameter:   id =  kcat_PPase_mek, name = kcat_PPase_mek
	global_par_kcat_PPase_mek=5.0;
% Parameter:   id =  Vmax_PPase_mek, name = Vmax_PPase_mek
% assignmentRule: variable = Vmax_pde4_p_pde4_p
	global_par_Vmax_pde4_p_pde4_p=20*0.00166112956810631*x(37);
% assignmentRule: variable = Vmax_PPase_Raf
	global_par_Vmax_PPase_Raf=global_par_kcat_PPase_Raf*0.00166112956810631*x(26);
% assignmentRule: variable = Vmax_PDE4_PDE4
	global_par_Vmax_PDE4_PDE4=8*0.00166112956810631*x(7);
% assignmentRule: variable = Vmax_MEK_activates_MAPK
	global_par_Vmax_MEK_activates_MAPK=0.15*0.00166112956810631*x(18);
% assignmentRule: variable = Vmax_PKA_activates_Raf
	global_par_Vmax_PKA_activates_Raf=global_par_kcat_PKA_activates_Raf*0.00166112956810631*x(22);
% assignmentRule: variable = Vmax_AC_active_AC_active
	global_par_Vmax_AC_active_AC_active=8.5*x(1);
% assignmentRule: variable = Vmax_highKM_PDE
	global_par_Vmax_highKM_PDE=8*0.00166112956810631*x(34);
% assignmentRule: variable = Vmax_PKA_P_PTP
	global_par_Vmax_PKA_P_PTP=global_par_kcat_PKA_P_PTP*0.00166112956810631*x(22);
% assignmentRule: variable = Vmax_AC_basal_AC_basal
	global_par_Vmax_AC_basal_AC_basal=0.2*x(23);
% assignmentRule: variable = Vmax_grk_GRK
	global_par_Vmax_grk_GRK=0.104*0.00166112956810631*x(25);
% assignmentRule: variable = Vmax_PKA_P_PDE
	global_par_Vmax_PKA_P_PDE=10*0.00166112956810631*x(22);
% assignmentRule: variable = Vmax_Raf_activates_MEK
	global_par_Vmax_Raf_activates_MEK=0.105*0.00166112956810631*x(19);
% assignmentRule: variable = Vmax_PTP_PKA
	global_par_Vmax_PTP_PKA=global_par_kcat_PTP_PKA*0.00166112956810631*x(29);
% assignmentRule: variable = Vmax_PTP
	global_par_Vmax_PTP=global_par_kcat_PTP*0.00166112956810631*x(28);
% assignmentRule: variable = Vmax_PPase_MAPK
	global_par_Vmax_PPase_MAPK=global_par_kcat_PPase_MAPK*0.00166112956810631*x(26);
% assignmentRule: variable = Vmax_pp2a_4_pp2a_4
	global_par_Vmax_pp2a_4_pp2a_4=5*0.00166112956810631*x(11);
% assignmentRule: variable = Vmax_pp_ptp
	global_par_Vmax_pp_ptp=global_par_kcat_pp_ptp_pp_ptp*0.00166112956810631*x(36);
% assignmentRule: variable = Vmax_GRK_bg_GRK_bg
	global_par_Vmax_GRK_bg_GRK_bg=1.34*0.00166112956810631*x(5);
% assignmentRule: variable = Vmax_PPase_mek
	global_par_Vmax_PPase_mek=global_par_kcat_PPase_mek*0.00166112956810631*x(26);

% Reaction: id = activate_Gs, name = activate_Gs	% Local Parameter:   id =  I, name = I
	reaction_activate_Gs_I=0.0;
	% Local Parameter:   id =  Kf_activate_Gs, name = Kf_activate_Gs
	reaction_activate_Gs_Kf_activate_Gs=0.025;
	% Local Parameter:   id =  Kr_activate_Gs, name = Kr_activate_Gs
	reaction_activate_Gs_Kr_activate_Gs=0.0;

	reaction_activate_Gs=(reaction_activate_Gs_Kf_activate_Gs*x(33)-reaction_activate_Gs_Kr_activate_Gs*x(15)*0.00166112956810631*x(20)*0.00166112956810631*x(4))*compartment_cyto_mem;

% Reaction: id = pde4_p, name = pde4_p	% Local Parameter:   id =  Km_pde4_p, name = Km_pde4_p
	reaction_pde4_p_Km_pde4_p=1.3;

	reaction_pde4_p=global_par_Vmax_pde4_p_pde4_p*0.00166112956810631*x(35)*1/(reaction_pde4_p_Km_pde4_p+0.00166112956810631*x(35))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = PPase_Raf, name = PPase_Raf	% Local Parameter:   id =  Km, name = Km
	reaction_PPase_Raf_Km=15.7;

	reaction_PPase_Raf=global_par_Vmax_PPase_Raf*0.00166112956810631*x(19)*1/(reaction_PPase_Raf_Km+0.00166112956810631*x(19))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = iso_binds_BAR, name = iso_binds_BAR	% Local Parameter:   id =  I, name = I
	reaction_iso_binds_BAR_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_iso_binds_BAR_Kf=1.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_iso_binds_BAR_Kr=0.2;

	reaction_iso_binds_BAR=(reaction_iso_binds_BAR_Kf*x(12)*0.00166112956810631*x(14)+(-reaction_iso_binds_BAR_Kr*x(15)))*compartment_cyto_mem;

% Reaction: id = PDE4, name = PDE4	% Local Parameter:   id =  Km_PDE4, name = Km_PDE4
	reaction_PDE4_Km_PDE4=1.3;

	reaction_PDE4=global_par_Vmax_PDE4_PDE4*0.00166112956810631*x(35)*1/(reaction_PDE4_Km_PDE4+0.00166112956810631*x(35))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = bg_binds_GRK, name = bg_binds_GRK	% Local Parameter:   id =  Kf_bg_binds_GRK, name = Kf_bg_binds_GRK
	reaction_bg_binds_GRK_Kf_bg_binds_GRK=1.0;
	% Local Parameter:   id =  Kr_bg_binds_GRK, name = Kr_bg_binds_GRK
	reaction_bg_binds_GRK_Kr_bg_binds_GRK=0.25;

	reaction_bg_binds_GRK=(reaction_bg_binds_GRK_Kf_bg_binds_GRK*0.00166112956810631*x(25)*0.00166112956810631*x(20)+(-reaction_bg_binds_GRK_Kr_bg_binds_GRK*0.00166112956810631*x(5)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = MEK_activates_MAPK, name = MEK_activates_MAPK	% Local Parameter:   id =  Km, name = Km
	reaction_MEK_activates_MAPK_Km=0.046296;

	reaction_MEK_activates_MAPK=global_par_Vmax_MEK_activates_MAPK*0.00166112956810631*x(27)*1/(reaction_MEK_activates_MAPK_Km+0.00166112956810631*x(27))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = PKA_activates_Raf, name = PKA_activates_Raf	% Local Parameter:   id =  Km, name = Km
	reaction_PKA_activates_Raf_Km=0.5;

	reaction_PKA_activates_Raf=global_par_Vmax_PKA_activates_Raf*0.00166112956810631*x(21)*1/(reaction_PKA_activates_Raf_Km+0.00166112956810631*x(21))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = AC_active, name = AC_active	% Local Parameter:   id =  I, name = I
	reaction_AC_active_I=0.0;
	% Local Parameter:   id =  Km_AC_active, name = Km_AC_active
	reaction_AC_active_Km_AC_active=32.0;

	reaction_AC_active=global_par_Vmax_AC_active_AC_active*0.00166112956810631*x(8)*1/(reaction_AC_active_Km_AC_active+0.00166112956810631*x(8))*compartment_cyto_mem;

% Reaction: id = GTPase, name = GTPase	% Local Parameter:   id =  Kf_GTPase, name = Kf_GTPase
	reaction_GTPase_Kf_GTPase=0.06667;
	% Local Parameter:   id =  Kr_GTPase, name = Kr_GTPase
	reaction_GTPase_Kr_GTPase=0.0;

	reaction_GTPase=(reaction_GTPase_Kf_GTPase*0.00166112956810631*x(4)+(-reaction_GTPase_Kr_GTPase*0.00166112956810631*x(2)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = trimer, name = trimer	% Local Parameter:   id =  Kf_trimer, name = Kf_trimer
	reaction_trimer_Kf_trimer=6.0;
	% Local Parameter:   id =  Kr_trimer, name = Kr_trimer
	reaction_trimer_Kr_trimer=0.0;

	reaction_trimer=(reaction_trimer_Kf_trimer*0.00166112956810631*x(20)*0.00166112956810631*x(2)+(-reaction_trimer_Kr_trimer*0.00166112956810631*x(3)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = G_binds_iso_BAR, name = G_binds_iso_BAR	% Local Parameter:   id =  I, name = I
	reaction_G_binds_iso_BAR_I=0.0;
	% Local Parameter:   id =  Kf_G_binds_iso_BAR, name = Kf_G_binds_iso_BAR
	reaction_G_binds_iso_BAR_Kf_G_binds_iso_BAR=10.0;
	% Local Parameter:   id =  Kr_G_binds_iso_BAR, name = Kr_G_binds_iso_BAR
	reaction_G_binds_iso_BAR_Kr_G_binds_iso_BAR=0.1;

	reaction_G_binds_iso_BAR=(reaction_G_binds_iso_BAR_Kf_G_binds_iso_BAR*x(15)*0.00166112956810631*x(3)+(-reaction_G_binds_iso_BAR_Kr_G_binds_iso_BAR*x(33)))*compartment_cyto_mem;

% Reaction: id = A2, name = A2	% Local Parameter:   id =  Kf, name = Kf
	reaction_A2_Kf=8.35;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_A2_Kr=0.0167;

	reaction_A2=(reaction_A2_Kf*0.00166112956810631*x(32)*0.00166112956810631*x(35)+(-reaction_A2_Kr*0.00166112956810631*x(22)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = highKM_PDE, name = highKM_PDE	% Local Parameter:   id =  Km, name = Km
	reaction_highKM_PDE_Km=15.0;

	reaction_highKM_PDE=global_par_Vmax_highKM_PDE*0.00166112956810631*x(35)*1/(reaction_highKM_PDE_Km+0.00166112956810631*x(35))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = PKA_P_PTP, name = PKA_P_PTP	% Local Parameter:   id =  Km, name = Km
	reaction_PKA_P_PTP_Km=0.1;

	reaction_PKA_P_PTP=global_par_Vmax_PKA_P_PTP*0.00166112956810631*x(28)*1/(reaction_PKA_P_PTP_Km+0.00166112956810631*x(28))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = AC_activation, name = AC_activation	% Local Parameter:   id =  I, name = I
	reaction_AC_activation_I=0.0;
	% Local Parameter:   id =  Kf_AC_activation, name = Kf_AC_activation
	reaction_AC_activation_Kf_AC_activation=500.0;
	% Local Parameter:   id =  Kr_AC_activation, name = Kr_AC_activation
	reaction_AC_activation_Kr_AC_activation=1.0;

	reaction_AC_activation=(reaction_AC_activation_Kf_AC_activation*0.00166112956810631*x(4)*x(23)+(-reaction_AC_activation_Kr_AC_activation*x(1)))*compartment_cyto_mem;

% Reaction: id = AC_basal, name = AC_basal	% Local Parameter:   id =  I, name = I
	reaction_AC_basal_I=0.0;
	% Local Parameter:   id =  Km_AC_basal, name = Km_AC_basal
	reaction_AC_basal_Km_AC_basal=1030.0;

	reaction_AC_basal=global_par_Vmax_AC_basal_AC_basal*0.00166112956810631*x(8)*1/(reaction_AC_basal_Km_AC_basal+0.00166112956810631*x(8))*compartment_cyto_mem;

% Reaction: id = B1, name = B1	% Local Parameter:   id =  Kf, name = Kf
	reaction_B1_Kf=0.0059;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_B1_Kr=2.8E-4;

	reaction_B1=(reaction_B1_Kf*0.00166112956810631*x(10)*0.00166112956810631*x(35)+(-reaction_B1_Kr*0.00166112956810631*x(30)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = GRK, name = GRK	% Local Parameter:   id =  I, name = I
	reaction_GRK_I=0.0;
	% Local Parameter:   id =  Km_grk, name = Km_grk
	reaction_GRK_Km_grk=15.0;

	reaction_GRK=global_par_Vmax_grk_GRK*x(15)*1/(reaction_GRK_Km_grk+x(15))*compartment_cyto_mem;

% Reaction: id = PKA_P_PDE, name = PKA_P_PDE	% Local Parameter:   id =  Km, name = Km
	reaction_PKA_P_PDE_Km=0.5;

	reaction_PKA_P_PDE=global_par_Vmax_PKA_P_PDE*0.00166112956810631*x(7)*1/(reaction_PKA_P_PDE_Km+0.00166112956810631*x(7))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = Raf_activates_MEK, name = Raf_activates_MEK	% Local Parameter:   id =  Km, name = Km
	reaction_Raf_activates_MEK_Km=0.15909;

	reaction_Raf_activates_MEK=global_par_Vmax_Raf_activates_MEK*0.00166112956810631*x(17)*1/(reaction_Raf_activates_MEK_Km+0.00166112956810631*x(17))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = PTP_PKA, name = PTP_PKA	% Local Parameter:   id =  Km, name = Km
	reaction_PTP_PKA_Km=9.0;

	reaction_PTP_PKA=global_par_Vmax_PTP_PKA*0.00166112956810631*x(16)*1/(reaction_PTP_PKA_Km+0.00166112956810631*x(16))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = B2, name = B2	% Local Parameter:   id =  Kf, name = Kf
	reaction_B2_Kf=0.0059;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_B2_Kr=2.8E-4;

	reaction_B2=(reaction_B2_Kf*0.00166112956810631*x(30)*0.00166112956810631*x(35)+(-reaction_B2_Kr*0.00166112956810631*x(31)))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = PTP, name = PTP	% Local Parameter:   id =  Km, name = Km
	reaction_PTP_Km=0.46;

	reaction_PTP=global_par_Vmax_PTP*0.00166112956810631*x(16)*1/(reaction_PTP_Km+0.00166112956810631*x(16))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = iso_binds_BAR_g, name = iso_binds_BAR_g	% Local Parameter:   id =  I, name = I
	reaction_iso_binds_BAR_g_I=0.0;
	% Local Parameter:   id =  Kf, name = Kf
	reaction_iso_binds_BAR_g_Kf=1.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_iso_binds_BAR_g_Kr=0.062;

	reaction_iso_binds_BAR_g=(reaction_iso_binds_BAR_g_Kf*0.00166112956810631*x(14)*x(13)+(-reaction_iso_binds_BAR_g_Kr*x(33)))*compartment_cyto_mem;

% Reaction: id = PPase_MAPK, name = PPase_MAPK	% Local Parameter:   id =  Km, name = Km
	reaction_PPase_MAPK_Km=0.77;

	reaction_PPase_MAPK=global_par_Vmax_PPase_MAPK*0.00166112956810631*x(16)*1/(reaction_PPase_MAPK_Km+0.00166112956810631*x(16))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = pp2a_4, name = pp2a_4	% Local Parameter:   id =  Km_pp2a_4, name = Km_pp2a_4
	reaction_pp2a_4_Km_pp2a_4=8.0;

	reaction_pp2a_4=global_par_Vmax_pp2a_4_pp2a_4*0.00166112956810631*x(37)*1/(reaction_pp2a_4_Km_pp2a_4+0.00166112956810631*x(37))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = pp_ptp, name = pp_ptp	% Local Parameter:   id =  Km, name = Km
	reaction_pp_ptp_Km=6.0;

	reaction_pp_ptp=global_par_Vmax_pp_ptp*0.00166112956810631*x(29)*1/(reaction_pp_ptp_Km+0.00166112956810631*x(29))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = GRK_bg, name = GRK_bg	% Local Parameter:   id =  I, name = I
	reaction_GRK_bg_I=0.0;
	% Local Parameter:   id =  Km_GRK_bg, name = Km_GRK_bg
	reaction_GRK_bg_Km_GRK_bg=4.0;

	reaction_GRK_bg=global_par_Vmax_GRK_bg_GRK_bg*x(15)*1/(reaction_GRK_bg_Km_GRK_bg+x(15))*compartment_cyto_mem;

% Reaction: id = G_binds_BAR, name = G_binds_BAR	% Local Parameter:   id =  I, name = I
	reaction_G_binds_BAR_I=0.0;
	% Local Parameter:   id =  Kf_G_binds_BAR, name = Kf_G_binds_BAR
	reaction_G_binds_BAR_Kf_G_binds_BAR=0.3;
	% Local Parameter:   id =  Kr_G_binds_BAR, name = Kr_G_binds_BAR
	reaction_G_binds_BAR_Kr_G_binds_BAR=0.1;

	reaction_G_binds_BAR=(reaction_G_binds_BAR_Kf_G_binds_BAR*x(12)*0.00166112956810631*x(3)+(-reaction_G_binds_BAR_Kr_G_binds_BAR*x(13)))*compartment_cyto_mem;

% Reaction: id = PPase_mek, name = PPase_mek	% Local Parameter:   id =  Km, name = Km
	reaction_PPase_mek_Km=15.7;

	reaction_PPase_mek=global_par_Vmax_PPase_mek*0.00166112956810631*x(18)*1/(reaction_PPase_mek_Km+0.00166112956810631*x(18))*compartment_cyto*1*1/global_par_KMOLE;

% Reaction: id = A1, name = A1	% Local Parameter:   id =  Kf, name = Kf
	reaction_A1_Kf=8.35;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_A1_Kr=0.0167;

	reaction_A1=(reaction_A1_Kf*0.00166112956810631*x(31)*0.00166112956810631*x(35)+(-reaction_A1_Kr*0.00166112956810631*x(32)))*compartment_cyto*1*1/global_par_KMOLE;

	xdot=zeros(37,1);
	
% Species:   id = AC_active_cyto_mem, name = AC_active_cyto_mem, affected by kineticLaw
	xdot(1) = (1/(compartment_cyto_mem))*(( 1.0 * reaction_AC_activation));
	
% Species:   id = G_GDP_cyto, name = G_GDP_cyto, affected by kineticLaw
	xdot(2) = (1/(compartment_cyto))*(( 1.0 * reaction_GTPase) + (-1.0 * reaction_trimer));
	
% Species:   id = G_protein_cyto, name = G_protein_cyto, affected by kineticLaw
	xdot(3) = (1/(compartment_cyto))*(( 1.0 * reaction_trimer) + (-1.0 * reaction_G_binds_iso_BAR) + (-1.0 * reaction_G_binds_BAR));
	
% Species:   id = G_a_s_cyto, name = G_a_s_cyto, affected by kineticLaw
	xdot(4) = (1/(compartment_cyto))*(( 1.0 * reaction_activate_Gs) + (-1.0 * reaction_GTPase) + (-1.0 * reaction_AC_activation));
	
% Species:   id = GRK_bg_cyto, name = GRK_bg_cyto, affected by kineticLaw
	xdot(5) = (1/(compartment_cyto))*(( 1.0 * reaction_bg_binds_GRK));
	
% Species:   id = iso_BAR_p_cyto_mem, name = iso_BAR_p_cyto_mem, affected by kineticLaw
	xdot(6) = (1/(compartment_cyto_mem))*(( 1.0 * reaction_GRK) + ( 1.0 * reaction_GRK_bg));
	
% Species:   id = PDE4_cyto, name = PDE4_cyto, affected by kineticLaw
	xdot(7) = (1/(compartment_cyto))*((-1.0 * reaction_PKA_P_PDE) + ( 1.0 * reaction_pp2a_4));
	
% Species:   id = ATP_cyto, name = ATP_cyto, affected by kineticLaw
	xdot(8) = (1/(compartment_cyto))*((-1.0 * reaction_AC_active) + (-1.0 * reaction_AC_basal));
	
% Species:   id = AC_PKA_cyto_mem, name = AC_PKA_cyto_mem
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = R2C2_cyto, name = R2C2_cyto, affected by kineticLaw
	xdot(10) = (1/(compartment_cyto))*((-1.0 * reaction_B1));
	
% Species:   id = PP_PDE_cyto, name = PP_PDE_cyto
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = BAR_cyto_mem, name = BAR_cyto_mem, affected by kineticLaw
	xdot(12) = (1/(compartment_cyto_mem))*((-1.0 * reaction_iso_binds_BAR) + (-1.0 * reaction_G_binds_BAR));
	
% Species:   id = BAR_G_cyto_mem, name = BAR_G_cyto_mem, affected by kineticLaw
	xdot(13) = (1/(compartment_cyto_mem))*((-1.0 * reaction_iso_binds_BAR_g) + ( 1.0 * reaction_G_binds_BAR));
	
% Species:   id = iso_extra, name = iso_extra, affected by kineticLaw
	xdot(14) = (1/(compartment_extra))*((-1.0 * reaction_iso_binds_BAR) + (-1.0 * reaction_iso_binds_BAR_g));
	
% Species:   id = iso_BAR_cyto_mem, name = iso_BAR_cyto_mem, affected by kineticLaw
	xdot(15) = (1/(compartment_cyto_mem))*(( 1.0 * reaction_activate_Gs) + ( 1.0 * reaction_iso_binds_BAR) + (-1.0 * reaction_G_binds_iso_BAR) + (-1.0 * reaction_GRK) + (-1.0 * reaction_GRK_bg));
	
% Species:   id = MAPK_active_cyto, name = MAPK_active_cyto, affected by kineticLaw
	xdot(16) = (1/(compartment_cyto))*(( 1.0 * reaction_MEK_activates_MAPK) + (-1.0 * reaction_PTP_PKA) + (-1.0 * reaction_PTP) + (-1.0 * reaction_PPase_MAPK));
	
% Species:   id = MEK_cyto, name = MEK_cyto, affected by kineticLaw
	xdot(17) = (1/(compartment_cyto))*((-1.0 * reaction_Raf_activates_MEK) + ( 1.0 * reaction_PPase_mek));
	
% Species:   id = MEK_active_cyto, name = MEK_active_cyto, affected by kineticLaw
	xdot(18) = (1/(compartment_cyto))*(( 1.0 * reaction_Raf_activates_MEK) + (-1.0 * reaction_PPase_mek));
	
% Species:   id = B_Raf_active_cyto, name = B_Raf_active_cyto, affected by kineticLaw
	xdot(19) = (1/(compartment_cyto))*((-1.0 * reaction_PPase_Raf) + ( 1.0 * reaction_PKA_activates_Raf));
	
% Species:   id = bg_cyto, name = bg_cyto, affected by kineticLaw
	xdot(20) = (1/(compartment_cyto))*(( 1.0 * reaction_activate_Gs) + (-1.0 * reaction_bg_binds_GRK) + (-1.0 * reaction_trimer));
	
% Species:   id = B_Raf_cyto, name = B_Raf_cyto, affected by kineticLaw
	xdot(21) = (1/(compartment_cyto))*(( 1.0 * reaction_PPase_Raf) + (-1.0 * reaction_PKA_activates_Raf));
	
% Species:   id = PKA_cyto, name = PKA_cyto, affected by kineticLaw
	xdot(22) = (1/(compartment_cyto))*(( 1.0 * reaction_A2));
	
% Species:   id = AC_cyto_mem, name = AC_cyto_mem, affected by kineticLaw
	xdot(23) = (1/(compartment_cyto_mem))*((-1.0 * reaction_AC_activation));
	
% Species:   id = AMP_cyto, name = AMP_cyto, affected by kineticLaw
	xdot(24) = (1/(compartment_cyto))*(( 1.0 * reaction_pde4_p) + ( 1.0 * reaction_PDE4) + ( 1.0 * reaction_highKM_PDE));
	
% Species:   id = GRK_cyto, name = GRK_cyto, affected by kineticLaw
	xdot(25) = (1/(compartment_cyto))*((-1.0 * reaction_bg_binds_GRK));
	
% Species:   id = PP2A_cyto, name = PP2A_cyto
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
	
% Species:   id = MAPK_cyto, name = MAPK_cyto, affected by kineticLaw
	xdot(27) = (1/(compartment_cyto))*((-1.0 * reaction_MEK_activates_MAPK) + ( 1.0 * reaction_PTP_PKA) + ( 1.0 * reaction_PTP) + ( 1.0 * reaction_PPase_MAPK));
	
% Species:   id = PTP_cyto, name = PTP_cyto, affected by kineticLaw
	xdot(28) = (1/(compartment_cyto))*((-1.0 * reaction_PKA_P_PTP) + ( 1.0 * reaction_pp_ptp));
	
% Species:   id = PTP_PKA_cyto, name = PTP_PKA_cyto, affected by kineticLaw
	xdot(29) = (1/(compartment_cyto))*(( 1.0 * reaction_PKA_P_PTP) + (-1.0 * reaction_pp_ptp));
	
% Species:   id = c_R2C2_cyto, name = c_R2C2_cyto, affected by kineticLaw
	xdot(30) = (1/(compartment_cyto))*(( 1.0 * reaction_B1) + (-1.0 * reaction_B2));
	
% Species:   id = c2_R2C2_cyto, name = c2_R2C2_cyto, affected by kineticLaw
	xdot(31) = (1/(compartment_cyto))*(( 1.0 * reaction_B2) + (-1.0 * reaction_A1));
	
% Species:   id = c3_R2C2_cyto, name = c3_R2C2_cyto, affected by kineticLaw
	xdot(32) = (1/(compartment_cyto))*((-1.0 * reaction_A2) + ( 1.0 * reaction_A1));
	
% Species:   id = iso_BAR_G_cyto_mem, name = iso_BAR_G_cyto_mem, affected by kineticLaw
	xdot(33) = (1/(compartment_cyto_mem))*((-1.0 * reaction_activate_Gs) + ( 1.0 * reaction_G_binds_iso_BAR) + ( 1.0 * reaction_iso_binds_BAR_g));
	
% Species:   id = PDE_high_km_cyto, name = PDE_high_km_cyto
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = cAMP_cyto, name = cAMP_cyto, affected by kineticLaw
	xdot(35) = (1/(compartment_cyto))*((-1.0 * reaction_pde4_p) + (-1.0 * reaction_PDE4) + ( 1.0 * reaction_AC_active) + (-1.0 * reaction_A2) + (-1.0 * reaction_highKM_PDE) + ( 1.0 * reaction_AC_basal) + (-1.0 * reaction_B1) + (-1.0 * reaction_B2) + (-1.0 * reaction_A1));
	
% Species:   id = PTP_PP_cyto, name = PTP_PP_cyto
% Warning species is not changed by either rules or reactions
	xdot(36) = ;
	
% Species:   id = PDE4_P_cyto, name = PDE4_P_cyto, affected by kineticLaw
	xdot(37) = (1/(compartment_cyto))*(( 1.0 * reaction_PKA_P_PDE) + (-1.0 * reaction_pp2a_4));
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


