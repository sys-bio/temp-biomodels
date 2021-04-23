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
% Model name = Novak2001_FissionYeast_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL6488296959
% is http://identifiers.org/biomodels.db/BIOMD0000000111
% isDescribedBy http://identifiers.org/pubmed/12779461
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.2;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 2.2;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.0;
	x0(10) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  flag_MPF, name = flag_MPF
	global_par_flag_MPF=0.0;
% Parameter:   id =  sigma, name = sigma
% Parameter:   id =  Kdiss, name = Kdiss
	global_par_Kdiss=0.001;
% Parameter:   id =  Trimer, name = Trimer
% Parameter:   id =  TF, name = TF
% Parameter:   id =  k15, name = k15
	global_par_k15=1.5;
% Parameter:   id =  J16, name = J16
	global_par_J16=0.01;
% Parameter:   id =  k16_prime, name = k16_prime
	global_par_k16_prime=1.0;
% Parameter:   id =  k16_double_prime, name = k16_double_prime
	global_par_k16_double_prime=2.0;
% Parameter:   id =  J15, name = J15
	global_par_J15=0.01;
% Parameter:   id =  kwee, name = kwee
% Parameter:   id =  kwee_prime, name = kwee_prime
	global_par_kwee_prime=0.15;
% Parameter:   id =  kwee_double_prime, name = kwee_double_prime
	global_par_kwee_double_prime=1.3;
% Parameter:   id =  Vawee, name = Vawee
	global_par_Vawee=0.25;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.01;
% Parameter:   id =  Viwee, name = Viwee
	global_par_Viwee=1.0;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.01;
% Parameter:   id =  k25, name = k25
% Parameter:   id =  k25_prime, name = k25_prime
	global_par_k25_prime=0.05;
% Parameter:   id =  k25_double_prime, name = k25_double_prime
	global_par_k25_double_prime=5.0;
% Parameter:   id =  Va25, name = Va25
	global_par_Va25=1.0;
% Parameter:   id =  Ji25, name = Ji25
	global_par_Ji25=0.01;
% Parameter:   id =  Vi25, name = Vi25
	global_par_Vi25=0.25;
% Parameter:   id =  Ja25, name = Ja25
	global_par_Ja25=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.03;
% Parameter:   id =  k2_prime, name = k2_prime
	global_par_k2_prime=0.03;
% Parameter:   id =  k2_double_prime, name = k2_double_prime
	global_par_k2_double_prime=1.0;
% Parameter:   id =  k2_triple_prime, name = k2_triple_prime
	global_par_k2_triple_prime=0.1;
% Parameter:   id =  k3_prime, name = k3_prime
	global_par_k3_prime=1.0;
% Parameter:   id =  k3_double_prime, name = k3_double_prime
	global_par_k3_double_prime=10.0;
% Parameter:   id =  J3, name = J3
	global_par_J3=0.01;
% Parameter:   id =  k4_prime, name = k4_prime
	global_par_k4_prime=2.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=35.0;
% Parameter:   id =  J4, name = J4
	global_par_J4=0.01;
% Parameter:   id =  k5_prime, name = k5_prime
	global_par_k5_prime=0.005;
% Parameter:   id =  k5_double_prime, name = k5_double_prime
	global_par_k5_double_prime=0.3;
% Parameter:   id =  J5, name = J5
	global_par_J5=0.3;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.1;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  J7, name = J7
	global_par_J7=0.001;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.25;
% Parameter:   id =  J8, name = J8
	global_par_J8=0.001;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.1;
% Parameter:   id =  J9, name = J9
	global_par_J9=0.01;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.04;
% Parameter:   id =  J10, name = J10
	global_par_J10=0.01;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.1;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.01;
% Parameter:   id =  k12_prime, name = k12_prime
	global_par_k12_prime=1.0;
% Parameter:   id =  k12_double_prime, name = k12_double_prime
	global_par_k12_double_prime=3.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.1;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.1;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.005;
% assignmentRule: variable = sigma
	global_par_sigma=x(1)+x(7)+global_par_Kdiss;
% assignmentRule: variable = Trimer
	global_par_Trimer=2*x(1)*x(7)/(global_par_sigma+(global_par_sigma^2-4*x(1)*x(7))^0.5);
% assignmentRule: variable = MPF
	x(10)=(x(1)-x(2))*(x(1)-global_par_Trimer)/x(1);
% assignmentRule: variable = TF
	global_par_TF=2*global_par_k15*x(9)*global_par_J16/(global_par_k16_prime+global_par_k16_double_prime*x(10)-global_par_k15*x(9)+(global_par_k16_prime+global_par_k16_double_prime*x(10))*global_par_J15+global_par_k15*x(9)*global_par_J16+((global_par_k16_prime+global_par_k16_double_prime*x(10)-global_par_k15*x(9)+(global_par_k16_prime+global_par_k16_double_prime*x(10))*global_par_J15+global_par_k15*x(9)*global_par_J16)^2-4*(global_par_k16_prime+global_par_k16_double_prime*x(10)-global_par_k15*x(9))*global_par_k15*x(9)*global_par_J16)^(0.5));
% assignmentRule: variable = kwee
	global_par_kwee=global_par_kwee_prime+(global_par_kwee_double_prime-global_par_kwee_prime)*2*global_par_Vawee*global_par_Jiwee/(global_par_Viwee*x(10)-global_par_Vawee+global_par_Viwee*x(10)*global_par_Jawee+global_par_Vawee*global_par_Jiwee+((global_par_Viwee*x(10)-global_par_Vawee+global_par_Viwee*x(10)*global_par_Jawee+global_par_Vawee*global_par_Jiwee)^2-4*(global_par_Viwee*x(10)-global_par_Vawee)*global_par_Vawee*global_par_Jiwee)^(0.5));
% assignmentRule: variable = k25
	global_par_k25=global_par_k25_prime+(global_par_k25_double_prime-global_par_k25_prime)*2*global_par_Va25*x(10)*global_par_Ji25/(global_par_Vi25-global_par_Va25*x(10)+global_par_Vi25*global_par_Ja25+global_par_Va25*x(10)*global_par_Ji25+((global_par_Vi25-global_par_Va25*x(10)+global_par_Vi25*global_par_Ja25+global_par_Va25*x(10)*global_par_Ji25)^2-4*(global_par_Vi25-global_par_Va25*x(10))*global_par_Va25*x(10)*global_par_Ji25)^(0.5));

% Reaction: id = R1, name = cdc13T synthesis
	reaction_R1=global_par_k1*x(9);

% Reaction: id = R2, name = Targeting cdc13T to APC core
	reaction_R2=(global_par_k2_prime+global_par_k2_double_prime*x(3)+global_par_k2_triple_prime*x(5))*x(1);

% Reaction: id = R3, name = wee1 dependent MPF inactivation
	reaction_R3=global_par_kwee*(x(1)-x(2));

% Reaction: id = R4, name = cdc25 dependent preMPF phosphorylation
	reaction_R4=global_par_k25*x(2);

% Reaction: id = R5, name = preMPF inactivation
	reaction_R5=(global_par_k2_prime+global_par_k2_double_prime*x(3)+global_par_k2_triple_prime*x(5))*x(2);

% Reaction: id = R6, name = slp1 dependent ste9 activation
	reaction_R6=(global_par_k3_prime+global_par_k3_double_prime*x(5))*(1-x(3))/(global_par_J3+1-x(3));

% Reaction: id = R7, name = ste9 phosphorylation (inactivation) by starter kinase
	reaction_R7=(global_par_k4_prime*x(8)+global_par_k4*x(10))*x(3)/(global_par_J4+x(3));

% Reaction: id = R8, name = slp1T activation by MPF
	reaction_R8=global_par_k5_prime+global_par_k5_double_prime*x(10)^4/(global_par_J5^4+x(10)^4);

% Reaction: id = R9, name = slp1T inactivation
	reaction_R9=global_par_k6*x(4);

% Reaction: id = R10, name = slp1 activation by intermediary enzyme
	reaction_R10=global_par_k7*x(6)*(x(4)-x(5))/(global_par_J7+x(4)-x(5));

% Reaction: id = R11, name = slp1 inactivation
	reaction_R11=global_par_k8*x(5)/(global_par_J8+x(5));

% Reaction: id = R12, name = slp1 inactivation
	reaction_R12=global_par_k6*x(5);

% Reaction: id = R13, name = Intermediary enzyme activation
	reaction_R13=global_par_k9*x(10)*(1-x(6))/(global_par_J9+1-x(6));

% Reaction: id = R14, name = IEP inactivation
	reaction_R14=global_par_k10*x(6)/(global_par_J10+x(6));

% Reaction: id = R15, name = rum1T activation
	reaction_R15=global_par_k11;

% Reaction: id = R16, name = SK dependent rum1T inactivation
	reaction_R16=(global_par_k12+global_par_k12_prime*x(8)+global_par_k12_double_prime*x(10))*x(7);

% Reaction: id = R17, name = SK synthesis
	reaction_R17=global_par_k13*global_par_TF;

% Reaction: id = R18, name = SK degradation
	reaction_R18=global_par_k14*x(8);

% Reaction: id = R19, name = Cell growth
	reaction_R19=global_par_mu*x(9);

%Event: id=event_0000001
	event_event_0000001=(x(10) <= 0.1) && (global_par_flag_MPF == 1);

	if(event_event_0000001) 
		x(9)=x(9)/2;
		global_par_flag_MPF=0;
	end

%Event: id=event_0000002
	event_event_0000002=x(10) > 0.1;

	if(event_event_0000002) 
		global_par_flag_MPF=1;
	end

	xdot=zeros(10,1);
	
% Species:   id = cdc13T, name = Total cdc13, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_R1) + (-1.0 * reaction_R2);
	
% Species:   id = preMPF, name = preMPF, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5);
	
% Species:   id = ste9, name = ste9, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_R6) + (-1.0 * reaction_R7);
	
% Species:   id = slp1T, name = slp1T, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_R8) + (-1.0 * reaction_R9);
	
% Species:   id = slp1, name = slp1, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12);
	
% Species:   id = IEP, name = IEP, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_R13) + (-1.0 * reaction_R14);
	
% Species:   id = rum1T, name = rum1T, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_R15) + (-1.0 * reaction_R16);
	
% Species:   id = SK, name = SK, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_R17) + (-1.0 * reaction_R18);
	
% Species:   id = M, name = Cell Mass, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_R19);
	
% Species:   id = MPF, name = M-phase promoting factor, defined in a rule 	xdot(10) = x(10);
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


