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
% Model name = Montagne2011_Oligator_optimised
%
% is http://identifiers.org/biomodels.db/MODEL1010260000
% is http://identifiers.org/biomodels.db/BIOMD0000000315
% isDescribedBy http://identifiers.org/pubmed/21283142
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 38.5;
	x0(2) = 10.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 3.89;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 38.5;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;


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

% Compartment: id = sample, name = sample, constant
	compartment_sample=1.0;
% Parameter:   id =  k0d, name = k0d
	global_par_k0d=0.0294;
% Parameter:   id =  k0r, name = k0r
	global_par_k0r=3.43457943925;
% Parameter:   id =  k1d, name = k1d
	global_par_k1d=3.43457943925;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=0.0294;
% Parameter:   id =  k2d, name = k2d
	global_par_k2d=3.43457943925;
% Parameter:   id =  k2r, name = k2r
	global_par_k2r=0.0294;
% Parameter:   id =  k3d, name = k3d
	global_par_k3d=3.43457943925;
% Parameter:   id =  k3r, name = k3r
	global_par_k3r=0.0294;
% Parameter:   id =  k4d, name = k4d
	global_par_k4d=15.2;
% Parameter:   id =  k5d, name = k5d
	global_par_k5d=11.8408;
% Parameter:   id =  k6d, name = k6d
	global_par_k6d=3.34;
% Parameter:   id =  k7d, name = k7d
	global_par_k7d=0.0294;
% Parameter:   id =  k7r, name = k7r
	global_par_k7r=3.43457943925;
% Parameter:   id =  k8d, name = k8d
	global_par_k8d=0.610714285714;
% Parameter:   id =  k8r, name = k8r
	global_par_k8r=0.0171;
% Parameter:   id =  k9d, name = k9d
	global_par_k9d=0.610714285714;
% Parameter:   id =  k9r, name = k9r
	global_par_k9r=0.0171;
% Parameter:   id =  k10d, name = k10d
	global_par_k10d=3.43457943925;
% Parameter:   id =  k10r, name = k10r
	global_par_k10r=0.0294;
% Parameter:   id =  k11d, name = k11d
	global_par_k11d=11.8408;
% Parameter:   id =  k12d, name = k12d
	global_par_k12d=9.2239832;
% Parameter:   id =  k13d, name = k13d
	global_par_k13d=2.60186;
% Parameter:   id =  k14d, name = k14d
	global_par_k14d=0.0171;
% Parameter:   id =  k14r, name = k14r
	global_par_k14r=0.610714285714;
% Parameter:   id =  k15d, name = k15d
	global_par_k15d=0.00186296832954;
% Parameter:   id =  k15r, name = k15r
	global_par_k15r=0.027;
% Parameter:   id =  k16d, name = k16d
	global_par_k16d=0.027;
% Parameter:   id =  k16r, name = k16r
	global_par_k16r=0.00186296832954;
% Parameter:   id =  k17d, name = k17d
	global_par_k17d=0.0171;
% Parameter:   id =  k17r, name = k17r
	global_par_k17r=0.610714285714;
% Parameter:   id =  k18d, name = k18d
	global_par_k18d=17.024;
% Parameter:   id =  k19d, name = k19d
	global_par_k19d=5.566848;
% Parameter:   id =  k20d, name = k20d
	global_par_k20d=3.2064;
% Parameter:   id =  k21d, name = k21d
	global_par_k21d=0.027;
% Parameter:   id =  k21r, name = k21r
	global_par_k21r=0.00608108108108;
% Parameter:   id =  k22d, name = k22d
	global_par_k22d=0.021546;
% Parameter:   id =  k22r, name = k22r
	global_par_k22r=4.15391351351E-5;
% Parameter:   id =  k23d, name = k23d
	global_par_k23d=4.15391351351E-5;
% Parameter:   id =  k23r, name = k23r
	global_par_k23r=0.021546;
% Parameter:   id =  k24d, name = k24d
	global_par_k24d=0.411;
% Parameter:   id =  k25d, name = k25d
	global_par_k25d=0.485802;
% Parameter:   id =  k26d, name = k26d
	global_par_k26d=1.7262;
% Parameter:   id =  Bp_concentration, name = Bp_concentration
% Parameter:   id =  fluorescence, name = fluorescence
% Parameter:   id =  Inh_total, name = Inh_total
% Parameter:   id =  beta_total, name = beta_total
% Parameter:   id =  alpha_total, name = alpha_total
% assignmentRule: variable = Bp_concentration
	global_par_Bp_concentration=11*(x(3)+x(5)+x(8)+x(11)+x(14))+16*(x(17)+x(19))+22*(x(4)+x(6)+x(9)+x(12))+27*(x(15)+x(18));
% assignmentRule: variable = fluorescence
	global_par_fluorescence=-0.38+0.00093*(11*(x(3)+x(5)+x(8)+x(11)+x(14))+16*(x(17)+x(19))+22*(x(4)+x(6)+x(9)+x(12))+27*(x(15)+x(18)));
% assignmentRule: variable = Inh_total
	global_par_Inh_total=x(16)+x(17)+x(15)+x(19);
% assignmentRule: variable = beta_total
	global_par_beta_total=x(10)+x(11)+x(9)+x(14)+x(15);
% assignmentRule: variable = alpha_total
	global_par_alpha_total=x(2)+x(3)+x(5)+2*x(4)+x(8)+x(9)+x(8);

% Reaction: id = ass_aa_l
	reaction_ass_aa_l=compartment_sample*(global_par_k0d*x(1)*x(2)-global_par_k0r*x(3));

% Reaction: id = m_ass_aa_lr
	reaction_m_ass_aa_lr=compartment_sample*(global_par_k1d*x(4)-global_par_k1r*x(2)*x(3));

% Reaction: id = m_ass_aa_r
	reaction_m_ass_aa_r=compartment_sample*(global_par_k2d*x(5)-global_par_k2r*x(1)*x(2));

% Reaction: id = m_ass_aa_rl
	reaction_m_ass_aa_rl=compartment_sample*(global_par_k3d*x(4)-global_par_k3r*x(2)*x(5));

% Reaction: id = pol_aa
	reaction_pol_aa=compartment_sample*global_par_k4d*x(3);

% Reaction: id = dis_aa
	reaction_dis_aa=compartment_sample*global_par_k5d*x(4);

% Reaction: id = nick_aa
	reaction_nick_aa=compartment_sample*global_par_k6d*x(6);

% Reaction: id = ass_ab_l
	reaction_ass_ab_l=compartment_sample*(global_par_k7d*x(2)*x(7)-global_par_k7r*x(8));

% Reaction: id = m_ass_ab_lr
	reaction_m_ass_ab_lr=compartment_sample*(global_par_k8d*x(9)-global_par_k8r*x(8)*x(10));

% Reaction: id = m_ass_ab_r
	reaction_m_ass_ab_r=compartment_sample*(global_par_k9d*x(11)-global_par_k9r*x(7)*x(10));

% Reaction: id = m_ass_ab_rl
	reaction_m_ass_ab_rl=compartment_sample*(global_par_k10d*x(9)-global_par_k10r*x(2)*x(11));

% Reaction: id = pol_ab
	reaction_pol_ab=compartment_sample*global_par_k11d*x(8);

% Reaction: id = dis_ab
	reaction_dis_ab=compartment_sample*global_par_k12d*x(9);

% Reaction: id = nick_ab
	reaction_nick_ab=compartment_sample*global_par_k13d*x(12);

% Reaction: id = ass_bc_l
	reaction_ass_bc_l=compartment_sample*(global_par_k14d*x(10)*x(13)-global_par_k14r*x(14));

% Reaction: id = m_ass_bc_lr
	reaction_m_ass_bc_lr=compartment_sample*(global_par_k15d*x(15)-global_par_k15r*x(14)*x(16));

% Reaction: id = ass_bc_r
	reaction_ass_bc_r=compartment_sample*(global_par_k16d*x(13)*x(16)-global_par_k16r*x(17));

% Reaction: id = ass_bc_rl
	reaction_ass_bc_rl=compartment_sample*(global_par_k17d*x(10)*x(17)-global_par_k17r*x(15));

% Reaction: id = pol_bc
	reaction_pol_bc=compartment_sample*global_par_k18d*x(14);

% Reaction: id = dis_bc
	reaction_dis_bc=compartment_sample*global_par_k19d*x(15);

% Reaction: id = nick_bc
	reaction_nick_bc=compartment_sample*global_par_k20d*x(18);

% Reaction: id = inh_ac
	reaction_inh_ac=compartment_sample*(global_par_k21d*x(1)*x(16)-global_par_k21r*x(19));

% Reaction: id = inh_displ_ac
	reaction_inh_displ_ac=compartment_sample*(global_par_k22d*x(5)*x(16)-global_par_k22r*x(2)*x(19));

% Reaction: id = m_inh_displ_ca
	reaction_m_inh_displ_ca=compartment_sample*(global_par_k23d*x(2)*x(19)-global_par_k23r*x(3)*x(16));

% Reaction: id = exo_a
	reaction_exo_a=compartment_sample*global_par_k24d*x(2);

% Reaction: id = exo_b
	reaction_exo_b=compartment_sample*global_par_k25d*x(10);

% Reaction: id = exo_c
	reaction_exo_c=compartment_sample*global_par_k26d*x(16);

	xdot=zeros(20,1);
	
% Species:   id = T1, name = T1, affected by kineticLaw
	xdot(1) = (1/(compartment_sample))*((-1.0 * reaction_ass_aa_l) + ( 1.0 * reaction_m_ass_aa_r) + (-1.0 * reaction_inh_ac));
	
% Species:   id = alpha, name = alpha, affected by kineticLaw
	xdot(2) = (1/(compartment_sample))*((-1.0 * reaction_ass_aa_l) + ( 1.0 * reaction_m_ass_aa_lr) + ( 1.0 * reaction_m_ass_aa_r) + ( 1.0 * reaction_m_ass_aa_rl) + ( 1.0 * reaction_dis_aa) + (-1.0 * reaction_ass_ab_l) + ( 1.0 * reaction_m_ass_ab_rl) + ( 1.0 * reaction_inh_displ_ac) + (-1.0 * reaction_m_inh_displ_ca) + (-1.0 * reaction_exo_a));
	
% Species:   id = alpha_T1, name = alpha_T1, affected by kineticLaw
	xdot(3) = (1/(compartment_sample))*(( 1.0 * reaction_ass_aa_l) + ( 1.0 * reaction_m_ass_aa_lr) + (-1.0 * reaction_pol_aa) + ( 1.0 * reaction_m_inh_displ_ca));
	
% Species:   id = alpha_T1_alpha, name = alpha_T1_alpha, affected by kineticLaw
	xdot(4) = (1/(compartment_sample))*((-1.0 * reaction_m_ass_aa_lr) + (-1.0 * reaction_m_ass_aa_rl) + (-1.0 * reaction_dis_aa) + ( 1.0 * reaction_nick_aa));
	
% Species:   id = T1_alpha, name = T1_alpha, affected by kineticLaw
	xdot(5) = (1/(compartment_sample))*((-1.0 * reaction_m_ass_aa_r) + ( 1.0 * reaction_m_ass_aa_rl) + (-1.0 * reaction_inh_displ_ac));
	
% Species:   id = alpha_alpha_T1, name = alpha_alpha_T1, affected by kineticLaw
	xdot(6) = (1/(compartment_sample))*(( 1.0 * reaction_pol_aa) + ( 1.0 * reaction_dis_aa) + (-1.0 * reaction_nick_aa));
	
% Species:   id = T2, name = T2, affected by kineticLaw
	xdot(7) = (1/(compartment_sample))*((-1.0 * reaction_ass_ab_l) + ( 1.0 * reaction_m_ass_ab_r));
	
% Species:   id = alpha_T2, name = alpha_T2, affected by kineticLaw
	xdot(8) = (1/(compartment_sample))*(( 1.0 * reaction_ass_ab_l) + ( 1.0 * reaction_m_ass_ab_lr) + (-1.0 * reaction_pol_ab));
	
% Species:   id = alpha_T2_beta, name = alpha_T2_beta, affected by kineticLaw
	xdot(9) = (1/(compartment_sample))*((-1.0 * reaction_m_ass_ab_lr) + (-1.0 * reaction_m_ass_ab_rl) + (-1.0 * reaction_dis_ab) + ( 1.0 * reaction_nick_ab));
	
% Species:   id = beta, name = beta, affected by kineticLaw
	xdot(10) = (1/(compartment_sample))*(( 1.0 * reaction_m_ass_ab_lr) + ( 1.0 * reaction_m_ass_ab_r) + ( 1.0 * reaction_dis_ab) + (-1.0 * reaction_ass_bc_l) + (-1.0 * reaction_ass_bc_rl) + (-1.0 * reaction_exo_b));
	
% Species:   id = T2_beta, name = T2_beta, affected by kineticLaw
	xdot(11) = (1/(compartment_sample))*((-1.0 * reaction_m_ass_ab_r) + ( 1.0 * reaction_m_ass_ab_rl));
	
% Species:   id = alpha_beta_T2, name = alpha_beta_T2, affected by kineticLaw
	xdot(12) = (1/(compartment_sample))*(( 1.0 * reaction_pol_ab) + ( 1.0 * reaction_dis_ab) + (-1.0 * reaction_nick_ab));
	
% Species:   id = T3, name = T3, affected by kineticLaw
	xdot(13) = (1/(compartment_sample))*((-1.0 * reaction_ass_bc_l) + (-1.0 * reaction_ass_bc_r));
	
% Species:   id = beta_T3, name = beta_T3, affected by kineticLaw
	xdot(14) = (1/(compartment_sample))*(( 1.0 * reaction_ass_bc_l) + ( 1.0 * reaction_m_ass_bc_lr) + (-1.0 * reaction_pol_bc));
	
% Species:   id = beta_T3_Inh, name = beta_T3_Inh, affected by kineticLaw
	xdot(15) = (1/(compartment_sample))*((-1.0 * reaction_m_ass_bc_lr) + ( 1.0 * reaction_ass_bc_rl) + (-1.0 * reaction_dis_bc) + ( 1.0 * reaction_nick_bc));
	
% Species:   id = Inh, name = Inh, affected by kineticLaw
	xdot(16) = (1/(compartment_sample))*(( 1.0 * reaction_m_ass_bc_lr) + (-1.0 * reaction_ass_bc_r) + ( 1.0 * reaction_dis_bc) + (-1.0 * reaction_inh_ac) + (-1.0 * reaction_inh_displ_ac) + ( 1.0 * reaction_m_inh_displ_ca) + (-1.0 * reaction_exo_c));
	
% Species:   id = T3_Inh, name = T3_Inh, affected by kineticLaw
	xdot(17) = (1/(compartment_sample))*(( 1.0 * reaction_ass_bc_r) + (-1.0 * reaction_ass_bc_rl));
	
% Species:   id = beta_Inh_T3, name = beta_Inh_T3, affected by kineticLaw
	xdot(18) = (1/(compartment_sample))*(( 1.0 * reaction_pol_bc) + ( 1.0 * reaction_dis_bc) + (-1.0 * reaction_nick_bc));
	
% Species:   id = Inh_T1, name = Inh_T1, affected by kineticLaw
	xdot(19) = (1/(compartment_sample))*(( 1.0 * reaction_inh_ac) + ( 1.0 * reaction_inh_displ_ac) + (-1.0 * reaction_m_inh_displ_ca));
	
% Species:   id = empty, name = empty
%WARNING speciesID: empty, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
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


