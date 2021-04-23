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
% Model name = Fridlyand2003_Calcium_flux
%
% is http://identifiers.org/biomodels.db/MODEL0928773489
% is http://identifiers.org/biomodels.db/BIOMD0000000059
% isDescribedBy http://identifiers.org/pubmed/12644446
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(7) = 0.00123;
	x0(8) = -60.9;
	x0(1) = 0.085;
	x0(2) = 22.8;
	x0(3) = 0.33;
	x0(4) = 9858.0;
	x0(5) = 932.1;
	x0(6) = 3067.9;


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

% Compartment: id = Cytoplasm, name = cytoplasm, constant
	compartment_Cytoplasm=7.64E-13;
% Compartment: id = ER, name = endoplasmic reticulum, constant
	compartment_ER=2.8E-13;
% Parameter:   id =  n, name = n
% Parameter:   id =  V, name = V
% Parameter:   id =  Vca, name = Vca
% Parameter:   id =  TV, name = TV
	global_par_TV=26.73;
% Parameter:   id =  Ca_ec, name = Ca_ec
	global_par_Ca_ec=2600.0;
% Parameter:   id =  Vk, name = Vk
% Parameter:   id =  K_ec, name = K_ec
	global_par_K_ec=8000.0;
% Parameter:   id =  K_cyt, name = K_cyt
	global_par_K_cyt=132400.0;
% Parameter:   id =  Vna, name = Vna
% Parameter:   id =  Na_ec, name = Na_ec
	global_par_Na_ec=140000.0;
% Parameter:   id =  Vnaca, name = Vnaca
% Parameter:   id =  pvca, name = pvca
% Parameter:   id =  Vcah, name = Vcah
	global_par_Vcah=-19.0;
% Parameter:   id =  Kcah, name = Kcah
	global_par_Kcah=9.5;
% Parameter:   id =  f_CRAN, name = f_CRAN
% Parameter:   id =  gm_CRAN, name = gm_CRAN
	global_par_gm_CRAN=0.7;
% Parameter:   id =  Kcar, name = Kcar
	global_par_Kcar=200.0;
% Parameter:   id =  p_CRAN, name = p_CRAN
% Parameter:   id =  V_CRAN, name = V_CRAN
	global_par_V_CRAN=0.0;
% Parameter:   id =  pna, name = pna
% Parameter:   id =  f_5, name = f_5
% Parameter:   id =  f5_ast, name = f5_ast
	global_par_f5_ast=0.002;
% Parameter:   id =  b_5, name = b_5
% Parameter:   id =  b5_ast, name = b5_ast
	global_par_b5_ast=0.03;
% Parameter:   id =  F1, name = F1
% Parameter:   id =  f_1, name = f_1
	global_par_f_1=2.5E-10;
% Parameter:   id =  F4, name = F4
% Parameter:   id =  f_4, name = f_4
	global_par_f_4=1.5E-8;
% Parameter:   id =  F5, name = F5
% Parameter:   id =  B2, name = B2
% Parameter:   id =  b_2, name = b_2
	global_par_b_2=1.0E-4;
% Parameter:   id =  B3, name = B3
% Parameter:   id =  b_3, name = b_3
	global_par_b_3=1.72E-17;
% Parameter:   id =  B4, name = B4
% Parameter:   id =  b_4, name = b_4
	global_par_b_4=2.0E-4;
% Parameter:   id =  P, name = P
	global_par_P=4950.0;
% Parameter:   id =  B6, name = B6
% Parameter:   id =  b_6, name = b_6
	global_par_b_6=6.0E-7;
% Parameter:   id =  Ksup, name = Ksup
	global_par_Ksup=150400.0;
% Parameter:   id =  D, name = D
% Parameter:   id =  f_2, name = f_2
	global_par_f_2=10.0;
% Parameter:   id =  f_3, name = f_3
	global_par_f_3=0.172;
% Parameter:   id =  f_6, name = f_6
	global_par_f_6=11.5;
% Parameter:   id =  b_1, name = b_1
	global_par_b_1=100.0;
% Parameter:   id =  f_Ca, name = f_Ca
% Parameter:   id =  Kkca, name = Kkca
	global_par_Kkca=0.1;
% Parameter:   id =  Okatp, name = Okatp
% Parameter:   id =  Kdd, name = Kdd
	global_par_Kdd=17.0;
% Parameter:   id =  Ktd, name = Ktd
	global_par_Ktd=26.0;
% Parameter:   id =  Ktt, name = Ktt
	global_par_Ktt=1.0;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=-14.0;
% Parameter:   id =  Sn, name = Sn
	global_par_Sn=7.0;
% Parameter:   id =  tau_n, name = tau_n
% Parameter:   id =  c, name = c
	global_par_c=20.0;
% Parameter:   id =  Vtau, name = Vtau
	global_par_Vtau=-75.0;
% Parameter:   id =  a, name = a
	global_par_a=65.0;
% Parameter:   id =  b, name = b
	global_par_b=20.0;
% Parameter:   id =  I_Vca, name = I_Vca
% Parameter:   id =  gmvca, name = gmvca
	global_par_gmvca=770.0;
% Parameter:   id =  I_CaPump, name = I_CaPump
% Parameter:   id =  Pmcap, name = Pmcap
	global_par_Pmcap=2000.0;
% Parameter:   id =  Kcap, name = Kcap
	global_par_Kcap=0.1;
% Parameter:   id =  I_NaCa, name = I_NaCa
% Parameter:   id =  gnaca, name = gnaca
	global_par_gnaca=271.0;
% Parameter:   id =  Knaca, name = Knaca
	global_par_Knaca=0.75;
% Parameter:   id =  I_CRAN, name = I_CRAN
% Parameter:   id =  I_Na, name = I_Na
% Parameter:   id =  gmna, name = gmna
	global_par_gmna=1200.0;
% Parameter:   id =  I_NaK, name = I_NaK
% Parameter:   id =  Pnak, name = Pnak
	global_par_Pnak=600.0;
% Parameter:   id =  I_KDr, name = I_KDr
% Parameter:   id =  gmKDr, name = gmKDr
	global_par_gmKDr=3000.0;
% Parameter:   id =  I_KCa, name = I_KCa
% Parameter:   id =  gmkca, name = gmkca
	global_par_gmkca=130.0;
% Parameter:   id =  I_KATP, name = I_KATP
% Parameter:   id =  gmkatp, name = gmkatp
	global_par_gmkatp=24000.0;
% Parameter:   id =  Jerp, name = Jerp
% Parameter:   id =  Pcaer, name = Pcaer
% Warning parameter Pcaer is not constant, it should be controlled by a Rule and/or events
	global_par_Pcaer=0.105;
% Parameter:   id =  Kcarp, name = Kcarp
	global_par_Kcarp=0.5;
% Parameter:   id =  O_infinity, name = O_infinity
% Parameter:   id =  Krca, name = Krca
	global_par_Krca=0.077;
% Parameter:   id =  Kip3, name = Kip3
	global_par_Kip3=3.2;
% Parameter:   id =  Jout, name = Jout
% Parameter:   id =  Pleak, name = Pleak
	global_par_Pleak=1.0E-16;
% Parameter:   id =  Pip3, name = Pip3
	global_par_Pip3=1.2E-15;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=6158.0;
% Parameter:   id =  fi, name = fi
	global_par_fi=0.01;
% Parameter:   id =  F, name = Faraday's constant
	global_par_F=9.6485E16;
% Parameter:   id =  ksg, name = ksg
	global_par_ksg=1.0E-4;
% Parameter:   id =  fer, name = fer
	global_par_fer=0.03;
% Parameter:   id =  kip, name = IP3 production rate constant
	global_par_kip=3.0E-4;
% Parameter:   id =  Kipca, name = half activation cytosolic Ca
	global_par_Kipca=0.4;
% Parameter:   id =  kdip, name = IP3 degradation rate constant
	global_par_kdip=4.0E-5;
% Parameter:   id =  kadp, name = ATP production rate constant
	global_par_kadp=3.7E-4;
% Parameter:   id =  katpca, name = Ca dependent ATP consumption
	global_par_katpca=5.0E-5;
% Parameter:   id =  katp, name = Rate constant of ATP consumption
	global_par_katp=5.0E-5;
% assignmentRule: variable = ADP_cyt
	x(6)=4000-x(5);
% assignmentRule: variable = Vca
	global_par_Vca=global_par_TV/2*log(global_par_Ca_ec/x(1));
% assignmentRule: variable = Vk
	global_par_Vk=global_par_TV*log(global_par_K_ec/global_par_K_cyt);
% assignmentRule: variable = Vna
	global_par_Vna=global_par_TV*log(global_par_Na_ec/x(4));
% assignmentRule: variable = Vnaca
	global_par_Vnaca=global_par_TV*(3*log(global_par_Na_ec/x(4))-log(global_par_Ca_ec/x(1)));
% assignmentRule: variable = pvca
	global_par_pvca=1/(1+exp((global_par_Vcah-global_par_V)/global_par_Kcah));
% assignmentRule: variable = f_CRAN
	global_par_f_CRAN=(-global_par_gm_CRAN)/(1+exp((x(2)-global_par_Kcar)/3));
% assignmentRule: variable = p_CRAN
	global_par_p_CRAN=global_par_V-global_par_V_CRAN;
% assignmentRule: variable = pna
	global_par_pna=1/(1+exp((104+global_par_V)/8));
% assignmentRule: variable = f_5
	global_par_f_5=global_par_f5_ast*exp(global_par_V/(2*global_par_TV));
% assignmentRule: variable = b_5
	global_par_b_5=global_par_b5_ast*exp((-global_par_V)/(2*global_par_TV));
% assignmentRule: variable = F1
	global_par_F1=global_par_f_1*x(4)^3;
% assignmentRule: variable = F4
	global_par_F4=global_par_f_4*global_par_K_ec^2;
% assignmentRule: variable = F5
	global_par_F5=global_par_f_5*x(5);
% assignmentRule: variable = B2
	global_par_B2=global_par_b_2*x(6);
% assignmentRule: variable = B3
	global_par_B3=global_par_b_3*global_par_Na_ec^3;
% assignmentRule: variable = B4
	global_par_B4=global_par_b_4*global_par_P;
% assignmentRule: variable = B6
	global_par_B6=global_par_b_6*global_par_Ksup^2;
% assignmentRule: variable = D
	global_par_D=global_par_f_2*global_par_f_3*global_par_F4*global_par_F5*global_par_f_6+global_par_b_1*global_par_f_3*global_par_F4*global_par_F5*global_par_f_6+global_par_b_1*global_par_B2*global_par_F4*global_par_F5*global_par_f_6+global_par_b_1*global_par_B2*global_par_B3*global_par_F5*global_par_f_6+global_par_b_1*global_par_B2*global_par_B3*global_par_B4*global_par_f_6+global_par_b_1*global_par_B2*global_par_B3*global_par_B4*global_par_b_5;
% assignmentRule: variable = f_Ca
	global_par_f_Ca=x(1)^4/(x(1)^4+global_par_Kkca^4);
% assignmentRule: variable = Okatp
	global_par_Okatp=(0.08*(1+0.33*x(6)/global_par_Kdd)+0.89*(0.165*x(6)/global_par_Kdd)^2)/((1+0.165*x(6)/global_par_Kdd)^2*(1+0.135*x(6)/global_par_Ktd+0.05*x(5)/global_par_Ktt));
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((global_par_Vn-global_par_V)/global_par_Sn));
% assignmentRule: variable = tau_n
	global_par_tau_n=global_par_c/(exp((global_par_V-global_par_Vtau)/global_par_a)+exp((global_par_Vtau-global_par_V)/global_par_b));
% assignmentRule: variable = I_Vca
	global_par_I_Vca=global_par_gmvca*global_par_pvca*(global_par_V-global_par_Vca);
% assignmentRule: variable = I_CaPump
	global_par_I_CaPump=global_par_Pmcap*x(1)^2/(global_par_Kcap^2+x(1)^2);
% assignmentRule: variable = I_NaCa
	global_par_I_NaCa=global_par_gnaca*x(1)^5*(global_par_V-global_par_Vnaca)/(x(1)^5+global_par_Knaca^5);
% assignmentRule: variable = I_CRAN
	global_par_I_CRAN=global_par_f_CRAN*global_par_p_CRAN*(global_par_V-global_par_Vna);
% assignmentRule: variable = I_Na
	global_par_I_Na=global_par_gmna*global_par_pna*(global_par_V-global_par_Vna);
% assignmentRule: variable = I_NaK
	global_par_I_NaK=global_par_Pnak*(global_par_F1*global_par_f_2*global_par_f_3*global_par_F4*global_par_F5*global_par_f_6-global_par_b_1*global_par_B2*global_par_B3*global_par_B4*global_par_b_5*global_par_B6)/global_par_D;
% assignmentRule: variable = I_KDr
	global_par_I_KDr=global_par_gmKDr*global_par_n*(global_par_V-global_par_Vk);
% assignmentRule: variable = I_KCa
	global_par_I_KCa=global_par_gmkca*global_par_f_Ca*(global_par_V-global_par_Vk);
% assignmentRule: variable = I_KATP
	global_par_I_KATP=global_par_gmkatp*global_par_Okatp*(global_par_V-global_par_Vk);
% assignmentRule: variable = Jerp
	global_par_Jerp=global_par_Pcaer*x(1)^2/(x(1)^2+global_par_Kcarp^2);
% assignmentRule: variable = O_infinity
	global_par_O_infinity=x(1)*x(3)^3/((x(1)+global_par_Krca)*(x(3)^3+global_par_Kip3^3));
% assignmentRule: variable = Jout
	global_par_Jout=(global_par_Pleak+global_par_Pip3*global_par_O_infinity)*(x(2)-x(1));
% rateRule: variable = n
global_par_n = x(7);
% rateRule: variable = V
global_par_V = x(8);

% Reaction: id = Calcium_cyt_Ivca
	reaction_Calcium_cyt_Ivca=global_par_fi*(-global_par_I_Vca)/(2*global_par_F);

% Reaction: id = Calcium_cyt_Inaca
	reaction_Calcium_cyt_Inaca=global_par_fi*2*global_par_I_NaCa/(2*global_par_F);

% Reaction: id = Calcium_cyt_Icapump
	reaction_Calcium_cyt_Icapump=global_par_fi*2*global_par_I_CaPump/(2*global_par_F);

% Reaction: id = Calcium_cyt_Jerp
	reaction_Calcium_cyt_Jerp=compartment_Cytoplasm*global_par_Jerp;

% Reaction: id = Calcium_cyt_Jout
	reaction_Calcium_cyt_Jout=global_par_Jout;

% Reaction: id = Calcium_cyt_sequestration
	reaction_Calcium_cyt_sequestration=compartment_Cytoplasm*global_par_ksg*x(1);

% Reaction: id = IP3_synthesis
	reaction_IP3_synthesis=compartment_Cytoplasm*global_par_kip*x(1)^2/(x(1)^2+global_par_Kipca^2);

% Reaction: id = IP3_degradation
	reaction_IP3_degradation=compartment_Cytoplasm*global_par_kdip*x(3);

% Reaction: id = Na_Inaca
	reaction_Na_Inaca=3*global_par_I_NaCa/global_par_F;

% Reaction: id = Na_Inak
	reaction_Na_Inak=3*global_par_I_NaK/global_par_F;

% Reaction: id = Na_Ina
	reaction_Na_Ina=(-global_par_I_Na)/global_par_F;

% Reaction: id = Na_Icran
	reaction_Na_Icran=(-global_par_I_CRAN)/global_par_F;

% Reaction: id = ATP_production
	reaction_ATP_production=compartment_Cytoplasm*global_par_kadp*x(6);

% Reaction: id = ATP_NaKATPase
	reaction_ATP_NaKATPase=global_par_I_NaK/global_par_F;

% Reaction: id = ATP_Capump
	reaction_ATP_Capump=global_par_I_CaPump/global_par_F;

% Reaction: id = ATP_Jerp
	reaction_ATP_Jerp=compartment_Cytoplasm*global_par_Jerp/2;

% Reaction: id = ATP_Ca_dependent_consumption
	reaction_ATP_Ca_dependent_consumption=compartment_Cytoplasm*global_par_katpca*x(1)*x(5);

% Reaction: id = ATP_consumption
	reaction_ATP_consumption=compartment_Cytoplasm*global_par_katp*x(5);

	xdot=zeros(8,1);
	% rateRule: variable = n
	xdot(7) = (global_par_n_infinity-global_par_n)/global_par_tau_n;
	% rateRule: variable = V
	xdot(8) = (0-(global_par_I_Vca+global_par_I_CaPump+global_par_I_NaCa+global_par_I_CRAN+global_par_I_Na+global_par_I_NaK+global_par_I_KDr+global_par_I_KCa+global_par_I_KATP))/global_par_Cm;
	
% Species:   id = Ca_cyt, name = Cytosolic Calcium, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_Calcium_cyt_Ivca) + ( 1.0 * reaction_Calcium_cyt_Inaca) + (-1.0 * reaction_Calcium_cyt_Icapump) + (-0.01 * reaction_Calcium_cyt_Jerp) + ( 0.01 * reaction_Calcium_cyt_Jout) + (-1.0 * reaction_Calcium_cyt_sequestration));
	
% Species:   id = Ca_er, name = ER Calcium, affected by kineticLaw
	xdot(2) = (1/(compartment_ER))*(( 0.03 * reaction_Calcium_cyt_Jerp) + (-0.03 * reaction_Calcium_cyt_Jout));
	
% Species:   id = IP3_cyt, name = Cytosolic IP3, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_IP3_synthesis) + (-1.0 * reaction_IP3_degradation));
	
% Species:   id = Na_cyt, name = Cytosolic Sodium, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_Na_Inaca) + (-1.0 * reaction_Na_Inak) + ( 1.0 * reaction_Na_Ina) + ( 1.0 * reaction_Na_Icran));
	
% Species:   id = ATP_cyt, name = Cytosolic ATP, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_ATP_production) + (-1.0 * reaction_ATP_NaKATPase) + (-1.0 * reaction_ATP_Capump) + (-1.0 * reaction_ATP_Jerp) + (-1.0 * reaction_ATP_Ca_dependent_consumption) + (-1.0 * reaction_ATP_consumption));
	
% Species:   id = ADP_cyt, name = Cytosolic ADP, defined in a rule 	xdot(6) = x(6);
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


