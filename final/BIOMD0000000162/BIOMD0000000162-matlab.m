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
% Model name = Hernjak2005_Calcium_Signaling
%
% is http://identifiers.org/biomodels.db/MODEL1629310283
% is http://identifiers.org/biomodels.db/BIOMD0000000162
% isDescribedBy http://identifiers.org/pubmed/16169982
%


function main()
%Initial conditions vector
	x0=zeros(32,1);
	x0(1) = 1.0;
	x0(2) = 1928.19396;
	x0(3) = 9827.53562;
	x0(4) = 240800.0;
	x0(5) = 0.8;
	x0(6) = 36404.27644;
	x0(7) = 1.0;
	x0(8) = 84566.35334;
	x0(9) = 2510.04502;
	x0(10) = 1928.19396;
	x0(11) = 84566.35334;
	x0(12) = 9827.53562;
	x0(13) = 355180.0;
	x0(14) = 43952.64608;
	x0(15) = 43952.64608;
	x0(16) = 240800.0;
	x0(17) = 4207.35392;
	x0(18) = 11753.6286;
	x0(19) = 27.09;
	x0(20) = 11753.6286;
	x0(21) = 45649.95498;
	x0(22) = 4207.35392;
	x0(23) = 36404.27644;
	x0(24) = 96.32;
	x0(25) = 602000.0;
	x0(26) = 45649.95498;
	x0(27) = 96.32;
	x0(28) = 355180.0;
	x0(29) = 27.09;
	x0(30) = 0.8;
	x0(31) = 602000.0;
	x0(32) = 2510.04502;


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

% Compartment: id = Extracellular, name = Extracellular, constant
	compartment_Extracellular=1.0;
% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=14169.5000044198;
% Compartment: id = ER, name = ER, constant
	compartment_ER=2500.0;
% Compartment: id = PM, name = PM, constant
	compartment_PM=16669.5000051998;
% Compartment: id = ERM, name = ERM, constant
	compartment_ERM=50000.0;
% Parameter:   id =  KMOLE, name = KMOLE
	global_par_KMOLE=0.00166112956810631;
% Parameter:   id =  pulses0, name = pulses0
% Warning parameter pulses0 is not constant, it should be controlled by a Rule and/or events
	global_par_pulses0=0.0;
% Parameter:   id =  p0, name = p0
	global_par_p0=1.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.012;
% Parameter:   id =  Ks, name = Ks
	global_par_Ks=1.188;
% Parameter:   id =  A1, name = A1
	global_par_A1=1.0;
% Parameter:   id =  B1, name = B1
	global_par_B1=2.0;
% Parameter:   id =  flux0_ar, name = flux0_ar
% Parameter:   id =  Jch, name = Jch
	global_par_Jch=13.25;
% Parameter:   id =  t1, name = t1
	global_par_t1=0.1;
% Parameter:   id =  t2, name = t2
	global_par_t2=0.105;
% Parameter:   id =  flux1_ar, name = flux1_ar
% Parameter:   id =  JchD, name = JchD
	global_par_JchD=6.25;
% Parameter:   id =  pulses_ar, name = pulses_ar
% Parameter:   id =  p1, name = p1
	global_par_p1=1.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.0;
% Parameter:   id =  p3, name = p3
	global_par_p3=1.0;
% Parameter:   id =  p4, name = p4
	global_par_p4=1.0;
% Parameter:   id =  p5, name = p5
	global_par_p5=1.0;
% Parameter:   id =  p6, name = p6
	global_par_p6=1.0;
% Parameter:   id =  p7, name = p7
	global_par_p7=1.0;
% Parameter:   id =  p8, name = p8
	global_par_p8=1.0;
% Parameter:   id =  p9, name = p9
	global_par_p9=1.0;
% Parameter:   id =  p10, name = p10
	global_par_p10=1.0;
% Parameter:   id =  p11, name = p11
	global_par_p11=1.0;
% Parameter:   id =  p12, name = p12
	global_par_p12=1.0;
% Parameter:   id =  p13, name = p13
	global_par_p13=1.0;
% assignmentRule: variable = pulses_ar
	global_par_pulses_ar=piecewise(global_par_p0*exp(-(t+(-global_par_delta))*global_par_Ks), t > global_par_delta, 0)+piecewise(global_par_p1*exp(-(t+(-(global_par_tau+global_par_delta)))*global_par_Ks), t > (global_par_tau+global_par_delta), 0)+piecewise(global_par_p2*exp(-global_par_Ks*(t+(-(2*global_par_tau+global_par_delta)))), t > (2*global_par_tau+global_par_delta), 0)+piecewise(global_par_p3*exp(-global_par_Ks*(t+(-(3*global_par_tau+global_par_delta)))), t > (3*global_par_tau+global_par_delta), 0)+piecewise(global_par_p4*exp(-global_par_Ks*(t+(-(4*global_par_tau+global_par_delta)))), t > (4*global_par_tau+global_par_delta), 0)+piecewise(global_par_p5*exp(-global_par_Ks*(t+(-(5*global_par_tau+global_par_delta)))), t > (5*global_par_tau+global_par_delta), 0)+piecewise(global_par_p6*exp(-global_par_Ks*(t+(-(6*global_par_tau+global_par_delta)))), t > (6*global_par_tau+global_par_delta), 0)+piecewise(global_par_p7*exp(-global_par_Ks*(t+(-(7*global_par_tau+global_par_delta)))), t > (7*global_par_tau+global_par_delta), 0)+piecewise(global_par_p8*exp(-global_par_Ks*(t+(-(8*global_par_tau+global_par_delta)))), t > (8*global_par_tau+global_par_delta), 0)+piecewise(global_par_p9*exp(-global_par_Ks*(t+(-(9*global_par_tau+global_par_delta)))), t > (9*global_par_tau+global_par_delta), 0)+piecewise(global_par_p10*exp(-global_par_Ks*(t+(-(10*global_par_tau+global_par_delta)))), t > (10*global_par_tau+global_par_delta), 0)+piecewise(global_par_p11*exp(-global_par_Ks*(t+(-(11*global_par_tau+global_par_delta)))), t > (11*global_par_tau+global_par_delta), 0);
% assignmentRule: variable = flux0_ar
	global_par_flux0_ar=piecewise(global_par_Jch*(0.0016611295681*x(25)+(-0.0016611295681*x(29))), (t > global_par_t1) && (t < global_par_t2), 0);
% assignmentRule: variable = flux1_ar
	global_par_flux1_ar=piecewise(global_par_JchD*(0.0016611295681*x(31)+(-0.0016611295681*x(19))), (t > global_par_t1) && (t < global_par_t2), 0);

% Reaction: id = CD28k_highDbinding, name = CD28k_highDbinding	% Local Parameter:   id =  Kf, name = Kf
	reaction_CD28k_highDbinding_Kf=5.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CD28k_highDbinding_Kr=2.6;

	reaction_CD28k_highDbinding=(reaction_CD28k_highDbinding_Kf*0.00166112956810631*x(19)*0.00166112956810631*x(15)+(-reaction_CD28k_highDbinding_Kr*0.00166112956810631*x(17)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_Dbinding, name = PA_Dbinding	% Local Parameter:   id =  Kf, name = Kf
	reaction_PA_Dbinding_Kf=107.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_PA_Dbinding_Kr=0.95;

	reaction_PA_Dbinding=(reaction_PA_Dbinding_Kf*0.00166112956810631*x(2)*0.00166112956810631*x(19)+(-reaction_PA_Dbinding_Kr*0.00166112956810631*x(3)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CG_deg, name = CG_deg	% Local Parameter:   id =  D, name = D
	reaction_CG_deg_D=15.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_CG_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_CG_deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_CG_deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_CG_deg_l_star=27.9812;
	% Local Parameter:   id =  CG_F, name = CG_F
	reaction_CG_deg_CG_F=140.47567;
	% Local Parameter:   id =  lc, name = lc
	reaction_CG_deg_lc=5.6265;

	reaction_CG_deg=(reaction_CG_deg_D*reaction_CG_deg_r_n^2*(0.00166112956810631*x(8)+(-0.00166112956810631*x(11)))*1/reaction_CG_deg_l_n*1/reaction_CG_deg_r_d^2*1/reaction_CG_deg_l_star+reaction_CG_deg_D*(0.00166112956810631*x(8)+(-reaction_CG_deg_CG_F))*1/reaction_CG_deg_l_star*1/reaction_CG_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = IP3deg, name = IP3deg	% Local Parameter:   id =  D, name = D
	reaction_IP3deg_D=283.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_IP3deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_IP3deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_IP3deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_IP3deg_l_star=27.9812;
	% Local Parameter:   id =  IP3_F, name = IP3_F
	reaction_IP3deg_IP3_F=0.16;
	% Local Parameter:   id =  lc, name = lc
	reaction_IP3deg_lc=5.6265;

	reaction_IP3deg=(reaction_IP3deg_D*reaction_IP3deg_r_n^2*(0.00166112956810631*x(27)+(-0.00166112956810631*x(24)))*1/reaction_IP3deg_l_n*1/reaction_IP3deg_r_d^2*1/reaction_IP3deg_l_star+reaction_IP3deg_D*(0.00166112956810631*x(27)+(-reaction_IP3deg_IP3_F))*1/reaction_IP3deg_l_star*1/reaction_IP3deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28kB_deg, name = D28kB_deg	% Local Parameter:   id =  D, name = D
	reaction_D28kB_deg_D=28.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_D28kB_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_D28kB_deg_l_n=0.66;
	% Local Parameter:   id =  r_D, name = r_D
	reaction_D28kB_deg_r_D=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_D28kB_deg_l_star=27.9812;
	% Local Parameter:   id =  D28kB_F, name = D28kB_F
	reaction_D28kB_deg_D28kB_F=4.16951;
	% Local Parameter:   id =  lc, name = lc
	reaction_D28kB_deg_lc=5.6265;

	reaction_D28kB_deg=(reaction_D28kB_deg_D*reaction_D28kB_deg_r_n^2*(0.00166112956810631*x(9)+(-0.00166112956810631*x(32)))*1/reaction_D28kB_deg_l_n*1/reaction_D28kB_deg_r_D^2*1/reaction_D28kB_deg_l_star+reaction_D28kB_deg_D*(0.00166112956810631*x(9)+(-reaction_D28kB_deg_D28kB_F))*1/reaction_D28kB_deg_l_star*1/reaction_D28kB_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28k_deg, name = D28k_deg	% Local Parameter:   id =  D, name = D
	reaction_D28k_deg_D=28.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_D28k_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_D28k_deg_l_n=0.66;
	% Local Parameter:   id =  r_D, name = r_D
	reaction_D28k_deg_r_D=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_D28k_deg_l_star=27.9812;
	% Local Parameter:   id =  D28k_F, name = D28k_F
	reaction_D28k_deg_D28k_F=75.83049;
	% Local Parameter:   id =  lc, name = lc
	reaction_D28k_deg_lc=5.6265;

	reaction_D28k_deg=(reaction_D28k_deg_D*reaction_D28k_deg_r_n^2*(0.00166112956810631*x(26)+(-0.00166112956810631*x(21)))*1/reaction_D28k_deg_l_n*1/reaction_D28k_deg_r_D^2*1/reaction_D28k_deg_l_star+reaction_D28k_deg_D*(0.00166112956810631*x(26)+(-reaction_D28k_deg_D28k_F))*1/reaction_D28k_deg_l_star*1/reaction_D28k_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_MgD, name = PA_MgD	% Local Parameter:   id =  Kf, name = Kf
	reaction_PA_MgD_Kf=0.8;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_PA_MgD_Kr=25.0;

	reaction_PA_MgD=(reaction_PA_MgD_Kf*0.00166112956810631*x(28)*0.00166112956810631*x(2)+(-reaction_PA_MgD_Kr*0.00166112956810631*x(6)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_Ca, name = PA_Ca	% Local Parameter:   id =  Kf, name = Kf
	reaction_PA_Ca_Kf=107.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_PA_Ca_Kr=0.95;

	reaction_PA_Ca=(reaction_PA_Ca_Kf*0.00166112956810631*x(10)*0.00166112956810631*x(29)+(-reaction_PA_Ca_Kr*0.00166112956810631*x(12)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PABMg_deg, name = PABMg_deg	% Local Parameter:   id =  D, name = D
	reaction_PABMg_deg_D=43.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_PABMg_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_PABMg_deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_PABMg_deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_PABMg_deg_l_star=27.9812;
	% Local Parameter:   id =  PABMg_F, name = PABMg_F
	reaction_PABMg_deg_PABMg_F=60.47222;
	% Local Parameter:   id =  lc, name = lc
	reaction_PABMg_deg_lc=5.6265;

	reaction_PABMg_deg=(reaction_PABMg_deg_D*reaction_PABMg_deg_r_n^2*(0.00166112956810631*x(6)+(-0.00166112956810631*x(23)))*1/reaction_PABMg_deg_l_n*1/reaction_PABMg_deg_r_d^2*1/reaction_PABMg_deg_l_star+reaction_PABMg_deg_D*(0.00166112956810631*x(6)+(-reaction_PABMg_deg_PABMg_F))*1/reaction_PABMg_deg_l_star*1/reaction_PABMg_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28k_high_deg, name = D28k_high_deg	% Local Parameter:   id =  D, name = D
	reaction_D28k_high_deg_D=28.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_D28k_high_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_D28k_high_deg_l_n=0.66;
	% Local Parameter:   id =  r_D, name = r_D
	reaction_D28k_high_deg_r_D=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_D28k_high_deg_l_star=27.9812;
	% Local Parameter:   id =  D28k_high_F, name = D28k_high_F
	reaction_D28k_high_deg_D28k_high_F=73.01104;
	% Local Parameter:   id =  lc, name = lc
	reaction_D28k_high_deg_lc=5.6265;

	reaction_D28k_high_deg=(reaction_D28k_high_deg_D*reaction_D28k_high_deg_r_n^2*(0.00166112956810631*x(15)+(-0.00166112956810631*x(14)))*1/reaction_D28k_high_deg_l_n*1/reaction_D28k_high_deg_r_D^2*1/reaction_D28k_high_deg_l_star+reaction_D28k_high_deg_D*(0.00166112956810631*x(15)+(-reaction_D28k_high_deg_D28k_high_F))*1/reaction_D28k_high_deg_l_star*1/reaction_D28k_high_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = Ca_d, name = Ca_d	% Local Parameter:   id =  D, name = D
	reaction_Ca_d_D=223.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_Ca_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_Ca_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_Ca_d_r_spine=0.288;

	reaction_Ca_d=0.75*reaction_Ca_d_D*(0.00166112956810631*x(29)+(-0.00166112956810631*x(19)))*reaction_Ca_d_r_neck^2*1/reaction_Ca_d_l*1/reaction_Ca_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28kB_high_deg, name = D28kB_high_deg	% Local Parameter:   id =  D, name = D
	reaction_D28kB_high_deg_D=28.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_D28kB_high_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_D28kB_high_deg_l_n=0.66;
	% Local Parameter:   id =  r_D, name = r_D
	reaction_D28kB_high_deg_r_D=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_D28kB_high_deg_l_star=27.9812;
	% Local Parameter:   id =  D28kB_high_F, name = D28kB_high_F
	reaction_D28kB_high_deg_D28kB_high_F=6.98896;
	% Local Parameter:   id =  lc, name = lc
	reaction_D28kB_high_deg_lc=5.6265;

	reaction_D28kB_high_deg=(reaction_D28kB_high_deg_D*reaction_D28kB_high_deg_r_n^2*(0.00166112956810631*x(17)+(-0.00166112956810631*x(22)))*1/reaction_D28kB_high_deg_l_n*1/reaction_D28kB_high_deg_r_D^2*1/reaction_D28kB_high_deg_l_star+reaction_D28kB_high_deg_D*(0.00166112956810631*x(17)+(-reaction_D28kB_high_deg_D28kB_high_F))*1/reaction_D28kB_high_deg_l_star*1/reaction_D28kB_high_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CG_d, name = CG_d	% Local Parameter:   id =  D, name = D
	reaction_CG_d_D=15.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_CG_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_CG_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_CG_d_r_spine=0.288;

	reaction_CG_d=0.75*reaction_CG_d_D*(0.00166112956810631*x(11)+(-0.00166112956810631*x(8)))*reaction_CG_d_r_neck^2*1/reaction_CG_d_l*1/reaction_CG_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28kB_d, name = D28kB_d	% Local Parameter:   id =  D, name = D
	reaction_D28kB_d_D=28.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_D28kB_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_D28kB_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_D28kB_d_r_spine=0.288;

	reaction_D28kB_d=0.75*reaction_D28kB_d_D*(0.00166112956810631*x(32)+(-0.00166112956810631*x(32)))*reaction_D28kB_d_r_neck^2*1/reaction_D28kB_d_l*1/reaction_D28kB_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = reaction1, name = reaction1	% Local Parameter:   id =  I, name = I
	reaction_reaction1_I=0.0;
	% Local Parameter:   id =  Kinh, name = Kinh
	reaction_reaction1_Kinh=0.2;
	% Local Parameter:   id =  Kon, name = Kon
	reaction_reaction1_Kon=2.7;

	reaction_reaction1=(-(reaction_reaction1_Kinh+(-(0.00166112956810631*x(19)+reaction_reaction1_Kinh)*x(5)))*reaction_reaction1_Kon)*compartment_ERM;

% Reaction: id = CGbinding, name = CGbinding	% Local Parameter:   id =  Kf, name = Kf
	reaction_CGbinding_Kf=430.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CGbinding_Kr=140.0;

	reaction_CGbinding=(reaction_CGbinding_Kf*0.00166112956810631*x(29)*0.00166112956810631*x(11)+(-reaction_CGbinding_Kr*0.00166112956810631*x(20)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CaD28k_med, name = CaD28k_med	% Local Parameter:   id =  Kf, name = Kf
	reaction_CaD28k_med_Kf=43.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CaD28k_med_Kr=35.8;

	reaction_CaD28k_med=(reaction_CaD28k_med_Kf*0.00166112956810631*x(21)*0.00166112956810631*x(29)+(-reaction_CaD28k_med_Kr*0.00166112956810631*x(32)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PABCa_deg, name = PABCa_deg	% Local Parameter:   id =  D, name = D
	reaction_PABCa_deg_D=43.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_PABCa_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_PABCa_deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_PABCa_deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_PABCa_deg_l_star=27.9812;
	% Local Parameter:   id =  PABCa_F, name = PABCa_F
	reaction_PABCa_deg_PABCa_F=16.32481;
	% Local Parameter:   id =  lc, name = lc
	reaction_PABCa_deg_lc=5.6265;

	reaction_PABCa_deg=(reaction_PABCa_deg_D*reaction_PABCa_deg_r_n^2*(0.00166112956810631*x(3)+(-0.00166112956810631*x(12)))*1/reaction_PABCa_deg_l_n*1/reaction_PABCa_deg_r_d^2*1/reaction_PABCa_deg_l_star+reaction_PABCa_deg_D*(0.00166112956810631*x(3)+(-reaction_PABCa_deg_PABCa_F))*1/reaction_PABCa_deg_l_star*1/reaction_PABCa_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = IP3_d, name = IP3_d	% Local Parameter:   id =  D, name = D
	reaction_IP3_d_D=283.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_IP3_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_IP3_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_IP3_d_r_spine=0.288;

	reaction_IP3_d=0.75*reaction_IP3_d_D*(0.00166112956810631*x(24)+(-0.00166112956810631*x(27)))*reaction_IP3_d_r_neck^2*1/reaction_IP3_d_l*1/reaction_IP3_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28k_high_d, name = D28k_high_d	% Local Parameter:   id =  D, name = D
	reaction_D28k_high_d_D=28.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_D28k_high_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_D28k_high_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_D28k_high_d_r_spine=0.288;

	reaction_D28k_high_d=0.75*reaction_D28k_high_d_D*(0.00166112956810631*x(14)+(-0.00166112956810631*x(15)))*reaction_D28k_high_d_r_neck^2*1/reaction_D28k_high_d_l*1/reaction_D28k_high_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = reaction0, name = reaction0	% Local Parameter:   id =  I, name = I
	reaction_reaction0_I=0.0;
	% Local Parameter:   id =  Kinh, name = Kinh
	reaction_reaction0_Kinh=0.2;
	% Local Parameter:   id =  Kon, name = Kon
	reaction_reaction0_Kon=2.7;

	reaction_reaction0=(-(reaction_reaction0_Kinh+(-(0.00166112956810631*x(29)+reaction_reaction0_Kinh)*x(30)))*reaction_reaction0_Kon)*compartment_ERM;

% Reaction: id = PABMg_d, name = PABMg_d	% Local Parameter:   id =  D, name = D
	reaction_PABMg_d_D=43.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_PABMg_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_PABMg_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_PABMg_d_r_spine=0.288;

	reaction_PABMg_d=0.75*reaction_PABMg_d_D*(0.00166112956810631*x(23)+(-0.00166112956810631*x(6)))*reaction_PABMg_d_r_neck^2*1/reaction_PABMg_d_l*1/reaction_PABMg_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CD28k_high, name = CD28k_high	% Local Parameter:   id =  Kf, name = Kf
	reaction_CD28k_high_Kf=5.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CD28k_high_Kr=2.6;

	reaction_CD28k_high=(reaction_CD28k_high_Kf*0.00166112956810631*x(29)*0.00166112956810631*x(14)+(-reaction_CD28k_high_Kr*0.00166112956810631*x(22)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28kBDbinding, name = D28kBDbinding	% Local Parameter:   id =  Kf, name = Kf
	reaction_D28kBDbinding_Kf=43.5;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_D28kBDbinding_Kr=35.8;

	reaction_D28kBDbinding=(reaction_D28kBDbinding_Kf*0.00166112956810631*x(26)*0.00166112956810631*x(19)+(-reaction_D28kBDbinding_Kr*0.00166112956810631*x(9)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PABCa_d, name = PABCa_d	% Local Parameter:   id =  D, name = D
	reaction_PABCa_d_D=43.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_PABCa_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_PABCa_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_PABCa_d_r_spine=0.288;

	reaction_PABCa_d=0.75*reaction_PABCa_d_D*(0.00166112956810631*x(12)+(-0.00166112956810631*x(3)))*reaction_PABCa_d_r_neck^2*1/reaction_PABCa_d_l*1/reaction_PABCa_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_d, name = PA_d	% Local Parameter:   id =  D, name = D
	reaction_PA_d_D=43.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_PA_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_PA_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_PA_d_r_spine=0.288;

	reaction_PA_d=0.75*reaction_PA_d_D*(0.00166112956810631*x(10)+(-0.00166112956810631*x(2)))*reaction_PA_d_r_neck^2*1/reaction_PA_d_l*1/reaction_PA_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CGB_deg, name = CGB_deg	% Local Parameter:   id =  D, name = D
	reaction_CGB_deg_D=15.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_CGB_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_CGB_deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_CGB_deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_CGB_deg_l_star=27.9812;
	% Local Parameter:   id =  CGB_F, name = CGB_F
	reaction_CGB_deg_CGB_F=19.5243;
	% Local Parameter:   id =  lc, name = lc
	reaction_CGB_deg_lc=5.6265;

	reaction_CGB_deg=(reaction_CGB_deg_D*reaction_CGB_deg_r_n^2*(0.00166112956810631*x(18)+(-0.00166112956810631*x(20)))*1/reaction_CGB_deg_l_n*1/reaction_CGB_deg_r_d^2*1/reaction_CGB_deg_l_star+reaction_CGB_deg_D*(0.00166112956810631*x(18)+(-reaction_CGB_deg_CGB_F))*1/reaction_CGB_deg_l_star*1/reaction_CGB_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_Mg, name = PA_Mg	% Local Parameter:   id =  Kf, name = Kf
	reaction_PA_Mg_Kf=0.8;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_PA_Mg_Kr=25.0;

	reaction_PA_Mg=(reaction_PA_Mg_Kf*0.00166112956810631*x(10)*0.00166112956810631*x(13)+(-reaction_PA_Mg_Kr*0.00166112956810631*x(23)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = PA_deg, name = PA_deg	% Local Parameter:   id =  D, name = D
	reaction_PA_deg_D=43.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_PA_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_PA_deg_l_n=0.66;
	% Local Parameter:   id =  r_d, name = r_d
	reaction_PA_deg_r_d=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_PA_deg_l_star=27.9812;
	% Local Parameter:   id =  PA_F, name = PA_F
	reaction_PA_deg_PA_F=3.20298;
	% Local Parameter:   id =  lc, name = lc
	reaction_PA_deg_lc=5.6265;

	reaction_PA_deg=(reaction_PA_deg_D*reaction_PA_deg_r_n^2*(0.00166112956810631*x(2)+(-0.00166112956810631*x(10)))*1/reaction_PA_deg_l_n*1/reaction_PA_deg_r_d^2*1/reaction_PA_deg_l_star+reaction_PA_deg_D*(0.00166112956810631*x(2)+(-reaction_PA_deg_PA_F))*1/reaction_PA_deg_l_star*1/reaction_PA_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = IP3_degr, name = IP3_degr	% Local Parameter:   id =  Kdegr, name = Kdegr
	reaction_IP3_degr_Kdegr=0.14;
	% Local Parameter:   id =  IP3_CytosolS, name = IP3_CytosolS
	reaction_IP3_degr_IP3_CytosolS=0.16;

	reaction_IP3_degr=reaction_IP3_degr_Kdegr*(0.00166112956810631*x(24)+(-reaction_IP3_degr_IP3_CytosolS))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28kB_high_d, name = D28kB_high_d	% Local Parameter:   id =  D, name = D
	reaction_D28kB_high_d_D=28.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_D28kB_high_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_D28kB_high_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_D28kB_high_d_r_spine=0.288;

	reaction_D28kB_high_d=0.75*reaction_D28kB_high_d_D*(0.00166112956810631*x(22)+(-0.00166112956810631*x(17)))*reaction_D28kB_high_d_r_neck^2*1/reaction_D28kB_high_d_l*1/reaction_D28kB_high_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = D28k_d, name = D28k_d	% Local Parameter:   id =  D, name = D
	reaction_D28k_d_D=28.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_D28k_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_D28k_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_D28k_d_r_spine=0.288;

	reaction_D28k_d=0.75*reaction_D28k_d_D*(0.00166112956810631*x(21)+(-0.00166112956810631*x(26)))*reaction_D28k_d_r_neck^2*1/reaction_D28k_d_l*1/reaction_D28k_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CGB_d, name = CGB_d	% Local Parameter:   id =  D, name = D
	reaction_CGB_d_D=15.0;
	% Local Parameter:   id =  r_neck, name = r_neck
	reaction_CGB_d_r_neck=0.1;
	% Local Parameter:   id =  l, name = l
	reaction_CGB_d_l=0.66;
	% Local Parameter:   id =  r_spine, name = r_spine
	reaction_CGB_d_r_spine=0.288;

	reaction_CGB_d=0.75*reaction_CGB_d_D*(0.00166112956810631*x(20)+(-0.00166112956810631*x(18)))*reaction_CGB_d_r_neck^2*1/reaction_CGB_d_l*1/reaction_CGB_d_r_spine^3*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = CG_Dbinding, name = CG_Dbinding	% Local Parameter:   id =  Kf, name = Kf
	reaction_CG_Dbinding_Kf=430.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_CG_Dbinding_Kr=140.0;

	reaction_CG_Dbinding=(reaction_CG_Dbinding_Kf*0.00166112956810631*x(19)*0.00166112956810631*x(8)+(-reaction_CG_Dbinding_Kr*0.00166112956810631*x(18)))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = IP3_degr1, name = IP3_degr1	% Local Parameter:   id =  Kdegr, name = Kdegr
	reaction_IP3_degr1_Kdegr=0.14;
	% Local Parameter:   id =  IP3_CytosolD, name = IP3_CytosolD
	reaction_IP3_degr1_IP3_CytosolD=0.16;

	reaction_IP3_degr1=reaction_IP3_degr1_Kdegr*(0.00166112956810631*x(27)+(-reaction_IP3_degr1_IP3_CytosolD))*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = Ca_deg, name = Ca_deg	% Local Parameter:   id =  D, name = D
	reaction_Ca_deg_D=223.0;
	% Local Parameter:   id =  r_n, name = r_n
	reaction_Ca_deg_r_n=0.1;
	% Local Parameter:   id =  l_n, name = l_n
	reaction_Ca_deg_l_n=0.66;
	% Local Parameter:   id =  r_D, name = r_D
	reaction_Ca_deg_r_D=1.0;
	% Local Parameter:   id =  l_star, name = l_star
	reaction_Ca_deg_l_star=27.9812;
	% Local Parameter:   id =  Ca_F, name = Ca_F
	reaction_Ca_deg_Ca_F=0.045;
	% Local Parameter:   id =  lc, name = lc
	reaction_Ca_deg_lc=5.6265;

	reaction_Ca_deg=(reaction_Ca_deg_D*reaction_Ca_deg_r_n^2*(0.00166112956810631*x(19)+(-0.00166112956810631*x(29)))*1/reaction_Ca_deg_l_n*1/reaction_Ca_deg_r_D^2*1/reaction_Ca_deg_l_star+reaction_Ca_deg_D*(0.00166112956810631*x(19)+(-reaction_Ca_deg_Ca_F))*1/reaction_Ca_deg_l_star*1/reaction_Ca_deg_lc)*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = pulses, name = pulses	% Local Parameter:   id =  SVR, name = SVR
	reaction_pulses_SVR=3.0;
	% Local Parameter:   id =  Js, name = Js
	reaction_pulses_Js=0.0;
	% Local Parameter:   id =  Rs, name = Rs
	reaction_pulses_Rs=0.288;

	reaction_pulses=reaction_pulses_SVR*reaction_pulses_Js*global_par_pulses_ar*1/reaction_pulses_Rs*compartment_Cytosol*1*1/global_par_KMOLE;

% Reaction: id = ER_leak_flux, name = ER_leak_flux	% Local Parameter:   id =  I, name = I
	reaction_ER_leak_flux_I=0.0;
	% Local Parameter:   id =  vL, name = vL
	reaction_ER_leak_flux_vL=0.12396;

	reaction_ER_leak_flux=(-x(1)*reaction_ER_leak_flux_vL*(1+(-0.00166112956810631*x(29)*1/(0.00166112956810631*x(16)))))*compartment_ERM*1*1/global_par_KMOLE;

% Reaction: id = SERCA_fluxD, name = SERCA_fluxD	% Local Parameter:   id =  I, name = I
	reaction_SERCA_fluxD_I=0.0;
	% Local Parameter:   id =  vP, name = vP
	reaction_SERCA_fluxD_vP=3.75;
	% Local Parameter:   id =  kP, name = kP
	reaction_SERCA_fluxD_kP=0.27;

	reaction_SERCA_fluxD=x(7)*reaction_SERCA_fluxD_vP*0.00166112956810631*x(19)*0.00166112956810631*x(19)*1/(reaction_SERCA_fluxD_kP*reaction_SERCA_fluxD_kP+0.00166112956810631*x(19)*0.00166112956810631*x(19))*compartment_ERM*1*1/global_par_KMOLE;

% Reaction: id = IP3R_fluxD, name = IP3R_fluxD	% Local Parameter:   id =  I, name = I
	reaction_IP3R_fluxD_I=0.0;
	% Local Parameter:   id =  Jmax2, name = Jmax2
	reaction_IP3R_fluxD_Jmax2=21000.0;
	% Local Parameter:   id =  dI, name = dI
	reaction_IP3R_fluxD_dI=20.0;
	% Local Parameter:   id =  Kact, name = Kact
	reaction_IP3R_fluxD_Kact=0.3;

	reaction_IP3R_fluxD=(-x(7)*reaction_IP3R_fluxD_Jmax2*(1+(-0.00166112956810631*x(19)*1/(0.00166112956810631*x(4))))*(x(5)*0.00166112956810631*x(27)*0.00166112956810631*x(19)*1/(0.00166112956810631*x(27)+reaction_IP3R_fluxD_dI)*1/(0.00166112956810631*x(19)+reaction_IP3R_fluxD_Kact))^3)*compartment_ERM*1*1/global_par_KMOLE;

% Reaction: id = SERCA_flux, name = SERCA_flux	% Local Parameter:   id =  I, name = I
	reaction_SERCA_flux_I=0.0;
	% Local Parameter:   id =  vP, name = vP
	reaction_SERCA_flux_vP=3.75;
	% Local Parameter:   id =  kP, name = kP
	reaction_SERCA_flux_kP=0.27;

	reaction_SERCA_flux=x(1)*reaction_SERCA_flux_vP*0.00166112956810631*x(29)*0.00166112956810631*x(29)*1/(reaction_SERCA_flux_kP*reaction_SERCA_flux_kP+0.00166112956810631*x(29)*0.00166112956810631*x(29))*compartment_ERM*1*1/global_par_KMOLE;

% Reaction: id = flux0, name = flux0	% Local Parameter:   id =  I, name = I
	reaction_flux0_I=0.0;

	reaction_flux0=global_par_flux0_ar*compartment_PM*1*1/global_par_KMOLE;

% Reaction: id = IP3R_flux, name = IP3R_flux	% Local Parameter:   id =  I, name = I
	reaction_IP3R_flux_I=0.0;
	% Local Parameter:   id =  Jmax2, name = Jmax2
	reaction_IP3R_flux_Jmax2=21000.0;
	% Local Parameter:   id =  dI, name = dI
	reaction_IP3R_flux_dI=20.0;
	% Local Parameter:   id =  Kact, name = Kact
	reaction_IP3R_flux_Kact=0.3;

	reaction_IP3R_flux=(-x(1)*reaction_IP3R_flux_Jmax2*(1+(-0.00166112956810631*x(29)*1/(0.00166112956810631*x(16))))*(x(30)*0.00166112956810631*x(24)*0.00166112956810631*x(29)*1/(0.00166112956810631*x(24)+reaction_IP3R_flux_dI)*1/(0.00166112956810631*x(29)+reaction_IP3R_flux_Kact))^3)*compartment_ERM*1*1/global_par_KMOLE;

% Reaction: id = flux1, name = flux1	% Local Parameter:   id =  I, name = I
	reaction_flux1_I=0.0;

	reaction_flux1=global_par_flux1_ar*compartment_PM*1*1/global_par_KMOLE;

% Reaction: id = ER_leak_fluxD, name = ER_leak_fluxD	% Local Parameter:   id =  I, name = I
	reaction_ER_leak_fluxD_I=0.0;
	% Local Parameter:   id =  vL, name = vL
	reaction_ER_leak_fluxD_vL=0.12396;

	reaction_ER_leak_fluxD=(-x(7)*reaction_ER_leak_fluxD_vL*(1+(-0.00166112956810631*x(19)*1/(0.00166112956810631*x(4)))))*compartment_ERM*1*1/global_par_KMOLE;

	xdot=zeros(32,1);
	
% Species:   id = ERDensity_ERM, name = ERDensity_ERM
%WARNING speciesID: ERDensity_ERM, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = PA_D_Cytosol, name = PA_D_Cytosol, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*((-1.0 * reaction_PA_Dbinding) + (-1.0 * reaction_PA_MgD) + (-1.0 * reaction_PA_deg));
	
% Species:   id = PABCa_D_Cytosol, name = PABCa_D_Cytosol, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytosol))*(( 1.0 * reaction_PA_Dbinding) + (-1.0 * reaction_PABCa_deg));
	
% Species:   id = Ca_D_ER, name = Ca_D_ER
%WARNING speciesID: Ca_D_ER, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = h_D_ERM, name = h_D_ERM, affected by kineticLaw
	xdot(5) = (1/(compartment_ERM))*((-1.0 * reaction_reaction1));
	
% Species:   id = PABMg_D_Cytosol, name = PABMg_D_Cytosol, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytosol))*(( 1.0 * reaction_PA_MgD) + (-1.0 * reaction_PABMg_deg));
	
% Species:   id = ERDensity_D_ERM, name = ERDensity_D_ERM
%WARNING speciesID: ERDensity_D_ERM, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = CG_D_Cytosol, name = CG_D_Cytosol, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytosol))*((-1.0 * reaction_CG_deg) + (-1.0 * reaction_CG_Dbinding));
	
% Species:   id = D28kB_D_Cytosol, name = D28kB_D_Cytosol, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytosol))*((-1.0 * reaction_D28kB_deg) + ( 1.0 * reaction_D28kBDbinding));
	
% Species:   id = PA_Cytosol, name = PA_Cytosol, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytosol))*((-1.0 * reaction_PA_Ca) + (-1.0 * reaction_PA_d) + (-1.0 * reaction_PA_Mg));
	
% Species:   id = CG_Cytosol, name = CG_Cytosol, affected by kineticLaw
	xdot(11) = (1/(compartment_Cytosol))*((-1.0 * reaction_CG_d) + (-1.0 * reaction_CGbinding));
	
% Species:   id = PABCa_Cytosol, name = PABCa_Cytosol, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytosol))*(( 1.0 * reaction_PA_Ca) + (-1.0 * reaction_PABCa_d));
	
% Species:   id = Mg_Cytosol, name = Mg_Cytosol
%WARNING speciesID: Mg_Cytosol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = D28k_high_Cytosol, name = D28k_high_Cytosol, affected by kineticLaw
	xdot(14) = (1/(compartment_Cytosol))*((-1.0 * reaction_D28k_high_d) + (-1.0 * reaction_CD28k_high));
	
% Species:   id = D28k_high_D_Cytosol, name = D28k_high_D_Cytosol, affected by kineticLaw
	xdot(15) = (1/(compartment_Cytosol))*((-1.0 * reaction_CD28k_highDbinding) + (-1.0 * reaction_D28k_high_deg));
	
% Species:   id = Ca_ER, name = Ca_ER
%WARNING speciesID: Ca_ER, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = D28kB_high_D_Cytosol, name = D28kB_high_D_Cytosol, affected by kineticLaw
	xdot(17) = (1/(compartment_Cytosol))*(( 1.0 * reaction_CD28k_highDbinding) + (-1.0 * reaction_D28kB_high_deg));
	
% Species:   id = CGB_D_Cytosol, name = CGB_D_Cytosol, affected by kineticLaw
	xdot(18) = (1/(compartment_Cytosol))*((-1.0 * reaction_CGB_deg) + ( 1.0 * reaction_CG_Dbinding));
	
% Species:   id = Ca_D_Cytosol, name = Ca_D_Cytosol, affected by kineticLaw
	xdot(19) = (1/(compartment_Cytosol))*((-1.0 * reaction_CD28k_highDbinding) + (-1.0 * reaction_PA_Dbinding) + (-1.0 * reaction_D28kBDbinding) + (-1.0 * reaction_CG_Dbinding) + (-1.0 * reaction_Ca_deg) + (-1.0 * reaction_SERCA_fluxD) + (-1.0 * reaction_IP3R_fluxD) + ( 1.0 * reaction_flux1) + (-1.0 * reaction_ER_leak_fluxD));
	
% Species:   id = CGB_Cytosol, name = CGB_Cytosol, affected by kineticLaw
	xdot(20) = (1/(compartment_Cytosol))*(( 1.0 * reaction_CGbinding) + (-1.0 * reaction_CGB_d));
	
% Species:   id = D28k_Cytosol, name = D28k_Cytosol, affected by kineticLaw
	xdot(21) = (1/(compartment_Cytosol))*((-1.0 * reaction_CaD28k_med) + (-1.0 * reaction_D28k_d));
	
% Species:   id = D28kB_high_Cytosol, name = D28kB_high_Cytosol, affected by kineticLaw
	xdot(22) = (1/(compartment_Cytosol))*(( 1.0 * reaction_CD28k_high) + (-1.0 * reaction_D28kB_high_d));
	
% Species:   id = PABMg_Cytosol, name = PABMg_Cytosol, affected by kineticLaw
	xdot(23) = (1/(compartment_Cytosol))*((-1.0 * reaction_PABMg_d) + ( 1.0 * reaction_PA_Mg));
	
% Species:   id = IP3_Cytosol, name = IP3_Cytosol, affected by kineticLaw
	xdot(24) = (1/(compartment_Cytosol))*((-1.0 * reaction_IP3_d) + (-1.0 * reaction_IP3_degr) + ( 1.0 * reaction_pulses));
	
% Species:   id = Ca_Extracellular, name = Ca_Extracellular
%WARNING speciesID: Ca_Extracellular, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = D28k_D_Cytosol, name = D28k_D_Cytosol, affected by kineticLaw
	xdot(26) = (1/(compartment_Cytosol))*((-1.0 * reaction_D28k_deg) + (-1.0 * reaction_D28kBDbinding));
	
% Species:   id = IP3_D_Cytosol, name = IP3_D_Cytosol, affected by kineticLaw
	xdot(27) = (1/(compartment_Cytosol))*((-1.0 * reaction_IP3deg) + (-1.0 * reaction_IP3_degr1));
	
% Species:   id = Mg_D_Cytosol, name = Mg_D_Cytosol
%WARNING speciesID: Mg_D_Cytosol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(28) = 0.0;
	
% Species:   id = Ca_Cytosol, name = Ca_Cytosol, affected by kineticLaw
	xdot(29) = (1/(compartment_Cytosol))*((-1.0 * reaction_PA_Ca) + (-1.0 * reaction_Ca_d) + (-1.0 * reaction_CGbinding) + (-1.0 * reaction_CaD28k_med) + (-1.0 * reaction_CD28k_high) + (-1.0 * reaction_ER_leak_flux) + (-1.0 * reaction_SERCA_flux) + ( 1.0 * reaction_flux0) + (-1.0 * reaction_IP3R_flux));
	
% Species:   id = h_ERM, name = h_ERM, affected by kineticLaw
	xdot(30) = (1/(compartment_ERM))*((-1.0 * reaction_reaction0));
	
% Species:   id = Ca_D_Extracellular, name = Ca_D_Extracellular
%WARNING speciesID: Ca_D_Extracellular, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(31) = 0.0;
	
% Species:   id = D28kB_Cytosol, name = D28kB_Cytosol, affected by kineticLaw
	xdot(32) = (1/(compartment_Cytosol))*((-1.0 * reaction_D28kB_d) + ( 1.0 * reaction_CaD28k_med));
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


