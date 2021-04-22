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
% Model name = ChenXF2008_CICR
%
% is http://identifiers.org/biomodels.db/MODEL7519277765
% is http://identifiers.org/biomodels.db/BIOMD0000000202
% isDescribedBy http://identifiers.org/pubmed/18538916
% isDerivedFrom http://identifiers.org/pubmed/1329108
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(10) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.54;
	x0(5) = 0.06;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.001;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Compartment: id = ER, name = ER, constant
	compartment_ER=0.185;
% Compartment: id = PM, name = PM, constant
	compartment_PM=1.0;
% Parameter:   id =  L, name = L
	global_par_L=9.3E-4;
% Parameter:   id =  P_IP3R, name = P_IP3R
	global_par_P_IP3R=66.6;
% Parameter:   id =  Ki, name = Ki
	global_par_Ki=1.0;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=6.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=0.4;
% Parameter:   id =  V_SERCA, name = V_SERCA
	global_par_V_SERCA=1.0;
% Parameter:   id =  p, name = p
	global_par_p=2.0;
% Parameter:   id =  K_SERCA, name = K_SERCA
	global_par_K_SERCA=0.15;
% Parameter:   id =  k_soc, name = k_soc
	global_par_k_soc=2.3;
% Parameter:   id =  V_PMleak, name = V_PMleak
	global_par_V_PMleak=5.0E-7;
% Parameter:   id =  Ca_ec, name = Ca_ec
	global_par_Ca_ec=1500.0;
% Parameter:   id =  V_PMCA, name = V_PMCA
	global_par_V_PMCA=1.0;
% Parameter:   id =  q, name = q
	global_par_q=2.0;
% Parameter:   id =  K_PMCA, name = K_PMCA
	global_par_K_PMCA=0.45;
% Parameter:   id =  V_PLC, name = V_PLC
	global_par_V_PLC=0.5;
% Parameter:   id =  K_PLC, name = K_PLC
	global_par_K_PLC=0.12;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=0.5;
% Parameter:   id =  K_deg, name = K_deg
	global_par_K_deg=0.1;
% Parameter:   id =  A, name = A
	global_par_A=0.5;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.4;
% Parameter:   id =  K1, name = K1
	global_par_K1=5.0;
% Parameter:   id =  St, name = St
	global_par_St=0.6;
% Parameter:   id =  k_a, name = k_a
	global_par_k_a=4.0;
% Parameter:   id =  Vs4, name = Vs4
	global_par_Vs4=0.25;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.14;
% Parameter:   id =  kd_oligo, name = kd_oligo
	global_par_kd_oligo=0.8;
% Parameter:   id =  Vcp, name = Vcp
	global_par_Vcp=1.8E-4;
% Parameter:   id =  n_hill, name = n_hill
	global_par_n_hill=3.0;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=2.0E-5;
% Parameter:   id =  kdc, name = kdc
	global_par_kdc=0.5;
% Parameter:   id =  kop, name = kop
	global_par_kop=0.5;
% Parameter:   id =  l_hill, name = l_hill
	global_par_l_hill=1.0;
% Parameter:   id =  Ko, name = Ko
	global_par_Ko=0.2;
% Parameter:   id =  kod, name = kod
	global_par_kod=1.0;
% Parameter:   id =  kdo, name = kdo
	global_par_kdo=0.6;
% Parameter:   id =  r_hill, name = r_hill
	global_par_r_hill=4.0;
% Parameter:   id =  h, name = h
% Parameter:   id =  Orai1_t, name = Orai1_t
	global_par_Orai1_t=0.001;
% assignmentRule: variable = Orai1
	x(9)=global_par_Orai1_t-(global_par_r_hill*x(7)+global_par_r_hill*x(8));
% assignmentRule: variable = S2
	x(4)=global_par_K1^2/(x(3)^2+global_par_K1^2)*(global_par_St-x(5));
% rateRule: variable = h
global_par_h = x(10);

% Reaction: id = ER_Channel
	reaction_ER_Channel=compartment_Cytoplasm*(global_par_L+global_par_P_IP3R*x(2)^3*x(1)^3*global_par_h^3/((x(2)+global_par_Ki)^3*(x(1)+global_par_Ka)^3))*(x(3)-x(1));

% Reaction: id = SERCA
	reaction_SERCA=compartment_Cytoplasm*global_par_V_SERCA*x(1)^global_par_p/(global_par_K_SERCA^global_par_p+x(1)^global_par_p);

% Reaction: id = PM_Channel
	reaction_PM_Channel=compartment_Cytoplasm*(global_par_k_soc*x(8)+global_par_V_PMleak)*(global_par_Ca_ec-x(1));

% Reaction: id = PMCA
	reaction_PMCA=compartment_Cytoplasm*global_par_V_PMCA*x(1)^global_par_q/(global_par_K_PMCA^global_par_q+x(1)^global_par_q);

% Reaction: id = PLC
	reaction_PLC=compartment_Cytoplasm*global_par_V_PLC*x(1)^2/(global_par_K_PLC^2+x(1)^2);

% Reaction: id = deg
	reaction_deg=compartment_Cytoplasm*global_par_kdeg*x(1)^2/(global_par_K_deg^2+x(1)^2)*x(2);

% Reaction: id = act_apoSTIM1_syn
	reaction_act_apoSTIM1_syn=compartment_ER*global_par_k_a*x(4);

% Reaction: id = act_apoSTIM1_deg
	reaction_act_apoSTIM1_deg=compartment_ER*global_par_k_i*x(5);

% Reaction: id = apoSTIM1_oligo_syn
	reaction_apoSTIM1_oligo_syn=compartment_ER*global_par_Vs4*x(4)^2/(x(4)^2+global_par_K2^2);

% Reaction: id = apoSTIM1_oligo_deg
	reaction_apoSTIM1_oligo_deg=compartment_ER*global_par_kd_oligo*x(6);

% Reaction: id = close_CRAC_prod
	reaction_close_CRAC_prod=compartment_PM*global_par_Vcp*x(9)^global_par_n_hill/(global_par_Kc^global_par_n_hill+x(9)^global_par_n_hill);

% Reaction: id = closed_CRAC_channel_deg
	reaction_closed_CRAC_channel_deg=compartment_PM*global_par_kdc*x(7);

% Reaction: id = open_CRAC_channel_prod
	reaction_open_CRAC_channel_prod=compartment_PM*global_par_kop*x(5)^global_par_l_hill*x(7)/(global_par_Ko^global_par_l_hill+x(5)^global_par_l_hill);

% Reaction: id = open_to_closed
	reaction_open_to_closed=compartment_PM*global_par_kod*x(8);

% Reaction: id = open_CRAC_channel_deg
	reaction_open_CRAC_channel_deg=compartment_PM*global_par_kdo*x(8);

	xdot=zeros(10,1);
	% rateRule: variable = h
	xdot(10) = global_par_A*(global_par_Kd-(x(1)+global_par_Kd)*global_par_h);
	
% Species:   id = Ca_Cyt, name = Ca_Cyt, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_ER_Channel) + (-1.0 * reaction_SERCA) + ( 1.0 * reaction_PM_Channel) + (-1.0 * reaction_PMCA));
	
% Species:   id = IP3_Cyt, name = IP3_Cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_PLC) + (-1.0 * reaction_deg));
	
% Species:   id = Ca_ER, name = Ca_ER, affected by kineticLaw
	xdot(3) = (1/(compartment_ER))*((-1.0 * reaction_ER_Channel) + ( 1.0 * reaction_SERCA));
	
% Species:   id = S2, name = S2, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = S2a, name = S2a, affected by kineticLaw
	xdot(5) = (1/(compartment_ER))*(( 1.0 * reaction_act_apoSTIM1_syn) + (-1.0 * reaction_act_apoSTIM1_deg));
	
% Species:   id = S4, name = S4, affected by kineticLaw
	xdot(6) = (1/(compartment_ER))*(( 1.0 * reaction_apoSTIM1_oligo_syn) + (-1.0 * reaction_apoSTIM1_oligo_deg));
	
% Species:   id = Oc, name = Oc, affected by kineticLaw
	xdot(7) = (1/(compartment_PM))*(( 1.0 * reaction_close_CRAC_prod) + (-1.0 * reaction_closed_CRAC_channel_deg) + (-1.0 * reaction_open_CRAC_channel_prod) + ( 1.0 * reaction_open_to_closed));
	
% Species:   id = O_o, name = O_o, affected by kineticLaw
	xdot(8) = (1/(compartment_PM))*(( 1.0 * reaction_open_CRAC_channel_prod) + (-1.0 * reaction_open_to_closed) + (-1.0 * reaction_open_CRAC_channel_deg));
	
% Species:   id = Orai1, name = Orai1, defined in a rule 	xdot(9) = x(9);
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


