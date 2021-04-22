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
% Model name = Novak1993 - Cell cycle M-phase control
%
% is http://identifiers.org/biomodels.db/MODEL5876465734
% is http://identifiers.org/biomodels.db/BIOMD0000000107
% isDescribedBy http://identifiers.org/pubmed/8126097
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 100.0;
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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  total_cdc2, name = total_cdc2
	global_par_total_cdc2=100.0;
% Parameter:   id =  total_cdc25, name = total_cdc25
	global_par_total_cdc25=1.0;
% Parameter:   id =  total_wee1, name = total_wee1
	global_par_total_wee1=1.0;
% Parameter:   id =  total_IE, name = total_IE
	global_par_total_IE=1.0;
% Parameter:   id =  total_UbE, name = total_UbE
	global_par_total_UbE=1.0;
% Parameter:   id =  k25, name = k25
% Parameter:   id =  V25_prime, name = V25_prime
	global_par_V25_prime=0.1;
% Parameter:   id =  V25_double_prime, name = V25_double_prime
	global_par_V25_double_prime=2.0;
% Parameter:   id =  kwee, name = kwee
% Parameter:   id =  Vwee_prime, name = Vwee_prime
	global_par_Vwee_prime=0.1;
% Parameter:   id =  Vwee_double_prime, name = Vwee_double_prime
	global_par_Vwee_double_prime=1.0;
% Parameter:   id =  k2, name = k2
% Parameter:   id =  V2_prime, name = V2_prime
	global_par_V2_prime=0.015;
% Parameter:   id =  V2_double_prime, name = V2_double_prime
	global_par_V2_double_prime=1.0;
% Parameter:   id =  k1AA, name = k1AA
	global_par_k1AA=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.01;
% Parameter:   id =  kinh, name = kinh
	global_par_kinh=0.025;
% Parameter:   id =  kcak, name = kcak
	global_par_kcak=0.25;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.01;
% Parameter:   id =  K_a, name = K_a
	global_par_K_a=0.1;
% Parameter:   id =  kbPPase, name = kbPPase
	global_par_kbPPase=0.125;
% Parameter:   id =  K_b, name = K_b
	global_par_K_b=0.1;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.0133;
% Parameter:   id =  K_e, name = K_e
	global_par_K_e=0.3;
% Parameter:   id =  kfPPase, name = kfPPase
	global_par_kfPPase=0.1;
% Parameter:   id =  K_f, name = K_f
	global_par_K_f=0.3;
% Parameter:   id =  kg, name = kg
	global_par_kg=0.0065;
% Parameter:   id =  K_g, name = K_g
	global_par_K_g=0.01;
% Parameter:   id =  khPPAse, name = khPPAse
	global_par_khPPAse=0.087;
% Parameter:   id =  K_h, name = K_h
	global_par_K_h=0.01;
% Parameter:   id =  kc, name = kc
	global_par_kc=0.1;
% Parameter:   id =  K_c, name = K_c
	global_par_K_c=0.01;
% Parameter:   id =  kd_anti_IE, name = kd_anti_IE
	global_par_kd_anti_IE=0.095;
% Parameter:   id =  K_d, name = K_d
	global_par_K_d=0.01;
% Parameter:   id =  total_cyclin, name = total_cyclin
% Parameter:   id =  Y15P, name = Y15P
% assignmentRule: variable = cdc2
	x(10)=global_par_total_cdc2-(x(2)+x(4)+x(5)+x(3));
% assignmentRule: variable = cdc25
	x(11)=global_par_total_cdc25-x(6);
% assignmentRule: variable = wee1
	x(12)=global_par_total_wee1-x(7);
% assignmentRule: variable = IE
	x(13)=global_par_total_IE-x(8);
% assignmentRule: variable = UbE
	x(14)=global_par_total_UbE-x(9);
% assignmentRule: variable = k25
	global_par_k25=global_par_V25_prime*(global_par_total_cdc25-x(6))+global_par_V25_double_prime*x(6);
% assignmentRule: variable = kwee
	global_par_kwee=global_par_Vwee_prime*x(7)+global_par_Vwee_double_prime*(global_par_total_wee1-x(7));
% assignmentRule: variable = k2
	global_par_k2=global_par_V2_prime*(global_par_total_UbE-x(9))+global_par_V2_double_prime*x(9);
% assignmentRule: variable = total_cyclin
	global_par_total_cyclin=x(1)+x(2)+x(3)+x(4)+x(5);
% assignmentRule: variable = Y15P
	global_par_Y15P=x(4)+x(5);

% Reaction: id = R1, name = cyclin synthesis
	reaction_R1=global_par_k1AA;

% Reaction: id = R2, name = cyclin degradation
	reaction_R2=global_par_k2*x(1);

% Reaction: id = R3, name = cyclin-cdc2 dimer formation
	reaction_R3=global_par_k3*x(1)*x(10);

% Reaction: id = R4, name = Thr161 dephosphorylation
	reaction_R4=global_par_kinh*x(3);

% Reaction: id = R5, name = Tyr15 phosphorylation
	reaction_R5=global_par_kwee*x(2);

% Reaction: id = R6, name = Thr161 phosphorylation
	reaction_R6=global_par_kcak*x(2);

% Reaction: id = R7, name = cyclin degradation
	reaction_R7=global_par_k2*x(2);

% Reaction: id = R8, name = Tyr15 dephosphorylation
	reaction_R8=global_par_k25*x(4);

% Reaction: id = R9, name = Thr161 phosphorylation
	reaction_R9=global_par_kcak*x(4);

% Reaction: id = R10, name = cyclin degradation
	reaction_R10=global_par_k2*x(4);

% Reaction: id = R11, name = Thr161 dephosphorylation
	reaction_R11=global_par_kinh*x(5);

% Reaction: id = R12, name = Tyr15 phosphorylation
	reaction_R12=global_par_kwee*x(3);

% Reaction: id = R13, name = Tyr15 dephosphorylation
	reaction_R13=global_par_k25*x(5);

% Reaction: id = R14, name = cyclin degradation
	reaction_R14=global_par_k2*x(5);

% Reaction: id = R15, name = cyclin degradation
	reaction_R15=global_par_k2*x(3);

% Reaction: id = R17, name = cdc25 activation
	reaction_R17=global_par_ka*x(3)*(global_par_total_cdc25-x(6))/(global_par_K_a+global_par_total_cdc25-x(6));

% Reaction: id = R18, name = cdc25 deactivation
	reaction_R18=global_par_kbPPase*x(6)/(global_par_K_b+x(6));

% Reaction: id = R19, name = wee1 deactivation
	reaction_R19=global_par_ke*x(3)*(global_par_total_wee1-x(7))/(global_par_K_e+global_par_total_wee1-x(7));

% Reaction: id = R20, name = wee1 activation
	reaction_R20=global_par_kfPPase*x(7)/(global_par_K_f+x(7));

% Reaction: id = R21, name = intermediary enzyme activation
	reaction_R21=global_par_kg*x(3)*(global_par_total_IE-x(8))/(global_par_K_g+global_par_total_IE-x(8));

% Reaction: id = R22, name = intermediary enzyme deactivation
	reaction_R22=global_par_khPPAse*x(8)/(global_par_K_h+x(8));

% Reaction: id = R23, name = ubiquitin conjugating enzyme activation
	reaction_R23=global_par_kc*x(8)*(global_par_total_UbE-x(9))/(global_par_K_c+global_par_total_UbE-x(9));

% Reaction: id = R24, name = ubiquitin conjugating enzyme deactivation
	reaction_R24=global_par_kd_anti_IE*x(9)/(global_par_K_d+x(9));

	xdot=zeros(14,1);
	
% Species:   id = cyclin, name = cyclin, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = dimer, name = cyclin-cdc2 dimer, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + ( 1.0 * reaction_R8));
	
% Species:   id = dimer_p, name = Thr161 phosphorylated dimer(active MPF), affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R4) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13) + (-1.0 * reaction_R15));
	
% Species:   id = p_dimer, name = Tyr15 phosphorylated dimer, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R11));
	
% Species:   id = p_dimer_p, name = Thr161-Tyr15 phosphorylated dimer, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R14));
	
% Species:   id = cdc25_p, name = phosphorylated cdc25, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R18));
	
% Species:   id = wee1_p, name = phosphorylated wee1, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = IE_p, name = phosphorylated intermediary enzyme, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R22));
	
% Species:   id = UbE_star, name = ubiquitin conjugating enzyme, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R24));
	
% Species:   id = cdc2, name = cdc2, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = cdc25, name = cdc25, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = wee1, name = wee1, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = IE, name = intermediary enzyme, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = UbE, name = ubiquitin conjugating enzyme, involved in a rule 	xdot(14) = x(14);
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


