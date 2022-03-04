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
% Model name = McDougal2017 - Metabolism in ischemic cardiomyocytes
%
% isDescribedBy http://identifiers.org/pubmed/28487363
% is http://identifiers.org/biomodels.db/MODEL1912160001
% is http://identifiers.org/biomodels.db/BIOMD0000000961
%


function main()
%Initial conditions vector
	x0=zeros(43,1);
	x0(1) = 7.94E-5;
	x0(2) = 1.0E-12;
	x0(3) = 1.0E-12;
	x0(4) = 1.0E-12;
	x0(5) = 5.0;
	x0(6) = 1.0E-12;
	x0(7) = 25.0;
	x0(8) = 1.0E-12;
	x0(9) = 1.0E-12;
	x0(10) = 1.0E-12;
	x0(11) = 7.0;
	x0(12) = 1.0E-12;
	x0(13) = 7.0;
	x0(14) = 25.0;
	x0(15) = 1.0E-12;
	x0(16) = 1.0E-5;
	x0(17) = 21.4;
	x0(18) = 0.683;
	x0(19) = 155.84;
	x0(20) = 0.169;
	x0(21) = 0.041;
	x0(22) = 0.00162;
	x0(23) = 0.013;
	x0(24) = 1.0E-12;
	x0(25) = 6.78E-4;
	x0(26) = 0.036;
	x0(27) = 8.69E-4;
	x0(28) = 0.071;
	x0(29) = 0.009;
	x0(30) = 1.0E-12;
	x0(31) = 0.02;
	x0(32) = 0.099;
	x0(33) = 0.194;
	x0(34) = 0.034;
	x0(35) = 1.0E-12;
	x0(36) = 0.158;
	x0(37) = 0.055;
	x0(38) = 0.007;
	x0(39) = 0.128856;
	x0(40) = 0.00543;
	x0(41) = 0.185;
	x0(42) = 0.110169;
	x0(43) = 0.132593;


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

% Compartment: id = c1, name = cell, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = extracellular, constant
	compartment_c2=0.240633296;
% Compartment: id = c3, name = vessel, constant
	compartment_c3=0.06842;
% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  J_NHE, name = J_NHE
% Parameter:   id =  J_CHE, name = J_CHE
% Parameter:   id =  J_NHS, name = J_NHS
% Parameter:   id =  J_AE, name = J_AE
% Parameter:   id =  beta_i, name = beta_i
% Parameter:   id =  beta_CO2, name = beta_CO2
% Parameter:   id =  H_active, name = H_active
% Parameter:   id =  pH_o, name = pH_o
	global_par_pH_o=7.4;
% Parameter:   id =  HCO3_o, name = HCO3_o
	global_par_HCO3_o=23.0;
% Parameter:   id =  HCO3_i, name = HCO3_i
% Parameter:   id =  switch_kashi, name = switch_kashi
	global_par_switch_kashi=1.0;
% Parameter:   id =  h, name = h
	global_par_h=1.5;
% Parameter:   id =  Km_AMP_2, name = Km_AMP_2
	global_par_Km_AMP_2=0.016;
% Parameter:   id =  switch_GSGP, name = switch_GSGP
	global_par_switch_GSGP=1.0;
% Parameter:   id =  switch_LDH, name = switch_LDH
	global_par_switch_LDH=1.0;
% Parameter:   id =  level, name = level
	global_par_level=1.0;
% Parameter:   id =  rateOf_re15, name = rateOf_re15
% Parameter:   id =  rateOf_re20, name = rateOf_re20
% Parameter:   id =  rateOf_re37, name = rateOf_re37
% Parameter:   id =  rateOf_re54, name = rateOf_re54
% Parameter:   id =  rateOf_re46, name = rateOf_re46
% Parameter:   id =  rateOf_re58, name = rateOf_re58
% Parameter:   id =  lowO2, name = lowO2
	global_par_lowO2=0.0175;
% Parameter:   id =  K_AK, name = K_AK
	global_par_K_AK=1.0;
% Parameter:   id =  X_AK, name = X_AK
	global_par_X_AK=10000.0;
% Parameter:   id =  VR_cellcyto, name = VR_cellcyto
	global_par_VR_cellcyto=1.4703;
% Parameter:   id =  X_atpase, name = X_atpase
	global_par_X_atpase=0.39;
% Parameter:   id =  K_CK, name = K_CK
	global_par_K_CK=1660000.0;
% Parameter:   id =  X_CK, name = X_CK
	global_par_X_CK=10000.0;
% Parameter:   id =  Kmf_eno, name = Kmf_eno
	global_par_Kmf_eno=0.045;
% Parameter:   id =  Kmr_eno, name = Kmr_eno
	global_par_Kmr_eno=0.089;
% Parameter:   id =  Vf_eno, name = Vf_eno
	global_par_Vf_eno=1.85;
% Parameter:   id =  Vr_eno, name = Vr_eno
	global_par_Vr_eno=2.0;
% Parameter:   id =  Kmf_fbp, name = Kmf_fbp
	global_par_Kmf_fbp=0.038;
% Parameter:   id =  Vf_fbp, name = Vf_fbp
	global_par_Vf_fbp=0.991667;
% Parameter:   id =  Km_NAD, name = Km_NAD
	global_par_Km_NAD=0.058;
% Parameter:   id =  Kmf_gapdh, name = Kmf_gapdh
	global_par_Kmf_gapdh=0.042;
% Parameter:   id =  Vf_gapdh, name = Vf_gapdh
	global_par_Vf_gapdh=5.35;
% Parameter:   id =  Kmf_gp, name = Kmf_gp
	global_par_Kmf_gp=0.1;
% Parameter:   id =  Kmr_gp, name = Kmr_gp
	global_par_Kmr_gp=5.0;
% Parameter:   id =  Vf_gp, name = Vf_gp
	global_par_Vf_gp=0.781667;
% Parameter:   id =  Vr_gp, name = Vr_gp
	global_par_Vr_gp=55.8333;
% Parameter:   id =  Kmf_gs_I_form, name = Kmf_gs_I_form
	global_par_Kmf_gs_I_form=0.08;
% Parameter:   id =  Vf_gs_I_form, name = Vf_gs_I_form
	global_par_Vf_gs_I_form=0.146833;
% Parameter:   id =  Kmf_gs_D_form, name = Kmf_gs_D_form
	global_par_Kmf_gs_D_form=1.42;
% Parameter:   id =  Vf_gs_D_form, name = Vf_gs_D_form
	global_par_Vf_gs_D_form=0.146833;
% Parameter:   id =  Km_ATP_hk, name = Km_ATP_hk
	global_par_Km_ATP_hk=0.236;
% Parameter:   id =  Kmf_hk, name = Kmf_hk
	global_par_Kmf_hk=0.072;
% Parameter:   id =  Kmr_hk, name = Kmr_hk
	global_par_Kmr_hk=0.042;
% Parameter:   id =  Vf_hk, name = Vf_hk
	global_par_Vf_hk=0.55;
% Parameter:   id =  Vr_hk, name = Vr_hk
	global_par_Vr_hk=1.06E-4;
% Parameter:   id =  Km_NADH, name = Km_NADH
	global_par_Km_NADH=0.001;
% Parameter:   id =  Kmf_ldh, name = Kmf_ldh
	global_par_Kmf_ldh=0.125;
% Parameter:   id =  Vf_ldh, name = Vf_ldh
	global_par_Vf_ldh=23.9333;
% Parameter:   id =  Km_Lac_flux_in, name = Km_Lac_flux_in
	global_par_Km_Lac_flux_in=2.2;
% Parameter:   id =  Vmax_Lac_flux_in, name = Vmax_Lac_flux_in
	global_par_Vmax_Lac_flux_in=0.04817;
% Parameter:   id =  Km_Lac_flux_out, name = Km_Lac_flux_out
	global_par_Km_Lac_flux_out=6.92;
% Parameter:   id =  Vmax_Lac_flux_out, name = Vmax_Lac_flux_out
	global_par_Vmax_Lac_flux_out=0.1817;
% Parameter:   id =  Km_ADP, name = Km_ADP
	global_par_Km_ADP=0.00107;
% Parameter:   id =  Km_O2, name = Km_O2
	global_par_Km_O2=0.00297;
% Parameter:   id =  Km_ATP_pfk, name = Km_ATP_pfk
	global_par_Km_ATP_pfk=0.127;
% Parameter:   id =  Kmf_pfk, name = Kmf_pfk
	global_par_Kmf_pfk=0.224;
% Parameter:   id =  Vf_pfk, name = Vf_pfk
	global_par_Vf_pfk=1.32833;
% Parameter:   id =  Kmf_pgm, name = Kmf_pgm
	global_par_Kmf_pgm=0.045;
% Parameter:   id =  Kmr_pgm, name = Kmr_pgm
	global_par_Kmr_pgm=0.67;
% Parameter:   id =  Vf_pgm, name = Vf_pgm
	global_par_Vf_pgm=1.93333;
% Parameter:   id =  Vr_pgm, name = Vr_pgm
	global_par_Vr_pgm=1.12;
% Parameter:   id =  Kmf_pgi, name = Kmf_pgi
	global_par_Kmf_pgi=0.425;
% Parameter:   id =  Kmr_pgi, name = Kmr_pgi
	global_par_Kmr_pgi=0.175;
% Parameter:   id =  Vf_pgi, name = Vf_pgi
	global_par_Vf_pgi=10.0667;
% Parameter:   id =  Vr_pgi, name = Vr_pgi
	global_par_Vr_pgi=9.6;
% Parameter:   id =  Km_ADP_pgk, name = Km_ADP_pgk
	global_par_Km_ADP_pgk=0.008;
% Parameter:   id =  Km_ATP_pgk, name = Km_ATP_pgk
	global_par_Km_ATP_pgk=0.565;
% Parameter:   id =  Kmf_pgk, name = Kmf_pgk
	global_par_Kmf_pgk=0.021;
% Parameter:   id =  Kmr_pgk, name = Kmr_pgk
	global_par_Kmr_pgk=0.51;
% Parameter:   id =  Vf_pgk, name = Vf_pgk
	global_par_Vf_pgk=251.0;
% Parameter:   id =  Vr_pgk, name = Vr_pgk
	global_par_Vr_pgk=15.9833;
% Parameter:   id =  Kmf_pglym, name = Kmf_pglym
	global_par_Kmf_pglym=0.145;
% Parameter:   id =  Kmr_pglym, name = Kmr_pglym
	global_par_Kmr_pglym=0.139;
% Parameter:   id =  Vf_pglym, name = Vf_pglym
	global_par_Vf_pglym=11.2333;
% Parameter:   id =  Vr_pglym, name = Vr_pglym
	global_par_Vr_pglym=48.0;
% Parameter:   id =  Km_ADP_pk, name = Km_ADP_pk
	global_par_Km_ADP_pk=0.00268;
% Parameter:   id =  Kmf_pk, name = Kmf_pk
	global_par_Kmf_pk=0.11;
% Parameter:   id =  Kmr_pk, name = Kmr_pk
	global_par_Kmr_pk=10.0;
% Parameter:   id =  Vf_pk, name = Vf_pk
	global_par_Vf_pk=9.43333;
% Parameter:   id =  Vr_pk, name = Vr_pk
	global_par_Vr_pk=0.00105;
% Parameter:   id =  K_Lac, name = K_Lac
	global_par_K_Lac=0.12589;
% Parameter:   id =  X_Lac, name = X_Lac
	global_par_X_Lac=10000.0;
% Parameter:   id =  K_up, name = K_up
	global_par_K_up=4.36;
% Parameter:   id =  X_up, name = X_up
	global_par_X_up=10000.0;
% Parameter:   id =  f_up_eq, name = f_up_eq
	global_par_f_up_eq=8808.0;
% Parameter:   id =  Kia_NADH, name = Kia_NADH
	global_par_Kia_NADH=0.00107;
% Parameter:   id =  Km_DHAP, name = Km_DHAP
	global_par_Km_DHAP=0.3;
% Parameter:   id =  Km_NADH_re54, name = Km_NADH_re54
	global_par_Km_NADH_re54=0.00284;
% Parameter:   id =  Km_G1P, name = Km_G1P
	global_par_Km_G1P=0.008;
% Parameter:   id =  Km_GBP, name = Km_GBP
	global_par_Km_GBP=0.565;
% Parameter:   id =  Kmf_GBPS, name = Kmf_GBPS
	global_par_Kmf_GBPS=0.021;
% Parameter:   id =  Kmr_GBPS, name = Kmr_GBPS
	global_par_Kmr_GBPS=0.51;
% Parameter:   id =  Vf_GBPS, name = Vf_GBPS
	global_par_Vf_GBPS=10.0;
% Parameter:   id =  Vr_GBPS, name = Vr_GBPS
	global_par_Vr_GBPS=6.0;
% Parameter:   id =  PS_ec, name = PS_ec
	global_par_PS_ec=10.0;
% Parameter:   id =  PS_ve, name = PS_ve
	global_par_PS_ve=50.0;
% Parameter:   id =  k_a, name = k_a
	global_par_k_a=15400.0;
% Parameter:   id =  k_d, name = k_d
	global_par_k_d=60.0;
% Parameter:   id =  Kmf_tpi, name = Kmf_tpi
	global_par_Kmf_tpi=1.53;
% Parameter:   id =  Vf_tpi, name = Vf_tpi
	global_par_Vf_tpi=5.93333;
% Parameter:   id =  v_PGI_ss, name = v_PGI_ss
	global_par_v_PGI_ss=0.22;
% assignmentRule: variable = J_NHE
	global_par_J_NHE=1/60*(20.6092567224*const_species_s22^4-606.5562860276*const_species_s22^3+6701.065336577*const_species_s22^2-3.29305476482116E4*const_species_s22+6.07279345421164E4);
% assignmentRule: variable = J_CHE
	global_par_J_CHE=1/60*((-0.272561314)*const_species_s22^4+12.313011154*const_species_s22^3-181.7704305807*const_species_s22^2+1108.6191429405*const_species_s22-2422.8396631585);
% assignmentRule: variable = J_NHS
	global_par_J_NHS=1/60*(2.3290050022*const_species_s22^3-45.1765173617*const_species_s22^2+286.7706982101*const_species_s22-592.1682240141);
% assignmentRule: variable = J_AE
	global_par_J_AE=1/60*((-15.2266606471)*const_species_s22^4+302.2590169999*const_species_s22^3-1823.1533057568*const_species_s22^2+1976.4960115099*const_species_s22+8383.533719598);
% assignmentRule: variable = rateOf_re37
	global_par_rateOf_re37=reaction_re37;
% assignmentRule: variable = rateOf_re54
	global_par_rateOf_re54=reaction_re54;
% assignmentRule: variable = rateOf_re20
	global_par_rateOf_re20=reaction_re20;
% assignmentRule: variable = H_active
	global_par_H_active=1000*10^(-const_species_s22);
% assignmentRule: variable = rateOf_re15
	global_par_rateOf_re15=reaction_re15;
% assignmentRule: variable = rateOf_re46
	global_par_rateOf_re46=reaction_re46;
% assignmentRule: variable = rateOf_re58
	global_par_rateOf_re58=reaction_re58;
% assignmentRule: variable = HCO3_i
	global_par_HCO3_i=global_par_HCO3_o*10^(const_species_s22-global_par_pH_o);
% assignmentRule: variable = beta_CO2
	global_par_beta_CO2=2.3*global_par_HCO3_i;
% assignmentRule: variable = beta_i
	global_par_beta_i=(-28)*const_species_s22+222.6;

% Reaction: id = re11, name = ATPase (ATP Consumption)
	reaction_re11=compartment_c1*Function_for_ATPase__ATP_Consumption(global_par_VR_cellcyto, global_par_X_atpase, compartment_c1, global_par_level, x(11));

% Reaction: id = re12, name = Creatine Kinase	% Local Parameter:   id =  k1, name = k1
	reaction_re12_k1=0.1;

	reaction_re12=compartment_c1*reaction_re12_k1*x(12)*x(14);

% Reaction: id = re13, name = Adenylate Kinase
	reaction_re13=compartment_c1*Function_for_Adenylate_Kinase(global_par_K_AK, global_par_X_AK, compartment_c1, x(11), x(12), x(16));

% Reaction: id = re15, name = Lactate Flux (in)
	reaction_re15=Function_for_Lactate_Flux__in(global_par_Km_Lac_flux_in, global_par_Vmax_Lac_flux_in, const_species_s39);

% Reaction: id = re20, name = Lactate Flux (out)
	reaction_re20=Function_for_Lactate_Flux__out(global_par_Km_Lac_flux_out, global_par_Vmax_Lac_flux_out, x(18));

% Reaction: id = re22, name = re22
	reaction_re22=compartment_c1*Function_for_re22(global_par_H_active, global_par_K_Lac, global_par_X_Lac, compartment_c1, x(18), x(19));

% Reaction: id = re36, name = Hexokinase
	reaction_re36=compartment_c1*Function_for_Hexokinase(global_par_Km_ATP_hk, global_par_Kmf_hk, global_par_Kmr_hk, global_par_Vf_hk, global_par_Vr_hk, compartment_c1, x(11), const_species_s56, x(20), global_par_switch_kashi);

% Reaction: id = re37, name = Phosphoglucose Isomerase (forward)
	reaction_re37=compartment_c1*Function_for_Phosphoglucose_Isomerase__forward(global_par_Kmf_pgi, global_par_Kmr_pgi, global_par_Vf_pgi, global_par_Vr_pgi, compartment_c1, x(20), x(21), global_par_switch_kashi);

% Reaction: id = re39, name = Phosphfructokinase
	reaction_re39=compartment_c1*Function_for_Phosphfructokinase(global_par_Km_ATP_pfk, global_par_Kmf_pfk, global_par_Vf_pfk, compartment_c1, x(11), x(21), global_par_switch_kashi);

% Reaction: id = re40, name = Fructose-bisphosphate Aldolase
	reaction_re40=compartment_c1*Function_for_Fructose_bisphosphate_Aldolase(global_par_Kmf_fbp, global_par_Vf_fbp, compartment_c1, x(25), global_par_switch_kashi);

% Reaction: id = re41, name = Triosephosphate Isomerase
	reaction_re41=compartment_c1*Function_for_Triosephosphate_Isomerase(global_par_Kmf_tpi, global_par_Vf_tpi, compartment_c1, x(26), global_par_switch_kashi);

% Reaction: id = re42, name = Glyceraldehyde 3-Phosphate Dehydrogenase
	reaction_re42=compartment_c1*Function_for_Glyceraldehyde_3_Phosphate_Dehydrogenase(global_par_Km_NAD, global_par_Kmf_gapdh, global_par_Vf_gapdh, compartment_c1, x(22), const_species_s62, global_par_switch_kashi);

% Reaction: id = re43, name = Phosphoglycerate Kinase
	reaction_re43=compartment_c1*Function_for_Phosphoglycerate_Kinase(global_par_Km_ADP_pgk, global_par_Km_ATP_pgk, global_par_Kmf_pgk, global_par_Kmr_pgk, global_par_Vf_pgk, global_par_Vr_pgk, compartment_c1, x(11), x(12), x(27), x(28), global_par_switch_kashi);

% Reaction: id = re44, name = Phosphoglycerate Mutase
	reaction_re44=compartment_c1*Function_for_Phosphoglycerate_Mutase(global_par_Kmf_pglym, global_par_Kmr_pglym, global_par_Vf_pglym, global_par_Vr_pglym, compartment_c1, x(28), x(29), global_par_switch_kashi);

% Reaction: id = re45, name = Enolase
	reaction_re45=compartment_c1*Function_for_Enolase(global_par_Kmf_eno, global_par_Kmr_eno, global_par_Vf_eno, global_par_Vr_eno, compartment_c1, x(23), x(29), global_par_switch_kashi);

% Reaction: id = re46, name = Pyruvate Kinase
	reaction_re46=compartment_c1*Function_for_Pyruvate_Kinase(global_par_Km_ADP_pk, global_par_Kmf_pk, global_par_Kmr_pk, global_par_Vf_pk, global_par_Vr_pk, compartment_c1, x(12), x(23), x(37), global_par_switch_kashi);

% Reaction: id = re47, name = Phosphoglucomutase
	reaction_re47=compartment_c1*Function_for_Phosphoglucomutase(global_par_Kmf_pgm, global_par_Kmr_pgm, global_par_Vf_pgm, global_par_Vr_pgm, compartment_c1, x(20), x(31), global_par_switch_GSGP);

% Reaction: id = re48, name = re48
	reaction_re48=compartment_c1*Function_for_re48(global_par_K_up, global_par_Km_AMP_2, global_par_X_up, compartment_c1, global_par_f_up_eq, global_par_h, x(16), x(31), x(32));

% Reaction: id = re49, name = Glycogen Synthase D-form
	reaction_re49=compartment_c1*Function_for_Glycogen_Synthase_D_form(global_par_Km_AMP_2, global_par_Kmf_gs_D_form, global_par_Vf_gs_D_form, compartment_c1, global_par_h, x(16), x(32));

% Reaction: id = re50, name = Glycogen Phosphorylase
	reaction_re50=compartment_c1*Function_for_Glycogen_Phosphorylase(global_par_Km_AMP_2, global_par_Kmf_gp, global_par_Kmr_gp, global_par_Vf_gp, global_par_Vr_gp, compartment_c1, global_par_h, x(16), x(17), x(31));

% Reaction: id = re51, name = Lactate Dehydrogenase
	reaction_re51=compartment_c1*Function_for_Lactate_Dehydrogenase(global_par_Km_NADH, global_par_Kmf_ldh, global_par_Vf_ldh, compartment_c1, x(37), const_species_s63, global_par_switch_LDH);

% Reaction: id = re52, name = G6P Dehydrogenase
	reaction_re52=compartment_c1*Function_for_G6P_Dehydrogenase(compartment_c1, global_par_rateOf_re37, global_par_switch_kashi, global_par_v_PGI_ss);

% Reaction: id = re53, name = Glycogen Synthase I-form
	reaction_re53=compartment_c1*Function_for_Glycogen_Synthase_I_form(global_par_Km_AMP_2, global_par_Kmf_gs_I_form, global_par_Vf_gs_I_form, compartment_c1, global_par_h, x(16), x(32));

% Reaction: id = re54, name = re54	% Local Parameter:   id =  vf, name = vf
	reaction_re54_vf=20.0;

	reaction_re54=compartment_c1*Function_for_re54(global_par_Kia_NADH, global_par_Km_DHAP, global_par_Km_NADH_re54, compartment_c1, const_species_s63, x(26), reaction_re54_vf);

% Reaction: id = re55, name = re55
	reaction_re55=compartment_c1*Function_for_re55(compartment_c1, global_par_rateOf_re54);

% Reaction: id = re56, name = Mitochondrial Oxidation of Pyruvate
	reaction_re56=compartment_c1*Function_for_Mitochondrial_Oxidation_of_Pyruvate(global_par_Km_ADP, global_par_Km_O2, compartment_c1, global_par_rateOf_re46, x(12), x(42));

% Reaction: id = re58, name = re58
	reaction_re58=compartment_c1*Function_for_re58(global_par_Km_G1P, global_par_Km_GBP, global_par_Kmf_GBPS, global_par_Kmr_GBPS, global_par_Vf_GBPS, global_par_Vr_GBPS, compartment_c1, x(27), x(28), x(31), x(38), global_par_switch_kashi);

% Reaction: id = re59, name = re59
	reaction_re59=compartment_c1*Function_for_re59(compartment_c1, global_par_rateOf_re58);

% Reaction: id = re60, name = re60
	reaction_re60=Function_for_re60(global_par_PS_ec, x(42), x(39));

% Reaction: id = re61, name = re61
	reaction_re61=Function_for_re61(global_par_PS_ve, x(43), x(39));

% Reaction: id = re62, name = re62
	reaction_re62=compartment_c1*Function_for_re62(compartment_c1, global_par_k_a, global_par_k_d, x(42), x(40), x(41));

% Species:   id = s22, name = pH_sub_i_endsub_, constant	const_species_s22=7.1;

% Species:   id = s78, name = s78, constant	const_species_s78=1.0E-12;

% Species:   id = s62, name = NAD, constant	const_species_s62=2.2565;

% Species:   id = s63, name = NADH, constant	const_species_s63=0.7135;

% Species:   id = s39, name = L_super__minus__endsuper__sub_o_endsub_, constant	const_species_s39=1.13;

% Species:   id = s56, name = Glucose, constant	const_species_s56=1.91;

%Event: id=Hypoxia
	event_Hypoxia=time > 100;

	if(event_Hypoxia) 
		x(43)=global_par_lowO2;
	end

	xdot=zeros(43,1);
	
% Species:   id = s1, name = H_super__plus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*(( 1.0 * reaction_re11) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re21) + (-1.0 * reaction_re22) + ( 1.0 * reaction_re36) + ( 1.0 * reaction_re39) + ( 1.0 * reaction_re42) + (-1.0 * reaction_re46) + (-1.0 * reaction_re51));
	
% Species:   id = s2, name = H_super__plus__endsuper__sub_o_endsub_, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re16) + ( 1.0 * reaction_re21));
	
% Species:   id = s7, name = OH_super__minus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*((-1.0 * reaction_re8));
	
% Species:   id = s8, name = OH_super__minus__endsuper__sub_o_endsub_, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re8));
	
% Species:   id = s24, name = Na_super__plus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_re2) + ( 1.0 * reaction_re3));
	
% Species:   id = s25, name = Na_super__plus__endsuper__sub_o_endsub_, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_re2) + (-1.0 * reaction_re3));
	
% Species:   id = s26, name = HCO_sub_3_endsub__super__minus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5));
	
% Species:   id = s27, name = HCO_sub_3_endsub__super__minus__endsuper__sub_o_endsub_, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re4) + ( 1.0 * reaction_re5));
	
% Species:   id = s28, name = Cl_super__minus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_re6) + ( 1.0 * reaction_re7));
	
% Species:   id = s29, name = Cl_super__minus__endsuper__sub_o_endsub_, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_re6) + (-1.0 * reaction_re7));
	
% Species:   id = s30, name = ATP, affected by kineticLaw
	xdot(11) = (1/(compartment_c1))*((-1.0 * reaction_re11) + ( 1.0 * reaction_re12) + ( 1.0 * reaction_re13) + (-1.0 * reaction_re36) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re46) + ( 15.0 * reaction_re56));
	
% Species:   id = s31, name = ADP, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re12) + (-2.0 * reaction_re13) + ( 1.0 * reaction_re36) + ( 1.0 * reaction_re39) + (-1.0 * reaction_re43) + (-1.0 * reaction_re46) + (-15.0 * reaction_re56));
	
% Species:   id = s32, name = P_sub_i_endsub_, affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re42) + ( 2.0 * reaction_re48) + (-1.0 * reaction_re50) + ( 1.0 * reaction_re52) + ( 1.0 * reaction_re55) + (-15.0 * reaction_re56) + ( 2.0 * reaction_re59));
	
% Species:   id = s33, name = CrP, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*((-1.0 * reaction_re12));
	
% Species:   id = s34, name = Cr, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_re12));
	
% Species:   id = s35, name = AMP, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*(( 1.0 * reaction_re13));
	
% Species:   id = s36, name = Glycogen, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*(( 1.0 * reaction_re49) + (-1.0 * reaction_re50) + ( 1.0 * reaction_re53));
	
% Species:   id = s38, name = L_super__minus__endsuper__sub_i_endsub_, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re20) + (-1.0 * reaction_re22) + ( 1.0 * reaction_re51));
	
% Species:   id = s52, name = Lactic Acid, affected by kineticLaw
	xdot(19) = (1/(compartment_c1))*(( 1.0 * reaction_re22));
	
% Species:   id = s57, name = G6P, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*(( 1.0 * reaction_re36) + (-1.0 * reaction_re37) + ( 1.0 * reaction_re47) + (-1.0 * reaction_re52));
	
% Species:   id = s58, name = F6P, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*(( 1.0 * reaction_re37) + (-1.0 * reaction_re39));
	
% Species:   id = s59, name = GAP, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*(( 1.0 * reaction_re40) + ( 1.0 * reaction_re41) + (-1.0 * reaction_re42));
	
% Species:   id = s60, name = PEP, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*(( 1.0 * reaction_re45) + (-1.0 * reaction_re46));
	
% Species:   id = s64, name = CO_sub_2_endsub_, affected by kineticLaw
	xdot(24) = (1/(compartment_c1))*(( 3.0 * reaction_re56));
	
% Species:   id = s66, name = F16BP, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*(( 1.0 * reaction_re39) + (-1.0 * reaction_re40));
	
% Species:   id = s67, name = DHAP, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*(( 1.0 * reaction_re40) + (-1.0 * reaction_re41) + (-1.0 * reaction_re54));
	
% Species:   id = s68, name = 13BPG, affected by kineticLaw
	xdot(27) = (1/(compartment_c1))*(( 1.0 * reaction_re42) + (-1.0 * reaction_re43) + (-1.0 * reaction_re58));
	
% Species:   id = s69, name = 3PG, affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*(( 1.0 * reaction_re43) + (-1.0 * reaction_re44) + ( 1.0 * reaction_re58));
	
% Species:   id = s70, name = 2PG, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_re44) + (-1.0 * reaction_re45));
	
% Species:   id = s71, name = H_sub_2_endsub_O, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*(( 1.0 * reaction_re45));
	
% Species:   id = s72, name = G1P, affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*((-1.0 * reaction_re47) + (-1.0 * reaction_re48) + ( 1.0 * reaction_re50) + (-1.0 * reaction_re58));
	
% Species:   id = s73, name = UDPG, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*(( 1.0 * reaction_re48) + (-1.0 * reaction_re49) + (-1.0 * reaction_re53));
	
% Species:   id = s74, name = UTP, affected by kineticLaw
	xdot(33) = (1/(compartment_c1))*((-1.0 * reaction_re48));
	
% Species:   id = s75, name = UDP, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*(( 1.0 * reaction_re49) + ( 1.0 * reaction_re53));
	
% Species:   id = s76, name = 6PGN, affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*(( 1.0 * reaction_re52));
	
% Species:   id = s77, name = Glycerol-3-P, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_re54) + (-1.0 * reaction_re55));
	
% Species:   id = s61, name = PYR, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*(( 1.0 * reaction_re46) + (-1.0 * reaction_re51) + (-1.0 * reaction_re56));
	
% Species:   id = s79, name = G16BP, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*(( 1.0 * reaction_re58) + (-1.0 * reaction_re59));
	
% Species:   id = s82, name = O_sub_2,e_endsub, affected by kineticLaw
	xdot(39) = (1/(compartment_c2))*((-1.0 * reaction_re60) + ( 1.0 * reaction_re61));
	
% Species:   id = s83, name = Mb, affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*((-1.0 * reaction_re62));
	
% Species:   id = s84, name = MbO_sub_2_endsub_, affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*(( 1.0 * reaction_re62));
	
% Species:   id = s65, name = O_sub_2_endsub, affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*((-3.0 * reaction_re56) + ( 1.0 * reaction_re60) + (-1.0 * reaction_re62));
	
% Species:   id = s81, name = O_sub_2,v_endsub	xdot(43) = ;
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Triosephosphate_Isomerase(Kmf_tpi,Vf_tpi,c1,s67,switch_kashi), z=(Vf_tpi*s67/(Kmf_tpi+s67)*switch_kashi/c1);end

function z=Function_for_re48(K_up,Km_AMP_2,X_up,c1,f_up_eq,h,s35,s72,s73), z=(X_up*(K_up*s72-s73*f_up_eq)/(1+Km_AMP_2^h/s35^h)/c1);end

function z=Function_for_re58(Km_G1P,Km_GBP,Kmf_GBPS,Kmr_GBPS,Vf_GBPS,Vr_GBPS,c1,s68,s69,s72,s79,switch_kashi), z=((Vf_GBPS*s68/(Kmf_GBPS*(1+Km_G1P/s72))-Vr_GBPS*s69/(Kmr_GBPS*(1+Km_GBP/s79)))/(1+s68/Kmf_GBPS+s69/Kmr_GBPS)*switch_kashi/c1);end

function z=Function_for_Glyceraldehyde_3_Phosphate_Dehydrogenase(Km_NAD,Kmf_gapdh,Vf_gapdh,c1,s59,s62,switch_kashi), z=(Vf_gapdh*s59/(Kmf_gapdh+s59)/(1+Km_NAD/s62)*switch_kashi/c1);end

function z=Function_for_G6P_Dehydrogenase(c1,rateOf_re37,switch_kashi,v_PGI_ss), z=(0.095*rateOf_re37/v_PGI_ss*switch_kashi/c1);end

function z=Function_for_re60(PS_ec,s65,s82), z=(PS_ec*(s82-s65));end

function z=Function_for_Glycogen_Synthase_I_form(Km_AMP_2,Kmf_gs,Vf_gs,c1,h,s35,s73), z=(Vf_gs*s73/((Kmf_gs+s73)*(1+Km_AMP_2^h/s35^h))/c1);end

function z=Function_for_Lactate_Flux__in(Km,Vmax,s39), z=(Vmax*s39/(Km+s39));end

function z=Function_for_re54(Kia_NADH,Km_DHAP,Km_NADH,c1,s63,s67,vf), z=(vf*s67*s63/(Kia_NADH*Km_DHAP+Km_DHAP*s63+Km_NADH*s67+s67*s63)/c1);end

function z=Function_for_re59(c1,rateOf_re58), z=(rateOf_re58/c1);end

function z=Function_for_re61(PS_ve,s81,s82), z=(PS_ve*(s81-s82));end

function z=Function_for_re22(H_active,K_Lac,X_Lac,c1,s38,s52), z=(X_Lac*(1/K_Lac*s38*H_active-s52)/c1);end

function z=Function_for_re62(c1,k_a,k_d,s65,s83,s84), z=((k_a*s83*s65-k_d*s84)/c1);end

function z=Function_for_Phosphfructokinase(Km_ATP,Kmf_pfk,Vf_pfk,c1,s30,s58,switch_kashi), z=(Vf_pfk*s58/(Kmf_pfk+s58)/(1+Km_ATP/s30)*switch_kashi/c1);end

function z=Function_for_re55(c1,rateOf_re54), z=(rateOf_re54/c1);end

function z=Function_for_Adenylate_Kinase(K_AK,X_AK,c1,s30,s31,s35), z=(X_AK*(K_AK*s31*s31-s35*s30)/c1);end

function z=Function_for_Phosphoglucomutase(Kmf_pgm,Kmr_pgm,Vf_pgm,Vr_pgm,c1,s57,s72,switch_GSGP), z=((Vf_pgm*s72/Kmf_pgm-Vr_pgm*s57/Kmr_pgm)/(1+s72/Kmf_pgm+s57/Kmr_pgm)*switch_GSGP/c1);end

function z=Function_for_Mitochondrial_Oxidation_of_Pyruvate(Km_ADP,Km_O2,c1,rateOf_re46,s31,s65), z=(rateOf_re46*s31/(s31+Km_ADP)*s65/(s65+Km_O2)/c1);end

function z=Function_for_Hexokinase(Km_ATP,Kmf_hk,Kmr_hk,Vf_hk,Vr_hk,c1,s30,s56,s57,switch_kashi), z=((Vf_hk*s56/(Kmf_hk*(1+Km_ATP/s30))-Vr_hk*s57/Kmr_hk)/(1+s56/Kmf_hk+s57/Kmr_hk)*switch_kashi/c1);end

function z=Function_for_ATPase__ATP_Consumption(VR_cellcyto,X_atpase,c1,level,s30), z=(level*VR_cellcyto*X_atpase*1/(1+exp((-(s30-0.001))/0.0001))/c1);end

function z=Function_for_Glycogen_Synthase_D_form(Km_AMP_2,Kmf_gs,Vf_gs,c1,h,s35,s73), z=(Vf_gs*s73/((Kmf_gs+s73)*(1+Km_AMP_2^h/s35^h))/c1);end

function z=Function_for_Fructose_bisphosphate_Aldolase(Kmf_fbp,Vf_fbp,c1,s66,switch_kashi), z=(Vf_fbp*s66/(Kmf_fbp+s66)*switch_kashi/c1);end

function z=Function_for_Lactate_Flux__out(Km,Vmax,s38), z=(Vmax*s38/(Km+s38));end

function z=Function_for_Phosphoglycerate_Mutase(Kmf_pgm,Kmr_pgm,Vf_pgm,Vr_pgm,c1,s69,s70,switch_kashi), z=((Vf_pgm*s69*1/(1+exp((-(s69-0.0001))/1E-5))/Kmf_pgm-Vr_pgm*s70*1/(1+exp((-(s70-0.0001))/1E-5))/Kmr_pgm)/(1+s69/Kmf_pgm+s70/Kmr_pgm)*switch_kashi/c1);end

function z=Function_for_Pyruvate_Kinase(Km_adp,Kmf_pk,Kmr_pk,Vf_pk,Vr_pk,c1,s31,s60,s61,switch_kashi), z=((Vf_pk*s60*1/(1+exp((-(s60-0.0001))/1E-5))/(Kmf_pk*(1+Km_adp/s31))-Vr_pk*s61*1/(1+exp((-(s61-0.0001))/1E-5))/Kmr_pk)/(1+s60/Kmf_pk+s61/Kmr_pk)*switch_kashi/c1);end

function z=Function_for_Glycogen_Phosphorylase(Km_AMP_2,Kmf_gp,Kmr_gp,Vf_gp,Vr_gp,c1,h,s35,s36,s72), z=((Vf_gp*s36/Kmf_gp-Vr_gp*s72/Kmr_gp)/((1+s36/Kmf_gp+s72/Kmr_gp)*(1+Km_AMP_2^h/s35^h))/c1);end

function z=Function_for_Lactate_Dehydrogenase(Km_NADH,Kmf_ldh,Vf_ldh,c1,s61,s63,switch_LDH), z=(Vf_ldh*s61/(Kmf_ldh+s61)/(1+Km_NADH/s63)*switch_LDH/c1);end

function z=Function_for_Phosphoglycerate_Kinase(Km_adp,Km_atp,Kmf_pgk,Kmr_pgk,Vf_pgk,Vr_pgk,c1,s30,s31,s68,s69,switch_kashi), z=((Vf_pgk*s68*1/(1+exp((-(s68-0.0001))/1E-5))/(Kmf_pgk*(1+Km_adp/s31))-Vr_pgk*s69*1/(1+exp((-(s69-0.0001))/1E-5))/(Kmr_pgk*(1+Km_atp/s30)))/(1+s68/Kmf_pgk+s69/Kmr_pgk)*switch_kashi/c1);end

function z=Function_for_Phosphoglucose_Isomerase__forward(Kmf_pgi,Kmr_pgi,Vf_pgi,Vr_pgi,c1,s57,s58,switch_kashi), z=((Vf_pgi*s57/Kmf_pgi-Vr_pgi*s58/Kmr_pgi)/(1+s57/Kmf_pgi+s58/Kmr_pgi)*switch_kashi/c1);end

function z=Function_for_Enolase(Kmf_eno,Kmr_eno,Vf_eno,Vr_eno,c1,s60,s70,switch_kashi), z=((Vf_eno*s70*1/(1+exp((-(s70-0.0001))/1E-5))/Kmf_eno-Vr_eno*s60*1/(1+exp((-(s60-0.0001))/1E-5))/Kmr_eno)/(1+s70/Kmf_eno+s60/Kmr_eno)*switch_kashi/c1);end

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


