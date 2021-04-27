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
% Model name = Tseng2012 - Circadian clock of N.crassa
%
% is http://identifiers.org/biomodels.db/MODEL1212150000
% is http://identifiers.org/biomodels.db/BIOMD0000000437
% isDescribedBy http://identifiers.org/pubmed/22496627
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000299
% isDerivedFrom http://identifiers.org/pubmed/15653726
% isDerivedFrom http://identifiers.org/pubmed/17965132
%


function main()
%Initial conditions vector
	x0=zeros(58,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.039;
	x0(8) = 6.11815;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.05281;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.22321;
	x0(30) = 0.368117;
	x0(31) = 0.07298;
	x0(32) = 0.496374;
	x0(33) = 0.1573204;
	x0(34) = 0.619449;
	x0(35) = 0.394774;
	x0(36) = 0.4285;
	x0(37) = 0.47086;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 1.0;
	x0(51) = 0.0;
	x0(52) = 0.5218;
	x0(53) = 0.636098;
	x0(54) = 1.8728;
	x0(55) = 0.985;
	x0(56) = 1.67;
	x0(57) = 0.0;
	x0(58) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = Cytoplasm, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = Nucleus, constant
	compartment_c2=1.0;
% Parameter:   id =  kmax_frq, name = k_01
	global_par_kmax_frq=7.3;
% Parameter:   id =  Km_frq, name = K_01
	global_par_Km_frq=0.1;
% Parameter:   id =  A_active_hypoWCCn_frq, name = H_01
	global_par_A_active_hypoWCCn_frq=4.0;
% Parameter:   id =  k_hypoFRQc, name = k_05
% Warning parameter k_hypoFRQc is not constant, it should be controlled by a Rule and/or events
	global_par_k_hypoFRQc=0.19;
% Parameter:   id =  kin_hypoFRQc, name = k_14
	global_par_kin_hypoFRQc=0.1;
% Parameter:   id =  k_WC1c, name = k_06
	global_par_k_WC1c=0.226;
% Parameter:   id =  k_WC2c, name = k_07
	global_par_k_WC2c=1.0;
% Parameter:   id =  k_hypoWCCc, name = k_13
	global_par_k_hypoWCCc=0.472;
% Parameter:   id =  kmaxp_hypoWCCn, name = k_23
	global_par_kmaxp_hypoWCCn=0.6;
% Parameter:   id =  Kmp_hypoFRQn_hyperWCCn, name = K_02
	global_par_Kmp_hypoFRQn_hyperWCCn=0.475;
% Parameter:   id =  I_hypoFRQn_hyperWCCn, name = H_02
	global_par_I_hypoFRQn_hyperWCCn=12.0;
% Parameter:   id =  kd_active_hypoWCCn, name = k_35
	global_par_kd_active_hypoWCCn=1.29;
% Parameter:   id =  kd_hyperFRQn, name = k_30
	global_par_kd_hyperFRQn=0.27;
% Parameter:   id =  kd_WC1c, name = k_31
	global_par_kd_WC1c=0.135;
% Parameter:   id =  kd_WC2c, name = k_32
	global_par_kd_WC2c=0.085;
% Parameter:   id =  kadd_wc1, name = k_02a01
	global_par_kadd_wc1=1.2;
% Parameter:   id =  kmax_wc2, name = k_03
	global_par_kmax_wc2=1.6;
% Parameter:   id =  kd_frq, name = k_09
	global_par_kd_frq=2.0;
% Parameter:   id =  kd_wc1, name = k_10
	global_par_kd_wc1=2.4;
% Parameter:   id =  kd_wc2, name = k_11
	global_par_kd_wc2=2.5;
% Parameter:   id =  kp_hypoFRQn, name = k_21
	global_par_kp_hypoFRQn=0.1;
% Parameter:   id =  kout_hyperFRQn, name = k_18
	global_par_kout_hyperFRQn=0.3;
% Parameter:   id =  kd_hyperFRQc, name = k_29
	global_par_kd_hyperFRQc=0.27;
% Parameter:   id =  kout_hyperWCCn, name = k_19
	global_par_kout_hyperWCCn=0.29;
% Parameter:   id =  kdp_hyperWCCc, name = k_24
	global_par_kdp_hyperWCCc=0.3;
% Parameter:   id =  kin_hypoWCCc, name = k_15
	global_par_kin_hypoWCCc=0.3;
% Parameter:   id =  kp_hypoFRQc, name = k_20
	global_par_kp_hypoFRQc=0.1;
% Parameter:   id =  kout_hypoFRQn, name = k_17
	global_par_kout_hypoFRQn=0.1;
% Parameter:   id =  kd_hyperWCCn, name = k_34
	global_par_kd_hyperWCCn=0.05;
% Parameter:   id =  kd_hyperWCCc, name = k_33
	global_par_kd_hyperWCCc=0.05;
% Parameter:   id =  kact_hypoWCCn, name = k_25
	global_par_kact_hypoWCCn=0.15;
% Parameter:   id =  kp_hypoWCCc, name = k_22
	global_par_kp_hypoWCCc=0.3;
% Parameter:   id =  on, name = on
	global_par_on=96.0;
% Parameter:   id =  off, name = off
	global_par_off=120.0;
% Parameter:   id =  k_VVDc, name = k_08
	global_par_k_VVDc=0.68;
% Parameter:   id =  kd_vvd_mRNA, name = k_12
	global_par_kd_vvd_mRNA=6.2;
% Parameter:   id =  kd_VVDc, name = k_37
	global_par_kd_VVDc=0.24;
% Parameter:   id =  kin_VVDc, name = k_16
	global_par_kin_VVDc=0.3;
% Parameter:   id =  kd_VVDn, name = k_38
	global_par_kd_VVDn=0.24;
% Parameter:   id =  T_light_on, name = T_light_on
	global_par_T_light_on=1.0E7;
% Parameter:   id =  kact_L_WCC, name = k_26
	global_par_kact_L_WCC=0.0;
% Parameter:   id =  kadd_light_frq, name = k_01a
	global_par_kadd_light_frq=320.0;
% Parameter:   id =  kadd_L_wc1, name = k_02a02
	global_par_kadd_L_wc1=90.0;
% Parameter:   id =  kact_L_WCC_light, name = kact_L_WCC_light
	global_par_kact_L_WCC_light=5.0;
% Parameter:   id =  kd_L_WCC, name = k_36
	global_par_kd_L_WCC=6.0;
% Parameter:   id =  kadd_vvd_light_mRNA, name = k_04
	global_par_kadd_vvd_light_mRNA=800.0;
% Parameter:   id =  kdfrq_hypoFRQc, name = k_09a
	global_par_kdfrq_hypoFRQc=0.356;
% Parameter:   id =  ki_wc2_transcription, name = k_03i
	global_par_ki_wc2_transcription=0.03;
% Parameter:   id =  kadd_wc2_transcription_hypoFRQn, name = k_03a
	global_par_kadd_wc2_transcription_hypoFRQn=0.03;
% Parameter:   id =  k_min_wc1, name = k_02
	global_par_k_min_wc1=1.19;
% Parameter:   id =  k_WCCVVD, name = k_27
	global_par_k_WCCVVD=20.0;
% Parameter:   id =  k_dis_WCCVVD, name = k_28
	global_par_k_dis_WCCVVD=1.8;
% Parameter:   id =  kd_WCCVVD, name = k_39
	global_par_kd_WCCVVD=0.75;
% Parameter:   id =  LP, name = LP
	global_par_LP=60.0;
% Parameter:   id =  LP2, name = LP2
	global_par_LP2=0.0;
% Parameter:   id =  LP3, name = LP3
	global_par_LP3=0.0;
% assignmentRule: variable = total_FRQ
	x(40)=x(34)+x(30)+x(35)+x(31);
% assignmentRule: variable = total_WC1
	x(44)=x(7)+x(36)+x(32)+x(37)+x(33)+x(11)+x(1)+x(2);
% assignmentRule: variable = total_FRQc
	x(41)=x(34)+x(30);
% assignmentRule: variable = total_FRQn
	x(42)=x(35)+x(31);
% assignmentRule: variable = total_hypo_FRQ
	x(49)=x(35)+x(34);
% assignmentRule: variable = total_hyper_FRQ
	x(47)=x(31)+x(30);
% assignmentRule: variable = c_hypoFRQ_to_hyperFRQ
	x(12)=x(34)/x(30);
% assignmentRule: variable = n_hypoFRQ_to_hyperFRQ
	x(38)=x(35)/x(31);
% assignmentRule: variable = total_VVD
	x(43)=x(6)+x(5)+x(2);
% assignmentRule: variable = Period
	x(3)=x(10)-x(9);
% assignmentRule: variable = total_WC2
	x(45)=x(8)+x(36)+x(37)+x(33)+x(32)+x(11)+x(1);
% assignmentRule: variable = total_hypoWCC
	x(48)=x(36)+x(37);
% assignmentRule: variable = total_WCCn
	x(46)=x(37)+x(33)+x(11)+x(1);
% assignmentRule: variable = total_hyperWCC
	x(57)=x(33)+x(32);
% assignmentRule: variable = s61
	x(58)=x(57)/x(48);

% Reaction: id = re45, name = Time
	reaction_re45=1;

% Reaction: id = frq_transcription, name = re01
	reaction_frq_transcription=global_par_kmax_frq*x(11)^global_par_A_active_hypoWCCn_frq/(global_par_Km_frq^global_par_A_active_hypoWCCn_frq+x(11)^global_par_A_active_hypoWCCn_frq)+global_par_kadd_light_frq*x(1);

% Reaction: id = wc1_transcription, name = re02
	reaction_wc1_transcription=global_par_k_min_wc1+global_par_kadd_wc1*x(11)+global_par_kadd_L_wc1*x(1);

% Reaction: id = wc2_transcription, name = re03
	reaction_wc2_transcription=global_par_kmax_wc2*1/(1+x(37)*global_par_ki_wc2_transcription)+x(35)*global_par_kadd_wc2_transcription_hypoFRQn;

% Reaction: id = vvd_transcription, name = re04
	reaction_vvd_transcription=global_par_kadd_vvd_light_mRNA*x(1);

% Reaction: id = frq_translation, name = re05
	reaction_frq_translation=x(29)*global_par_k_hypoFRQc;

% Reaction: id = wc1_translation, name = re06
	reaction_wc1_translation=global_par_k_WC1c*x(52);

% Reaction: id = wc2_translation, name = re07
	reaction_wc2_translation=x(53)*global_par_k_WC2c;

% Reaction: id = vvd_translation, name = re08
	reaction_vvd_translation=global_par_k_VVDc*x(51);

% Reaction: id = frq_mRNA_degradation, name = re09
	reaction_frq_mRNA_degradation=x(29)*(global_par_kd_frq+x(34)*global_par_kdfrq_hypoFRQc);

% Reaction: id = wc1_mRNA_degradation, name = re10
	reaction_wc1_mRNA_degradation=x(52)*global_par_kd_wc1;

% Reaction: id = wc2_mRNA_degradation, name = re11
	reaction_wc2_mRNA_degradation=x(53)*global_par_kd_wc2;

% Reaction: id = vvd_mRNA_degradation, name = re12
	reaction_vvd_mRNA_degradation=global_par_kd_vvd_mRNA*x(51);

% Reaction: id = hypoWCCc_formation, name = re13
	reaction_hypoWCCc_formation=x(7)*x(8)*global_par_k_hypoWCCc;

% Reaction: id = hypoFRQc_translocation_in_nucleus, name = re14
	reaction_hypoFRQc_translocation_in_nucleus=global_par_kin_hypoFRQc*x(34);

% Reaction: id = hypoWCCc_translocation_in_nucleus, name = re15
	reaction_hypoWCCc_translocation_in_nucleus=x(36)*global_par_kin_hypoWCCc;

% Reaction: id = VVD_nuclear_localisation, name = re16
	reaction_VVD_nuclear_localisation=global_par_kin_VVDc*x(5);

% Reaction: id = hypoFRQn_translocation_out_nucleus, name = re17
	reaction_hypoFRQn_translocation_out_nucleus=x(35)*global_par_kout_hypoFRQn;

% Reaction: id = hyperFRQn_translocation_out_nucleus, name = re18
	reaction_hyperFRQn_translocation_out_nucleus=x(31)*global_par_kout_hyperFRQn;

% Reaction: id = hyperWCCn_translocation_out_nucleus, name = re19
	reaction_hyperWCCn_translocation_out_nucleus=x(33)*global_par_kout_hyperWCCn;

% Reaction: id = hypoFRQc_phosphorylation, name = re20
	reaction_hypoFRQc_phosphorylation=x(34)*global_par_kp_hypoFRQc;

% Reaction: id = hypoFRQn_phosphorylation, name = re21
	reaction_hypoFRQn_phosphorylation=x(35)*global_par_kp_hypoFRQn;

% Reaction: id = hypoWCCc_phosphorylation, name = re22
	reaction_hypoWCCc_phosphorylation=x(36)*global_par_kp_hypoWCCc;

% Reaction: id = hypoWCCn_phosphorylation, name = re23
	reaction_hypoWCCn_phosphorylation=global_par_kmaxp_hypoWCCn*x(37)*x(35)^global_par_I_hypoFRQn_hyperWCCn/(global_par_Kmp_hypoFRQn_hyperWCCn^global_par_I_hypoFRQn_hyperWCCn+x(35)^global_par_I_hypoFRQn_hyperWCCn);

% Reaction: id = hyperWCCc_dephosphorylation, name = re24
	reaction_hyperWCCc_dephosphorylation=x(32)*global_par_kdp_hyperWCCc;

% Reaction: id = hypoWCCn_activation, name = re25
	reaction_hypoWCCn_activation=x(37)*global_par_kact_hypoWCCn;

% Reaction: id = L_WCC_formation, name = re26
	reaction_L_WCC_formation=global_par_kact_L_WCC*x(37);

% Reaction: id = WCCVVD_complex_formation, name = re27
	reaction_WCCVVD_complex_formation=x(6)*x(1)*global_par_k_WCCVVD;

% Reaction: id = WCCVVD_complex_disassociation, name = re28
	reaction_WCCVVD_complex_disassociation=x(2)*global_par_k_dis_WCCVVD;

% Reaction: id = hyperFRQc_degradation, name = re29
	reaction_hyperFRQc_degradation=x(30)*global_par_kd_hyperFRQc;

% Reaction: id = hyperFFCn_degradation, name = re30
	reaction_hyperFFCn_degradation=x(31)*global_par_kd_hyperFRQn;

% Reaction: id = WC1c_degradation, name = re31
	reaction_WC1c_degradation=x(7)*global_par_kd_WC1c;

% Reaction: id = WC2c_degradation, name = re32
	reaction_WC2c_degradation=x(8)*global_par_kd_WC2c;

% Reaction: id = hyperWCCc_degradation, name = re33
	reaction_hyperWCCc_degradation=x(32)*global_par_kd_hyperWCCc;

% Reaction: id = hyperWCCn_degradation, name = re34
	reaction_hyperWCCn_degradation=x(33)*global_par_kd_hyperWCCn;

% Reaction: id = active_hypoWCCn_degradation, name = re35
	reaction_active_hypoWCCn_degradation=x(11)*global_par_kd_active_hypoWCCn;

% Reaction: id = L_WCC_degradation, name = re36
	reaction_L_WCC_degradation=x(1)*global_par_kd_L_WCC;

% Reaction: id = VVDc_degradation, name = re37
	reaction_VVDc_degradation=x(5)*global_par_kd_VVDc;

% Reaction: id = VVDn_degradation, name = re38
	reaction_VVDn_degradation=x(6)*global_par_kd_VVDn;

% Reaction: id = L_WCCVVD_degradation, name = re39
	reaction_L_WCCVVD_degradation=x(2)*global_par_kd_WCCVVD;

% Species:   id = frq_gene, name = frq_gene, constant	const_species_frq_gene=1.0;

% Species:   id = wc1_gene, name = wc1_gene, constant	const_species_wc1_gene=1.0;

% Species:   id = wc2_gene, name = wc2_gene, constant	const_species_wc2_gene=1.0;

%Event: id=n_CYCLE
	event_n_CYCLE=(x(4) > 125) && (x(29) > x(28));

	if(event_n_CYCLE) 
		x(13)=x(13)+1;
	end

%Event: id=light_on
	event_light_on=x(4) > global_par_T_light_on;

	if(event_light_on) 
		global_par_kact_L_WCC=global_par_kact_L_WCC_light;
	end

%Event: id=light_off
	event_light_off=x(4) > (global_par_T_light_on+global_par_LP);

	if(event_light_off) 
		global_par_kact_L_WCC=0;
	end

%Event: id=calculate_period_find_frq_level_A
	event_calculate_period_find_frq_level_A=x(4) > 125;

	if(event_calculate_period_find_frq_level_A) 
		x(28)=x(29);
	end

%Event: id=calculate_period_find_Y
	event_calculate_period_find_Y=((x(4) > 125) && (x(29) > x(28))) && (x(13) < 3);

	if(event_calculate_period_find_Y) 
		x(10)=x(4);
	end

%Event: id=calculate_period_find_X
	event_calculate_period_find_X=((x(4) > 125) && (x(29) > x(28))) && (x(13) < 2);

	if(event_calculate_period_find_X) 
		x(9)=x(4);
	end

	xdot=zeros(58,1);
	
% Species:   id = L_WCC, name = L_WCC, affected by kineticLaw
	xdot(1) = (1/(compartment_c2))*(( 1.0 * reaction_L_WCC_formation) + (-1.0 * reaction_WCCVVD_complex_formation) + (-1.0 * reaction_L_WCC_degradation));
	
% Species:   id = L_WCCVVDn, name = L_WCCVVDn, affected by kineticLaw
	xdot(2) = (1/(compartment_c2))*(( 1.0 * reaction_WCCVVD_complex_formation) + (-1.0 * reaction_WCCVVD_complex_disassociation) + (-1.0 * reaction_L_WCCVVD_degradation));
	
% Species:   id = Period, name = Period, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re45));
	
% Species:   id = VVDc, name = VVDc, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_vvd_translation) + (-1.0 * reaction_VVD_nuclear_localisation) + (-1.0 * reaction_VVDc_degradation));
	
% Species:   id = VVDn, name = VVDn, affected by kineticLaw
	xdot(6) = (1/(compartment_c2))*(( 1.0 * reaction_VVD_nuclear_localisation) + (-1.0 * reaction_WCCVVD_complex_formation) + ( 1.0 * reaction_WCCVVD_complex_disassociation) + (-1.0 * reaction_VVDn_degradation));
	
% Species:   id = WC1c, name = WC1c, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_wc1_translation) + (-1.0 * reaction_hypoWCCc_formation) + (-1.0 * reaction_WC1c_degradation));
	
% Species:   id = WC2c, name = WC2c, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_wc2_translation) + (-1.0 * reaction_hypoWCCc_formation) + (-1.0 * reaction_WC2c_degradation));
	
% Species:   id = X, name = X
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = Y, name = Y
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = active_hypoWCCn, name = active_hypoWCCn, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*(( 1.0 * reaction_hypoWCCn_activation) + (-1.0 * reaction_active_hypoWCCn_degradation));
	
% Species:   id = c_hypoFRQ_to_hyperFRQ, name = c_hypoFRQ_to_hyperFRQ, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = cycle, name = cycle
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = degraded_L_WCCCVVDn, name = degraded_L_WCCCVVDn, affected by kineticLaw
	xdot(14) = (1/(compartment_c2))*(( 0 * reaction_L_WCC_degradation) + ( 0 * reaction_L_WCCVVD_degradation));
	
% Species:   id = degraded_VVDc, name = degraded_VVDc, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 0 * reaction_VVDc_degradation));
	
% Species:   id = degraded_VVDn, name = degraded_VVDn, affected by kineticLaw
	xdot(16) = (1/(compartment_c2))*(( 0 * reaction_VVDn_degradation));
	
% Species:   id = degraded_WC1c, name = degraded_WC1c, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*(( 0 * reaction_WC1c_degradation));
	
% Species:   id = degraded_WC2c, name = degraded_WC2c, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*(( 0 * reaction_WC2c_degradation));
	
% Species:   id = degraded_active_hypoWCCn, name = degraded_active_hypoWCCn, affected by kineticLaw
	xdot(19) = (1/(compartment_c2))*(( 0 * reaction_active_hypoWCCn_degradation));
	
% Species:   id = degraded_frq_mRNA, name = degraded_frq_mRNA, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*(( 0 * reaction_frq_mRNA_degradation));
	
% Species:   id = degraded_hyperFFCn, name = degraded_hyperFFCn, affected by kineticLaw
	xdot(21) = (1/(compartment_c2))*(( 0 * reaction_hyperFFCn_degradation));
	
% Species:   id = degraded_hyperFRQc, name = degraded_hyperFRQc, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*(( 0 * reaction_hyperFRQc_degradation));
	
% Species:   id = degraded_hyperWCCc, name = degraded_hyperWCCc, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*(( 0 * reaction_hyperWCCc_degradation));
	
% Species:   id = degraded_hyperWCCn, name = degraded_hyperWCCn, affected by kineticLaw
	xdot(24) = (1/(compartment_c2))*(( 0 * reaction_hyperWCCn_degradation));
	
% Species:   id = degraded_vvd_mRNA, name = degraded_vvd_mRNA, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*(( 0 * reaction_vvd_mRNA_degradation));
	
% Species:   id = degraded_wc1_mRNA, name = degraded_wc1_mRNA, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*(( 0 * reaction_wc1_mRNA_degradation));
	
% Species:   id = degraded_wc2_mRNA, name = degraded_wc2_mRNA, affected by kineticLaw
	xdot(27) = (1/(compartment_c1))*(( 0 * reaction_wc2_mRNA_degradation));
	
% Species:   id = frq_level_A, name = frq_level_A
% Warning species is not changed by either rules or reactions
	xdot(28) = ;
	
% Species:   id = frq_mRNA, name = frq_mRNA, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_frq_transcription) + (-0 * reaction_frq_translation) + (-1.0 * reaction_frq_mRNA_degradation));
	
% Species:   id = hyperFRQc, name = hyperFRQc, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*(( 1.0 * reaction_hyperFRQn_translocation_out_nucleus) + ( 1.0 * reaction_hypoFRQc_phosphorylation) + (-1.0 * reaction_hyperFRQc_degradation));
	
% Species:   id = hyperFRQn, name = hyperFRQn, affected by kineticLaw
	xdot(31) = (1/(compartment_c2))*((-1.0 * reaction_hyperFRQn_translocation_out_nucleus) + ( 1.0 * reaction_hypoFRQn_phosphorylation) + (-1.0 * reaction_hyperFFCn_degradation));
	
% Species:   id = hyperWCCc, name = hyperWCCc, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*(( 1.0 * reaction_hyperWCCn_translocation_out_nucleus) + ( 1.0 * reaction_hypoWCCc_phosphorylation) + (-1.0 * reaction_hyperWCCc_dephosphorylation) + (-1.0 * reaction_hyperWCCc_degradation));
	
% Species:   id = hyperWCCn, name = hyperWCCn, affected by kineticLaw
	xdot(33) = (1/(compartment_c2))*((-1.0 * reaction_hyperWCCn_translocation_out_nucleus) + ( 1.0 * reaction_hypoWCCn_phosphorylation) + (-1.0 * reaction_hyperWCCn_degradation));
	
% Species:   id = hypoFRQc, name = hypoFRQc, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*(( 1.0 * reaction_frq_translation) + (-1.0 * reaction_hypoFRQc_translocation_in_nucleus) + ( 1.0 * reaction_hypoFRQn_translocation_out_nucleus) + (-1.0 * reaction_hypoFRQc_phosphorylation));
	
% Species:   id = hypoFRQn, name = hypoFRQn, affected by kineticLaw
	xdot(35) = (1/(compartment_c2))*(( 1.0 * reaction_hypoFRQc_translocation_in_nucleus) + (-1.0 * reaction_hypoFRQn_translocation_out_nucleus) + (-1.0 * reaction_hypoFRQn_phosphorylation));
	
% Species:   id = hypoWCCc, name = hypoWCCc, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_hypoWCCc_formation) + (-1.0 * reaction_hypoWCCc_translocation_in_nucleus) + (-1.0 * reaction_hypoWCCc_phosphorylation) + ( 1.0 * reaction_hyperWCCc_dephosphorylation));
	
% Species:   id = hypoWCCn, name = hypoWCCn, affected by kineticLaw
	xdot(37) = (1/(compartment_c2))*(( 1.0 * reaction_hypoWCCc_translocation_in_nucleus) + (-1.0 * reaction_hypoWCCn_phosphorylation) + (-1.0 * reaction_hypoWCCn_activation) + (-1.0 * reaction_L_WCC_formation) + ( 1.0 * reaction_WCCVVD_complex_disassociation));
	
% Species:   id = n_hypoFRQ_to_hyperFRQ, name = n_hypoFRQ_to_hyperFRQ, defined in a rule 	xdot(38) = x(38);
	
% Species:   id = time, name = time, affected by kineticLaw
	xdot(39) = (1/(compartment_default))*((-0 * reaction_re45));
	
% Species:   id = total_FRQ, name = total_FRQ, defined in a rule 	xdot(40) = x(40);
	
% Species:   id = total_FRQc, name = total_FRQc, defined in a rule 	xdot(41) = x(41);
	
% Species:   id = total_FRQn, name = total_FRQn, defined in a rule 	xdot(42) = x(42);
	
% Species:   id = total_VVD, name = total_VVD, defined in a rule 	xdot(43) = x(43);
	
% Species:   id = total_WC1, name = total_WC1, defined in a rule 	xdot(44) = x(44);
	
% Species:   id = total_WC2, name = total_WC2, defined in a rule 	xdot(45) = x(45);
	
% Species:   id = total_WCCn, name = total_WCCn, defined in a rule 	xdot(46) = x(46);
	
% Species:   id = total_hyper_FRQ, name = total_hyper_FRQ, defined in a rule 	xdot(47) = x(47);
	
% Species:   id = total_hypoWCC, name = total_hypoWCC, defined in a rule 	xdot(48) = x(48);
	
% Species:   id = total_hypo_FRQ, name = total_hypo_FRQ, defined in a rule 	xdot(49) = x(49);
	
% Species:   id = vvd_gene, name = vvd_gene, affected by kineticLaw
	xdot(50) = (1/(compartment_c2))*((-0 * reaction_vvd_transcription));
	
% Species:   id = vvd_mRNA, name = vvd_mRNA, affected by kineticLaw
	xdot(51) = (1/(compartment_c1))*(( 1.0 * reaction_vvd_transcription) + (-0 * reaction_vvd_translation) + (-1.0 * reaction_vvd_mRNA_degradation));
	
% Species:   id = wc1_mRNA, name = wc1_mRNA, affected by kineticLaw
	xdot(52) = (1/(compartment_c1))*(( 1.0 * reaction_wc1_transcription) + (-0 * reaction_wc1_translation) + (-1.0 * reaction_wc1_mRNA_degradation));
	
% Species:   id = wc2_mRNA, name = wc2_mRNA, affected by kineticLaw
	xdot(53) = (1/(compartment_c1))*(( 1.0 * reaction_wc2_transcription) + (-0 * reaction_wc2_translation) + (-1.0 * reaction_wc2_mRNA_degradation));
	
% Species:   id = line, name = line
% Warning species is not changed by either rules or reactions
	xdot(54) = ;
	
% Species:   id = line2, name = line2
% Warning species is not changed by either rules or reactions
	xdot(55) = ;
	
% Species:   id = line3, name = line3
% Warning species is not changed by either rules or reactions
	xdot(56) = ;
	
% Species:   id = total_hyperWCC, name = total_hyperWCC, defined in a rule 	xdot(57) = x(57);
	
% Species:   id = s61, name = hyper_hypo_WCC, defined in a rule 	xdot(58) = x(58);
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


