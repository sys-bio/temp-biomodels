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
% Model name = Chen2000 - Budding yeast cell cycle
%
% is http://identifiers.org/biomodels.db/MODEL1006230004
% isDescribedBy http://identifiers.org/pubmed/10637314
% is http://identifiers.org/biomodels.db/BIOMD0000000675
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.0078;
	x0(2) = 0.2342;
	x0(3) = 0.0614;
	x0(4) = 0.1231;
	x0(5) = 0.079;
	x0(6) = 0.0207;
	x0(7) = 0.8332;
	x0(8) = 0.6848;
	x0(9) = 0.9946;
	x0(10) = 0.6608;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;


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

% Compartment: id = COMpartment, name = Yeast Cell, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  Cln2, name = Cln2
% Parameter:   id =  ks_n2, name = ks_n2_prime
	global_par_ks_n2=0.0;
% Parameter:   id =  ks_n2_, name = ks_n2_2prime
	global_par_ks_n2_=0.05;
% Parameter:   id =  kd_n2, name = kd_n2
	global_par_kd_n2=0.1;
% Parameter:   id =  Clb2_T, name = Clb2_T
% Parameter:   id =  Hct1_T, name = Hct1_T
	global_par_Hct1_T=1.0;
% Parameter:   id =  ks_b2, name = ks_b2_prime
	global_par_ks_b2=0.002;
% Parameter:   id =  ks_b2_, name = ks_b2_2prime
	global_par_ks_b2_=0.05;
% Parameter:   id =  kd_b2, name = kd_b2_prime
	global_par_kd_b2=0.01;
% Parameter:   id =  kd_b2_, name = kd_b2_2prime
	global_par_kd_b2_=2.0;
% Parameter:   id =  kd_b2__, name = kd_b2_3prime
	global_par_kd_b2__=0.05;
% Parameter:   id =  Vd_b2, name = Vd_b2
% Parameter:   id =  Clb2, name = Clb2
% Parameter:   id =  Clb5, name = Clb5
% Parameter:   id =  Sic1, name = Sic1
% Parameter:   id =  Clb5_T, name = Clb5_T
% Parameter:   id =  ks_b5, name = ks_b5_prime
	global_par_ks_b5=0.006;
% Parameter:   id =  ks_b5_, name = ks_b5_2prime
	global_par_ks_b5_=0.02;
% Parameter:   id =  kd_b5, name = kd_b5_prime
	global_par_kd_b5=0.1;
% Parameter:   id =  kd_b5_, name = kd_b5_2prime
	global_par_kd_b5_=0.25;
% Parameter:   id =  Vd_b5, name = Vd_b5
% Parameter:   id =  Bck2, name = Bck2
% Parameter:   id =  Bck2_0, name = Bck2_0
	global_par_Bck2_0=0.0027;
% Parameter:   id =  Cln3, name = Cln3
% Parameter:   id =  Jn3, name = Jn3
	global_par_Jn3=6.0;
% Parameter:   id =  Dn3, name = Dn3
	global_par_Dn3=1.0;
% Parameter:   id =  Cln3_max, name = Cln3_max
	global_par_Cln3_max=0.02;
% Parameter:   id =  Sic1_T, name = Sic1_T
% Parameter:   id =  ks_c1, name = ks_c1
	global_par_ks_c1=0.02;
% Parameter:   id =  ks_c1_, name = ks_c1_2prime
	global_par_ks_c1_=0.1;
% Parameter:   id =  Clb2_Sic1, name = Clb2_Sic1
% Parameter:   id =  kas_b2, name = kas_b2
	global_par_kas_b2=50.0;
% Parameter:   id =  kdi_b2, name = kdi_b2
	global_par_kdi_b2=0.05;
% Parameter:   id =  Clb5_Sic1, name = Clb5_Sic1
% Parameter:   id =  kas_b5, name = kas_b5
	global_par_kas_b5=50.0;
% Parameter:   id =  kdi_b5, name = kdi_b5
	global_par_kdi_b5=0.05;
% Parameter:   id =  Vd2_c1, name = Vd2_c1
% Parameter:   id =  kd2_c1, name = kd2_c1
	global_par_kd2_c1=0.3;
% Parameter:   id =  epsilonc1_n3, name = epsilonc1_n3
	global_par_epsilonc1_n3=20.0;
% Parameter:   id =  epsilonc1_k2, name = epsilonc1_k2
	global_par_epsilonc1_k2=2.0;
% Parameter:   id =  epsilonc1_b5, name = epsilonc1_b5
	global_par_epsilonc1_b5=1.0;
% Parameter:   id =  epsilonc1_b2, name = epsilonc1_b2
	global_par_epsilonc1_b2=0.067;
% Parameter:   id =  Cdc20_T, name = Cdc20_T
% Parameter:   id =  ks_20, name = ks_20_prime
	global_par_ks_20=0.005;
% Parameter:   id =  ks_20_, name = ks_20_2prime
	global_par_ks_20_=0.06;
% Parameter:   id =  Cdc20, name = Cdc20
% Parameter:   id =  ka_20, name = ka_20
	global_par_ka_20=1.0;
% Parameter:   id =  ki_20, name = ki_20_prime
	global_par_ki_20=0.1;
% Parameter:   id =  ki_20_, name = ki_20_2prime
	global_par_ki_20_=10.0;
% Parameter:   id =  Vi_20, name = Vi_20
% Parameter:   id =  Hct1, name = Hct1
% Parameter:   id =  ka_t1, name = ka_t1_prime
	global_par_ka_t1=0.04;
% Parameter:   id =  ka_t1_, name = ka_t1_2prime
	global_par_ka_t1_=2.0;
% Parameter:   id =  ki_t1, name = ki_t1_prime
	global_par_ki_t1=0.0;
% Parameter:   id =  ki_t1_, name = ki_t1_2prime
	global_par_ki_t1_=0.64;
% Parameter:   id =  Vi_t1, name = Vi_t1
% Parameter:   id =  Ji_t1, name = Ji_t1
	global_par_Ji_t1=0.05;
% Parameter:   id =  Ja_t1, name = Ja_t1
	global_par_Ja_t1=0.05;
% Parameter:   id =  epsiloni_t1_n2, name = epsiloni_t1_n2
	global_par_epsiloni_t1_n2=1.0;
% Parameter:   id =  epsiloni_t1_b5, name = epsiloni_t1_b5
	global_par_epsiloni_t1_b5=0.5;
% Parameter:   id =  epsiloni_t1_b2, name = epsiloni_t1_b2
	global_par_epsiloni_t1_b2=1.0;
% Parameter:   id =  mass, name = mass
% Parameter:   id =  mu, name = mu
	global_par_mu=0.005776;
% Parameter:   id =  ORI, name = ORI
% Parameter:   id =  ks_ori, name = ks_ori
	global_par_ks_ori=2.0;
% Parameter:   id =  kd_ori, name = kd_ori
	global_par_kd_ori=0.06;
% Parameter:   id =  epsilonori_b2, name = epsilonori_b2
	global_par_epsilonori_b2=0.4;
% Parameter:   id =  BUD, name = BUD
% Parameter:   id =  ks_bud, name = ks_bud
	global_par_ks_bud=0.3;
% Parameter:   id =  kd_bud, name = kd_bud
	global_par_kd_bud=0.06;
% Parameter:   id =  epsilonbud_b5, name = epsilonbud_b5
	global_par_epsilonbud_b5=1.0;
% Parameter:   id =  SPN, name = SPN
% Parameter:   id =  ks_spn, name = ks_spn
	global_par_ks_spn=0.08;
% Parameter:   id =  kd_spn, name = kd_spn
	global_par_kd_spn=0.06;
% Parameter:   id =  J_spn, name = J_spn
	global_par_J_spn=0.2;
% Parameter:   id =  SBF, name = SBF
% Parameter:   id =  ka_sbf, name = ka_sbf
	global_par_ka_sbf=1.0;
% Parameter:   id =  ki_sbf, name = ki_sbf_prime
	global_par_ki_sbf=0.5;
% Parameter:   id =  ki_sbf_, name = ki_sbf_2prime
	global_par_ki_sbf_=6.0;
% Parameter:   id =  Va_sbf, name = Va_sbf
% Parameter:   id =  Ji_sbf, name = Ji_sbf
	global_par_Ji_sbf=0.01;
% Parameter:   id =  Ja_sbf, name = Ja_sbf
	global_par_Ja_sbf=0.01;
% Parameter:   id =  epsilonsbf_n3, name = epsilonsbf_n3
	global_par_epsilonsbf_n3=75.0;
% Parameter:   id =  epsilonsbf_b5, name = epsilonsbf_b5
	global_par_epsilonsbf_b5=0.5;
% Parameter:   id =  MBF, name = MBF
% Parameter:   id =  Mcm1, name = Mcm1
% Parameter:   id =  ka_mcm, name = ka_mcm
	global_par_ka_mcm=1.0;
% Parameter:   id =  ki_mcm, name = ki_mcm
	global_par_ki_mcm=0.15;
% Parameter:   id =  Ji_mcm, name = Ji_mcm
	global_par_Ji_mcm=1.0;
% Parameter:   id =  Ja_mcm, name = Ja_mcm
	global_par_Ja_mcm=1.0;
% Parameter:   id =  Swi5, name = Swi5
% Parameter:   id =  ka_swi, name = ka_swi
	global_par_ka_swi=1.0;
% Parameter:   id =  ki_swi, name = ki_swi_prime
	global_par_ki_swi=0.3;
% Parameter:   id =  ki_swi_, name = ki_swi_2prime
	global_par_ki_swi_=0.2;
% Parameter:   id =  Ji_swi, name = Ji_swi
	global_par_Ji_swi=0.1;
% Parameter:   id =  Ja_swi, name = Ja_swi
	global_par_Ja_swi=0.1;
% Parameter:   id =  kd1_c1, name = kd1_c1
	global_par_kd1_c1=0.01;
% Parameter:   id =  kd_20, name = kd_20
	global_par_kd_20=0.08;
% Parameter:   id =  Jd2_c1, name = Jd2_c1
	global_par_Jd2_c1=0.05;
% Parameter:   id =  END_M, name = END_M
	global_par_END_M=2000.0;
% Parameter:   id =  START_S, name = START_S
	global_par_START_S=1000.0;
% Parameter:   id =  D, name = D
% assignmentRule: variable = Vd_b2
	global_par_Vd_b2=global_par_kd_b2*(global_par_Hct1_T-global_par_Hct1)+global_par_kd_b2_*global_par_Hct1+global_par_kd_b2__*global_par_Cdc20;
% assignmentRule: variable = Clb2
	global_par_Clb2=global_par_Clb2_T-global_par_Clb2_Sic1;
% assignmentRule: variable = Clb5
	global_par_Clb5=global_par_Clb5_T-global_par_Clb5_Sic1;
% assignmentRule: variable = Sic1
	global_par_Sic1=global_par_Sic1_T-(global_par_Clb2_Sic1+global_par_Clb5_Sic1);
% assignmentRule: variable = Vd_b5
	global_par_Vd_b5=global_par_kd_b5+global_par_kd_b5_*global_par_Cdc20;
% assignmentRule: variable = Bck2
	global_par_Bck2=global_par_Bck2_0*global_par_mass;
% assignmentRule: variable = Cln3
	global_par_Cln3=global_par_Cln3_max*global_par_Dn3*global_par_mass/(global_par_Jn3+global_par_Dn3*global_par_mass);
% assignmentRule: variable = Va_sbf
	global_par_Va_sbf=global_par_ka_sbf*(global_par_Cln2+global_par_epsilonsbf_n3*(global_par_Cln3+global_par_Bck2)+global_par_epsilonsbf_b5*global_par_Clb5);
% assignmentRule: variable = Vd2_c1
	global_par_Vd2_c1=global_par_kd2_c1*(global_par_epsilonc1_n3*global_par_Cln3+global_par_epsilonc1_k2*global_par_Bck2+global_par_Cln2+global_par_epsilonc1_b5*global_par_Clb5+global_par_epsilonc1_b2*global_par_Clb2);
% assignmentRule: variable = Vi_20
	global_par_Vi_20=piecewise(10, (time >= global_par_START_S) && (time < global_par_END_M), piecewise(10-9.9*(time-global_par_END_M)/12, (time >= global_par_END_M) && (time < (global_par_END_M+12)), 0.1));
% assignmentRule: variable = Vi_t1
	global_par_Vi_t1=global_par_ki_t1+global_par_ki_t1_*(global_par_Cln3+global_par_epsiloni_t1_n2*global_par_Cln2+global_par_epsiloni_t1_b5*global_par_Clb5+global_par_epsiloni_t1_b2*global_par_Clb2);
% assignmentRule: variable = SBF
	global_par_SBF=2*global_par_Va_sbf*global_par_Ji_sbf/(((global_par_ki_sbf+global_par_ki_sbf_*global_par_Clb2+global_par_Va_sbf*global_par_Ji_sbf+(global_par_ki_sbf+global_par_ki_sbf_*global_par_Clb2)*global_par_Ja_sbf)-global_par_Va_sbf)+(((global_par_ki_sbf+global_par_ki_sbf_*global_par_Clb2+global_par_Va_sbf*global_par_Ji_sbf+(global_par_ki_sbf+global_par_ki_sbf_*global_par_Clb2)*global_par_Ja_sbf)-global_par_Va_sbf)^2-4*global_par_Va_sbf*global_par_Ji_sbf*((global_par_ki_sbf+global_par_ki_sbf_*global_par_Clb2)-global_par_Va_sbf))^(1/2));
% assignmentRule: variable = MBF
	global_par_MBF=global_par_SBF;
% assignmentRule: variable = Mcm1
	global_par_Mcm1=2*global_par_ka_mcm*global_par_Clb2*global_par_Ji_mcm/(((global_par_ki_mcm+global_par_ka_mcm*global_par_Clb2*global_par_Ji_mcm+global_par_ki_mcm*global_par_Ja_mcm)-global_par_ka_mcm*global_par_Clb2)+(((global_par_ki_mcm+global_par_ka_mcm*global_par_Clb2*global_par_Ji_mcm+global_par_ki_mcm*global_par_Ja_mcm)-global_par_ka_mcm*global_par_Clb2)^2-4*(global_par_ki_mcm-global_par_ka_mcm*global_par_Clb2)*global_par_ka_mcm*global_par_Clb2*global_par_Ji_mcm)^(1/2));
% assignmentRule: variable = Swi5
	global_par_Swi5=2*global_par_ka_swi*global_par_Cdc20*global_par_Ji_swi/(((global_par_ki_swi+global_par_ki_swi_*global_par_Clb2+global_par_ka_swi*global_par_Cdc20*global_par_Ji_swi+(global_par_ki_swi+global_par_ki_swi_*global_par_Clb2)*global_par_Ja_swi)-global_par_ka_swi*global_par_Cdc20)+(((global_par_ki_swi+global_par_ki_swi_*global_par_Clb2+global_par_ka_swi*global_par_Cdc20*global_par_Ji_swi+(global_par_ki_swi+global_par_ki_swi_*global_par_Clb2)*global_par_Ja_swi)-global_par_ka_swi*global_par_Cdc20)^2-4*((global_par_ki_swi+global_par_ki_swi_*global_par_Clb2)-global_par_ka_swi*global_par_Cdc20)*global_par_ka_swi*global_par_Cdc20*global_par_Ji_swi)^(1/2));
% assignmentRule: variable = D
	global_par_D=1.026/global_par_mu-32;
% rateRule: variable = Cln2
global_par_Cln2 = x(1);
% rateRule: variable = Clb2_T
global_par_Clb2_T = x(2);
% rateRule: variable = Clb5_T
global_par_Clb5_T = x(3);
% rateRule: variable = Sic1_T
global_par_Sic1_T = x(4);
% rateRule: variable = Clb2_Sic1
global_par_Clb2_Sic1 = x(5);
% rateRule: variable = Clb5_Sic1
global_par_Clb5_Sic1 = x(6);
% rateRule: variable = Cdc20_T
global_par_Cdc20_T = x(7);
% rateRule: variable = Cdc20
global_par_Cdc20 = x(8);
% rateRule: variable = Hct1
global_par_Hct1 = x(9);
% rateRule: variable = mass
global_par_mass = x(10);
% rateRule: variable = ORI
global_par_ORI = x(11);
% rateRule: variable = BUD
global_par_BUD = x(12);
% rateRule: variable = SPN
global_par_SPN = x(13);

%Event: id=Event_detection_for_END_M
	event_Event_detection_for_END_M=global_par_SPN >= 1;

	if(event_Event_detection_for_END_M) 
		global_par_END_M=time;
	end

%Event: id=Event_detection_for_Cell_Division_and_BUD_SPN_reset
	event_Event_detection_for_Cell_Division_and_BUD_SPN_reset=global_par_Clb2 < 0.3;

	if(event_Event_detection_for_Cell_Division_and_BUD_SPN_reset) 
		global_par_mass=exp((-1)*global_par_mu*global_par_D)*global_par_mass;
		global_par_BUD=0;
		global_par_SPN=0;
	end

%Event: id=Event_detection_for_START_S
	event_Event_detection_for_START_S=global_par_ORI > 1;

	if(event_Event_detection_for_START_S) 
		global_par_START_S=time;
		global_par_END_M=time+1000;
	end

%Event: id=Event_detection_for_ORI_reset
	event_Event_detection_for_ORI_reset=(global_par_Clb2+global_par_Clb5) < 0.2;

	if(event_Event_detection_for_ORI_reset) 
		global_par_ORI=0;
	end

	xdot=zeros(13,1);
	% rateRule: variable = Cln2
	xdot(1) = global_par_mass*(global_par_ks_n2+global_par_ks_n2_*global_par_SBF)-global_par_kd_n2*global_par_Cln2;
	% rateRule: variable = Clb2_T
	xdot(2) = global_par_mass*(global_par_ks_b2+global_par_ks_b2_*global_par_Mcm1)-global_par_Vd_b2*global_par_Clb2_T;
	% rateRule: variable = Clb5_T
	xdot(3) = global_par_mass*(global_par_ks_b5+global_par_ks_b5_*global_par_MBF)-global_par_Vd_b5*global_par_Clb5_T;
	% rateRule: variable = Sic1_T
	xdot(4) = (global_par_ks_c1+global_par_ks_c1_*global_par_Swi5)-global_par_Sic1_T*(global_par_kd1_c1+global_par_Vd2_c1/(global_par_Jd2_c1+global_par_Sic1_T));
	% rateRule: variable = Clb2_Sic1
	xdot(5) = global_par_kas_b2*global_par_Clb2*global_par_Sic1-global_par_Clb2_Sic1*(global_par_kdi_b2+global_par_Vd_b2+global_par_kd1_c1+global_par_Vd2_c1/(global_par_Jd2_c1+global_par_Sic1_T));
	% rateRule: variable = Clb5_Sic1
	xdot(6) = global_par_kas_b5*global_par_Clb5*global_par_Sic1-global_par_Clb5_Sic1*(global_par_kdi_b5+global_par_Vd_b5+global_par_kd1_c1+global_par_Vd2_c1/(global_par_Jd2_c1+global_par_Sic1_T));
	% rateRule: variable = Cdc20_T
	xdot(7) = (global_par_ks_20+global_par_ks_20_*global_par_Clb2)-global_par_kd_20*global_par_Cdc20_T;
	% rateRule: variable = Cdc20
	xdot(8) = global_par_ka_20*(global_par_Cdc20_T-global_par_Cdc20)-global_par_Cdc20*(global_par_Vi_20+global_par_kd_20);
	% rateRule: variable = Hct1
	xdot(9) = (global_par_ka_t1+global_par_ka_t1_*global_par_Cdc20)*(global_par_Hct1_T-global_par_Hct1)/((global_par_Ja_t1+global_par_Hct1_T)-global_par_Hct1)-global_par_Vi_t1*global_par_Hct1/(global_par_Ji_t1+global_par_Hct1);
	% rateRule: variable = mass
	xdot(10) = global_par_mu*global_par_mass;
	% rateRule: variable = ORI
	xdot(11) = global_par_ks_ori*(global_par_Clb5+global_par_epsilonori_b2*global_par_Clb2)-global_par_kd_ori*global_par_ORI;
	% rateRule: variable = BUD
	xdot(12) = global_par_ks_bud*(global_par_Cln2+global_par_Cln3+global_par_epsilonbud_b5*global_par_Clb5)-global_par_kd_bud*global_par_BUD;
	% rateRule: variable = SPN
	xdot(13) = global_par_ks_spn*global_par_Clb2/(global_par_J_spn+global_par_Clb2)-global_par_kd_spn*global_par_SPN;
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


