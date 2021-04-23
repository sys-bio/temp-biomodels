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
% Model name = Overgaard2007_PDmodel_IL21
%
% is http://identifiers.org/biomodels.db/MODEL0911110000
% is http://identifiers.org/biomodels.db/BIOMD0000000238
% isDescribedBy http://identifiers.org/pubmed/17009101
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 3.5;
	x0(2) = 38.785;
	x0(3) = 0.0;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  M, name = Metabolic rate
% Parameter:   id =  T, name = Temperature
% Parameter:   id =  BR, name = Bound Receptor
% Parameter:   id =  E_slow, name = Slow Effect
% Parameter:   id =  E_fast, name = Fast Effect
% Parameter:   id =  f_prime, name = Priming
% Parameter:   id =  T_a, name = ambient temperature
	global_par_T_a=21.0;
% Parameter:   id =  T_b, name = basiline temperature
	global_par_T_b=38.0;
% Parameter:   id =  delta_T, name = temperature difference
	global_par_delta_T=1.57;
% Parameter:   id =  kinc, name = kinc
	global_par_kinc=0.0258;
% Parameter:   id =  tdose1, name = tdose1
	global_par_tdose1=24.0;
% Parameter:   id =  tdose2, name = tdose2
	global_par_tdose2=72.0;
% Parameter:   id =  tdose3, name = tdose3
	global_par_tdose3=120.0;
% Parameter:   id =  M_c, name = circadian rhythm
% Parameter:   id =  t_day, name = t_day
	global_par_t_day=17.5;
% Parameter:   id =  t_night, name = t_night
	global_par_t_night=6.73;
% Parameter:   id =  tprime, name = tprime
% Parameter:   id =  day_length, name = day_length
	global_par_day_length=86400.0;
% Parameter:   id =  km, name = rate constant Metabolism
	global_par_km=1.1375;
% Parameter:   id =  c, name = specific heat constant
	global_par_c=3.47;
% Parameter:   id =  k, name = heat conductance
% Parameter:   id =  pEtot, name = pEtot
	global_par_pEtot=0.144;
% Parameter:   id =  kR, name = kR
	global_par_kR=5.35;
% Parameter:   id =  AMT_dose, name = AMT_dose
	global_par_AMT_dose=3.0;
% Parameter:   id =  pEf1, name = pEf1
	global_par_pEf1=1.0;
% Parameter:   id =  pEs1, name = pEs1
	global_par_pEs1=0.2;
% Parameter:   id =  pEf2, name = pEf2
	global_par_pEf2=3.57;
% Parameter:   id =  pEs2, name = pEs2
	global_par_pEs2=2.43;
% Parameter:   id =  pEf3, name = pEf3
	global_par_pEf3=8.0;
% Parameter:   id =  pEs3, name = pEs3
	global_par_pEs3=50.0;
% Parameter:   id =  f2_drug, name = f2_drug
% Parameter:   id =  T_day, name = T_day
% Parameter:   id =  T_night, name = T_night
% Parameter:   id =  kb, name = heat conductance baselinevalue
% Parameter:   id =  M_b, name = M_b
	global_par_M_b=3.0;
% Parameter:   id =  M_day, name = M_day
% Parameter:   id =  M_night, name = M_night
% Parameter:   id =  t_prime, name = t_prime
	global_par_t_prime=45.12;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.2229166;
% Parameter:   id =  delta_high_dose, name = delta_high_dose
	global_par_delta_high_dose=1.0;
% Parameter:   id =  M_night_baseline, name = M_night_baseline
% Parameter:   id =  gNsTs1, name = gNsTs1
% Parameter:   id =  gNsTs2, name = gNsTs2
% Parameter:   id =  gNsTs3, name = gNsTs3
% Parameter:   id =  gNfTf1, name = gNfTf1
% Parameter:   id =  gNfTf2, name = gNfTf2
% Parameter:   id =  gNfTf3, name = gNfTf3
% Parameter:   id =  Ns, name = No. of transit compartment (slow)
	global_par_Ns=4.0;
% Parameter:   id =  Nf, name = No. of transit compartment (fast)
	global_par_Nf=4.0;
% Parameter:   id =  Ts, name = mean total delay (slow)
	global_par_Ts=2.45;
% Parameter:   id =  Tf, name = mena total delay (fast)
	global_par_Tf=0.368;
% Parameter:   id =  X1, name = X1
% Parameter:   id =  X2, name = X2
% Parameter:   id =  X3, name = X3
% Parameter:   id =  Kf, name = Kf
% Parameter:   id =  Ks, name = Ks
% rateRule: variable = M
global_par_M = x(1);
% rateRule: variable = T
global_par_T = x(2);
% rateRule: variable = BR
global_par_BR = x(3);
% assignmentRule: variable = tprime
	global_par_tprime=time*3600*1-floor(time*3600*1/global_par_day_length)*global_par_day_length;
% assignmentRule: variable = kb
	global_par_kb=global_par_M_b/(global_par_T_b-global_par_T_a);
% assignmentRule: variable = T_day
	global_par_T_day=global_par_T_b+global_par_delta_T/2;
% assignmentRule: variable = M_day
	global_par_M_day=(global_par_kb+global_par_kinc*(global_par_T_day-global_par_T_b))*(global_par_T_day-global_par_T_a);
% assignmentRule: variable = f_prime
	global_par_f_prime=global_par_delta_high_dose*(1+exp((-global_par_alpha)*(time-(global_par_tdose1+global_par_t_prime))))^(-1);
% assignmentRule: variable = T_night
	global_par_T_night=global_par_T_b-global_par_delta_T/2;
% assignmentRule: variable = M_night_baseline
	global_par_M_night_baseline=(global_par_kb+global_par_kinc*(global_par_T_night-global_par_T_b))*(global_par_T_night-global_par_T_a);
% assignmentRule: variable = M_night
	global_par_M_night=(1-global_par_f_prime)*global_par_M_night_baseline+global_par_f_prime*global_par_M_day;
% assignmentRule: variable = M_c
	global_par_M_c=piecewise(global_par_M_night, ((global_par_tprime/3600) >= global_par_t_night) && ((global_par_tprime/3600) < global_par_t_day), global_par_M_day);
% assignmentRule: variable = f2_drug
	global_par_f2_drug=0;
% assignmentRule: variable = k
	global_par_k=global_par_kb+global_par_kinc*(global_par_T-global_par_T_b*(1+global_par_pEtot*global_par_BR))+global_par_f2_drug;
% assignmentRule: variable = X1
	global_par_X1=(time-global_par_tdose1)/24;
% assignmentRule: variable = X2
	global_par_X2=(time-global_par_tdose2)/24;
% assignmentRule: variable = X3
	global_par_X3=(time-global_par_tdose3)/24;
% assignmentRule: variable = Kf
	global_par_Kf=global_par_Nf/global_par_Tf;
% assignmentRule: variable = Ks
	global_par_Ks=global_par_Ns/global_par_Ts;
% assignmentRule: variable = gNsTs1
	global_par_gNsTs1=piecewise(global_par_Ks^global_par_Ns/6*exp((-global_par_Ks)*global_par_X1)*global_par_X1^(global_par_Ns-1), global_par_X1 > 0, 0);
% assignmentRule: variable = gNsTs2
	global_par_gNsTs2=piecewise(global_par_Ks^global_par_Ns/6*exp((-global_par_Ks)*global_par_X2)*global_par_X2^(global_par_Ns-1), global_par_X2 > 0, 0);
% assignmentRule: variable = gNsTs3
	global_par_gNsTs3=piecewise(global_par_Ks^global_par_Ns/6*exp((-global_par_Ks)*global_par_X3)*global_par_X3^(global_par_Ns-1), global_par_X3 > 0, 0);
% assignmentRule: variable = gNfTf1
	global_par_gNfTf1=piecewise(global_par_Kf^global_par_Nf/6*exp((-global_par_Kf)*global_par_X1)*global_par_X1^(global_par_Nf-1), global_par_X1 > 0, 0);
% assignmentRule: variable = gNfTf2
	global_par_gNfTf2=piecewise(global_par_Kf^global_par_Nf/6*exp((-global_par_Kf)*global_par_X2)*global_par_X2^(global_par_Nf-1), global_par_X2 > 0, 0);
% assignmentRule: variable = gNfTf3
	global_par_gNfTf3=piecewise(global_par_Kf^global_par_Nf/6*exp((-global_par_Kf)*global_par_X3)*global_par_X3^(global_par_Nf-1), global_par_X3 > 0, 0);
% assignmentRule: variable = E_slow
	global_par_E_slow=global_par_AMT_dose*global_par_pEs2*(global_par_gNsTs1+global_par_gNsTs2+global_par_gNsTs3);
% assignmentRule: variable = E_fast
	global_par_E_fast=global_par_pEf2*(global_par_gNfTf1+global_par_gNfTf2+global_par_gNfTf3);

	xdot=zeros(3,1);
	% rateRule: variable = M
	xdot(1) = (-global_par_km)*(global_par_M-global_par_M_c);
	% rateRule: variable = T
	xdot(2) = global_par_c^(-1)*(global_par_M-global_par_k*(global_par_T-global_par_T_a));
	% rateRule: variable = BR
	xdot(3) = global_par_f_prime*(global_par_E_slow+global_par_E_fast)*(1-global_par_BR)-global_par_kR*global_par_BR;
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


