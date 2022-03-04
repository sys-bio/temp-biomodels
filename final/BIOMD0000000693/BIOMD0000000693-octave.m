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
% Model name = Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres
%
% is http://identifiers.org/biomodels.db/MODEL7817907010
% hasInstance http://identifiers.org/kegg.drug/D00775
% hasInstance http://identifiers.org/biomodels.db/MODEL7817907010
% hasInstance http://identifiers.org/modeldb/105528
% hasInstance http://identifiers.org/go/GO:0022832
% hasInstance http://identifiers.org/go/GO:0042493
% hasInstance http://identifiers.org/doid/DOID:332
% hasInstance http://identifiers.org/bto/BTO:0001103
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/go/GO:0001508
% isDescribedBy http://identifiers.org/pubmed/18068197
% is http://identifiers.org/biomodels.db/BIOMD0000000693
%


function main()
%Initial conditions vector
	x0=zeros(36,1);
	x0(28) = -75.0;
	x0(29) = 0.0;
	x0(30) = 1.0;
	x0(31) = 0.1;
	x0(32) = -70.0;
	x0(33) = 0.0;
	x0(34) = 0.1;
	x0(35) = 0.15;
	x0(36) = 200.0;
	x0(1) = -75.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.1;
	x0(5) = -70.0;
	x0(6) = 0.0;
	x0(7) = 0.1;
	x0(8) = 0.15;
	x0(9) = 200.0;
	x0(10) = 0.0;
	x0(11) = -0.333333333333333;
	x0(12) = -0.0716677369048711;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = -2.1E-4;
	x0(16) = 0.0;
	x0(17) = 0.230675848267876;
	x0(18) = 13.0160326809795;
	x0(19) = 0.038137484704699;
	x0(20) = 0.00543709940740284;
	x0(21) = 0.262861215247374;
	x0(22) = 0.467439960739393;
	x0(23) = 0.286670947619484;
	x0(24) = -0.03;
	x0(25) = 0.099925;
	x0(26) = 0.06;
	x0(27) = 0.039925;


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

% Compartment: id = Skeletal_Muscle_Cells, name = Skeletal Muscle Cells, constant
	compartment_Skeletal_Muscle_Cells=1.0;
% Parameter:   id =  gNa_max, name = gNa_max
	global_par_gNa_max=0.9;
% Parameter:   id =  gcabar, name = gcabar
	global_par_gcabar=0.05;
% Parameter:   id =  gk_max, name = gk_max
	global_par_gk_max=0.42;
% Parameter:   id =  gL_max, name = gL_max
	global_par_gL_max=0.0024;
% Parameter:   id =  gKca, name = gKca
	global_par_gKca=0.5;
% Parameter:   id =  ENa, name = ENa
	global_par_ENa=50.0;
% Parameter:   id =  EK, name = EK
	global_par_EK=-70.0;
% Parameter:   id =  EL, name = EL
	global_par_EL=-75.0;
% Parameter:   id =  ECa, name = ECa
	global_par_ECa=50.0;
% Parameter:   id =  En, name = En
	global_par_En=-40.0;
% Parameter:   id =  Em, name = Em
	global_par_Em=-42.0;
% Parameter:   id =  Eh, name = Eh
	global_par_Eh=-41.0;
% Parameter:   id =  Ct, name = Ct
	global_par_Ct=0.04;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=0.009;
% Parameter:   id =  Rs, name = Rs
	global_par_Rs=15.0;
% Parameter:   id =  Am, name = Am
	global_par_Am=200.0;
% Parameter:   id =  alpha_n_max, name = alpha_n_max
	global_par_alpha_n_max=0.0229;
% Parameter:   id =  beta_n_max, name = beta_n_max
	global_par_beta_n_max=0.09616;
% Parameter:   id =  v_alpha_m, name = v_alpha_m
	global_par_v_alpha_m=10.0;
% Parameter:   id =  v_alpha_n, name = v_alpha_n
	global_par_v_alpha_n=7.0;
% Parameter:   id =  v_alpha_h, name = v_alpha_h
	global_par_v_alpha_h=14.7;
% Parameter:   id =  alpha_m_max, name = alpha_m_max
	global_par_alpha_m_max=0.208;
% Parameter:   id =  beta_m_max, name = beta_m_max
	global_par_beta_m_max=2.081;
% Parameter:   id =  v_beta_n, name = v_beta_n
	global_par_v_beta_n=40.0;
% Parameter:   id =  v_beta_m, name = v_beta_m
	global_par_v_beta_m=18.0;
% Parameter:   id =  v_beta_h, name = v_beta_h
	global_par_v_beta_h=7.6;
% Parameter:   id =  alpha_h_max, name = alpha_h_max
	global_par_alpha_h_max=0.0156;
% Parameter:   id =  beta_h_max, name = beta_h_max
	global_par_beta_h_max=3.382;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.18;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.5E-6;
% Parameter:   id =  kpmca, name = kpmca
	global_par_kpmca=0.2;
% Parameter:   id =  pleak, name = pleak
	global_par_pleak=5.0E-4;
% Parameter:   id =  kserca, name = kserca
	global_par_kserca=0.4;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.84;
% Parameter:   id =  d2, name = d2
	global_par_d2=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.18;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.011;
% Parameter:   id =  bbar, name = bbar
	global_par_bbar=0.28;
% Parameter:   id =  abar, name = abar
	global_par_abar=0.48;
% Parameter:   id =  fer, name = fer
	global_par_fer=0.01;
% Parameter:   id =  vcytver, name = vcytver
	global_par_vcytver=5.0;
% Parameter:   id =  fcyt, name = fcyt
	global_par_fcyt=0.01;
% Parameter:   id =  Stimulus_Period, name = Stimulus_Period
	global_par_Stimulus_Period=50.0;
% Parameter:   id =  Stimulus_Magnitude, name = Stimulus_Magnitude
	global_par_Stimulus_Magnitude=2.0;
% Parameter:   id =  Stimulus_Start, name = Stimulus_Start
	global_par_Stimulus_Start=5.0;
% Parameter:   id =  Stimulus_Duration, name = Stimulus_Duration
	global_par_Stimulus_Duration=1.0;
% Parameter:   id =  alp, name = alp
% Parameter:   id =  beta, name = beta
% Parameter:   id =  tau, name = tau
% Parameter:   id =  ooinf, name = ooinf
% Parameter:   id =  dinf, name = dinf
% Parameter:   id =  taud, name = taud
% Parameter:   id =  alphad, name = alphad
% Parameter:   id =  betad, name = betad
% Parameter:   id =  gca, name = gca
% assignmentRule: variable = IK
	x(15)=global_par_gk_max*x(4)^4*(x(1)-global_par_EK);
% assignmentRule: variable = INa
	x(10)=global_par_gNa_max*x(2)^3*x(3)*(x(1)-global_par_ENa);
% assignmentRule: variable = Stimulus
	x(16)=piecewise(global_par_Stimulus_Magnitude, (time >= global_par_Stimulus_Start) && ((time-global_par_Stimulus_Start-floor((time-global_par_Stimulus_Start)/global_par_Stimulus_Period)*global_par_Stimulus_Period) < global_par_Stimulus_Duration), 0);
% assignmentRule: variable = IL
	x(14)=global_par_gL_max*(x(1)-global_par_EL);
% assignmentRule: variable = IT
	x(11)=(x(1)-x(5))/global_par_Rs;
% assignmentRule: variable = beta_n
	x(17)=global_par_beta_n_max*exp((global_par_En-x(1))/global_par_v_beta_n);
% assignmentRule: variable = alpha_n
	x(20)=global_par_alpha_n_max*(x(1)-global_par_En)/(1-exp((global_par_En-x(1))/global_par_v_alpha_n));
% assignmentRule: variable = beta_h
	x(19)=global_par_beta_h_max/(1+exp((global_par_Eh-x(1))/global_par_v_beta_h));
% assignmentRule: variable = beta_m
	x(18)=global_par_beta_m_max*exp((global_par_Em-x(1))/global_par_v_beta_m);
% assignmentRule: variable = alpha_m
	x(21)=global_par_alpha_m_max*(x(1)-global_par_Em)/(1-exp((global_par_Em-x(1))/global_par_v_alpha_m));
% assignmentRule: variable = alpha_h
	x(22)=global_par_alpha_h_max*exp((global_par_Eh-x(1))/global_par_v_alpha_m);
% assignmentRule: variable = w
	x(23)=x(8)^5/(x(8)^5+global_par_kd^5);
% assignmentRule: variable = IKCa
	x(12)=global_par_gKca*x(7)*x(23)*(x(1)-global_par_EK);
% assignmentRule: variable = jleak
	x(25)=global_par_pleak*(x(9)-x(8));
% assignmentRule: variable = jserca
	x(26)=global_par_kserca*x(8);
% assignmentRule: variable = jer
	x(27)=x(25)-x(26);
% assignmentRule: variable = alp
	global_par_alp=global_par_abar/(1+global_par_k1*exp((-2)*global_par_d1*96.485*x(1)/8.313424/310)/x(8));
% assignmentRule: variable = beta
	global_par_beta=global_par_bbar/(1+x(8)/(global_par_k2*exp((-2)*global_par_d2*96.485*x(1)/8.313424/310)));
% assignmentRule: variable = tau
	global_par_tau=1/(global_par_alp+global_par_beta);
% assignmentRule: variable = ooinf
	global_par_ooinf=global_par_alp*global_par_tau;
% assignmentRule: variable = dinf
	global_par_dinf=1/(1+exp((-24.6-x(1))/11.3));
% assignmentRule: variable = taud
	global_par_taud=80/1/cosh((-0.031)*(x(1)+37.1));
% assignmentRule: variable = alphad
	global_par_alphad=global_par_dinf/global_par_taud;
% assignmentRule: variable = betad
	global_par_betad=(1-global_par_dinf)/global_par_taud;
% assignmentRule: variable = gca
	global_par_gca=(-global_par_gcabar)*x(1)/(exp(0.117*x(1))-1);
% assignmentRule: variable = ICa
	x(13)=global_par_gca*x(6)^2;
% assignmentRule: variable = jmem
	x(24)=-(global_par_alpha*x(13)+global_par_kpmca*x(8));
% rateRule: variable = Vm
x(1) = x(28);
% rateRule: variable = m
x(2) = x(29);
% rateRule: variable = h
x(3) = x(30);
% rateRule: variable = n
x(4) = x(31);
% rateRule: variable = Vt
x(5) = x(32);
% rateRule: variable = d
x(6) = x(33);
% rateRule: variable = o
x(7) = x(34);
% rateRule: variable = c
x(8) = x(35);
% rateRule: variable = cer
x(9) = x(36);

	xdot=zeros(36,1);
	% rateRule: variable = Vm
	xdot(28) = (x(16)-(x(10)+x(13)+x(15)+x(14)+x(11)+x(12)))/global_par_Cm;
	% rateRule: variable = m
	xdot(29) = x(21)*(1-x(2))-x(18)*x(2);
	% rateRule: variable = h
	xdot(30) = x(22)*(1-x(3))-x(19)*x(3);
	% rateRule: variable = n
	xdot(31) = x(20)*(1-x(4))-x(17)*x(4);
	% rateRule: variable = Vt
	xdot(32) = (x(1)-x(5))/(global_par_Rs*global_par_Ct);
	% rateRule: variable = d
	xdot(33) = (1-x(6))*global_par_alphad-x(6)*global_par_betad;
	% rateRule: variable = o
	xdot(34) = (global_par_ooinf-x(7))/global_par_tau;
	% rateRule: variable = c
	xdot(35) = global_par_fcyt*(x(24)+x(27));
	% rateRule: variable = cer
	xdot(36) = (-global_par_fer)*global_par_vcytver*x(27);
	
% Species:   id = Vm, name = Vm, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = m, name = m, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = h, name = h, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = n, name = n, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Vt, name = Vt, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = d, name = d, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = o, name = o, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = c, name = c, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = cer, name = cer, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = INa, name = INa, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = IT, name = IT, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = IKCa, name = IKCa, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = ICa, name = ICa, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = IL, name = IL, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = IK, name = IK, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Stimulus, name = Stimulus, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = beta_n, name = beta_n, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = beta_m, name = beta_m, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = beta_h, name = beta_h, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = alpha_n, name = alpha_n, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = alpha_m, name = alpha_m, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = alpha_h, name = alpha_h, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = w, name = w, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = jmem, name = jmem, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = jleak, name = jleak, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = jserca, name = jserca, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = jer, name = jer, involved in a rule 	xdot(27) = x(27);
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


