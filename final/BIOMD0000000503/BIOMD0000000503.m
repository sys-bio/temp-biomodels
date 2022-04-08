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
% Model name = Messiha2013 - combined glycolysis and pentose phosphate pathway model
%
% is http://identifiers.org/biomodels.db/MODEL1311290001
% is http://identifiers.org/biomodels.db/BIOMD0000000503
% isDescribedBy http://identifiers.org/doi/10.7287/peerj.preprints.146v2
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000502
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1303260018
%


function main()
%Initial conditions vector
	x0=zeros(32,1);
	x0(1) = 1.29;
	x0(2) = 4.29;
	x0(3) = 0.178140579850657;
	x0(4) = 7.36873499865602E-4;
	x0(5) = 1.1613768527467;
	x0(6) = 4.58321859006931;
	x0(7) = 0.235441221891221;
	x0(8) = 0.539248506344921;
	x0(9) = 0.274002929191284;
	x0(10) = 0.772483203645216;
	x0(11) = 0.315891028770503;
	x0(12) = 6.28000179338242;
	x0(13) = 1.50329030201531;
	x0(14) = 0.0677379081099344;
	x0(15) = 0.469825011134444;
	x0(16) = 0.610005413358042;
	x0(17) = 2.10847140717419;
	x0(18) = 0.02;
	x0(19) = 0.2815;
	x0(20) = 0.6491;
	x0(21) = 0.44;
	x0(22) = 0.0867096979846952;
	x0(23) = 0.467246194874247;
	x0(24) = 0.029;
	x0(25) = 0.1;
	x0(26) = 0.16;
	x0(27) = 0.25;
	x0(28) = 0.118;
	x0(29) = 0.033;
	x0(30) = 0.082;
	x0(31) = 0.041;
	x0(32) = 0.17;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Parameter:   id =  sum_AxP, name = sum_AxP
	global_par_sum_AxP=6.02;
% Parameter:   id =  sum_NAD, name = sum_NAD
	global_par_sum_NAD=1.59;
% Parameter:   id =  sum_UxP, name = sum_UxP
	global_par_sum_UxP=1.39784619487425;
% Parameter:   id =  sum_NADP, name = sum_NADP
	global_par_sum_NADP=0.33;
% Parameter:   id =  Kx5p_TAL, name = Kx5p_TAL
	global_par_Kx5p_TAL=0.67;
% Parameter:   id =  Ke4p_TAL, name = Ke4p_TAL
	global_par_Ke4p_TAL=0.946;
% Parameter:   id =  Kr5p_TAL, name = Kr5p_TAL
	global_par_Kr5p_TAL=0.235;
% Parameter:   id =  Kgap_TAL, name = Kgap_TAL
	global_par_Kgap_TAL=0.1;
% Parameter:   id =  Kf6p_TAL, name = Kf6p_TAL
	global_par_Kf6p_TAL=1.1;
% Parameter:   id =  Ks7p_TAL, name = Ks7p_TAL
	global_par_Ks7p_TAL=0.15;
% assignmentRule: variable = AMP
	x(21)=global_par_sum_AxP-x(2)-x(1);
% assignmentRule: variable = NADH
	x(22)=global_par_sum_NAD-x(13);
% assignmentRule: variable = UDG
	x(23)=global_par_sum_UxP-x(20)-x(19);
% assignmentRule: variable = NADP
	x(32)=global_par_sum_NADP-x(26);

% Reaction: id = ADH, name = ADH	% Local Parameter:   id =  kcat, name = kcat
	reaction_ADH_kcat=176.0;
	% Local Parameter:   id =  Ketoh, name = Ketoh
	reaction_ADH_Ketoh=17.0;
	% Local Parameter:   id =  Kinad, name = Kinad
	reaction_ADH_Kinad=0.92;
	% Local Parameter:   id =  Knad, name = Knad
	reaction_ADH_Knad=0.17;
	% Local Parameter:   id =  Knadh, name = Knadh
	reaction_ADH_Knadh=0.11;
	% Local Parameter:   id =  Kinadh, name = Kinadh
	reaction_ADH_Kinadh=0.031;
	% Local Parameter:   id =  Kacald, name = Kacald
	reaction_ADH_Kacald=0.4622;
	% Local Parameter:   id =  Kiacald, name = Kiacald
	reaction_ADH_Kiacald=1.1;
	% Local Parameter:   id =  Kietoh, name = Kietoh
	reaction_ADH_Kietoh=90.0;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_ADH_Keq=14492.7536231884;

	reaction_ADH=compartment_cell*const_species_ADH1*reaction_ADH_kcat*(x(3)*x(22)/(reaction_ADH_Kacald*reaction_ADH_Kinadh)-const_species_EtOH*x(13)/(reaction_ADH_Kacald*reaction_ADH_Kinadh*reaction_ADH_Keq))/(1+x(22)/reaction_ADH_Kinadh+x(3)*reaction_ADH_Knadh/(reaction_ADH_Kinadh*reaction_ADH_Kacald)+const_species_EtOH*reaction_ADH_Knad/(reaction_ADH_Kinad*reaction_ADH_Ketoh)+x(13)/reaction_ADH_Kinad+x(3)*x(22)/(reaction_ADH_Kinadh*reaction_ADH_Kacald)+x(22)*const_species_EtOH*reaction_ADH_Knad/(reaction_ADH_Kinadh*reaction_ADH_Kinad*reaction_ADH_Ketoh)+x(3)*x(13)*reaction_ADH_Knadh/(reaction_ADH_Kinadh*reaction_ADH_Kinad*reaction_ADH_Kacald)+const_species_EtOH*x(13)/(reaction_ADH_Ketoh*reaction_ADH_Kinad)+x(3)*x(22)*const_species_EtOH/(reaction_ADH_Kinadh*reaction_ADH_Kietoh*reaction_ADH_Kacald)+x(3)*const_species_EtOH*x(13)/(reaction_ADH_Kiacald*reaction_ADH_Kinad*reaction_ADH_Ketoh));

% Reaction: id = AK, name = AK	% Local Parameter:   id =  k, name = k
	reaction_AK_k=0.75;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_AK_Keq=0.45;

	reaction_AK=compartment_cell*reaction_AK_k*(x(1)*x(1)-x(21)*x(2)/reaction_AK_Keq);

% Reaction: id = ATPase, name = ATPase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_ATPase_Vmax=6.16;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_ATPase_Katp=3.0;

	reaction_ATPase=compartment_cell*reaction_ATPase_Vmax*x(2)/reaction_ATPase_Katp/(1+x(2)/reaction_ATPase_Katp);

% Reaction: id = ENO, name = ENO	% Local Parameter:   id =  kcat_ENO1, name = kcat_ENO1
	reaction_ENO_kcat_ENO1=7.6;
	% Local Parameter:   id =  Kp2g_ENO1, name = Kp2g_ENO1
	reaction_ENO_Kp2g_ENO1=0.043;
	% Local Parameter:   id =  Kpep_ENO1, name = Kpep_ENO1
	reaction_ENO_Kpep_ENO1=0.5;
	% Local Parameter:   id =  kcat_ENO2, name = kcat_ENO2
	reaction_ENO_kcat_ENO2=19.87;
	% Local Parameter:   id =  Kp2g_ENO2, name = Kp2g_ENO2
	reaction_ENO_Kp2g_ENO2=0.104;
	% Local Parameter:   id =  Kpep_ENO2, name = Kpep_ENO2
	reaction_ENO_Kpep_ENO2=0.5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_ENO_Keq=6.7;

	reaction_ENO=compartment_cell*const_species_ENO1*reaction_ENO_kcat_ENO1*(x(14)/reaction_ENO_Kp2g_ENO1-x(16)/(reaction_ENO_Kp2g_ENO1*reaction_ENO_Keq))/(1+x(14)/reaction_ENO_Kp2g_ENO1+x(16)/reaction_ENO_Kpep_ENO1)+compartment_cell*const_species_ENO2*reaction_ENO_kcat_ENO2*(x(14)/reaction_ENO_Kp2g_ENO2-x(16)/(reaction_ENO_Kp2g_ENO2*reaction_ENO_Keq))/(1+x(14)/reaction_ENO_Kp2g_ENO2+x(16)/reaction_ENO_Kpep_ENO2);

% Reaction: id = FBA, name = FBA	% Local Parameter:   id =  kcat, name = kcat
	reaction_FBA_kcat=4.139;
	% Local Parameter:   id =  Kf16bp, name = Kf16bp
	reaction_FBA_Kf16bp=0.4507;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_FBA_Keq=0.069;
	% Local Parameter:   id =  Kdhap, name = Kdhap
	reaction_FBA_Kdhap=2.0;
	% Local Parameter:   id =  Kgap, name = Kgap
	reaction_FBA_Kgap=2.4;
	% Local Parameter:   id =  Kigap, name = Kigap
	reaction_FBA_Kigap=10.0;

	reaction_FBA=compartment_cell*const_species_FBA1*reaction_FBA_kcat*(x(6)/reaction_FBA_Kf16bp-x(5)*x(11)/(reaction_FBA_Kf16bp*reaction_FBA_Keq))/(1+x(6)/reaction_FBA_Kf16bp+x(5)/reaction_FBA_Kdhap+x(11)/reaction_FBA_Kgap+x(6)*x(11)/(reaction_FBA_Kf16bp*reaction_FBA_Kigap)+x(5)*x(11)/(reaction_FBA_Kdhap*reaction_FBA_Kgap));

% Reaction: id = GPD, name = GPD	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_GPD_Vmax=0.783333333333333;
	% Local Parameter:   id =  Knadh, name = Knadh
	reaction_GPD_Knadh=0.023;
	% Local Parameter:   id =  Kdhap, name = Kdhap
	reaction_GPD_Kdhap=0.54;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_GPD_Keq=10000.0;
	% Local Parameter:   id =  Kfbp, name = Kfbp
	reaction_GPD_Kfbp=4.8;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_GPD_Katp=0.73;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_GPD_Kadp=2.0;
	% Local Parameter:   id =  Knad, name = Knad
	reaction_GPD_Knad=0.93;
	% Local Parameter:   id =  Kg3p, name = Kg3p
	reaction_GPD_Kg3p=1.2;

	reaction_GPD=compartment_cell*reaction_GPD_Vmax/(reaction_GPD_Kdhap*reaction_GPD_Knadh)*(x(5)*x(22)-x(9)*x(13)/reaction_GPD_Keq)/((1+x(6)/reaction_GPD_Kfbp+x(2)/reaction_GPD_Katp+x(1)/reaction_GPD_Kadp)*(1+x(5)/reaction_GPD_Kdhap+x(9)/reaction_GPD_Kg3p)*(1+x(22)/reaction_GPD_Knadh+x(13)/reaction_GPD_Knad));

% Reaction: id = GPM, name = GPM	% Local Parameter:   id =  kcat, name = kcat
	reaction_GPM_kcat=400.0;
	% Local Parameter:   id =  Kp3g, name = Kp3g
	reaction_GPM_Kp3g=1.2;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_GPM_Keq=0.19;
	% Local Parameter:   id =  Kp2g, name = Kp2g
	reaction_GPM_Kp2g=1.41;

	reaction_GPM=compartment_cell*const_species_GPM1*reaction_GPM_kcat*(x(15)/reaction_GPM_Kp3g-x(14)/(reaction_GPM_Kp3g*reaction_GPM_Keq))/(1+x(15)/reaction_GPM_Kp3g+x(14)/reaction_GPM_Kp2g);

% Reaction: id = GPP, name = GPP	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_GPP_Vmax=0.883333333333333;
	% Local Parameter:   id =  Kg3p, name = Kg3p
	reaction_GPP_Kg3p=3.5;

	reaction_GPP=compartment_cell*reaction_GPP_Vmax*x(9)/reaction_GPP_Kg3p/(1+x(9)/reaction_GPP_Kg3p);

% Reaction: id = HXK, name = HXK	% Local Parameter:   id =  kcat_HXK1, name = kcat_HXK1
	reaction_HXK_kcat_HXK1=10.2;
	% Local Parameter:   id =  Kglc_HXK1, name = Kglc_HXK1
	reaction_HXK_Kglc_HXK1=0.15;
	% Local Parameter:   id =  Katp_HXK1, name = Katp_HXK1
	reaction_HXK_Katp_HXK1=0.293;
	% Local Parameter:   id =  Kg6p_HXK1, name = Kg6p_HXK1
	reaction_HXK_Kg6p_HXK1=30.0;
	% Local Parameter:   id =  Kadp_HXK1, name = Kadp_HXK1
	reaction_HXK_Kadp_HXK1=0.23;
	% Local Parameter:   id =  Kit6p_HXK1, name = Kit6p_HXK1
	reaction_HXK_Kit6p_HXK1=0.2;
	% Local Parameter:   id =  kcat_HXK2, name = kcat_HXK2
	reaction_HXK_kcat_HXK2=63.1;
	% Local Parameter:   id =  Kglc_HXK2, name = Kglc_HXK2
	reaction_HXK_Kglc_HXK2=0.2;
	% Local Parameter:   id =  Katp_HXK2, name = Katp_HXK2
	reaction_HXK_Katp_HXK2=0.195;
	% Local Parameter:   id =  Kg6p_HXK2, name = Kg6p_HXK2
	reaction_HXK_Kg6p_HXK2=30.0;
	% Local Parameter:   id =  Kadp_HXK2, name = Kadp_HXK2
	reaction_HXK_Kadp_HXK2=0.23;
	% Local Parameter:   id =  Kit6p_HXK2, name = Kit6p_HXK2
	reaction_HXK_Kit6p_HXK2=0.04;
	% Local Parameter:   id =  kcat_GLK1, name = kcat_GLK1
	reaction_HXK_kcat_GLK1=0.0721;
	% Local Parameter:   id =  Kglc_GLK1, name = Kglc_GLK1
	reaction_HXK_Kglc_GLK1=0.0106;
	% Local Parameter:   id =  Katp_GLK1, name = Katp_GLK1
	reaction_HXK_Katp_GLK1=0.865;
	% Local Parameter:   id =  Kg6p_GLK1, name = Kg6p_GLK1
	reaction_HXK_Kg6p_GLK1=30.0;
	% Local Parameter:   id =  Kadp_GLK1, name = Kadp_GLK1
	reaction_HXK_Kadp_GLK1=0.23;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_HXK_Keq=2000.0;

	reaction_HXK=compartment_cell*const_species_HXK1*reaction_HXK_kcat_HXK1*(x(12)*x(2)/(reaction_HXK_Kglc_HXK1*reaction_HXK_Katp_HXK1)-x(10)*x(1)/(reaction_HXK_Kglc_HXK1*reaction_HXK_Katp_HXK1*reaction_HXK_Keq))/((1+x(12)/reaction_HXK_Kglc_HXK1+x(10)/reaction_HXK_Kg6p_HXK1+x(18)/reaction_HXK_Kit6p_HXK1)*(1+x(2)/reaction_HXK_Katp_HXK1+x(1)/reaction_HXK_Kadp_HXK1))+compartment_cell*const_species_HXK2*reaction_HXK_kcat_HXK2*(x(12)*x(2)/(reaction_HXK_Kglc_HXK2*reaction_HXK_Katp_HXK2)-x(10)*x(1)/(reaction_HXK_Kglc_HXK2*reaction_HXK_Katp_HXK2*reaction_HXK_Keq))/((1+x(12)/reaction_HXK_Kglc_HXK2+x(10)/reaction_HXK_Kg6p_HXK2+x(18)/reaction_HXK_Kit6p_HXK2)*(1+x(2)/reaction_HXK_Katp_HXK2+x(1)/reaction_HXK_Kadp_HXK2))+compartment_cell*const_species_GLK1*reaction_HXK_kcat_GLK1*(x(12)*x(2)/(reaction_HXK_Kglc_GLK1*reaction_HXK_Katp_GLK1)-x(10)*x(1)/(reaction_HXK_Kglc_GLK1*reaction_HXK_Katp_GLK1*reaction_HXK_Keq))/((1+x(12)/reaction_HXK_Kglc_GLK1+x(10)/reaction_HXK_Kg6p_GLK1)*(1+x(2)/reaction_HXK_Katp_GLK1+x(1)/reaction_HXK_Kadp_GLK1));

% Reaction: id = PDC, name = PDC	% Local Parameter:   id =  kcat_PDC1, name = kcat_PDC1
	reaction_PDC_kcat_PDC1=12.14;
	% Local Parameter:   id =  Kpyr_PDC1, name = Kpyr_PDC1
	reaction_PDC_Kpyr_PDC1=8.5;
	% Local Parameter:   id =  kcat_PDC5, name = kcat_PDC5
	reaction_PDC_kcat_PDC5=10.32;
	% Local Parameter:   id =  Kpyr_PDC5, name = Kpyr_PDC5
	reaction_PDC_Kpyr_PDC5=7.08;
	% Local Parameter:   id =  kcat_PDC6, name = kcat_PDC6
	reaction_PDC_kcat_PDC6=9.21;
	% Local Parameter:   id =  Kpyr_PDC6, name = Kpyr_PDC6
	reaction_PDC_Kpyr_PDC6=2.92;

	reaction_PDC=compartment_cell*const_species_PDC1*reaction_PDC_kcat_PDC1*x(17)/reaction_PDC_Kpyr_PDC1/(1+x(17)/reaction_PDC_Kpyr_PDC1)+compartment_cell*const_species_PDC5*reaction_PDC_kcat_PDC5*x(17)/reaction_PDC_Kpyr_PDC5/(1+x(17)/reaction_PDC_Kpyr_PDC5)+compartment_cell*const_species_PDC6*reaction_PDC_kcat_PDC6*x(17)/reaction_PDC_Kpyr_PDC6/(1+x(17)/reaction_PDC_Kpyr_PDC6);

% Reaction: id = PFK, name = PFK	% Local Parameter:   id =  kcat, name = kcat
	reaction_PFK_kcat=209.6;
	% Local Parameter:   id =  gR, name = gR
	reaction_PFK_gR=5.12;
	% Local Parameter:   id =  Kf6p, name = Kf6p
	reaction_PFK_Kf6p=0.1;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_PFK_Katp=0.71;
	% Local Parameter:   id =  L0, name = L0
	reaction_PFK_L0=0.66;
	% Local Parameter:   id =  Ciatp, name = Ciatp
	reaction_PFK_Ciatp=100.0;
	% Local Parameter:   id =  Kiatp, name = Kiatp
	reaction_PFK_Kiatp=0.65;
	% Local Parameter:   id =  Camp, name = Camp
	reaction_PFK_Camp=0.0845;
	% Local Parameter:   id =  Kamp, name = Kamp
	reaction_PFK_Kamp=0.0995;
	% Local Parameter:   id =  Cf26, name = Cf26
	reaction_PFK_Cf26=0.0174;
	% Local Parameter:   id =  Kf26, name = Kf26
	reaction_PFK_Kf26=6.82E-4;
	% Local Parameter:   id =  Cf16, name = Cf16
	reaction_PFK_Cf16=0.397;
	% Local Parameter:   id =  Kf16, name = Kf16
	reaction_PFK_Kf16=0.111;
	% Local Parameter:   id =  Catp, name = Catp
	reaction_PFK_Catp=3.0;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_PFK_Kadp=1.0;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_PFK_Keq=800.0;

	reaction_PFK=compartment_cell*const_species_PFK2*reaction_PFK_kcat*reaction_PFK_gR*x(7)/reaction_PFK_Kf6p*x(2)/reaction_PFK_Katp*(1-x(6)*x(1)/(x(7)*x(2))/reaction_PFK_Keq)*(1+x(7)/reaction_PFK_Kf6p+x(2)/reaction_PFK_Katp+reaction_PFK_gR*x(7)/reaction_PFK_Kf6p*x(2)/reaction_PFK_Katp+x(6)/reaction_PFK_Kf16+x(1)/reaction_PFK_Kadp+reaction_PFK_gR*x(6)/reaction_PFK_Kf16*x(1)/reaction_PFK_Kadp)/((1+x(7)/reaction_PFK_Kf6p+x(2)/reaction_PFK_Katp+reaction_PFK_gR*x(7)/reaction_PFK_Kf6p*x(2)/reaction_PFK_Katp+x(6)/reaction_PFK_Kf16+x(1)/reaction_PFK_Kadp+reaction_PFK_gR*x(6)/reaction_PFK_Kf16*x(1)/reaction_PFK_Kadp)^2+reaction_PFK_L0*((1+reaction_PFK_Ciatp*x(2)/reaction_PFK_Kiatp)/(1+x(2)/reaction_PFK_Kiatp))^2*((1+reaction_PFK_Camp*x(21)/reaction_PFK_Kamp)/(1+x(21)/reaction_PFK_Kamp))^2*((1+reaction_PFK_Cf26*const_species_F26bP/reaction_PFK_Kf26+reaction_PFK_Cf16*x(6)/reaction_PFK_Kf16)/(1+const_species_F26bP/reaction_PFK_Kf26+x(6)/reaction_PFK_Kf16))^2*(1+reaction_PFK_Catp*x(2)/reaction_PFK_Katp)^2);

% Reaction: id = PGI, name = PGI	% Local Parameter:   id =  kcat, name = kcat
	reaction_PGI_kcat=487.36;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_PGI_Kg6p=1.0257;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_PGI_Keq=0.29;
	% Local Parameter:   id =  Kf6p, name = Kf6p
	reaction_PGI_Kf6p=0.307;

	reaction_PGI=compartment_cell*const_species_PGI1*reaction_PGI_kcat*(x(10)/reaction_PGI_Kg6p-x(7)/(reaction_PGI_Kg6p*reaction_PGI_Keq))/(1+x(10)/reaction_PGI_Kg6p+x(7)/reaction_PGI_Kf6p);

% Reaction: id = PGK, name = PGK	% Local Parameter:   id =  kcat, name = kcat
	reaction_PGK_kcat=58.6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_PGK_Keq=3200.0;
	% Local Parameter:   id =  Kp3g, name = Kp3g
	reaction_PGK_Kp3g=4.58;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_PGK_Katp=1.99;
	% Local Parameter:   id =  Kbpg, name = Kbpg
	reaction_PGK_Kbpg=0.003;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_PGK_Kadp=0.2;
	% Local Parameter:   id =  nHadp, name = nHadp
	reaction_PGK_nHadp=2.0;

	reaction_PGK=compartment_cell*const_species_PGK1*reaction_PGK_kcat*(x(1)/reaction_PGK_Kadp)^(reaction_PGK_nHadp-1)*(x(4)*x(1)/(reaction_PGK_Kbpg*reaction_PGK_Kadp)-x(15)*x(2)/(reaction_PGK_Kbpg*reaction_PGK_Kadp*reaction_PGK_Keq))/((1+x(4)/reaction_PGK_Kbpg+x(15)/reaction_PGK_Kp3g)*(1+(x(1)/reaction_PGK_Kadp)^reaction_PGK_nHadp+x(2)/reaction_PGK_Katp));

% Reaction: id = PGM, name = PGM	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_PGM_Vmax=0.12762;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_PGM_Kg6p=0.05;
	% Local Parameter:   id =  Kg1p, name = Kg1p
	reaction_PGM_Kg1p=0.023;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_PGM_Keq=0.1667;

	reaction_PGM=compartment_cell*reaction_PGM_Vmax*(x(10)/reaction_PGM_Kg6p-x(8)/(reaction_PGM_Kg6p*reaction_PGM_Keq))/(1+x(10)/reaction_PGM_Kg6p+x(8)/reaction_PGM_Kg1p);

% Reaction: id = PYK, name = PYK	% Local Parameter:   id =  kcat, name = kcat
	reaction_PYK_kcat=20.146;
	% Local Parameter:   id =  Kpep, name = Kpep
	reaction_PYK_Kpep=0.281;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_PYK_Kadp=0.243;
	% Local Parameter:   id =  Kpyr, name = Kpyr
	reaction_PYK_Kpyr=21.0;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_PYK_Katp=1.5;
	% Local Parameter:   id =  Kiatp, name = Kiatp
	reaction_PYK_Kiatp=9.3;
	% Local Parameter:   id =  Kf16p, name = Kf16p
	reaction_PYK_Kf16p=0.2;
	% Local Parameter:   id =  L0, name = L0
	reaction_PYK_L0=100.0;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_PYK_Keq=6500.0;

	reaction_PYK=compartment_cell*const_species_CDC19*reaction_PYK_kcat*(x(16)*x(1)-x(17)*x(2)/reaction_PYK_Keq)/(reaction_PYK_Kpep*reaction_PYK_Kadp)/((1+x(16)/reaction_PYK_Kpep+x(17)/reaction_PYK_Kpyr+reaction_PYK_L0*(x(2)/reaction_PYK_Kiatp+1)/(x(6)/reaction_PYK_Kf16p+1))*(1+x(1)/reaction_PYK_Kadp+x(2)/reaction_PYK_Katp));

% Reaction: id = TDH, name = TDH	% Local Parameter:   id =  kcat_TDH1, name = kcat_TDH1
	reaction_TDH_kcat_TDH1=19.12;
	% Local Parameter:   id =  Kgap_TDH1, name = Kgap_TDH1
	reaction_TDH_Kgap_TDH1=0.495;
	% Local Parameter:   id =  Knad_TDH1, name = Knad_TDH1
	reaction_TDH_Knad_TDH1=0.09;
	% Local Parameter:   id =  Kbpg_TDH1, name = Kbpg_TDH1
	reaction_TDH_Kbpg_TDH1=0.0098;
	% Local Parameter:   id =  Knadh_TDH1, name = Knadh_TDH1
	reaction_TDH_Knadh_TDH1=0.06;
	% Local Parameter:   id =  kcat_TDH3, name = kcat_TDH3
	reaction_TDH_kcat_TDH3=18.162;
	% Local Parameter:   id =  Kgap_TDH3, name = Kgap_TDH3
	reaction_TDH_Kgap_TDH3=0.423;
	% Local Parameter:   id =  Knad_TDH3, name = Knad_TDH3
	reaction_TDH_Knad_TDH3=0.09;
	% Local Parameter:   id =  Kbpg_TDH3, name = Kbpg_TDH3
	reaction_TDH_Kbpg_TDH3=0.909;
	% Local Parameter:   id =  Knadh_TDH3, name = Knadh_TDH3
	reaction_TDH_Knadh_TDH3=0.06;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TDH_Keq=0.00533412710224736;

	reaction_TDH=compartment_cell*const_species_TDH1*reaction_TDH_kcat_TDH1*(x(11)*x(13)/(reaction_TDH_Kgap_TDH1*reaction_TDH_Knad_TDH1)-x(4)*x(22)/(reaction_TDH_Kgap_TDH1*reaction_TDH_Knad_TDH1*reaction_TDH_Keq))/((1+x(11)/reaction_TDH_Kgap_TDH1+x(4)/reaction_TDH_Kbpg_TDH1)*(1+x(13)/reaction_TDH_Knad_TDH1+x(22)/reaction_TDH_Knadh_TDH1))+compartment_cell*const_species_TDH3*reaction_TDH_kcat_TDH3*(x(11)*x(13)/(reaction_TDH_Kgap_TDH3*reaction_TDH_Knad_TDH3)-x(4)*x(22)/(reaction_TDH_Kgap_TDH3*reaction_TDH_Knad_TDH3*reaction_TDH_Keq))/((1+x(11)/reaction_TDH_Kgap_TDH3+x(4)/reaction_TDH_Kbpg_TDH3)*(1+x(13)/reaction_TDH_Knad_TDH3+x(22)/reaction_TDH_Knadh_TDH3));

% Reaction: id = TPI, name = TPI	% Local Parameter:   id =  kcat, name = kcat
	reaction_TPI_kcat=564.38;
	% Local Parameter:   id =  Kdhap, name = Kdhap
	reaction_TPI_Kdhap=6.454;
	% Local Parameter:   id =  Kgap, name = Kgap
	reaction_TPI_Kgap=5.25;
	% Local Parameter:   id =  Kigap, name = Kigap
	reaction_TPI_Kigap=35.1;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TPI_Keq=0.045;

	reaction_TPI=compartment_cell*const_species_TPI1*reaction_TPI_kcat/reaction_TPI_Kdhap*(x(5)-x(11)/reaction_TPI_Keq)/(1+x(5)/reaction_TPI_Kdhap+x(11)/reaction_TPI_Kgap*(1+(x(11)/reaction_TPI_Kigap)^4));

% Reaction: id = TPP, name = TPP	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_TPP_Vmax=2.33999999999999;
	% Local Parameter:   id =  Kt6p, name = Kt6p
	reaction_TPP_Kt6p=0.5;

	reaction_TPP=compartment_cell*reaction_TPP_Vmax*x(18)/reaction_TPP_Kt6p/(1+x(18)/reaction_TPP_Kt6p);

% Reaction: id = TPS, name = TPS	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_TPS_Vmax=0.49356;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_TPS_Kg6p=3.8;
	% Local Parameter:   id =  Kudg, name = Kudg
	reaction_TPS_Kudg=0.886;

	reaction_TPS=compartment_cell*reaction_TPS_Vmax*x(10)*x(23)/(reaction_TPS_Kg6p*reaction_TPS_Kudg)/((1+x(10)/reaction_TPS_Kg6p)*(1+x(23)/reaction_TPS_Kudg));

% Reaction: id = UGP, name = UGP	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_UGP_Vmax=13.2552;
	% Local Parameter:   id =  Kutp, name = Kutp
	reaction_UGP_Kutp=0.11;
	% Local Parameter:   id =  Kiutp, name = Kiutp
	reaction_UGP_Kiutp=0.11;
	% Local Parameter:   id =  Kg1p, name = Kg1p
	reaction_UGP_Kg1p=0.32;
	% Local Parameter:   id =  Kiudg, name = Kiudg
	reaction_UGP_Kiudg=0.0035;

	reaction_UGP=compartment_cell*reaction_UGP_Vmax*x(20)*x(8)/(reaction_UGP_Kutp*reaction_UGP_Kg1p)/(reaction_UGP_Kiutp/reaction_UGP_Kutp+x(20)/reaction_UGP_Kutp+x(8)/reaction_UGP_Kg1p+x(20)*x(8)/(reaction_UGP_Kutp*reaction_UGP_Kg1p)+reaction_UGP_Kiutp/reaction_UGP_Kutp*x(23)/reaction_UGP_Kiudg+x(8)*x(23)/(reaction_UGP_Kg1p*reaction_UGP_Kiudg));

% Reaction: id = acetate_branch, name = acetate_branch	% Local Parameter:   id =  k, name = k
	reaction_acetate_branch_k=0.00554339592436782;

	reaction_acetate_branch=compartment_cell*reaction_acetate_branch_k*x(3)*x(13);

% Reaction: id = udp_to_utp, name = udp_to_utp	% Local Parameter:   id =  k, name = k
	reaction_udp_to_utp_k=0.0745258294103764;

	reaction_udp_to_utp=compartment_cell*reaction_udp_to_utp_k*x(19)*x(2);

% Reaction: id = HXT, name = HXT	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_HXT_Vmax=3.35;
	% Local Parameter:   id =  Kglc, name = Kglc
	reaction_HXT_Kglc=0.9;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_HXT_Ki=0.91;

	reaction_HXT=compartment_cell*reaction_HXT_Vmax*(const_species_GLCx-x(12))/reaction_HXT_Kglc/(1+const_species_GLCx/reaction_HXT_Kglc+x(12)/reaction_HXT_Kglc+reaction_HXT_Ki*const_species_GLCx/reaction_HXT_Kglc*x(12)/reaction_HXT_Kglc);

% Reaction: id = GND, name = GND	% Local Parameter:   id =  kcat_GND1, name = kcat_GND1
	reaction_GND_kcat_GND1=28.0;
	% Local Parameter:   id =  Kp6g_GND1, name = Kp6g_GND1
	reaction_GND_Kp6g_GND1=0.062;
	% Local Parameter:   id =  Knadp_GND1, name = Knadp_GND1
	reaction_GND_Knadp_GND1=0.094;
	% Local Parameter:   id =  Kru5p_GND1, name = Kru5p_GND1
	reaction_GND_Kru5p_GND1=0.1;
	% Local Parameter:   id =  Knadph_GND1, name = Knadph_GND1
	reaction_GND_Knadph_GND1=0.055;
	% Local Parameter:   id =  kcat_GND2, name = kcat_GND2
	reaction_GND_kcat_GND2=27.3;
	% Local Parameter:   id =  Kp6g_GND2, name = Kp6g_GND2
	reaction_GND_Kp6g_GND2=0.115;
	% Local Parameter:   id =  Knadp_GND2, name = Knadp_GND2
	reaction_GND_Knadp_GND2=0.094;
	% Local Parameter:   id =  Kru5p_GND2, name = Kru5p_GND2
	reaction_GND_Kru5p_GND2=0.1;
	% Local Parameter:   id =  Knadph_GND2, name = Knadph_GND2
	reaction_GND_Knadph_GND2=0.055;

	reaction_GND=compartment_cell*(const_species_GND1*reaction_GND_kcat_GND1*x(27)*x(32)/(reaction_GND_Kp6g_GND1*reaction_GND_Knadp_GND1)/((1+x(27)/reaction_GND_Kp6g_GND1+x(29)/reaction_GND_Kru5p_GND1)*(1+x(32)/reaction_GND_Knadp_GND1+x(26)/reaction_GND_Knadph_GND1))+const_species_GND2*reaction_GND_kcat_GND2*x(27)*x(32)/((1+x(27)/reaction_GND_Kp6g_GND2+x(29)/reaction_GND_Kru5p_GND2)*(1+x(32)/reaction_GND_Knadp_GND2+x(26)/reaction_GND_Knadph_GND2)));

% Reaction: id = RKI, name = RKI	% Local Parameter:   id =  kcat, name = kcat
	reaction_RKI_kcat=335.0;
	% Local Parameter:   id =  Kru5p, name = Kru5p
	reaction_RKI_Kru5p=2.47;
	% Local Parameter:   id =  Kr5p, name = Kr5p
	reaction_RKI_Kr5p=5.7;
	% Local Parameter:   id =  Kiru5p, name = Kiru5p
	reaction_RKI_Kiru5p=9.88;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_RKI_Keq=4.0;

	reaction_RKI=compartment_cell*const_species_RKI1*reaction_RKI_kcat*(x(29)-x(28)/reaction_RKI_Keq)/reaction_RKI_Kru5p/(1+x(29)/reaction_RKI_Kru5p+x(28)/reaction_RKI_Kr5p);

% Reaction: id = RPE, name = RPE	% Local Parameter:   id =  kcat, name = kcat
	reaction_RPE_kcat=4020.0;
	% Local Parameter:   id =  Kru5p, name = Kru5p
	reaction_RPE_Kru5p=5.97;
	% Local Parameter:   id =  Kx5p, name = Kx5p
	reaction_RPE_Kx5p=7.7;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_RPE_Keq=1.4;

	reaction_RPE=compartment_cell*const_species_RPE1*reaction_RPE_kcat*(x(29)-x(31)/reaction_RPE_Keq)/reaction_RPE_Kru5p/(1+x(29)/reaction_RPE_Kru5p+x(31)/reaction_RPE_Kx5p);

% Reaction: id = SOL, name = SOL	% Local Parameter:   id =  kcat, name = kcat
	reaction_SOL_kcat=4.3;
	% Local Parameter:   id =  Kg6l, name = Kg6l
	reaction_SOL_Kg6l=0.8;
	% Local Parameter:   id =  Kp6g, name = Kp6g
	reaction_SOL_Kp6g=0.5;

	reaction_SOL=compartment_cell*const_species_SOL3*reaction_SOL_kcat*x(25)/reaction_SOL_Kg6l/(1+x(25)/reaction_SOL_Kg6l+x(27)/reaction_SOL_Kp6g);

% Reaction: id = TAL, name = TAL	% Local Parameter:   id =  kcat_TAL1, name = kcat_TAL1
	reaction_TAL_kcat_TAL1=0.694;
	% Local Parameter:   id =  Kgap_TAL1, name = Kgap_TAL1
	reaction_TAL_Kgap_TAL1=0.272;
	% Local Parameter:   id =  Ks7p_TAL1, name = Ks7p_TAL1
	reaction_TAL_Ks7p_TAL1=0.786;
	% Local Parameter:   id =  Kf6p_TAL1, name = Kf6p_TAL1
	reaction_TAL_Kf6p_TAL1=1.44;
	% Local Parameter:   id =  Ke4p_TAL1, name = Ke4p_TAL1
	reaction_TAL_Ke4p_TAL1=0.362;
	% Local Parameter:   id =  kcat_NQM1, name = kcat_NQM1
	reaction_TAL_kcat_NQM1=0.694;
	% Local Parameter:   id =  Kgap_NQM1, name = Kgap_NQM1
	reaction_TAL_Kgap_NQM1=0.272;
	% Local Parameter:   id =  Ks7p_NQM1, name = Ks7p_NQM1
	reaction_TAL_Ks7p_NQM1=0.786;
	% Local Parameter:   id =  Kf6p_NQM1, name = Kf6p_NQM1
	reaction_TAL_Kf6p_NQM1=1.04;
	% Local Parameter:   id =  Ke4p_NQM1, name = Ke4p_NQM1
	reaction_TAL_Ke4p_NQM1=0.305;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TAL_Keq=1.05;

	reaction_TAL=compartment_cell*(const_species_TAL1*reaction_TAL_kcat_TAL1*(x(11)*x(30)-x(7)*x(24)/reaction_TAL_Keq)/(reaction_TAL_Kgap_TAL1*reaction_TAL_Ks7p_TAL1)/((1+x(11)/reaction_TAL_Kgap_TAL1+x(7)/reaction_TAL_Kf6p_TAL1)*(1+x(30)/reaction_TAL_Ks7p_TAL1+x(24)/reaction_TAL_Ke4p_TAL1))+const_species_NQM1*reaction_TAL_kcat_NQM1*(x(11)*x(30)-x(7)*x(24)/reaction_TAL_Keq)/(reaction_TAL_Kgap_NQM1*reaction_TAL_Ks7p_NQM1)/((1+x(11)/reaction_TAL_Kgap_NQM1+x(7)/reaction_TAL_Kf6p_NQM1)*(1+x(30)/reaction_TAL_Ks7p_NQM1+x(24)/reaction_TAL_Ke4p_NQM1)));

% Reaction: id = TKL_E4P, name = TKL (E4P:F6P)	% Local Parameter:   id =  kcat, name = kcat
	reaction_TKL_E4P_kcat=47.1;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TKL_E4P_Keq=10.0;

	reaction_TKL_E4P=compartment_cell*const_species_TKL1*reaction_TKL_E4P_kcat*(x(31)*x(24)-x(11)*x(7)/reaction_TKL_E4P_Keq)/(global_par_Kx5p_TAL*global_par_Ke4p_TAL)/((1+x(31)/global_par_Kx5p_TAL+x(11)/global_par_Kgap_TAL)*(1+x(24)/global_par_Ke4p_TAL+x(7)/global_par_Kf6p_TAL+x(28)/global_par_Kr5p_TAL+x(30)/global_par_Ks7p_TAL));

% Reaction: id = TKL_R5P, name = TKL (R5P:S7P)	% Local Parameter:   id =  kcat, name = kcat
	reaction_TKL_R5P_kcat=40.5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TKL_R5P_Keq=1.2;

	reaction_TKL_R5P=compartment_cell*const_species_TKL1*reaction_TKL_R5P_kcat*(x(31)*x(28)-x(11)*x(30)/reaction_TKL_R5P_Keq)/(global_par_Kx5p_TAL*global_par_Kr5p_TAL)/((1+x(31)/global_par_Kx5p_TAL+x(11)/global_par_Kgap_TAL)*(1+x(24)/global_par_Ke4p_TAL+x(7)/global_par_Kf6p_TAL+x(28)/global_par_Kr5p_TAL+x(30)/global_par_Ks7p_TAL));

% Reaction: id = ZWF, name = ZWF	% Local Parameter:   id =  kcat, name = kcat
	reaction_ZWF_kcat=189.0;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_ZWF_Kg6p=0.042;
	% Local Parameter:   id =  Knadp, name = Knadp
	reaction_ZWF_Knadp=0.045;
	% Local Parameter:   id =  Kg6l, name = Kg6l
	reaction_ZWF_Kg6l=0.01;
	% Local Parameter:   id =  Knadph, name = Knadph
	reaction_ZWF_Knadph=0.017;

	reaction_ZWF=compartment_cell*const_species_ZWF1*reaction_ZWF_kcat*x(10)*x(32)/(reaction_ZWF_Kg6p*reaction_ZWF_Knadp)/((1+x(10)/reaction_ZWF_Kg6p+x(25)/reaction_ZWF_Kg6l)*(1+x(32)/reaction_ZWF_Knadp+x(26)/reaction_ZWF_Knadph));

% Reaction: id = NADPH_oxidase, name = NADPH oxidase	% Local Parameter:   id =  k, name = k
	reaction_NADPH_oxidase_k=1.0;

	reaction_NADPH_oxidase=compartment_cell*reaction_NADPH_oxidase_k*x(26);

% Reaction: id = E4P_sink, name = E4P sink	% Local Parameter:   id =  k, name = k
	reaction_E4P_sink_k=1.0;

	reaction_E4P_sink=compartment_cell*reaction_E4P_sink_k*x(24);

% Reaction: id = R5P_sink, name = R5P sink	% Local Parameter:   id =  k, name = k
	reaction_R5P_sink_k=1.0;

	reaction_R5P_sink=compartment_cell*reaction_R5P_sink_k*x(28);

% Species:   id = ACE, name = ACE, constant	const_species_ACE=223.000253398294;

% Species:   id = EtOH, name = EtOH, constant	const_species_EtOH=221.890311417536;

% Species:   id = F26bP, name = F26bP, constant	const_species_F26bP=0.003;

% Species:   id = GLCx, name = GLCx, constant	const_species_GLCx=74.0;

% Species:   id = GLY, name = GLY, constant	const_species_GLY=0.15;

% Species:   id = SUC, name = SUC, constant	const_species_SUC=0.0;

% Species:   id = TRH, name = TRH, constant	const_species_TRH=0.0153878853696526;

% Species:   id = ADH1, name = ADH1, constant	const_species_ADH1=0.163908510928009;

% Species:   id = CDC19, name = CDC19, constant	const_species_CDC19=2.0483901071712;

% Species:   id = ENO1, name = ENO1, constant	const_species_ENO1=0.686371954155832;

% Species:   id = ENO2, name = ENO2, constant	const_species_ENO2=1.97444629317817;

% Species:   id = FBA1, name = FBA1, constant	const_species_FBA1=1.33839465704882;

% Species:   id = GLK1, name = GLK1, constant	const_species_GLK1=0.0450869624419226;

% Species:   id = GPD1, name = GPD1, constant	const_species_GPD1=0.00683511177089872;

% Species:   id = GPD2, name = GPD2, constant	const_species_GPD2=7.93405666424228E-4;

% Species:   id = GPM1, name = GPM1, constant	const_species_GPM1=0.73000029889707;

% Species:   id = HOR2, name = HOR2, constant	const_species_HOR2=0.0054734695639756;

% Species:   id = HXK1, name = HXK1, constant	const_species_HXK1=0.0167807457149784;

% Species:   id = HXK2, name = HXK2, constant	const_species_HXK2=0.0613313539705155;

% Species:   id = PDC1, name = PDC1, constant	const_species_PDC1=1.06781077822834;

% Species:   id = PDC5, name = PDC5, constant	const_species_PDC5=0.0123547443267676;

% Species:   id = PDC6, name = PDC6, constant	const_species_PDC6=0.00654086421106118;

% Species:   id = PFK1, name = PFK1, constant	const_species_PFK1=0.0467850299063124;

% Species:   id = PFK2, name = PFK2, constant	const_species_PFK2=0.0390366215332091;

% Species:   id = PGI1, name = PGI1, constant	const_species_PGI1=0.1382907072901;

% Species:   id = PGK1, name = PGK1, constant	const_species_PGK1=0.257656912658955;

% Species:   id = PGM1, name = PGM1, constant	const_species_PGM1=0.00326229546307459;

% Species:   id = PGM2, name = PGM2, constant	const_species_PGM2=0.00125868877176552;

% Species:   id = RHR2, name = RHR2, constant	const_species_RHR2=0.0511804773718313;

% Species:   id = TDH1, name = TDH1, constant	const_species_TDH1=0.350864642801396;

% Species:   id = TDH3, name = TDH3, constant	const_species_TDH3=4.20440474648547;

% Species:   id = TPI1, name = TPI1, constant	const_species_TPI1=0.294357819645508;

% Species:   id = TPS1, name = TPS1, constant	const_species_TPS1=0.00339248174237065;

% Species:   id = TPS2, name = TPS2, constant	const_species_TPS2=0.00265985181347494;

% Species:   id = UGP1, name = UGP1, constant	const_species_UGP1=0.00620211419860714;

% Species:   id = GND1, name = GND1, constant	const_species_GND1=0.013;

% Species:   id = GND2, name = GND2, constant	const_species_GND2=0.003;

% Species:   id = NQM1, name = NQM1, constant	const_species_NQM1=0.02;

% Species:   id = RKI1, name = RKI1, constant	const_species_RKI1=0.05;

% Species:   id = RPE1, name = RPE1, constant	const_species_RPE1=0.03;

% Species:   id = SOL3, name = SOL3, constant	const_species_SOL3=0.0296;

% Species:   id = TAL1, name = TAL1, constant	const_species_TAL1=0.144;

% Species:   id = TKL1, name = TKL1, constant	const_species_TKL1=0.455;

% Species:   id = ZWF1, name = ZWF1, constant	const_species_ZWF1=0.02;

	xdot=zeros(32,1);
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-2.0 * reaction_AK) + ( 1.0 * reaction_ATPase) + ( 1.0 * reaction_HXK) + ( 1.0 * reaction_PFK) + (-1.0 * reaction_PGK) + (-1.0 * reaction_PYK) + ( 1.0 * reaction_udp_to_utp));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_AK) + (-1.0 * reaction_ATPase) + (-1.0 * reaction_HXK) + (-1.0 * reaction_PFK) + ( 1.0 * reaction_PGK) + ( 1.0 * reaction_PYK) + (-1.0 * reaction_udp_to_utp));
	
% Species:   id = AcAld, name = AcAld, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_ADH) + ( 1.0 * reaction_PDC) + (-1.0 * reaction_acetate_branch));
	
% Species:   id = BPG, name = BPG, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_PGK) + ( 1.0 * reaction_TDH));
	
% Species:   id = DHAP, name = DHAP, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_FBA) + (-1.0 * reaction_GPD) + (-1.0 * reaction_TPI));
	
% Species:   id = F16bP, name = F16bP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_FBA) + ( 1.0 * reaction_PFK));
	
% Species:   id = F6P, name = F6P, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_PFK) + ( 1.0 * reaction_PGI) + ( 1.0 * reaction_TAL) + ( 1.0 * reaction_TKL_E4P));
	
% Species:   id = G1P, name = G1P, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_PGM) + (-1.0 * reaction_UGP));
	
% Species:   id = G3P, name = G3P, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_GPD) + (-1.0 * reaction_GPP));
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_HXK) + (-1.0 * reaction_PGI) + (-1.0 * reaction_PGM) + (-1.0 * reaction_TPS) + (-1.0 * reaction_ZWF));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_FBA) + (-1.0 * reaction_TDH) + ( 1.0 * reaction_TPI) + (-1.0 * reaction_TAL) + ( 1.0 * reaction_TKL_E4P) + ( 1.0 * reaction_TKL_R5P));
	
% Species:   id = GLC, name = GLC, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_HXK) + ( 1.0 * reaction_HXT));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_ADH) + ( 1.0 * reaction_GPD) + (-1.0 * reaction_TDH) + (-1.0 * reaction_acetate_branch));
	
% Species:   id = P2G, name = P2G, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_ENO) + ( 1.0 * reaction_GPM));
	
% Species:   id = P3G, name = P3G, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_GPM) + ( 1.0 * reaction_PGK));
	
% Species:   id = PEP, name = PEP, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_ENO) + (-1.0 * reaction_PYK));
	
% Species:   id = PYR, name = PYR, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_PDC) + ( 1.0 * reaction_PYK));
	
% Species:   id = T6P, name = T6P, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_TPP) + ( 1.0 * reaction_TPS));
	
% Species:   id = UDP, name = UDP, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_TPS) + (-1.0 * reaction_udp_to_utp));
	
% Species:   id = UTP, name = UTP, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_UGP) + ( 1.0 * reaction_udp_to_utp));
	
% Species:   id = AMP, name = AMP, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = NADH, name = NADH, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = UDG, name = UDG, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_TAL) + (-1.0 * reaction_TKL_E4P) + (-1.0 * reaction_E4P_sink));
	
% Species:   id = G6L, name = G6L, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_SOL) + ( 1.0 * reaction_ZWF));
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_GND) + ( 1.0 * reaction_ZWF) + (-1.0 * reaction_NADPH_oxidase));
	
% Species:   id = P6G, name = P6G, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_GND) + ( 1.0 * reaction_SOL));
	
% Species:   id = R5P, name = R5P, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_RKI) + (-1.0 * reaction_TKL_R5P) + (-1.0 * reaction_R5P_sink));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_GND) + (-1.0 * reaction_RKI) + (-1.0 * reaction_RPE));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_TAL) + ( 1.0 * reaction_TKL_R5P));
	
% Species:   id = X5P, name = X5P, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_RPE) + (-1.0 * reaction_TKL_E4P) + (-1.0 * reaction_TKL_R5P));
	
% Species:   id = NADP, name = NADP, involved in a rule 	xdot(32) = x(32);
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


