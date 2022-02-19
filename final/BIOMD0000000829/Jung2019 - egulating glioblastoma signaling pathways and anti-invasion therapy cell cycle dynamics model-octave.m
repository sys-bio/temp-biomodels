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
% Model name = Jung2019 - egulating glioblastoma signaling pathways and anti-invasion therapy cell cycle dynamics model
%
% is http://identifiers.org/biomodels.db/MODEL1910020001
% is http://identifiers.org/biomodels.db/BIOMD0000000829
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 6.64215616170866E-22;
	x0(2) = 0.0;
	x0(3) = 3.05539183438598E-21;
	x0(4) = 2.07567380053396E-21;
	x0(5) = 4.58308775157897E-21;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 0.1;
	x0(9) = 1.0;
	x0(10) = 0.45;
	x0(11) = 2.95;
	x0(12) = 0.85;
	x0(13) = 0.6;


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
% Parameter:   id =  myu_G, name = myu_G
	global_par_myu_G=0.5;
% Parameter:   id =  l_1, name = l_1
	global_par_l_1=4.0;
% Parameter:   id =  l_2, name = l_2
	global_par_l_2=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.6;
% Parameter:   id =  l_3, name = l_3
	global_par_l_3=4.0;
% Parameter:   id =  l_4, name = l_4
	global_par_l_4=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;
% Parameter:   id =  S_1, name = S_1
	global_par_S_1=0.2;
% Parameter:   id =  epsilon_1, name = epsilon_1
	global_par_epsilon_1=0.02;
% Parameter:   id =  l_5, name = l_5
	global_par_l_5=4.0;
% Parameter:   id =  l_6, name = l_6
	global_par_l_6=1.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  S_2, name = S_2
	global_par_S_2=1.2;
% Parameter:   id =  epsilon_2, name = epsilon_2
	global_par_epsilon_2=0.02;
% Parameter:   id =  myu_D, name = myu_D
	global_par_myu_D=1.316;
% Parameter:   id =  u_1, name = u_1
	global_par_u_1=0.0;
% Parameter:   id =  u_2, name = u_2
	global_par_u_2=0.0;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.12;
% Parameter:   id =  k_2, name = k_2'
	global_par_k_2=0.12;
% Parameter:   id =  k_2_, name = k_2''
	global_par_k_2_=4.5;
% Parameter:   id =  p27_p21, name = p27/p21
	global_par_p27_p21=1.05;
% Parameter:   id =  HIF, name = HIF
% Parameter:   id =  zeta_2, name = zeta_2
	global_par_zeta_2=1.0;
% Parameter:   id =  K, name = K
	global_par_K=0.01;
% Parameter:   id =  n_2, name = n_2
	global_par_n_2=10.0;
% Parameter:   id =  K_H, name = K_H
	global_par_K_H=10.0;
% Parameter:   id =  k_3, name = k_3'
	global_par_k_3=3.0;
% Parameter:   id =  k_3_, name = k_3''
	global_par_k_3_=30.0;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=105.0;
% Parameter:   id =  J_3, name = J_3
	global_par_J_3=0.04;
% Parameter:   id =  J_4, name = J_4
	global_par_J_4=0.04;
% Parameter:   id =  zeta_1, name = zeta_1
	global_par_zeta_1=2.5;
% Parameter:   id =  n_1, name = n_1
	global_par_n_1=10.0;
% Parameter:   id =  K_m, name = K_m
	global_par_K_m=0.5;
% Parameter:   id =  k_5, name = k_5'
	global_par_k_5=0.015;
% Parameter:   id =  k_5_, name = k_5''
	global_par_k_5_=0.6;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=0.3;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  J_5, name = J_5
	global_par_J_5=0.3;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=3.0;
% Parameter:   id =  J_7, name = J_7
	global_par_J_7=0.001;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=1.5;
% Parameter:   id =  J_8, name = J_8
	global_par_J_8=0.001;
% Parameter:   id =  Mad, name = Mad
	global_par_Mad=1.0;
% Parameter:   id =  k_9, name = k_9
	global_par_k_9=0.3;
% Parameter:   id =  k_10, name = k_10
	global_par_k_10=0.06;
% Parameter:   id =  myu, name = myu+
	global_par_myu=0.03;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.006;
% Parameter:   id =  myu_0, name = myu
% Parameter:   id =  myu_hat, name = myu_hat
	global_par_myu_hat=0.5;
% Parameter:   id =  m, name = m*
	global_par_m=10.0;
% assignmentRule: variable = HIF
	global_par_HIF=global_par_zeta_2/(global_par_K^global_par_n_2*(global_par_K_H^global_par_n_2+(1/global_par_K)^global_par_n_2));
% assignmentRule: variable = myu_0
	global_par_myu_0=global_par_myu+global_par_epsilon*global_par_myu_hat;
% assignmentRule: variable = mass_s
	x(11)=x(10)+global_par_zeta_1*(1/x(5))^global_par_n_1/(global_par_K_m^global_par_n_1+(1/x(5))^global_par_n_1);
% assignmentRule: variable = deltaD
	x(6)=exp(-x(2));

% Reaction: id = Consumption_of_Glucose, name = Consumption of Glucose
	reaction_Consumption_of_Glucose=compartment_compartment*Consumption_of_Glucose_0(global_par_myu_G, x(1));

% Reaction: id = Decay_of_Drug, name = Decay of Drug
	reaction_Decay_of_Drug=compartment_compartment*Decay_of_Drug_0(global_par_myu_D, x(2));

% Reaction: id = Production_of_miR_451, name = Production of miR-451
	reaction_Production_of_miR_451=compartment_compartment*production_of_miR_451(x(1), global_par_l_1, global_par_l_2, global_par_alpha, x(4));

% Reaction: id = loss_of_miR_451, name = loss of miR-451
	reaction_loss_of_miR_451=compartment_compartment*loss_of_miR_451_0(x(3));

% Reaction: id = signal_source_of_AMPK, name = signal source of AMPK
	reaction_signal_source_of_AMPK=compartment_compartment*signal_source_of_AMPK_0(global_par_S_1, global_par_epsilon_1);

% Reaction: id = Production_of_AMPK, name = Production of AMPK
	reaction_Production_of_AMPK=compartment_compartment*production_of_AMPK(global_par_l_3, global_par_l_4, global_par_epsilon_1, global_par_beta, x(3));

% Reaction: id = loss_of_AMPK, name = loss of AMPK
	reaction_loss_of_AMPK=compartment_compartment*loss_of_AMPK_0(x(4), global_par_epsilon_1);

% Reaction: id = signal_source_of_mTOR, name = signal source of mTOR
	reaction_signal_source_of_mTOR=compartment_compartment*signal_source_of_mTOR_0(global_par_S_2, global_par_epsilon_2);

% Reaction: id = Production_of_mTOR, name = Production of mTOR
	reaction_Production_of_mTOR=compartment_compartment*production_of_mTOR(global_par_l_5, global_par_l_6, global_par_epsilon_2, x(6), global_par_gamma, x(4));

% Reaction: id = loss_of_mTOR, name = loss of mTOR
	reaction_loss_of_mTOR=compartment_compartment*loss_of_mTOR_0(x(5), global_par_epsilon_2);

% Reaction: id = Activation_of_Cdh1, name = Activation of Cdh1
	reaction_Activation_of_Cdh1=compartment_compartment*Activation_of_Cdh1_0(global_par_k_3, x(7), global_par_J_3);

% Reaction: id = Activation_of_Cdh1_by_p55cdc_A, name = Activation of Cdh1 by p55cdc_A
	reaction_Activation_of_Cdh1_by_p55cdc_A=compartment_compartment*Activation_of_Cdh1_by_p55cdc_A_0(global_par_k_3_, x(12), x(7), global_par_J_3);

% Reaction: id = Degradation_of_CycB, name = Degradation of CycB
	reaction_Degradation_of_CycB=compartment_compartment*Degradation_of_CycB_0(global_par_k_2, x(8));

% Reaction: id = Degradation_of_CycB_by_Cdh1, name = Degradation of CycB by Cdh1
	reaction_Degradation_of_CycB_by_Cdh1=compartment_compartment*Degradation_of_CycB_by_Cdh1_0(global_par_k_2_, x(7), x(8));

% Reaction: id = Degradation_of_p55cdc_T, name = Degradation of p55cdc_T
	reaction_Degradation_of_p55cdc_T=compartment_compartment*Degradation_of_p55cdc_T_0(global_par_k_6, x(9));

% Reaction: id = Inactivation_of_Cdh1_by_CycB, name = Inactivation of Cdh1 by CycB
	reaction_Inactivation_of_Cdh1_by_CycB=compartment_compartment*Inactivation_of_Cdh1_by_CycB_0(global_par_k_4, x(11), x(8), x(7), global_par_J_4);

% Reaction: id = inhibitory_effect_of_p21_or_p27_genes, name = inhibitory effect of p21 or p27 genes
	reaction_inhibitory_effect_of_p21_or_p27_genes=compartment_compartment*Inhibitory_effect_of_p21_or_p27_genes(global_par_p27_p21, global_par_HIF, x(8));

% Reaction: id = transcription_of_p55cdc_T_by_CycB, name = transcription of p55cdc_T by CycB
	reaction_transcription_of_p55cdc_T_by_CycB=compartment_compartment*transcription_of_p55dc_T_by_CycB(global_par_k_5_, x(8), x(11), global_par_n, global_par_J_5);

% Reaction: id = Activation_of_p55cdc_A_by_Plk1, name = Activation of p55cdc_A by Plk1
	reaction_Activation_of_p55cdc_A_by_Plk1=compartment_compartment*Activation_of_p55cdc_A_by_Plk1_0(global_par_k_7, x(13), x(9), x(12), global_par_J_7);

% Reaction: id = Inactivation_of_p55cdc_A, name = Inactivation of p55cdc_A
	reaction_Inactivation_of_p55cdc_A=compartment_compartment*Inactivation_of_p55cdc_A_0(global_par_k_8, global_par_Mad, x(12), global_par_J_8);

% Reaction: id = Degradation_of_p55cdc_A, name = Degradation of p55cdc_A
	reaction_Degradation_of_p55cdc_A=compartment_compartment*Degradation_of_p55cdc_A_0(global_par_k_6, x(12));

% Reaction: id = Activation_of_Plk1_by_CycB, name = Activation of Plk1 by CycB
	reaction_Activation_of_Plk1_by_CycB=compartment_compartment*Activation_of_Plk1_by_CycB_0(global_par_k_9, x(11), x(8), x(13));

% Reaction: id = Degradation_of_Plk1, name = Degradation of Plk1
	reaction_Degradation_of_Plk1=compartment_compartment*degradation_of_Plk1(global_par_k_10, x(13));

% Reaction: id = grow_of_mass, name = grow of mass
	reaction_grow_of_mass=compartment_compartment*grow_of_mass_0(global_par_myu_0, x(10), global_par_m);

%Event: id=event
	event_event=piecewise(time-12*ceil(time/12),  xor (time < 0, 12 < 0), time-12*floor(time/12)) == 0;

	if(event_event) 
		global_par_u_1=global_par_u_1+1;
		global_par_u_2=global_par_u_2+1;
	end

%Event: id=event_2
	event_event_2=(((((((((((((time == 3) || (time == 15)) || (time == 27)) || (time == 39)) || (time == 51)) || (time == 63)) || (time == 75)) || (time == 87)) || (time == 99)) || (time == 111)) || (time == 123)) || (time == 135)) || (time == 147)) || (time == 159);

	if(event_event_2) 
		global_par_u_1=global_par_u_1-1;
		global_par_u_2=global_par_u_2-1;
	end

	xdot=zeros(13,1);
	
% Species:   id = Glucose_G, name = Glucose G, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Dose_for_Glucose) + (-1.0 * reaction_Consumption_of_Glucose));
	
% Species:   id = Drug_D, name = Drug D, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Dose_for_Drug) + (-1.0 * reaction_Decay_of_Drug));
	
% Species:   id = miR_451_M, name = miR-451 M, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_miR_451) + (-1.0 * reaction_loss_of_miR_451));
	
% Species:   id = AMPK_A, name = AMPK A, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_signal_source_of_AMPK) + ( 1.0 * reaction_Production_of_AMPK) + (-1.0 * reaction_loss_of_AMPK));
	
% Species:   id = mTOR_R, name = mTOR R, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_signal_source_of_mTOR) + ( 1.0 * reaction_Production_of_mTOR) + (-1.0 * reaction_loss_of_mTOR));
	
% Species:   id = deltaD, name = deltaD, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_Cdh1) + ( 1.0 * reaction_Activation_of_Cdh1_by_p55cdc_A) + (-1.0 * reaction_Inactivation_of_Cdh1_by_CycB));
	
% Species:   id = CycB, name = CycB, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_Degradation_of_CycB) + (-1.0 * reaction_Degradation_of_CycB_by_Cdh1) + (-1.0 * reaction_inhibitory_effect_of_p21_or_p27_genes) + ( 1.0 * reaction_Production_of_CycB));
	
% Species:   id = p55cdc_T, name = p55cdc_T, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Degradation_of_p55cdc_T) + ( 1.0 * reaction_production_of_p55cdc_T) + ( 1.0 * reaction_transcription_of_p55cdc_T_by_CycB));
	
% Species:   id = mass, name = mass, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_grow_of_mass));
	
% Species:   id = mass_s, name = mass_s, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = p55cdc_A, name = p55cdc_A, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_p55cdc_A_by_Plk1) + (-1.0 * reaction_Inactivation_of_p55cdc_A) + (-1.0 * reaction_Degradation_of_p55cdc_A));
	
% Species:   id = Plk1, name = Plk1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_Plk1_by_CycB) + (-1.0 * reaction_Degradation_of_Plk1));
end

function z=Degradation_of_p55cdc_T_0(k_6,p55cdc_T), z=(k_6*p55cdc_T);end

function z=Production_of_CycB_0(k_1), z=(k_1);end

function z=Degradation_of_CycB_0(k_21,CycB), z=(k_21*CycB);end

function z=Degradation_of_CycB_by_Cdh1_0(k_22,Cdh1,CycB), z=(k_22*Cdh1*CycB);end

function z=Inhibitory_effect_of_p21_or_p27_genes(_p27_p21,HIF,CycB), z=(_p27_p21*HIF*CycB);end

function z=Activation_of_Cdh1_by_p55cdc_A_0(k_32,p55cdc_A,Cdh1,J_3), z=(k_32*p55cdc_A*(1-Cdh1)/(J_3+1-Cdh1));end

function z=Activation_of_Cdh1_0(k_31,Cdh1,J_3), z=(k_31*(1-Cdh1)/(J_3+1-Cdh1));end

function z=Inactivation_of_Cdh1_by_CycB_0(k_4,mass_s,CycB,Cdh1,J_4), z=(k_4*mass_s*CycB*Cdh1/(J_4+Cdh1));end

function z=Production_of_p55cd_T(k_51), z=(k_51);end

function z=transcription_of_p55dc_T_by_CycB(k_52,CycB,mass_s,n,J_5), z=(k_52*(CycB*mass_s)^n/(J_5^n+(CycB*mass_s)^n));end

function z=grow_of_mass_0(myu,mass,_m_), z=(myu*mass*(1-mass/_m_));end

function z=Degradation_of_p55cdc_A_0(k_6,p55cdc_A), z=(k_6*p55cdc_A);end

function z=Inactivation_of_p55cdc_A_0(k_8,Mad,p55cdc_A,J_8), z=(k_8*Mad*p55cdc_A/(J_8+p55cdc_A));end

function z=Activation_of_p55cdc_A_by_Plk1_0(k_7,Plk1,p55cdc_T,p55cdc_A,J_7), z=(k_7*Plk1*(p55cdc_T-p55cdc_A)/(J_7+p55cdc_T-p55cdc_A));end

function z=Activation_of_Plk1_by_CycB_0(k_9,mass_s,CycB,Plk1), z=(k_9*mass_s*CycB*(1-Plk1));end

function z=degradation_of_Plk1(k_10,Plk1), z=(k_10*Plk1);end

function z=Dose_for_Drug_0(u_2), z=(u_2);end

function z=Dose_for_Glucose_0(u_1), z=(u_1);end

function z=Consumption_of_Glucose_0(myu_G,G), z=(myu_G*G);end

function z=Decay_of_Drug_0(myu_D,D), z=(myu_D*D);end

function z=production_of_miR_451(G,l_1,l_2,alpha,A), z=(G+l_1*l_2^2/(l_2^2+alpha*A^2));end

function z=loss_of_miR_451_0(M), z=(M);end

function z=signal_source_of_AMPK_0(S_1,episilon_1), z=(S_1/episilon_1);end

function z=production_of_AMPK(l_3,l_4,epsilon_1,beta,M), z=(l_3*l_4^2/(epsilon_1*(l_4^2+beta*M^2)));end

function z=loss_of_AMPK_0(A,epsilon_1), z=(A/epsilon_1);end

function z=signal_source_of_mTOR_0(S_2,epsilon_2), z=(S_2/epsilon_2);end

function z=production_of_mTOR(l_5,l_6,epsilon_2,dletaD,gamma,A), z=(l_5*l_6^2/(epsilon_2*(l_6^2+dletaD*gamma*A^2)));end

function z=loss_of_mTOR_0(R,epsilon_2), z=(R/epsilon_2);end

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


