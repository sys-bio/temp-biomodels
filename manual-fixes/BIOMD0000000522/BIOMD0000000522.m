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
% Model name = Muraro2014 - Vascular patterning in Arabidopsis roots
%
% is http://identifiers.org/biomodels.db/MODEL1403110000
% is http://identifiers.org/biomodels.db/BIOMD0000000522
% isDescribedBy http://identifiers.org/pubmed/24381155
%


function main()
%Initial conditions vector
	x0=zeros(31,1);
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
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;


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
% Parameter:   id =  F_AHP6, name = F_AHP6
% Parameter:   id =  F_CK, name = F_CK
% Parameter:   id =  F_IAA2, name = F_IAA2
% Parameter:   id =  F_ARR5, name = F_ARR5
% Parameter:   id =  F_PIN1, name = F_PIN1
% Parameter:   id =  F_PIN7, name = F_PIN7
% Parameter:   id =  F_PIN3, name = F_PIN3
% Parameter:   id =  p_ax, name = p_ax
	global_par_p_ax=0.06;
% Parameter:   id =  p_ck, name = p_ck
	global_par_p_ck=2.0;
% Parameter:   id =  d_ax, name = d_ax
	global_par_d_ax=1.0;
% Parameter:   id =  d_ck, name = d_ck
	global_par_d_ck=10.0;
% Parameter:   id =  phloem_rate_ax, name = phloem_rate_ax
	global_par_phloem_rate_ax=1.0;
% Parameter:   id =  all_section_rate_ax, name = all_section_rate_ax
	global_par_all_section_rate_ax=1.0;
% Parameter:   id =  phloem_rate_ck, name = phloem_rate_ck
	global_par_phloem_rate_ck=1.0;
% Parameter:   id =  all_section_rate_ck, name = all_section_rate_ck
	global_par_all_section_rate_ck=1.0;
% Parameter:   id =  lambda_AHP6, name = lambda_AHP6
	global_par_lambda_AHP6=2.0;
% Parameter:   id =  lambda_IAA2, name = lambda_IAA2
	global_par_lambda_IAA2=10.0;
% Parameter:   id =  lambda_ARR5, name = lambda_ARR5
	global_par_lambda_ARR5=20.0;
% Parameter:   id =  lambda_PIN1, name = lambda_PIN1
	global_par_lambda_PIN1=0.0;
% Parameter:   id =  lambda_PIN3, name = lambda_PIN3
	global_par_lambda_PIN3=0.0;
% Parameter:   id =  lambda_PIN7, name = lambda_PIN7
	global_par_lambda_PIN7=1.0;
% Parameter:   id =  mu_m_PHB, name = mu_m_PHB
	global_par_mu_m_PHB=1.0;
% Parameter:   id =  mu_m_AHP6, name = mu_m_AHP6
	global_par_mu_m_AHP6=1.0;
% Parameter:   id =  mu_m_IAA2, name = mu_m_IAA2
	global_par_mu_m_IAA2=10.0;
% Parameter:   id =  mu_m_ARR5, name = mu_m_ARR5
	global_par_mu_m_ARR5=10.0;
% Parameter:   id =  mu_m_PIN1, name = mu_m_PIN1
	global_par_mu_m_PIN1=0.0;
% Parameter:   id =  mu_m_PIN3, name = mu_m_PIN3
	global_par_mu_m_PIN3=0.0;
% Parameter:   id =  mu_m_PIN7, name = mu_m_PIN7
	global_par_mu_m_PIN7=1.0;
% Parameter:   id =  delta_PHB, name = delta_PHB
	global_par_delta_PHB=1.0;
% Parameter:   id =  delta_AHP6, name = delta_AHP6
	global_par_delta_AHP6=1.0;
% Parameter:   id =  delta_IAA2, name = delta_IAA2
	global_par_delta_IAA2=10.0;
% Parameter:   id =  delta_ARR5, name = delta_ARR5
	global_par_delta_ARR5=10.0;
% Parameter:   id =  delta_PIN1, name = delta_PIN1
	global_par_delta_PIN1=0.0;
% Parameter:   id =  delta_PIN3, name = delta_PIN3
	global_par_delta_PIN3=0.0;
% Parameter:   id =  delta_PIN7, name = delta_PIN7
	global_par_delta_PIN7=5.0;
% Parameter:   id =  delta_CKX3, name = delta_CKX3
	global_par_delta_CKX3=1.0;
% Parameter:   id =  mu_p_PHB, name = mu_p_PHB
	global_par_mu_p_PHB=1.0;
% Parameter:   id =  mu_p_AHP6, name = mu_p_AHP6
	global_par_mu_p_AHP6=1.0;
% Parameter:   id =  mu_p_IAA2, name = mu_p_IAA2
	global_par_mu_p_IAA2=10.0;
% Parameter:   id =  mu_p_ARR5, name = mu_p_ARR5
	global_par_mu_p_ARR5=10.0;
% Parameter:   id =  mu_p_PIN1, name = mu_p_PIN1
	global_par_mu_p_PIN1=0.0;
% Parameter:   id =  mu_p_PIN3, name = mu_p_PIN3
	global_par_mu_p_PIN3=0.0;
% Parameter:   id =  mu_p_PIN7, name = mu_p_PIN7
	global_par_mu_p_PIN7=1.0;
% Parameter:   id =  mu_p_CKX3, name = mu_p_CKX3
	global_par_mu_p_CKX3=1.0;
% Parameter:   id =  theta_Ax, name = theta_Ax
	global_par_theta_Ax=0.25;
% Parameter:   id =  theta_Ck, name = theta_Ck
	global_par_theta_Ck=0.5;
% Parameter:   id =  theta_AHP6, name = theta_AHP6
	global_par_theta_AHP6=0.04;
% Parameter:   id =  theta_ARR5, name = theta_ARR5
	global_par_theta_ARR5=0.1;
% Parameter:   id =  theta_PHB, name = theta_PHB
	global_par_theta_PHB=0.4;
% Parameter:   id =  theta_CKX3, name = theta_CKX3
	global_par_theta_CKX3=0.05;
% Parameter:   id =  p_phb, name = p_phb
	global_par_p_phb=2.0;
% Parameter:   id =  d_phb, name = d_phb
	global_par_d_phb=1.0;
% Parameter:   id =  p_mirna, name = p_mirna
	global_par_p_mirna=32.5;
% Parameter:   id =  d_mirna, name = d_mirna
	global_par_d_mirna=1.0;
% Parameter:   id =  d_mirna_mrna, name = d_mirna_mrna
	global_par_d_mirna_mrna=10.0;
% Parameter:   id =  p_ckx3, name = p_ckx3
	global_par_p_ckx3=5.0;
% Parameter:   id =  d_ckx3, name = d_ckx3
	global_par_d_ckx3=1.0;
% Parameter:   id =  b_pin3, name = b_pin3
	global_par_b_pin3=1.0;
% Parameter:   id =  b_pin1, name = b_pin1
	global_par_b_pin1=0.0;
% Parameter:   id =  b_pin7, name = b_pin7
	global_par_b_pin7=0.0;
% Parameter:   id =  b_ahp6, name = b_ahp6
	global_par_b_ahp6=0.0;
% Parameter:   id =  b_arr5, name = b_arr5
	global_par_b_arr5=0.0;
% Parameter:   id =  b_iaa2, name = b_iaa2
	global_par_b_iaa2=0.0;
% Parameter:   id =  hill_ax, name = hill_ax
	global_par_hill_ax=2.0;
% Parameter:   id =  hill_ck, name = hill_ck
	global_par_hill_ck=2.0;
% Parameter:   id =  hill_arr5, name = hill_arr5
	global_par_hill_arr5=3.0;
% Parameter:   id =  hill_ckx3, name = hill_ckx3
	global_par_hill_ckx3=5.0;
% Parameter:   id =  hill_ahp6, name = hill_ahp6
	global_par_hill_ahp6=3.0;
% Parameter:   id =  hill_phb, name = hill_phb
	global_par_hill_phb=3.0;
% assignmentRule: variable = F_AHP6
	global_par_F_AHP6=(global_par_b_ahp6+(x(1)/global_par_theta_Ax)^global_par_hill_ax)/(1+(x(1)/global_par_theta_Ax)^global_par_hill_ax+(x(10)/global_par_theta_PHB)^global_par_hill_phb);
% assignmentRule: variable = F_ARR5
	global_par_F_ARR5=(global_par_b_arr5+(x(2)/global_par_theta_Ck)^global_par_hill_ck)/(1+(x(2)/global_par_theta_Ck)^global_par_hill_ck+(x(4)/global_par_theta_AHP6)^global_par_hill_ahp6);
% assignmentRule: variable = F_CK
	global_par_F_CK=1/(1+(x(12)/global_par_theta_CKX3)^global_par_hill_ckx3);
% assignmentRule: variable = F_IAA2
	global_par_F_IAA2=(global_par_b_iaa2+(x(1)/global_par_theta_Ax)^global_par_hill_ax)/(1+(x(1)/global_par_theta_Ax)^global_par_hill_ax);
% assignmentRule: variable = F_PIN1
	global_par_F_PIN1=(global_par_b_pin1+(x(8)/global_par_theta_ARR5)^global_par_hill_arr5)/(1+(x(8)/global_par_theta_ARR5)^global_par_hill_arr5);
% assignmentRule: variable = F_PIN3
	global_par_F_PIN3=global_par_b_pin3;
% assignmentRule: variable = F_PIN7
	global_par_F_PIN7=(global_par_b_pin7+(x(8)/global_par_theta_ARR5)^global_par_hill_arr5)/(1+(x(8)/global_par_theta_ARR5)^global_par_hill_arr5);
% rateRule: variable = Auxin
x(1) = x(17);
% rateRule: variable = Cytokinin
x(2) = x(18);
% rateRule: variable = miRNA
x(16) = x(19);
% rateRule: variable = PHBm
x(9) = x(20);
% rateRule: variable = AHP6m
x(3) = x(21);
% rateRule: variable = IAA2m
x(5) = x(22);
% rateRule: variable = ARR5m
x(7) = x(23);
% rateRule: variable = PIN1m
x(14) = x(24);
% rateRule: variable = PIN3m
x(13) = x(25);
% rateRule: variable = PIN7m
x(15) = x(26);
% rateRule: variable = AHP6p
x(4) = x(27);
% rateRule: variable = IAA2p
x(6) = x(28);
% rateRule: variable = ARR5p
x(8) = x(29);
% rateRule: variable = PHBp
x(10) = x(30);
% rateRule: variable = CKX3p
x(12) = x(31);

	xdot=zeros(31,1);
	% rateRule: variable = Auxin
	xdot(17) = global_par_phloem_rate_ax*global_par_p_ax-global_par_d_ax*x(1);
	% rateRule: variable = Cytokinin
	xdot(18) = global_par_phloem_rate_ck*global_par_p_ck*global_par_F_CK-global_par_d_ck*x(2);
	% rateRule: variable = miRNA
	xdot(19) = 0;
	% rateRule: variable = PHBm
	xdot(20) = global_par_p_phb-global_par_d_phb*x(9)-global_par_d_mirna_mrna*x(9)*x(16);
	% rateRule: variable = AHP6m
	xdot(21) = global_par_lambda_AHP6*global_par_F_AHP6-global_par_mu_m_AHP6*x(3);
	% rateRule: variable = IAA2m
	xdot(22) = global_par_lambda_IAA2*global_par_F_IAA2-global_par_mu_m_IAA2*x(5);
	% rateRule: variable = ARR5m
	xdot(23) = global_par_lambda_ARR5*global_par_F_ARR5-global_par_mu_m_ARR5*x(7);
	% rateRule: variable = PIN1m
	xdot(24) = global_par_lambda_PIN1*global_par_F_PIN1-global_par_mu_m_PIN1*x(14);
	% rateRule: variable = PIN3m
	xdot(25) = global_par_lambda_PIN3*global_par_F_PIN3-global_par_mu_m_PIN3*x(13);
	% rateRule: variable = PIN7m
	xdot(26) = global_par_lambda_PIN7*global_par_F_PIN7-global_par_mu_m_PIN7*x(15);
	% rateRule: variable = AHP6p
	xdot(27) = global_par_delta_AHP6*x(3)-global_par_mu_p_AHP6*x(4);
	% rateRule: variable = IAA2p
	xdot(28) = global_par_delta_IAA2*x(5)-global_par_mu_p_IAA2*x(6);
	% rateRule: variable = ARR5p
	xdot(29) = global_par_delta_ARR5*x(7)-global_par_mu_p_ARR5*x(8);
	% rateRule: variable = PHBp
	xdot(30) = global_par_delta_PHB*x(9)-global_par_mu_p_PHB*x(10);
	% rateRule: variable = CKX3p
	xdot(31) = global_par_delta_CKX3*x(11)-global_par_mu_p_CKX3*x(12);
	
% Species:   id = Auxin, name = Auxin, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = Cytokinin, name = Cytokinin, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = AHP6m, name = AHP6m, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = AHP6p, name = AHP6p, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = IAA2m, name = IAA2m, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = IAA2p, name = IAA2p, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = ARR5m, name = ARR5m, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = ARR5p, name = ARR5p, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = PHBm, name = PHBm, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = PHBp, name = PHBp, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = CKX3m, name = CKX3m
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = CKX3p, name = CKX3p, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = PIN3m, name = PIN3m, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = PIN1m, name = PIN1m, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = PIN7m, name = PIN7m, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = miRNA, name = miRNA, defined in a rule 	xdot(16) = x(16);
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


