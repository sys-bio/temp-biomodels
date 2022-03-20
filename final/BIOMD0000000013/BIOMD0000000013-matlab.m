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
% Model name = Poolman2004_CalvinCycle
%
% is http://identifiers.org/biomodels.db/MODEL6615594069
% is http://identifiers.org/biomodels.db/BIOMD0000000013
% isDescribedBy http://identifiers.org/pubmed/15073223
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 1.0;
	x0(2) = 0.33644;
	x0(3) = 3.35479;
	x0(4) = 0.49806;
	x0(5) = 0.14825;
	x0(6) = 0.21;
	x0(7) = 0.01334;
	x0(8) = 1.5662;
	x0(9) = 0.29345;
	x0(10) = 0.02776;
	x0(11) = 1.36481;
	x0(12) = 0.41021;
	x0(13) = 0.00363;
	x0(14) = 1.56486;
	x0(15) = 0.00541;
	x0(16) = 0.00599;
	x0(17) = 0.00235;
	x0(18) = 0.5;
	x0(19) = 1.0;
	x0(20) = 3.1396;
	x0(21) = 0.29;
	x0(22) = 1.0;
	x0(23) = 0.00149;
	x0(24) = 1.0;
	x0(25) = 2.512E-5;
	x0(26) = 0.18206;
	x0(27) = 1.0;


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
% Parameter:   id =  Light_on, name = Light_on
	global_par_Light_on=1.0;

% Reaction: id = E1	% Local Parameter:   id =  Rbco_vm, name = Rbco_vm
	reaction_E1_Rbco_vm=340.0;
	% Local Parameter:   id =  Rbco_km, name = Rbco_km
	reaction_E1_Rbco_km=0.02;
	% Local Parameter:   id =  Rbco_KiPGA, name = Rbco_KiPGA
	reaction_E1_Rbco_KiPGA=0.84;
	% Local Parameter:   id =  Rbco_KiFBP, name = Rbco_KiFBP
	reaction_E1_Rbco_KiFBP=0.04;
	% Local Parameter:   id =  Rbco_KiSBP, name = Rbco_KiSBP
	reaction_E1_Rbco_KiSBP=0.075;
	% Local Parameter:   id =  Rbco_KiPi, name = Rbco_KiPi
	reaction_E1_Rbco_KiPi=0.9;
	% Local Parameter:   id =  Rbco_KiNADPH, name = Rbco_KiNADPH
	reaction_E1_Rbco_KiNADPH=0.07;

	reaction_E1=global_par_Light_on*reaction_E1_Rbco_vm*x(2)*compartment_chloroplast/(x(2)+reaction_E1_Rbco_km*(1+x(3)/reaction_E1_Rbco_KiPGA+x(10)/reaction_E1_Rbco_KiFBP+x(14)/reaction_E1_Rbco_KiSBP+x(8)/reaction_E1_Rbco_KiPi+x(6)/reaction_E1_Rbco_KiNADPH));

% Reaction: id = E2	% Local Parameter:   id =  PGK_v, name = PGK_v
	reaction_E2_PGK_v=5.0E8;
	% Local Parameter:   id =  q2, name = q2
	reaction_E2_q2=3.1E-4;

	reaction_E2=global_par_Light_on*reaction_E2_PGK_v*compartment_chloroplast*(x(3)*x(4)-x(5)*x(23)/reaction_E2_q2);

% Reaction: id = E3	% Local Parameter:   id =  G3Pdh_v, name = G3Pdh_v
	reaction_E3_G3Pdh_v=5.0E8;
	% Local Parameter:   id =  q3, name = q3
	reaction_E3_q3=1.6E7;

	reaction_E3=global_par_Light_on*reaction_E3_G3Pdh_v*compartment_chloroplast*(x(5)*x(6)*x(25)-x(21)*x(7)*x(8)/reaction_E3_q3);

% Reaction: id = E4	% Local Parameter:   id =  TPI_v, name = TPI_v
	reaction_E4_TPI_v=5.0E8;
	% Local Parameter:   id =  q4, name = q4
	reaction_E4_q4=22.0;

	reaction_E4=compartment_chloroplast*reaction_E4_TPI_v*(x(7)-x(9)/reaction_E4_q4);

% Reaction: id = E5	% Local Parameter:   id =  F_Aldo_v, name = F_Aldo_v
	reaction_E5_F_Aldo_v=5.0E8;
	% Local Parameter:   id =  q5, name = q5
	reaction_E5_q5=7.1;

	reaction_E5=reaction_E5_F_Aldo_v*compartment_chloroplast*(x(9)*x(7)-x(10)/reaction_E5_q5);

% Reaction: id = E6	% Local Parameter:   id =  FBPase_ch_vm, name = FBPase_ch_vm
	reaction_E6_FBPase_ch_vm=200.0;
	% Local Parameter:   id =  FBPase_ch_km, name = FBPase_ch_km
	reaction_E6_FBPase_ch_km=0.03;
	% Local Parameter:   id =  FBPase_ch_KiF6P, name = FBPase_ch_KiF6P
	reaction_E6_FBPase_ch_KiF6P=0.7;
	% Local Parameter:   id =  FBPase_ch_KiPi, name = FBPase_ch_KiPi
	reaction_E6_FBPase_ch_KiPi=12.0;

	reaction_E6=global_par_Light_on*reaction_E6_FBPase_ch_vm*x(10)*compartment_chloroplast/(x(10)+reaction_E6_FBPase_ch_km*(1+x(11)/reaction_E6_FBPase_ch_KiF6P+x(8)/reaction_E6_FBPase_ch_KiPi));

% Reaction: id = E7	% Local Parameter:   id =  F_TKL_v, name = F_TKL_v
	reaction_E7_F_TKL_v=5.0E8;
	% Local Parameter:   id =  q7, name = q7
	reaction_E7_q7=0.084;

	reaction_E7=compartment_chloroplast*reaction_E7_F_TKL_v*(x(11)*x(7)-x(12)*x(13)/reaction_E7_q7);

% Reaction: id = E8	% Local Parameter:   id =  E_Aldo_v, name = E_Aldo_v
	reaction_E8_E_Aldo_v=5.0E8;
	% Local Parameter:   id =  q8, name = q8
	reaction_E8_q8=13.0;

	reaction_E8=compartment_chloroplast*reaction_E8_E_Aldo_v*(x(12)*x(9)-x(14)/reaction_E8_q8);

% Reaction: id = E9	% Local Parameter:   id =  SBPase_ch_vm, name = SBPase_ch_vm
	reaction_E9_SBPase_ch_vm=40.0;
	% Local Parameter:   id =  SBPase_ch_km, name = SBPase_ch_km
	reaction_E9_SBPase_ch_km=0.013;
	% Local Parameter:   id =  SBPase_ch_KiPi, name = SBPase_ch_KiPi
	reaction_E9_SBPase_ch_KiPi=12.0;

	reaction_E9=global_par_Light_on*reaction_E9_SBPase_ch_vm*x(14)*compartment_chloroplast/(x(14)+reaction_E9_SBPase_ch_km*(1+x(8)/reaction_E9_SBPase_ch_KiPi));

% Reaction: id = E10	% Local Parameter:   id =  G_TKL_v, name = G_TKL_v
	reaction_E10_G_TKL_v=5.0E8;
	% Local Parameter:   id =  q10, name = q10
	reaction_E10_q10=0.85;

	reaction_E10=compartment_chloroplast*reaction_E10_G_TKL_v*(x(7)*x(15)-x(13)*x(16)/reaction_E10_q10);

% Reaction: id = E11	% Local Parameter:   id =  R5Piso_v, name = R5Piso_v
	reaction_E11_R5Piso_v=5.0E8;
	% Local Parameter:   id =  q11, name = q11
	reaction_E11_q11=0.4;

	reaction_E11=reaction_E11_R5Piso_v*compartment_chloroplast*(x(16)-x(17)/reaction_E11_q11);

% Reaction: id = E12	% Local Parameter:   id =  X5Pepi_v, name = X5Pepi_v
	reaction_E12_X5Pepi_v=5.0E8;
	% Local Parameter:   id =  q12, name = q12
	reaction_E12_q12=0.67;

	reaction_E12=compartment_chloroplast*reaction_E12_X5Pepi_v*(x(13)-x(17)/reaction_E12_q12);

% Reaction: id = E13	% Local Parameter:   id =  Ru5Pk_ch_vm, name = Ru5Pk_ch_vm
	reaction_E13_Ru5Pk_ch_vm=10000.0;
	% Local Parameter:   id =  Ru5Pk_ch_km1, name = Ru5Pk_ch_km1
	reaction_E13_Ru5Pk_ch_km1=0.05;
	% Local Parameter:   id =  Ru5Pk_ch_KiPGA, name = Ru5Pk_ch_KiPGA
	reaction_E13_Ru5Pk_ch_KiPGA=2.0;
	% Local Parameter:   id =  Ru5Pk_ch_KiRuBP, name = Ru5Pk_ch_KiRuBP
	reaction_E13_Ru5Pk_ch_KiRuBP=0.7;
	% Local Parameter:   id =  Ru5Pk_ch_KiPi, name = Ru5Pk_ch_KiPi
	reaction_E13_Ru5Pk_ch_KiPi=4.0;
	% Local Parameter:   id =  Ru5Pk_ch_KiADP1, name = Ru5Pk_ch_KiADP1
	reaction_E13_Ru5Pk_ch_KiADP1=2.5;
	% Local Parameter:   id =  Ru5Pk_ch_km2, name = Ru5Pk_ch_km2
	reaction_E13_Ru5Pk_ch_km2=0.05;
	% Local Parameter:   id =  Ru5Pk_ch_KiADP2, name = Ru5Pk_ch_KiADP2
	reaction_E13_Ru5Pk_ch_KiADP2=0.4;

	reaction_E13=global_par_Light_on*reaction_E13_Ru5Pk_ch_vm*x(17)*compartment_chloroplast*x(4)/((x(17)+reaction_E13_Ru5Pk_ch_km1*(1+x(3)/reaction_E13_Ru5Pk_ch_KiPGA+x(2)/reaction_E13_Ru5Pk_ch_KiRuBP+x(8)/reaction_E13_Ru5Pk_ch_KiPi))*(x(4)*(1+x(23)/reaction_E13_Ru5Pk_ch_KiADP1)+reaction_E13_Ru5Pk_ch_km2*(1+x(23)/reaction_E13_Ru5Pk_ch_KiADP2)));

% Reaction: id = E14	% Local Parameter:   id =  PGI_v, name = PGI_v
	reaction_E14_PGI_v=5.0E8;
	% Local Parameter:   id =  q14, name = q14
	reaction_E14_q14=2.3;

	reaction_E14=reaction_E14_PGI_v*compartment_chloroplast*(x(11)-x(20)/reaction_E14_q14);

% Reaction: id = E15	% Local Parameter:   id =  PGM_v, name = PGM_v
	reaction_E15_PGM_v=5.0E8;
	% Local Parameter:   id =  q15, name = q15
	reaction_E15_q15=0.058;

	reaction_E15=reaction_E15_PGM_v*compartment_chloroplast*(x(20)-x(26)/reaction_E15_q15);

% Reaction: id = light_reaction	% Local Parameter:   id =  LR_vm, name = LR_vm
	reaction_light_reaction_LR_vm=3500.0;
	% Local Parameter:   id =  LR_kmADP, name = LR_kmADP
	reaction_light_reaction_LR_kmADP=0.014;
	% Local Parameter:   id =  LR_kmPi, name = LR_kmPi
	reaction_light_reaction_LR_kmPi=0.3;

	reaction_light_reaction=global_par_Light_on*reaction_light_reaction_LR_vm*x(23)*x(8)*compartment_chloroplast/((x(23)+reaction_light_reaction_LR_kmADP)*(x(8)+reaction_light_reaction_LR_kmPi));

% Reaction: id = E16	% Local Parameter:   id =  StSyn_vm, name = StSyn_vm
	reaction_E16_StSyn_vm=40.0;
	% Local Parameter:   id =  stsyn_ch_km1, name = stsyn_ch_km1
	reaction_E16_stsyn_ch_km1=0.08;
	% Local Parameter:   id =  stsyn_ch_Ki, name = stsyn_ch_Ki
	reaction_E16_stsyn_ch_Ki=10.0;
	% Local Parameter:   id =  stsyn_ch_km2, name = stsyn_ch_km2
	reaction_E16_stsyn_ch_km2=0.08;
	% Local Parameter:   id =  stsyn_ch_ka1, name = stsyn_ch_ka1
	reaction_E16_stsyn_ch_ka1=0.1;
	% Local Parameter:   id =  stsyn_ch_ka2, name = stsyn_ch_ka2
	reaction_E16_stsyn_ch_ka2=0.02;
	% Local Parameter:   id =  stsyn_ch_ka3, name = stsyn_ch_ka3
	reaction_E16_stsyn_ch_ka3=0.02;

	reaction_E16=reaction_E16_StSyn_vm*x(26)*x(4)*compartment_chloroplast/((x(26)+reaction_E16_stsyn_ch_km1)*(1+x(23)/reaction_E16_stsyn_ch_Ki)*(x(4)+reaction_E16_stsyn_ch_km2)+reaction_E16_stsyn_ch_km2*x(8)/(reaction_E16_stsyn_ch_ka1*x(3))+reaction_E16_stsyn_ch_ka2*x(11)+reaction_E16_stsyn_ch_ka3*x(10));

% Reaction: id = E17	% Local Parameter:   id =  StPase_Vm, name = StPase_Vm
	reaction_E17_StPase_Vm=40.0;
	% Local Parameter:   id =  StPase_km, name = StPase_km
	reaction_E17_StPase_km=0.1;
	% Local Parameter:   id =  StPase_kiG1P, name = StPase_kiG1P
	reaction_E17_StPase_kiG1P=0.05;

	reaction_E17=reaction_E17_StPase_Vm*x(8)*compartment_chloroplast/(x(8)+reaction_E17_StPase_km*(1+x(26)/reaction_E17_StPase_kiG1P));

% Reaction: id = E18_DHAP	% Local Parameter:   id =  TP_Piap_vm, name = TP_Piap_vm
	reaction_E18_DHAP_TP_Piap_vm=250.0;
	% Local Parameter:   id =  TP_Piap_kDHAP_ch, name = TP_Piap_kDHAP_ch
	reaction_E18_DHAP_TP_Piap_kDHAP_ch=0.077;
	% Local Parameter:   id =  TP_Piap_kPi_cyt, name = TP_Piap_kPi_cyt
	reaction_E18_DHAP_TP_Piap_kPi_cyt=0.74;
	% Local Parameter:   id =  TP_Piap_kPi_ch, name = TP_Piap_kPi_ch
	reaction_E18_DHAP_TP_Piap_kPi_ch=0.63;
	% Local Parameter:   id =  TP_Piap_kPGA_ch, name = TP_Piap_kPGA_ch
	reaction_E18_DHAP_TP_Piap_kPGA_ch=0.25;
	% Local Parameter:   id =  TP_Piap_kGAP_ch, name = TP_Piap_kGAP_ch
	reaction_E18_DHAP_TP_Piap_kGAP_ch=0.075;

	reaction_E18_DHAP=reaction_E18_DHAP_TP_Piap_vm*x(9)*compartment_chloroplast/(reaction_E18_DHAP_TP_Piap_kDHAP_ch*(1+(1+reaction_E18_DHAP_TP_Piap_kPi_cyt/x(18))*(x(8)/reaction_E18_DHAP_TP_Piap_kPi_ch+x(3)/reaction_E18_DHAP_TP_Piap_kPGA_ch+x(9)/reaction_E18_DHAP_TP_Piap_kDHAP_ch+x(7)/reaction_E18_DHAP_TP_Piap_kGAP_ch)));

% Reaction: id = E18_PGA	% Local Parameter:   id =  PGA_xpMult, name = PGA_xpMult
	reaction_E18_PGA_PGA_xpMult=0.75;
	% Local Parameter:   id =  TP_Piap_vm, name = TP_Piap_vm
	reaction_E18_PGA_TP_Piap_vm=250.0;
	% Local Parameter:   id =  TP_Piap_kPGA_ch, name = TP_Piap_kPGA_ch
	reaction_E18_PGA_TP_Piap_kPGA_ch=0.25;
	% Local Parameter:   id =  TP_Piap_kPi_cyt, name = TP_Piap_kPi_cyt
	reaction_E18_PGA_TP_Piap_kPi_cyt=0.74;
	% Local Parameter:   id =  TP_Piap_kPi_ch, name = TP_Piap_kPi_ch
	reaction_E18_PGA_TP_Piap_kPi_ch=0.63;
	% Local Parameter:   id =  TP_Piap_kDHAP_ch, name = TP_Piap_kDHAP_ch
	reaction_E18_PGA_TP_Piap_kDHAP_ch=0.077;
	% Local Parameter:   id =  TP_Piap_kGAP_ch, name = TP_Piap_kGAP_ch
	reaction_E18_PGA_TP_Piap_kGAP_ch=0.075;

	reaction_E18_PGA=reaction_E18_PGA_PGA_xpMult*reaction_E18_PGA_TP_Piap_vm*x(3)*compartment_chloroplast/(reaction_E18_PGA_TP_Piap_kPGA_ch*(1+(1+reaction_E18_PGA_TP_Piap_kPi_cyt/x(18))*(x(8)/reaction_E18_PGA_TP_Piap_kPi_ch+x(3)/reaction_E18_PGA_TP_Piap_kPGA_ch+x(9)/reaction_E18_PGA_TP_Piap_kDHAP_ch+x(7)/reaction_E18_PGA_TP_Piap_kGAP_ch)));

% Reaction: id = E18_GAP	% Local Parameter:   id =  TP_Piap_vm, name = TP_Piap_vm
	reaction_E18_GAP_TP_Piap_vm=250.0;
	% Local Parameter:   id =  TP_Piap_kGAP_ch, name = TP_Piap_kGAP_ch
	reaction_E18_GAP_TP_Piap_kGAP_ch=0.075;
	% Local Parameter:   id =  TP_Piap_kPi_cyt, name = TP_Piap_kPi_cyt
	reaction_E18_GAP_TP_Piap_kPi_cyt=0.74;
	% Local Parameter:   id =  TP_Piap_kPi_ch, name = TP_Piap_kPi_ch
	reaction_E18_GAP_TP_Piap_kPi_ch=0.63;
	% Local Parameter:   id =  TP_Piap_kPGA_ch, name = TP_Piap_kPGA_ch
	reaction_E18_GAP_TP_Piap_kPGA_ch=0.25;
	% Local Parameter:   id =  TP_Piap_kDHAP_ch, name = TP_Piap_kDHAP_ch
	reaction_E18_GAP_TP_Piap_kDHAP_ch=0.077;

	reaction_E18_GAP=reaction_E18_GAP_TP_Piap_vm*x(7)*compartment_chloroplast/(reaction_E18_GAP_TP_Piap_kGAP_ch*(1+(1+reaction_E18_GAP_TP_Piap_kPi_cyt/x(18))*(x(8)/reaction_E18_GAP_TP_Piap_kPi_ch+x(3)/reaction_E18_GAP_TP_Piap_kPGA_ch+x(9)/reaction_E18_GAP_TP_Piap_kDHAP_ch+x(7)/reaction_E18_GAP_TP_Piap_kGAP_ch)));

	xdot=zeros(27,1);
	
% Species:   id = x_CO2, name = x_CO2
%WARNING speciesID: x_CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = RuBP_ch, name = RuBP_ch, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*((-1.0 * reaction_E1) + ( 1.0 * reaction_E13));
	
% Species:   id = PGA_ch, name = PGA_ch, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 2.0 * reaction_E1) + (-1.0 * reaction_E2) + (-1.0 * reaction_E18_PGA));
	
% Species:   id = ATP_ch, name = ATP_ch, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*((-1.0 * reaction_E2) + (-1.0 * reaction_E13) + ( 1.0 * reaction_light_reaction) + (-1.0 * reaction_E16));
	
% Species:   id = BPGA_ch, name = BPGA_ch, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E2) + (-1.0 * reaction_E3));
	
% Species:   id = x_NADPH_ch, name = x_NADPH_ch
%WARNING speciesID: x_NADPH_ch, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = GAP_ch, name = GAP_ch, affected by kineticLaw
	xdot(7) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E3) + (-1.0 * reaction_E4) + (-1.0 * reaction_E5) + (-1.0 * reaction_E7) + (-1.0 * reaction_E10) + (-1.0 * reaction_E18_GAP));
	
% Species:   id = Pi_ch, name = Pi_ch, affected by kineticLaw
	xdot(8) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E3) + ( 1.0 * reaction_E6) + ( 1.0 * reaction_E9) + (-1.0 * reaction_light_reaction) + ( 2.0 * reaction_E16) + (-1.0 * reaction_E17) + ( 1.0 * reaction_E18_DHAP) + ( 1.0 * reaction_E18_PGA) + ( 1.0 * reaction_E18_GAP));
	
% Species:   id = DHAP_ch, name = DHAP_ch, affected by kineticLaw
	xdot(9) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E4) + (-1.0 * reaction_E5) + (-1.0 * reaction_E8) + (-1.0 * reaction_E18_DHAP));
	
% Species:   id = FBP_ch, name = FBP_ch, affected by kineticLaw
	xdot(10) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E5) + (-1.0 * reaction_E6));
	
% Species:   id = F6P_ch, name = F6P_ch, affected by kineticLaw
	xdot(11) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E6) + (-1.0 * reaction_E7) + (-1.0 * reaction_E14));
	
% Species:   id = E4P_ch, name = E4P_ch, affected by kineticLaw
	xdot(12) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E7) + (-1.0 * reaction_E8));
	
% Species:   id = X5P_ch, name = X5P_ch, affected by kineticLaw
	xdot(13) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E7) + ( 1.0 * reaction_E10) + (-1.0 * reaction_E12));
	
% Species:   id = SBP_ch, name = SBP_ch, affected by kineticLaw
	xdot(14) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E8) + (-1.0 * reaction_E9));
	
% Species:   id = S7P_ch, name = S7P_ch, affected by kineticLaw
	xdot(15) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E9) + (-1.0 * reaction_E10));
	
% Species:   id = R5P_ch, name = R5P_ch, affected by kineticLaw
	xdot(16) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E10) + (-1.0 * reaction_E11));
	
% Species:   id = Ru5P_ch, name = Ru5P_ch, affected by kineticLaw
	xdot(17) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E11) + ( 1.0 * reaction_E12) + (-1.0 * reaction_E13));
	
% Species:   id = x_Pi_cyt, name = x_Pi_cyt
%WARNING speciesID: x_Pi_cyt, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
	
% Species:   id = x_GAP_cyt, name = x_GAP_cyt
%WARNING speciesID: x_GAP_cyt, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = G6P_ch, name = G6P_ch, affected by kineticLaw
	xdot(20) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E14) + (-1.0 * reaction_E15));
	
% Species:   id = x_NADP_ch, name = x_NADP_ch
%WARNING speciesID: x_NADP_ch, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = x_PGA_cyt, name = x_PGA_cyt
%WARNING speciesID: x_PGA_cyt, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = ADP_ch, name = ADP_ch, affected by kineticLaw
	xdot(23) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E2) + ( 1.0 * reaction_E13) + (-1.0 * reaction_light_reaction) + ( 1.0 * reaction_E16));
	
% Species:   id = x_DHAP_cyt, name = x_DHAP_cyt
%WARNING speciesID: x_DHAP_cyt, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = x_Proton_ch, name = x_Proton_ch
%WARNING speciesID: x_Proton_ch, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = G1P_ch, name = G1P_ch, affected by kineticLaw
	xdot(26) = (1/(compartment_chloroplast))*(( 1.0 * reaction_E15) + (-1.0 * reaction_E16) + ( 1.0 * reaction_E17));
	
% Species:   id = x_Starch_ch, name = x_Starch_ch
%WARNING speciesID: x_Starch_ch, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(27) = 0.0;
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


