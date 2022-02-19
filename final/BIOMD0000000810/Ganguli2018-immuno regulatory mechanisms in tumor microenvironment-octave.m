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
% Model name = Ganguli2018-immuno regulatory mechanisms in tumor microenvironment
%
% is http://identifiers.org/biomodels.db/MODEL1909110001
% is http://identifiers.org/biomodels.db/BIOMD0000000810
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 85000.0;
	x0(6) = 15000.0;
	x0(7) = 71000.0;
	x0(8) = 12000.0;
	x0(9) = 56000.0;
	x0(10) = 8000.0;
	x0(11) = 0.12;
	x0(12) = 0.0085;
	x0(13) = 0.0094;
	x0(14) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  gamma_C, name = gamma_C
	global_par_gamma_C=0.1282;
% Parameter:   id =  gamma_CR, name = gamma_CR
	global_par_gamma_CR=0.1282;
% Parameter:   id =  gamma_M1, name = gamma_M1
	global_par_gamma_M1=0.7;
% Parameter:   id =  gamma_M2, name = gamma_M2
	global_par_gamma_M2=0.01;
% Parameter:   id =  gamma_S, name = gamma_S
	global_par_gamma_S=0.15;
% Parameter:   id =  gamma_Th1, name = gamma_Th1
	global_par_gamma_Th1=2.0;
% Parameter:   id =  gamma_Th2, name = gamma_Th2
	global_par_gamma_Th2=2.0;
% Parameter:   id =  gamma_Tc, name = gamma_Tc
	global_par_gamma_Tc=1.0;
% Parameter:   id =  gamma_Treg, name = gamma_Treg
	global_par_gamma_Treg=0.3;
% Parameter:   id =  delta_C, name = delta_C
	global_par_delta_C=0.8055;
% Parameter:   id =  delta_CR, name = delta_CR
	global_par_delta_CR=5.37E-5;
% Parameter:   id =  delta_M1, name = delta_M1
	global_par_delta_M1=1.02;
% Parameter:   id =  delta_M2, name = delta_M2
	global_par_delta_M2=0.05;
% Parameter:   id =  delta_S, name = delta_S
	global_par_delta_S=2.0E-7;
% Parameter:   id =  delta_Tc, name = delta_Tc
	global_par_delta_Tc=5.2939;
% Parameter:   id =  delta_Th1, name = delta_Th1
	global_par_delta_Th1=2.0;
% Parameter:   id =  delta_Th2, name = delta_Th2
	global_par_delta_Th2=2.0;
% Parameter:   id =  delta_Treg, name = delta_Treg
	global_par_delta_Treg=1.0;
% Parameter:   id =  m_C, name = m_C
	global_par_m_C=0.01;
% Parameter:   id =  m_S, name = m_S
	global_par_m_S=4.0E-7;
% Parameter:   id =  p_1, name = p_1
	global_par_p_1=0.2;
% Parameter:   id =  p_2, name = p_2
	global_par_p_2=0.05;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=1.0E-4;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=1.0E-5;
% Parameter:   id =  K_tumor, name = K_tumor
	global_par_K_tumor=2.0E10;
% Parameter:   id =  lambda_M1, name = lambda_M1
	global_par_lambda_M1=1.0E8;
% Parameter:   id =  lambda_M2, name = lambda_M2
	global_par_lambda_M2=1000000.0;
% Parameter:   id =  lambda_Th1, name = lambda_Th1
	global_par_lambda_Th1=100000.0;
% Parameter:   id =  lambda_Th2, name = lambda_Th2
	global_par_lambda_Th2=100000.0;
% Parameter:   id =  lambda_Tc1, name = lambda_Tc1
	global_par_lambda_Tc1=100000.0;
% Parameter:   id =  lambda_Tc2, name = lambda_Tc2
	global_par_lambda_Tc2=500000.0;
% Parameter:   id =  lambda_Tc3, name = lambda_Tc3
	global_par_lambda_Tc3=5.0E10;
% Parameter:   id =  lambda_Tc4, name = lambda_Tc4
	global_par_lambda_Tc4=100000.0;
% Parameter:   id =  lambda_Treg2, name = lambda_Treg2
	global_par_lambda_Treg2=1.0E7;
% Parameter:   id =  myu_TcS, name = myu_TcS
	global_par_myu_TcS=1.0E-10;
% Parameter:   id =  myu_TcTreg, name = myu_TcTreg
	global_par_myu_TcTreg=1.5E-5;
% Parameter:   id =  myu_Th1Ck3, name = myu_Th1Ck3
	global_par_myu_Th1Ck3=0.1245;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.001;
% Parameter:   id =  beta_Th1CK3, name = beta_Th1CK3
	global_par_beta_Th1CK3=1.0E-8;
% Parameter:   id =  delta_Ck3, name = delta_Ck3
	global_par_delta_Ck3=8.664339;
% Parameter:   id =  myu_S, name = myu_S
	global_par_myu_S=0.17;
% Parameter:   id =  myu_SR, name = myu_SR
	global_par_myu_SR=0.18;
% Parameter:   id =  myu_C2, name = myu_C2
	global_par_myu_C2=0.9;
% Parameter:   id =  myu_M1Ck2, name = myu_M1Ck2
	global_par_myu_M1Ck2=0.01;
% Parameter:   id =  beta_Th1CK2, name = beta_Th1CK2
	global_par_beta_Th1CK2=1.0E-7;
% Parameter:   id =  beta_Tc, name = beta_Tc
	global_par_beta_Tc=1.0E-8;
% Parameter:   id =  delta_Ck2, name = delta_Ck2
	global_par_delta_Ck2=6.1212;
% Parameter:   id =  k1, name = k1
	global_par_k1=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=10.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=2.0531;
% Parameter:   id =  k4, name = k4
	global_par_k4=3.02;
% Parameter:   id =  k5, name = k5
	global_par_k5=6.7979;
% Parameter:   id =  k6, name = k6
	global_par_k6=6.9937;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.2;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.01;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.01;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.001;
% Parameter:   id =  beta_M2, name = beta_M2
	global_par_beta_M2=1.0E-15;
% Parameter:   id =  beta_Treg, name = beta_Treg
	global_par_beta_Treg=1.0E-10;
% Parameter:   id =  beta_Th2, name = beta_Th2
	global_par_beta_Th2=1.0E-9;
% Parameter:   id =  delta_Ck1, name = delta_Ck1
	global_par_delta_Ck1=19.757;
% Parameter:   id =  myu_TregCk1, name = myu_TregCk1
	global_par_myu_TregCk1=1.0E-7;
% Parameter:   id =  myu_Th1Ck1, name = myu_Th1Ck1
	global_par_myu_Th1Ck1=1.0E-9;
% Parameter:   id =  myu_M2Ck1, name = myu_M2Ck1
	global_par_myu_M2Ck1=0.01;
% Parameter:   id =  myu_C1, name = myu_C1
	global_par_myu_C1=0.75;
% Parameter:   id =  ktc1, name = ktc1
	global_par_ktc1=1.0E9;
% Parameter:   id =  ktc2, name = ktc2
	global_par_ktc2=1.0E8;
% Parameter:   id =  ktc3, name = ktc3
	global_par_ktc3=1.0E9;
% Parameter:   id =  ktc4, name = ktc4
	global_par_ktc4=1.0E9;
% Parameter:   id =  tck, name = tck
	global_par_tck=0.1;
% assignmentRule: variable = _100000_SR
	x(14)=100000*x(3);

% Reaction: id = growth_of_Cancer_Stem_Cells_S, name = growth of Cancer Stem Cells S
	reaction_growth_of_Cancer_Stem_Cells_S=compartment_compartment*Function_for_Growth_of_S(global_par_gamma_S, global_par_p_1, global_par_p_2, x(1));

% Reaction: id = natural_death_of_Cancer_Stem_Cells_S, name = natural death of Cancer Stem Cells S
	reaction_natural_death_of_Cancer_Stem_Cells_S=compartment_compartment*Function_for_natural_death_of_S(global_par_delta_S, x(1));

% Reaction: id = mutation_of_Cancer_Stem_Cells_S, name = mutation of Cancer Stem Cells S
	reaction_mutation_of_Cancer_Stem_Cells_S=compartment_compartment*Function_for_mutation_of_S(global_par_gamma_S, global_par_m_S, global_par_p_1, global_par_p_2, x(1));

% Reaction: id = asymmetric_differentiation_of_Cancer_Stem_Cells_S, name = asymmetric differentiation of Cancer Stem Cells S
	reaction_asymmetric_differentiation_of_Cancer_Stem_Cells_S=compartment_compartment*Function_for_asymmetric_differentiation_of_S(global_par_gamma_S, global_par_p_1, x(1));

% Reaction: id = symmetric_differentiation_of_Cancer_Stem_Cells_S, name = symmetric differentiation of Cancer Stem Cells S
	reaction_symmetric_differentiation_of_Cancer_Stem_Cells_S=compartment_compartment*Function_for_symmetric_differentiation_of_S(global_par_p_2, global_par_gamma_S, x(1));

% Reaction: id = growth_of_Resistant_Stem_Cells_SR, name = growth of Resistant Stem Cells SR
	reaction_growth_of_Resistant_Stem_Cells_SR=compartment_compartment*Function_for_growth_of_SR(global_par_gamma_S, global_par_p_1, global_par_p_2, x(3));

% Reaction: id = natural_death_of_Resistant_Stem_Cells_SR, name = natural death of Resistant Stem Cells SR
	reaction_natural_death_of_Resistant_Stem_Cells_SR=compartment_compartment*Function_for_natural_death_of_SR(global_par_delta_S, x(3));

% Reaction: id = asymmetric_differentiation_of_Resistant_Stem_Cells_SR, name = asymmetric differentiation of Resistant Stem Cells SR
	reaction_asymmetric_differentiation_of_Resistant_Stem_Cells_SR=compartment_compartment*Function_for_asymmetric_differentiation_of_SR(global_par_p_1, global_par_gamma_S, x(3));

% Reaction: id = symmetric_differentiation_of_Resistant_Stem_Cells_SR, name = symmetric differentiation of Resistant Stem Cells SR
	reaction_symmetric_differentiation_of_Resistant_Stem_Cells_SR=compartment_compartment*Function_for_symmetric_differentiation_of_SR(global_par_p_2, global_par_gamma_S, x(3));

% Reaction: id = Gompertzian_growth_of_Cancer_Cells_C, name = Gompertzian growth of Cancer Cells C
	reaction_Gompertzian_growth_of_Cancer_Cells_C=compartment_compartment*Function_for_Gompertzian_growth_of_C(global_par_gamma_C, global_par_m_C, global_par_K_tumor, x(2), global_par_r_1);

% Reaction: id = natural_death_of_Cancer_Cells_C, name = natural death of Cancer Cells C
	reaction_natural_death_of_Cancer_Cells_C=compartment_compartment*Function_for_natural_death_of_C(global_par_delta_C, x(2));

% Reaction: id = mutation_of_Cancer_Cells_C, name = mutation of Cancer Cells C
	reaction_mutation_of_Cancer_Cells_C=compartment_compartment*Function_of_mutation_of_C(global_par_m_C, global_par_gamma_C, x(2));

% Reaction: id = Gompertzian_growth_of_Resistant_Cancer_Cells_CR, name = Gompertzian growth of Resistant Cancer Cells CR
	reaction_Gompertzian_growth_of_Resistant_Cancer_Cells_CR=compartment_compartment*Function_of_Gompertzian_growth_of_CR(global_par_gamma_C, x(4), global_par_K_tumor, global_par_r_2);

% Reaction: id = natural_death_of_Resistant_Cancer_Cells_CR, name = natural death of Resistant Cancer Cells CR
	reaction_natural_death_of_Resistant_Cancer_Cells_CR=compartment_compartment*Function_of_natural_death_of_CR(global_par_delta_CR, x(4));

% Reaction: id = Activation_of_M1, name = Activation of M1
	reaction_Activation_of_M1=compartment_compartment*Function_of_activation_of_M1(global_par_gamma_M1, x(5), x(2), x(4), global_par_lambda_M1);

% Reaction: id = Activation_of_M2, name = Activation of M2
	reaction_Activation_of_M2=compartment_compartment*Function_of_activation_of_M2(global_par_gamma_M2, x(6), x(2), x(4), global_par_lambda_M2);

% Reaction: id = natural_death_of_M1, name = natural death of M1
	reaction_natural_death_of_M1=compartment_compartment*Function_of_natural_death_of_M1(global_par_delta_M1, x(5));

% Reaction: id = natural_death_of_M2, name = natural death of M2
	reaction_natural_death_of_M2=compartment_compartment*Function_of_natural_death_of_M2(global_par_delta_M2, x(6));

% Reaction: id = Activation_of_T_H1, name = Activation of T_H1
	reaction_Activation_of_T_H1=compartment_compartment*Function_of_activation_of_T_H1(global_par_lambda_Th1, x(7), x(5), global_par_gamma_Th1);

% Reaction: id = Activation_of_T_H2, name = Activation of T_H2
	reaction_Activation_of_T_H2=compartment_compartment*Function_of_activation_of_T_H2(global_par_lambda_Th2, x(8), x(6), global_par_gamma_Th2);

% Reaction: id = natural_death_of_T_H1, name = natural death of T_H1
	reaction_natural_death_of_T_H1=compartment_compartment*Function_of_natural_death_of_T_H1(global_par_delta_Th1, x(7));

% Reaction: id = natural_death_of_T_H2, name = natural death of T_H2
	reaction_natural_death_of_T_H2=compartment_compartment*Function_of_natural_death_of_T_H2(global_par_delta_Th2, x(8));

% Reaction: id = Activation_of_T_C__Cancer, name = Activation of T_C; Cancer
	reaction_Activation_of_T_C__Cancer=compartment_compartment*Function_of_Activation_of_T_C_Cancer(global_par_gamma_Tc, x(9), x(2), x(4), global_par_lambda_Tc1);

% Reaction: id = Activation_of_T_C__T_H1, name = Activation of T_C; T_H1
	reaction_Activation_of_T_C__T_H1=compartment_compartment*Function_of_Acitvation_of_T_C__T_H1(global_par_gamma_Tc, x(9), x(7), global_par_lambda_Tc4);

% Reaction: id = Inhibition_of_T_C, name = Inhibition of T_C
	reaction_Inhibition_of_T_C=compartment_compartment*Function_of_inhibition_of_T_C(global_par_myu_TcS, x(9), x(1), x(3), global_par_lambda_Tc2);

% Reaction: id = natural_death_of_T_C, name = natural death of T_C
	reaction_natural_death_of_T_C=compartment_compartment*Function_of_natural_death_of_T_C(global_par_delta_Tc, x(9));

% Reaction: id = Elimination_of_T_C_by_T_reg, name = Elimination of T_C by T_reg
	reaction_Elimination_of_T_C_by_T_reg=compartment_compartment*Function_of_Elimination_of_T_C_by_T_reg(global_par_myu_TcTreg, x(9), x(10), global_par_lambda_Tc3);

% Reaction: id = Activation_of_T_reg, name = Activation of T_reg
	reaction_Activation_of_T_reg=compartment_compartment*Function_of_Activation_of_T_reg(global_par_gamma_Treg, x(10), x(6), global_par_lambda_Treg2);

% Reaction: id = natural_death_of_T_reg, name = natural death of T_reg
	reaction_natural_death_of_T_reg=compartment_compartment*Function_of_natural_death_of_T_reg(global_par_delta_Treg, x(10));

% Reaction: id = Production_of_IL2__T_H1, name = Production of IL2; T_H1
	reaction_Production_of_IL2__T_H1=compartment_compartment*Function_of_Production_of_IL2(global_par_beta_Th1CK3, x(7));

% Reaction: id = Degradation_of_IL2, name = Degradation of IL2
	reaction_Degradation_of_IL2=compartment_compartment*Function_of_Degradation_of_IL2(global_par_delta_Ck3, x(13));

% Reaction: id = Positive_feedback_from_IL2_to_T_H1, name = Positive feedback from IL2 to T_H1
	reaction_Positive_feedback_from_IL2_to_T_H1=compartment_compartment*Function_of_Positive_Feedback_from_IL2_to_TH1(global_par_myu_Th1Ck3, x(13), x(7), global_par_k9);

% Reaction: id = Production_of_IFN_gamma__T_H1, name = Production of IFN_gamma; T_H1
	reaction_Production_of_IFN_gamma__T_H1=compartment_compartment*Function_of_Production_of_IFN_gamma__T_H1(global_par_beta_Th1CK2, x(7));

% Reaction: id = Production_of_IFN_gamma__T_C, name = Production of IFN_gamma; T_C
	reaction_Production_of_IFN_gamma__T_C=compartment_compartment*Function_of_Production_of_IFN_gamma__T_C(global_par_beta_Tc, x(9));

% Reaction: id = Degradation_of_IFN_gamma, name = Degradation of IFN_gamma
	reaction_Degradation_of_IFN_gamma=compartment_compartment*Function_of_Degradation_of_IFN_gamma(global_par_delta_Ck2, x(11));

% Reaction: id = Activation_of_M1__IFN_gamma, name = Activation of M1; IFN_gamma
	reaction_Activation_of_M1__IFN_gamma=compartment_compartment*Function_of_Activation_of_M1__IFN_gamma(global_par_myu_M1Ck2, x(5), x(11), global_par_k7);

% Reaction: id = Negative_feedback_on_S__IFN_gamma, name = Negative feedback on S; IFN_gamma
	reaction_Negative_feedback_on_S__IFN_gamma=compartment_compartment*Function_of_Negative_feedback_on_S__IFN_gamma(global_par_myu_S, x(1), x(11), global_par_k1);

% Reaction: id = Negative_feedback_on_SR__IFN_gamma, name = Negative feedback on SR; IFN_gamma
	reaction_Negative_feedback_on_SR__IFN_gamma=compartment_compartment*Function_of_Negative_feedback_on_SR__IFN_gamma(global_par_myu_SR, x(3), x(11), global_par_k2);

% Reaction: id = Negative_feedback_on_C__IFN_gamma, name = Negative feedback on C; IFN_gamma
	reaction_Negative_feedback_on_C__IFN_gamma=compartment_compartment*Function_of_Negative_feedback_on_C__IFN_gamma(global_par_myu_C2, x(2), x(11), global_par_k4);

% Reaction: id = Negative_feedback_on_CR__IFN_gamma, name = Negative feedback on CR; IFN_gamma
	reaction_Negative_feedback_on_CR__IFN_gamma=compartment_compartment*Function_of_Negative_feedback_on_CR__IFN_gamma(global_par_myu_C2, x(4), x(11), global_par_k6);

% Reaction: id = Production_of_IL10__M2, name = Production of IL10; M2
	reaction_Production_of_IL10__M2=compartment_compartment*Function_of_Production_of_IL10__M2(global_par_beta_M2, x(6));

% Reaction: id = Production_of_IL10__Treg, name = Production of IL10; Treg
	reaction_Production_of_IL10__Treg=compartment_compartment*Function_of_Production_of_IL10__Treg(global_par_beta_Treg, x(10));

% Reaction: id = Production_of_IL10__T_H2, name = Production of IL10; T_H2
	reaction_Production_of_IL10__T_H2=compartment_compartment*Function_of_Production_of_IL10__T_H2(global_par_beta_Th2, x(8));

% Reaction: id = Degradation_of_IL10, name = Degradation of IL10
	reaction_Degradation_of_IL10=compartment_compartment*Function_of_Degradation_of_IL10(global_par_delta_Ck1, x(12));

% Reaction: id = Positive_feedback_on_Treg__IL10, name = Positive feedback on Treg; IL10
	reaction_Positive_feedback_on_Treg__IL10=compartment_compartment*Function_of_Positive_feedback_on_Treg__IL10(x(12), global_par_myu_TregCk1, x(10), global_par_k11);

% Reaction: id = Inhibition_on_T_H1__IL10, name = Inhibition on T_H1; IL10
	reaction_Inhibition_on_T_H1__IL10=compartment_compartment*Function_for_inhibition_on_T_H1__IL10(global_par_myu_Th1Ck1, x(12), x(7), global_par_k8);

% Reaction: id = Positive_feedback_on_M2__IL10, name = Positive feedback on M2; IL10
	reaction_Positive_feedback_on_M2__IL10=compartment_compartment*Function_of_Positive_feedback_on_M2__IL10(global_par_myu_M2Ck1, x(6), x(12), global_par_k10);

% Reaction: id = Proliferation_on_Cancer_Cells_C__IL10, name = Proliferation on Cancer Cells C; IL10
	reaction_Proliferation_on_Cancer_Cells_C__IL10=compartment_compartment*Function_of_Proliferation_on_C__IL10(global_par_myu_C1, x(2), x(12), global_par_k3);

% Reaction: id = Proliferation_on_Resistant_Cancer_Cells_CR__IL10, name = Proliferation on Resistant Cancer Cells CR; IL10
	reaction_Proliferation_on_Resistant_Cancer_Cells_CR__IL10=compartment_compartment*Function_of_Proliferation_CR__IL10(global_par_myu_C1, x(4), x(12), global_par_k5);

% Reaction: id = Elimination_of_Cancer_Stem_Cells_S, name = Elimination of Cancer Stem Cells S
	reaction_Elimination_of_Cancer_Stem_Cells_S=compartment_compartment*Function_of_Elimination_of_Cancer_Stem_Cells_S(global_par_tck, x(1), x(9), global_par_ktc1);

% Reaction: id = Elimination_of_Resistant_Stem_Cells_SR, name = Elimination of Resistant Stem Cells SR
	reaction_Elimination_of_Resistant_Stem_Cells_SR=compartment_compartment*Function_of_Elimination_of_Resistant_Stem_Cells_SR(global_par_tck, x(3), x(9), global_par_ktc2);

% Reaction: id = Elimination_of_Cancer_Cells_C, name = Elimination of Cancer Cells C
	reaction_Elimination_of_Cancer_Cells_C=compartment_compartment*Function_of_Elimination_of_Cancer_Cells_C(global_par_tck, x(2), x(9), global_par_ktc3);

% Reaction: id = Elimination_of_Resistant_Cancer_Cells_CR, name = Elimination of Resistant Cancer Cells CR
	reaction_Elimination_of_Resistant_Cancer_Cells_CR=compartment_compartment*Function_of_Elimination_of_Resistant_Cancer_Cells_CR(global_par_tck, x(4), x(9), global_par_ktc4);

	xdot=zeros(14,1);
	
% Species:   id = Cancer_Stem_Cells_S, name = Cancer Stem Cells S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_growth_of_Cancer_Stem_Cells_S) + (-1.0 * reaction_natural_death_of_Cancer_Stem_Cells_S) + (-1.0 * reaction_mutation_of_Cancer_Stem_Cells_S) + (-1.0 * reaction_asymmetric_differentiation_of_Cancer_Stem_Cells_S) + ( 1.0 * reaction_asymmetric_differentiation_of_Cancer_Stem_Cells_S) + (-1.0 * reaction_symmetric_differentiation_of_Cancer_Stem_Cells_S) + (-1.0 * reaction_Negative_feedback_on_S__IFN_gamma) + (-1.0 * reaction_Elimination_of_Cancer_Stem_Cells_S));
	
% Species:   id = Cancer_Cells_C, name = Cancer Cells C, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_asymmetric_differentiation_of_Cancer_Stem_Cells_S) + ( 1.0 * reaction_symmetric_differentiation_of_Cancer_Stem_Cells_S) + ( 1.0 * reaction_Gompertzian_growth_of_Cancer_Cells_C) + (-1.0 * reaction_natural_death_of_Cancer_Cells_C) + (-1.0 * reaction_mutation_of_Cancer_Cells_C) + (-1.0 * reaction_Negative_feedback_on_C__IFN_gamma) + ( 1.0 * reaction_Proliferation_on_Cancer_Cells_C__IL10) + (-1.0 * reaction_Elimination_of_Cancer_Cells_C));
	
% Species:   id = Resistant_Stem_Cells_S_R, name = Resistant Stem Cells S_R, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_of_Cancer_Stem_Cells_S) + ( 1.0 * reaction_growth_of_Resistant_Stem_Cells_SR) + (-1.0 * reaction_natural_death_of_Resistant_Stem_Cells_SR) + (-1.0 * reaction_asymmetric_differentiation_of_Resistant_Stem_Cells_SR) + ( 1.0 * reaction_asymmetric_differentiation_of_Resistant_Stem_Cells_SR) + (-1.0 * reaction_symmetric_differentiation_of_Resistant_Stem_Cells_SR) + (-1.0 * reaction_Negative_feedback_on_SR__IFN_gamma) + (-1.0 * reaction_Elimination_of_Resistant_Stem_Cells_SR));
	
% Species:   id = Resistant_Cancer_Cells_C_R, name = Resistant Cancer Cells C_R, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_asymmetric_differentiation_of_Resistant_Stem_Cells_SR) + ( 1.0 * reaction_symmetric_differentiation_of_Resistant_Stem_Cells_SR) + ( 1.0 * reaction_mutation_of_Cancer_Cells_C) + ( 1.0 * reaction_Gompertzian_growth_of_Resistant_Cancer_Cells_CR) + (-1.0 * reaction_natural_death_of_Resistant_Cancer_Cells_CR) + (-1.0 * reaction_Negative_feedback_on_CR__IFN_gamma) + ( 1.0 * reaction_Proliferation_on_Resistant_Cancer_Cells_CR__IL10) + (-1.0 * reaction_Elimination_of_Resistant_Cancer_Cells_CR));
	
% Species:   id = M1_Tumor_Associated_Macrophages, name = M1-Tumor Associated Macrophages, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_M1) + (-1.0 * reaction_natural_death_of_M1) + ( 1.0 * reaction_Activation_of_M1__IFN_gamma));
	
% Species:   id = M2_Tumor_Associated_Macrophages, name = M2-Tumor Associated Macrophages, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_M2) + (-1.0 * reaction_natural_death_of_M2) + ( 1.0 * reaction_Positive_feedback_on_M2__IL10));
	
% Species:   id = Type_I_T_helper_Cell_T_H1, name = Type I T-helper Cell T_H1, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_H1) + (-1.0 * reaction_natural_death_of_T_H1) + ( 1.0 * reaction_Positive_feedback_from_IL2_to_T_H1) + (-1.0 * reaction_Inhibition_on_T_H1__IL10));
	
% Species:   id = Type_II_T_helper_cells_T_H2, name = Type II T-helper cells T_H2, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_H2) + (-1.0 * reaction_natural_death_of_T_H2));
	
% Species:   id = Cytotoxic_T_Cells_T_C, name = Cytotoxic T-Cells T_C, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_C__Cancer) + ( 1.0 * reaction_Activation_of_T_C__T_H1) + (-1.0 * reaction_Inhibition_of_T_C) + (-1.0 * reaction_natural_death_of_T_C) + (-1.0 * reaction_Elimination_of_T_C_by_T_reg));
	
% Species:   id = Regulatory_T_Cells_T_reg, name = Regulatory T-Cells T_reg, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_reg) + (-1.0 * reaction_natural_death_of_T_reg) + ( 1.0 * reaction_Positive_feedback_on_Treg__IL10));
	
% Species:   id = Interferon_gamma, name = Interferon_gamma, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_IFN_gamma__T_H1) + ( 1.0 * reaction_Production_of_IFN_gamma__T_C) + (-1.0 * reaction_Degradation_of_IFN_gamma));
	
% Species:   id = Cytokine_IL10, name = Cytokine IL10, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_IL10__M2) + ( 1.0 * reaction_Production_of_IL10__Treg) + ( 1.0 * reaction_Production_of_IL10__T_H2) + (-1.0 * reaction_Degradation_of_IL10));
	
% Species:   id = Cytokine_IL2, name = Cytokine IL2, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_IL2__T_H1) + (-1.0 * reaction_Degradation_of_IL2));
	
% Species:   id = _100000_SR, name = 100000*SR, involved in a rule 	xdot(14) = x(14);
end

function z=Function_for_Growth_of_S(gamma_S,p_1,p_2,S), z=(gamma_S*(1-p_1-p_2)*S);end

function z=Function_for_natural_death_of_S(delta_S,S), z=(delta_S*S);end

function z=Function_for_mutation_of_S(gamma_S,m_S,p_1,p2,S), z=(gamma_S*m_S*(1-p_1/2-p2)*S);end

function z=Function_for_asymmetric_differentiation_of_S(gamma_S,p_1,S), z=(gamma_S*p_1*S);end

function z=Function_for_symmetric_differentiation_of_S(p_2,gamma_S,S), z=(p_2*gamma_S*S);end

function z=Function_for_growth_of_SR(gamma_S,p_1,p_2,S_R), z=(gamma_S*(1-p_1-p_2)*S_R);end

function z=Function_for_natural_death_of_SR(delta_S,S_R), z=(delta_S*S_R);end

function z=Function_for_asymmetric_differentiation_of_SR(p_1,gamma_S,S_R), z=(p_1*gamma_S*S_R);end

function z=Function_for_symmetric_differentiation_of_SR(p_2,gamma_S,S_R), z=(p_2*gamma_S*S_R);end

function z=Function_for_Gompertzian_growth_of_C(gamma_C,m_C,K_tumor,C,r_1), z=(gamma_C*(1-m_C)*log(0.5*K_tumor/(C+r_1)));end

function z=Function_for_natural_death_of_C(delta_C,C), z=(delta_C*C);end

function z=Function_of_mutation_of_C(m_C,gamma_C,C), z=(m_C*gamma_C*C);end

function z=Function_of_Gompertzian_growth_of_CR(gamma_C,C_R,K_tumor,r_2), z=(gamma_C*C_R*log(0.5*K_tumor/(C_R+r_2)));end

function z=Function_of_natural_death_of_CR(delta_CR,C_R), z=(delta_CR*C_R);end

function z=Function_of_activation_of_M1(gamma_M1,M_1,C,C_R,lambda_M1), z=(gamma_M1*M_1*(C+C_R)/(M_1+lambda_M1));end

function z=Function_of_activation_of_M2(gamma_M2,M_2,C,C_R,lambda_M2), z=(gamma_M2*M_2*(C+C_R)/(M_2+lambda_M2));end

function z=Function_of_activation_of_T_H1(lambda_TH1,T_H1,M_1,gamma_TH1), z=(gamma_TH1*T_H1*M_1/(lambda_TH1+T_H1));end

function z=Function_of_activation_of_T_H2(lambda_TH2,T_H2,M_2,gamma_TH2), z=(gamma_TH2*T_H2*M_2/(lambda_TH2+T_H2));end

function z=Function_of_natural_death_of_M1(delta_M1,M_1), z=(delta_M1*M_1);end

function z=Function_of_natural_death_of_M2(delta_M2,M_2), z=(delta_M2*M_2);end

function z=Function_of_natural_death_of_T_H1(delta_TH1,T_H1), z=(delta_TH1*T_H1);end

function z=Function_of_natural_death_of_T_H2(delta_TH2,T_H2), z=(delta_TH2*T_H2);end

function z=Function_of_Activation_of_T_C_Cancer(gamma_Tc,T_C,C,C_R,lambda_Tc1), z=(gamma_Tc*T_C*(C+C_R)/(T_C+lambda_Tc1));end

function z=Function_of_Acitvation_of_T_C__T_H1(gamma_Tc,T_C,T_H1,lambda_Tc4), z=(gamma_Tc*T_C*T_H1/(T_C+lambda_Tc4));end

function z=Function_of_Elimination_of_T_C_by_T_reg(myu_TcTreg,T_C,T_reg,lambda_Tc3), z=(myu_TcTreg*T_C*T_reg/(lambda_Tc3+T_reg));end

function z=Function_of_inhibition_of_T_C(myu_TcS,T_C,S,S_R,lambda_Tc2), z=(myu_TcS*T_C*(S+S_R)/(T_C+lambda_Tc2));end

function z=Function_of_natural_death_of_T_C(delta_Tc,T_C), z=(delta_Tc*T_C);end

function z=Function_of_Activation_of_T_reg(gamma_Treg,T_reg,M_2,lambda_Treg2), z=(gamma_Treg*T_reg*M_2/(T_reg+lambda_Treg2));end

function z=Function_of_natural_death_of_T_reg(delta_Treg,T_reg), z=(delta_Treg*T_reg);end

function z=Function_of_Production_of_IL2(beta_ThiCK3,T_H1), z=(beta_ThiCK3*T_H1);end

function z=Function_of_Degradation_of_IL2(delta_Ck3,IL2), z=(delta_Ck3*IL2);end

function z=Function_of_Positive_Feedback_from_IL2_to_TH1(myu_Th1Ck3,IL2,T_H1,k9), z=(myu_Th1Ck3*IL2*T_H1/(IL2+k9));end

function z=Function_of_Production_of_IFN_gamma__T_C(beta_Tc,T_C), z=(beta_Tc*T_C);end

function z=Function_of_Production_of_IFN_gamma__T_H1(beta_Th1CK2,T_H1), z=(beta_Th1CK2*T_H1);end

function z=Function_of_Degradation_of_IFN_gamma(delta_Ck2,IFN_gamma), z=(delta_Ck2*IFN_gamma);end

function z=Function_of_Activation_of_M1__IFN_gamma(myu_M1Ck2,M_1,IFN_gamma,k7), z=(myu_M1Ck2*M_1*IFN_gamma/(IFN_gamma+k7));end

function z=Function_of_Negative_feedback_on_C__IFN_gamma(myu_C2,C,IFN_gamma,k4), z=(myu_C2*C*IFN_gamma/(IFN_gamma+k4));end

function z=Function_of_Negative_feedback_on_CR__IFN_gamma(myu_C2,C_R,IFN_gamma,k6), z=(myu_C2*C_R*IFN_gamma/(IFN_gamma+k6));end

function z=Function_of_Negative_feedback_on_S__IFN_gamma(myu_S,S,IFN_gamma,k1), z=(myu_S*S*IFN_gamma/(IFN_gamma+k1));end

function z=Function_of_Negative_feedback_on_SR__IFN_gamma(myu_SR,S_R,IFN_gamma,k2), z=(myu_SR*S_R*IFN_gamma/(IFN_gamma+k2));end

function z=Function_of_Production_of_IL10__M2(beta_M2,M_2), z=(beta_M2*M_2);end

function z=Function_of_Production_of_IL10__Treg(beta_Treg,T_reg), z=(beta_Treg*T_reg);end

function z=Function_of_Production_of_IL10__T_H2(beta_Th2,T_H2), z=(beta_Th2*T_H2);end

function z=Function_of_Degradation_of_IL10(delta_Ck1,IL10), z=(delta_Ck1*IL10);end

function z=Function_of_Proliferation_on_C__IL10(myu_C1,C,IL10,k3), z=(myu_C1*C*IL10/(IL10+k3));end

function z=Function_of_Proliferation_CR__IL10(myu_C1,C_R,IL10,k5), z=(myu_C1*C_R*IL10/(IL10+k5));end

function z=Function_of_Positive_feedback_on_M2__IL10(myu_M2Ck1,M2,IL10,k10), z=(myu_M2Ck1*M2*IL10/(IL10+k10));end

function z=Function_of_Positive_feedback_on_Treg__IL10(IL10,myu_TregCk1,T_reg,k11), z=(myu_TregCk1*IL10*T_reg/(T_reg+k11));end

function z=Function_for_inhibition_on_T_H1__IL10(myu_Th1Ck1,IL10,T_H1,k8), z=(myu_Th1Ck1*IL10*T_H1/(IL10+k8));end

function z=Function_of_Elimination_of_Cancer_Stem_Cells_S(tck,S,T_C,ktc1), z=(tck*S*T_C/(ktc1+T_C));end

function z=Function_of_Elimination_of_Cancer_Cells_C(tck,C,T_C,ktc3), z=(tck*C*T_C/(ktc3+T_C));end

function z=Function_of_Elimination_of_Resistant_Cancer_Cells_CR(tck,C_R,T_C,ktc4), z=(tck*C_R*T_C/(ktc4+T_C));end

function z=Function_of_Elimination_of_Resistant_Stem_Cells_SR(tck,S_R,T_C,ktc2), z=(tck*S_R*T_C/(ktc2+T_C));end

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


