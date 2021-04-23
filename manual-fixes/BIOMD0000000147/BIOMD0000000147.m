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
% Model name = ODea2007_IkappaB
%
% is http://identifiers.org/biomodels.db/MODEL2784772048
% is http://identifiers.org/biomodels.db/BIOMD0000000147
% isDescribedBy http://identifiers.org/pubmed/17486138
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000139
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000140
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.06;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.001;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.03;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.01;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  Total_IkBalpha, name = Total_IkBalpha
% Parameter:   id =  Total_IkBbeta, name = Total_IkBbeta
% Parameter:   id =  Total_IkBeps, name = Total_IkBeps
% assignmentRule: variable = Total_IkBalpha
	global_par_Total_IkBalpha=x(2)+x(3)+x(4)+x(7)+x(5)+x(6);
% assignmentRule: variable = Total_IkBbeta
	global_par_Total_IkBbeta=x(16)+x(15)+x(11)+x(12)+x(14)+x(13);
% assignmentRule: variable = Total_IkBeps
	global_par_Total_IkBeps=x(19)+x(20)+x(24)+x(23)+x(21)+x(22);

% Reaction: id = txn_a, name = txn_a	% Local Parameter:   id =  tr2a, name = tr2a
	reaction_txn_a_tr2a=1.848E-4;

	reaction_txn_a=compartment_nucleus*reaction_txn_a_tr2a;

% Reaction: id = mdeg_a, name = mdeg_a	% Local Parameter:   id =  tr3a, name = tr3a
	reaction_mdeg_a_tr3a=0.0168;

	reaction_mdeg_a=compartment_nucleus*reaction_mdeg_a_tr3a*x(1);

% Reaction: id = tsl_a, name = tsl_a	% Local Parameter:   id =  tr1a, name = tr1a
	reaction_tsl_a_tr1a=0.2448;

	reaction_tsl_a=compartment_nucleus*reaction_tsl_a_tr1a*x(1);

% Reaction: id = int_ai, name = int_ai	% Local Parameter:   id =  a1, name = a1
	reaction_int_ai_a1=1.35;
	% Local Parameter:   id =  d1_1, name = d1_1
	reaction_int_ai_d1_1=0.075;

	reaction_int_ai=compartment_cytoplasm*(reaction_int_ai_a1*x(2)*x(9)-reaction_int_ai_d1_1*x(4));

% Reaction: id = int_an, name = int_an	% Local Parameter:   id =  a4_1, name = a4_1
	reaction_int_an_a4_1=30.0;
	% Local Parameter:   id =  d4_1, name = d4_1
	reaction_int_an_d4_1=6.0E-5;

	reaction_int_an=compartment_cytoplasm*(reaction_int_an_a4_1*x(2)*x(8)-reaction_int_an_d4_1*x(5));

% Reaction: id = int_an_n, name = int_an_n	% Local Parameter:   id =  a4_2, name = a4_2
	reaction_int_an_n_a4_2=30.0;
	% Local Parameter:   id =  d4_2, name = d4_2
	reaction_int_an_n_d4_2=6.0E-5;

	reaction_int_an_n=compartment_nucleus*(reaction_int_an_n_a4_2*x(3)*x(10)-reaction_int_an_n_d4_2*x(6));

% Reaction: id = int_2ani, name = int_2ani	% Local Parameter:   id =  a7, name = a7
	reaction_int_2ani_a7=11.1;
	% Local Parameter:   id =  d1_2, name = d1_2
	reaction_int_2ani_d1_2=0.075;

	reaction_int_2ani=compartment_cytoplasm*(reaction_int_2ani_a7*x(5)*x(9)-reaction_int_2ani_d1_2*x(7));

% Reaction: id = int_2ain, name = int_2ain	% Local Parameter:   id =  a4_3, name = a4_3
	reaction_int_2ain_a4_3=30.0;
	% Local Parameter:   id =  d4_3, name = d4_3
	reaction_int_2ain_d4_3=6.0E-5;

	reaction_int_2ain=compartment_cytoplasm*(reaction_int_2ain_a4_3*x(4)*x(8)-reaction_int_2ain_d4_3*x(7));

% Reaction: id = deg_a, name = deg_a	% Local Parameter:   id =  deg1_c, name = deg1_c
	reaction_deg_a_deg1_c=0.12;

	reaction_deg_a=compartment_cytoplasm*reaction_deg_a_deg1_c*x(2);

% Reaction: id = deg_a_n, name = deg_a_n	% Local Parameter:   id =  deg1_n, name = deg1_n
	reaction_deg_a_n_deg1_n=0.12;

	reaction_deg_a_n=compartment_nucleus*reaction_deg_a_n_deg1_n*x(3);

% Reaction: id = deg_an_n, name = deg_an_n	% Local Parameter:   id =  deg4_n, name = deg4_n
	reaction_deg_an_n_deg4_n=6.0E-5;

	reaction_deg_an_n=compartment_nucleus*reaction_deg_an_n_deg4_n*x(6);

% Reaction: id = deg_an, name = deg_an	% Local Parameter:   id =  deg4_c, name = deg4_c
	reaction_deg_an_deg4_c=6.0E-5;

	reaction_deg_an=compartment_cytoplasm*reaction_deg_an_deg4_c*x(5);

% Reaction: id = deg_ai, name = deg_ai	% Local Parameter:   id =  r1, name = r1
	reaction_deg_ai_r1=0.072;

	reaction_deg_ai=compartment_cytoplasm*reaction_deg_ai_r1*x(4);

% Reaction: id = deg_ain, name = deg_ain	% Local Parameter:   id =  r4, name = r4
	reaction_deg_ain_r4=0.36;

	reaction_deg_ain=compartment_cytoplasm*reaction_deg_ain_r4*x(7);

% Reaction: id = loc_a, name = loc_a	% Local Parameter:   id =  tp1a, name = tp1a
	reaction_loc_a_tp1a=0.018;
	% Local Parameter:   id =  tp2a, name = tp2a
	reaction_loc_a_tp2a=0.012;

	reaction_loc_a=compartment_cytoplasm*reaction_loc_a_tp1a*x(2)-compartment_nucleus*reaction_loc_a_tp2a*x(3);

% Reaction: id = loc_an, name = loc_an	% Local Parameter:   id =  k2_a, name = k2_a
	reaction_loc_an_k2_a=0.828;

	reaction_loc_an=compartment_nucleus*reaction_loc_an_k2_a*x(6);

% Reaction: id = loc_bn, name = loc_bn	% Local Parameter:   id =  k2_b, name = k2_b
	reaction_loc_bn_k2_b=0.414;

	reaction_loc_bn=compartment_nucleus*reaction_loc_bn_k2_b*x(13);

% Reaction: id = loc_b, name = loc_b	% Local Parameter:   id =  tp1b, name = tp1b
	reaction_loc_b_tp1b=0.018;
	% Local Parameter:   id =  tp2b, name = tp2b
	reaction_loc_b_tp2b=0.012;

	reaction_loc_b=compartment_cytoplasm*reaction_loc_b_tp1b*x(16)-compartment_nucleus*reaction_loc_b_tp2b*x(15);

% Reaction: id = deg_bin, name = deg_bin	% Local Parameter:   id =  r5, name = r5
	reaction_deg_bin_r5=0.12;

	reaction_deg_bin=compartment_cytoplasm*reaction_deg_bin_r5*x(12);

% Reaction: id = deg_bi, name = deg_bi	% Local Parameter:   id =  r2, name = r2
	reaction_deg_bi_r2=0.024;

	reaction_deg_bi=compartment_cytoplasm*reaction_deg_bi_r2*x(11);

% Reaction: id = deg_bn, name = deg_bn	% Local Parameter:   id =  deg5_c, name = deg5_c
	reaction_deg_bn_deg5_c=6.0E-5;

	reaction_deg_bn=compartment_cytoplasm*reaction_deg_bn_deg5_c*x(14);

% Reaction: id = deg_bn_n, name = deg_bn_n	% Local Parameter:   id =  deg5_n, name = deg5_n
	reaction_deg_bn_n_deg5_n=6.0E-5;

	reaction_deg_bn_n=compartment_nucleus*reaction_deg_bn_n_deg5_n*x(13);

% Reaction: id = deg_b_n, name = deg_b_n	% Local Parameter:   id =  deg2_n, name = deg2_n
	reaction_deg_b_n_deg2_n=0.18;

	reaction_deg_b_n=compartment_nucleus*reaction_deg_b_n_deg2_n*x(15);

% Reaction: id = deg_b, name = deg_b	% Local Parameter:   id =  deg2_c, name = deg2_c
	reaction_deg_b_deg2_c=0.18;

	reaction_deg_b=compartment_cytoplasm*reaction_deg_b_deg2_c*x(16);

% Reaction: id = int_2bin, name = int_2bin	% Local Parameter:   id =  a5_3, name = a5_3
	reaction_int_2bin_a5_3=30.0;
	% Local Parameter:   id =  d5_3, name = d5_3
	reaction_int_2bin_d5_3=6.0E-5;

	reaction_int_2bin=compartment_cytoplasm*(reaction_int_2bin_a5_3*x(11)*x(8)-reaction_int_2bin_d5_3*x(12));

% Reaction: id = int_2bni, name = int_2bni	% Local Parameter:   id =  a8, name = a8
	reaction_int_2bni_a8=2.88;
	% Local Parameter:   id =  d2_2, name = d2_2
	reaction_int_2bni_d2_2=0.105;

	reaction_int_2bni=compartment_cytoplasm*(reaction_int_2bni_a8*x(14)*x(9)-reaction_int_2bni_d2_2*x(12));

% Reaction: id = int_bn_n, name = int_bn_n	% Local Parameter:   id =  a5_2, name = a5_2
	reaction_int_bn_n_a5_2=30.0;
	% Local Parameter:   id =  d5_2, name = d5_2
	reaction_int_bn_n_d5_2=6.0E-5;

	reaction_int_bn_n=compartment_nucleus*(reaction_int_bn_n_a5_2*x(15)*x(10)-reaction_int_bn_n_d5_2*x(13));

% Reaction: id = int_bn, name = int_bn	% Local Parameter:   id =  a5_1, name = a5_1
	reaction_int_bn_a5_1=30.0;
	% Local Parameter:   id =  d5_1, name = d5_1
	reaction_int_bn_d5_1=6.0E-5;

	reaction_int_bn=compartment_cytoplasm*(reaction_int_bn_a5_1*x(16)*x(8)-reaction_int_bn_d5_1*x(14));

% Reaction: id = int_bi, name = int_bi	% Local Parameter:   id =  a2, name = a2
	reaction_int_bi_a2=0.36;
	% Local Parameter:   id =  d2_1, name = d2_1
	reaction_int_bi_d2_1=0.105;

	reaction_int_bi=compartment_cytoplasm*(reaction_int_bi_a2*x(16)*x(9)-reaction_int_bi_d2_1*x(11));

% Reaction: id = tsl_b, name = tsl_b	% Local Parameter:   id =  tr1b, name = tr1b
	reaction_tsl_b_tr1b=0.2448;

	reaction_tsl_b=compartment_nucleus*reaction_tsl_b_tr1b*x(17);

% Reaction: id = mdeg_b, name = mdeg_b	% Local Parameter:   id =  tr3b, name = tr3b
	reaction_mdeg_b_tr3b=0.0168;

	reaction_mdeg_b=compartment_nucleus*reaction_mdeg_b_tr3b*x(17);

% Reaction: id = txn_b, name = txn_b	% Local Parameter:   id =  tr2b, name = tr2b
	reaction_txn_b_tr2b=4.272E-5;

	reaction_txn_b=compartment_nucleus*reaction_txn_b_tr2b;

% Reaction: id = loc_n, name = loc_n	% Local Parameter:   id =  k1_2, name = k1_2
	reaction_loc_n_k1_2=5.4;
	% Local Parameter:   id =  k1_1, name = k1_1
	reaction_loc_n_k1_1=0.0048;

	reaction_loc_n=compartment_cytoplasm*reaction_loc_n_k1_2*x(8)-compartment_nucleus*reaction_loc_n_k1_1*x(10);

% Reaction: id = txn_e, name = txn_e	% Local Parameter:   id =  tr2e, name = tr2e
	reaction_txn_e_tr2e=3.048E-5;

	reaction_txn_e=compartment_nucleus*reaction_txn_e_tr2e;

% Reaction: id = mdeg_e, name = mdeg_e	% Local Parameter:   id =  tr3e, name = tr3e
	reaction_mdeg_e_tr3e=0.0168;

	reaction_mdeg_e=compartment_nucleus*reaction_mdeg_e_tr3e*x(18);

% Reaction: id = tsl_e, name = tsl_e	% Local Parameter:   id =  tr1e, name = tr1e
	reaction_tsl_e_tr1e=0.2448;

	reaction_tsl_e=compartment_nucleus*reaction_tsl_e_tr1e*x(18);

% Reaction: id = int_ei, name = int_ei	% Local Parameter:   id =  a3, name = a3
	reaction_int_ei_a3=0.54;
	% Local Parameter:   id =  d3_1, name = d3_1
	reaction_int_ei_d3_1=0.105;

	reaction_int_ei=compartment_cytoplasm*(reaction_int_ei_a3*x(19)*x(9)-reaction_int_ei_d3_1*x(24));

% Reaction: id = int_en, name = int_en	% Local Parameter:   id =  a6_1, name = a6_1
	reaction_int_en_a6_1=30.0;
	% Local Parameter:   id =  d6_1, name = d6_1
	reaction_int_en_d6_1=6.0E-5;

	reaction_int_en=compartment_cytoplasm*(reaction_int_en_a6_1*x(19)*x(8)-reaction_int_en_d6_1*x(21));

% Reaction: id = int_en_n, name = int_en_n	% Local Parameter:   id =  a6_2, name = a6_2
	reaction_int_en_n_a6_2=30.0;
	% Local Parameter:   id =  d6_2, name = d6_2
	reaction_int_en_n_d6_2=6.0E-5;

	reaction_int_en_n=compartment_nucleus*(reaction_int_en_n_a6_2*x(20)*x(10)-reaction_int_en_n_d6_2*x(22));

% Reaction: id = int_2eni, name = int_2eni	% Local Parameter:   id =  a9, name = a9
	reaction_int_2eni_a9=4.2;
	% Local Parameter:   id =  d3_2, name = d3_2
	reaction_int_2eni_d3_2=0.105;

	reaction_int_2eni=compartment_cytoplasm*(reaction_int_2eni_a9*x(21)*x(9)-reaction_int_2eni_d3_2*x(23));

% Reaction: id = int_2ein, name = int_2ein	% Local Parameter:   id =  a6_3, name = a6_3
	reaction_int_2ein_a6_3=30.0;
	% Local Parameter:   id =  d6_3, name = d6_3
	reaction_int_2ein_d6_3=6.0E-5;

	reaction_int_2ein=compartment_cytoplasm*(reaction_int_2ein_a6_3*x(24)*x(8)-reaction_int_2ein_d6_3*x(23));

% Reaction: id = deg_e, name = deg_e	% Local Parameter:   id =  deg3_c, name = deg3_c
	reaction_deg_e_deg3_c=0.18;

	reaction_deg_e=compartment_cytoplasm*reaction_deg_e_deg3_c*x(19);

% Reaction: id = deg_e_n, name = deg_e_n	% Local Parameter:   id =  deg3_n, name = deg3_n
	reaction_deg_e_n_deg3_n=0.18;

	reaction_deg_e_n=compartment_nucleus*reaction_deg_e_n_deg3_n*x(20);

% Reaction: id = deg_en_n, name = deg_en_n	% Local Parameter:   id =  deg6_n, name = deg6_n
	reaction_deg_en_n_deg6_n=6.0E-5;

	reaction_deg_en_n=compartment_nucleus*reaction_deg_en_n_deg6_n*x(22);

% Reaction: id = deg_en, name = deg_en	% Local Parameter:   id =  deg6_c, name = deg6_c
	reaction_deg_en_deg6_c=6.0E-5;

	reaction_deg_en=compartment_cytoplasm*reaction_deg_en_deg6_c*x(21);

% Reaction: id = deg_ei, name = deg_ei	% Local Parameter:   id =  r3, name = r3
	reaction_deg_ei_r3=0.036;

	reaction_deg_ei=compartment_cytoplasm*reaction_deg_ei_r3*x(24);

% Reaction: id = deg_ein, name = deg_ein	% Local Parameter:   id =  r6, name = r6
	reaction_deg_ein_r6=0.18;

	reaction_deg_ein=compartment_cytoplasm*reaction_deg_ein_r6*x(23);

% Reaction: id = loc_e, name = loc_e	% Local Parameter:   id =  tp1e, name = tp1e
	reaction_loc_e_tp1e=0.018;
	% Local Parameter:   id =  tp2e, name = tp2e
	reaction_loc_e_tp2e=0.012;

	reaction_loc_e=compartment_cytoplasm*reaction_loc_e_tp1e*x(19)-compartment_nucleus*reaction_loc_e_tp2e*x(20);

% Reaction: id = loc_en, name = loc_en	% Local Parameter:   id =  k2_e, name = k2_e
	reaction_loc_en_k2_e=0.414;

	reaction_loc_en=compartment_nucleus*reaction_loc_en_k2_e*x(22);

% Reaction: id = IKK_deg, name = IKK_deg	% Local Parameter:   id =  k_IKK_deg, name = IKK_deg
	reaction_IKK_deg_k_IKK_deg=0.0;

	reaction_IKK_deg=compartment_cytoplasm*reaction_IKK_deg_k_IKK_deg*x(9);

% Reaction: id = itxn_a, name = itxn_a	% Local Parameter:   id =  tr2a_i, name = tr2a_i
	reaction_itxn_a_tr2a_i=1.98;

	reaction_itxn_a=compartment_nucleus*reaction_itxn_a_tr2a_i*x(10)^2;

	xdot=zeros(24,1);
	
% Species:   id = IkBa_mRNA, name = IkBat, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*(( 1.0 * reaction_txn_a) + (-1.0 * reaction_mdeg_a) + (-1.0 * reaction_tsl_a) + ( 1.0 * reaction_tsl_a) + ( 1.0 * reaction_itxn_a));
	
% Species:   id = IkBa_cytoplasm, name = IkBa, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_tsl_a) + (-1.0 * reaction_int_ai) + (-1.0 * reaction_int_an) + (-1.0 * reaction_deg_a) + (-1.0 * reaction_loc_a));
	
% Species:   id = IkBa_nucleus, name = IkBan, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*((-1.0 * reaction_int_an_n) + (-1.0 * reaction_deg_a_n) + ( 1.0 * reaction_loc_a));
	
% Species:   id = IkBaIKK, name = IkBaIKK, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_ai) + (-1.0 * reaction_int_2ain) + (-1.0 * reaction_deg_ai));
	
% Species:   id = IkBaNFkB_cytoplasm, name = IkBaNFkB, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_an) + (-1.0 * reaction_int_2ani) + (-1.0 * reaction_deg_an) + ( 1.0 * reaction_loc_an));
	
% Species:   id = IkBaNFkB_nucleus, name = IkBaNFkBn, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_int_an_n) + (-1.0 * reaction_deg_an_n) + (-1.0 * reaction_loc_an));
	
% Species:   id = IkBaIKKNFkB, name = IkBaIKKNFkB, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_2ani) + ( 1.0 * reaction_int_2ain) + (-1.0 * reaction_deg_ain));
	
% Species:   id = NFkB_cytoplasm, name = NFkB, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_int_an) + (-1.0 * reaction_int_2ain) + ( 1.0 * reaction_deg_an) + ( 1.0 * reaction_deg_ain) + ( 1.0 * reaction_deg_bin) + ( 1.0 * reaction_deg_bn) + (-1.0 * reaction_int_2bin) + (-1.0 * reaction_int_bn) + (-1.0 * reaction_loc_n) + (-1.0 * reaction_int_en) + (-1.0 * reaction_int_2ein) + ( 1.0 * reaction_deg_en) + ( 1.0 * reaction_deg_ein));
	
% Species:   id = IKK, name = IKK, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*((-1.0 * reaction_int_ai) + (-1.0 * reaction_int_2ani) + ( 1.0 * reaction_deg_ai) + ( 1.0 * reaction_deg_ain) + ( 1.0 * reaction_deg_bin) + ( 1.0 * reaction_deg_bi) + (-1.0 * reaction_int_2bni) + (-1.0 * reaction_int_bi) + (-1.0 * reaction_int_ei) + (-1.0 * reaction_int_2eni) + ( 1.0 * reaction_deg_ei) + ( 1.0 * reaction_deg_ein) + (-1.0 * reaction_IKK_deg));
	
% Species:   id = NFkB_nucleus, name = NFkBn, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*((-1.0 * reaction_int_an_n) + ( 1.0 * reaction_deg_an_n) + ( 1.0 * reaction_deg_bn_n) + (-1.0 * reaction_int_bn_n) + ( 1.0 * reaction_loc_n) + (-1.0 * reaction_int_en_n) + ( 1.0 * reaction_deg_en_n));
	
% Species:   id = IkBbIKK, name = IkBbIKK, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*((-1.0 * reaction_deg_bi) + (-1.0 * reaction_int_2bin) + ( 1.0 * reaction_int_bi));
	
% Species:   id = IkBbIKKNFkB, name = IkBbIKKNFkB, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*((-1.0 * reaction_deg_bin) + ( 1.0 * reaction_int_2bin) + ( 1.0 * reaction_int_2bni));
	
% Species:   id = IkBbNFkB_nucleus, name = IkBbNFkBn, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*((-1.0 * reaction_loc_bn) + (-1.0 * reaction_deg_bn_n) + ( 1.0 * reaction_int_bn_n));
	
% Species:   id = IkBbNFkB_cytoplasm, name = IkBbNFkB, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_loc_bn) + (-1.0 * reaction_deg_bn) + (-1.0 * reaction_int_2bni) + ( 1.0 * reaction_int_bn));
	
% Species:   id = IkBb_nucleus, name = IkBbn, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_loc_b) + (-1.0 * reaction_deg_b_n) + (-1.0 * reaction_int_bn_n));
	
% Species:   id = IkBb_cytoplasm, name = IkBb, affected by kineticLaw
	xdot(16) = (1/(compartment_cytoplasm))*((-1.0 * reaction_loc_b) + (-1.0 * reaction_deg_b) + (-1.0 * reaction_int_bn) + (-1.0 * reaction_int_bi) + ( 1.0 * reaction_tsl_b));
	
% Species:   id = IkBb_mRNA, name = IkBbt, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*((-1.0 * reaction_tsl_b) + ( 1.0 * reaction_tsl_b) + (-1.0 * reaction_mdeg_b) + ( 1.0 * reaction_txn_b));
	
% Species:   id = IkBe_mRNA, name = IkBet, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_txn_e) + (-1.0 * reaction_mdeg_e) + (-1.0 * reaction_tsl_e) + ( 1.0 * reaction_tsl_e));
	
% Species:   id = IkBe_cytoplasm, name = IkBe, affected by kineticLaw
	xdot(19) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_tsl_e) + (-1.0 * reaction_int_ei) + (-1.0 * reaction_int_en) + (-1.0 * reaction_deg_e) + (-1.0 * reaction_loc_e));
	
% Species:   id = IkBe_nucleus, name = IkBen, affected by kineticLaw
	xdot(20) = (1/(compartment_nucleus))*((-1.0 * reaction_int_en_n) + (-1.0 * reaction_deg_e_n) + ( 1.0 * reaction_loc_e));
	
% Species:   id = IkBeNFkB_cytoplasm, name = IkBeNFkB, affected by kineticLaw
	xdot(21) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_en) + (-1.0 * reaction_int_2eni) + (-1.0 * reaction_deg_en) + ( 1.0 * reaction_loc_en));
	
% Species:   id = IkBeNFkB_nucleus, name = IkBeNFkBn, affected by kineticLaw
	xdot(22) = (1/(compartment_nucleus))*(( 1.0 * reaction_int_en_n) + (-1.0 * reaction_deg_en_n) + (-1.0 * reaction_loc_en));
	
% Species:   id = IkBeIKKNFkB, name = IkBeIKKNFkB, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_2eni) + ( 1.0 * reaction_int_2ein) + (-1.0 * reaction_deg_ein));
	
% Species:   id = IkBeIKK, name = IkBeIKK, affected by kineticLaw
	xdot(24) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_int_ei) + (-1.0 * reaction_int_2ein) + (-1.0 * reaction_deg_ei));
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


