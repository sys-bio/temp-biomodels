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
% Model name = Lei2001_Yeast_Aerobic_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1003250000
% is http://identifiers.org/biomodels.db/BIOMD0000000245
% isDescribedBy http://identifiers.org/pubmed/11434967
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(12) = 0.1;
	x0(13) = 0.0075;
	x0(1) = 15.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.002;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 15.0;


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

% Compartment: id = env, name = environment, constant
	compartment_env=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  qO2, name = qO2
% Parameter:   id =  qCO2, name = qCO2
% Parameter:   id =  X_a, name = X_a
% Parameter:   id =  X_AcDH, name = X_AcDH
% Parameter:   id =  k_1h, name = k_1h
	global_par_k_1h=0.584;
% Parameter:   id =  K_1h, name = K_1h
	global_par_K_1h=0.0116;
% Parameter:   id =  k_1l, name = k_1l
	global_par_k_1l=1.43;
% Parameter:   id =  K_1l, name = K_1l
	global_par_K_1l=0.94;
% Parameter:   id =  k_1e, name = k_1e
	global_par_k_1e=47.1;
% Parameter:   id =  K_1e, name = K_1e
	global_par_K_1e=0.12;
% Parameter:   id =  K_1i, name = K_1i
	global_par_K_1i=14.2;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.501;
% Parameter:   id =  K_2, name = K_2
	global_par_K_2=2.0E-5;
% Parameter:   id =  K_2i, name = K_2i
	global_par_K_2i=0.101;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=5.81;
% Parameter:   id =  K_3, name = K_3
	global_par_K_3=5.0E-7;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=4.8;
% Parameter:   id =  K_4, name = K_4
	global_par_K_4=2.64E-4;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=0.0104;
% Parameter:   id =  K_5, name = K_5
	global_par_K_5=0.0102;
% Parameter:   id =  k_5e, name = k_5e
	global_par_k_5e=0.775;
% Parameter:   id =  K_5e, name = K_5e
	global_par_K_5e=0.1;
% Parameter:   id =  K_5i, name = K_5i
	global_par_K_5i=440.0;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=2.82;
% Parameter:   id =  K_6, name = K_6
	global_par_K_6=0.034;
% Parameter:   id =  k_6r, name = k_6r
	global_par_k_6r=0.0125;
% Parameter:   id =  K_6e, name = K_6e
	global_par_K_6e=0.057;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=1.203;
% Parameter:   id =  K_7, name = K_7
	global_par_K_7=0.0101;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=0.589;
% Parameter:   id =  k_9, name = k_9
	global_par_k_9=0.008;
% Parameter:   id =  K_9, name = K_9
	global_par_K_9=1.0E-6;
% Parameter:   id =  k_9e, name = k_9e
	global_par_k_9e=0.0751;
% Parameter:   id =  K_9e, name = K_9e
	global_par_K_9e=13.0;
% Parameter:   id =  K_9i, name = K_9i
	global_par_K_9i=25.0;
% Parameter:   id =  k_9c, name = k_9c
	global_par_k_9c=0.00399;
% Parameter:   id =  k_10, name = k_10
	global_par_k_10=0.392;
% Parameter:   id =  K_10, name = K_10
	global_par_K_10=0.0023;
% Parameter:   id =  k_10e, name = k_10e
	global_par_k_10e=0.00339;
% Parameter:   id =  K_10e, name = K_10e
	global_par_K_10e=0.0018;
% Parameter:   id =  k_11, name = k_11
	global_par_k_11=0.02;
% Parameter:   id =  D, name = Dilutionrate
	global_par_D=0.1;
% assignmentRule: variable = a
	x(7)=x(6)*global_par_X_a;
% assignmentRule: variable = AcDH
	x(8)=x(6)*global_par_X_AcDH;
% rateRule: variable = X_a
global_par_X_a = x(12);
% rateRule: variable = X_AcDH
global_par_X_AcDH = x(13);
% assignmentRule: variable = qO2
	global_par_qO2=1000/32*(0.178*reaction_r1+0.908*reaction_r2+0.363*reaction_r4+1.066*reaction_r5-0.363*reaction_r6+0.063*reaction_r7+0.214*reaction_r8)/(x(6)*compartment_env);
% assignmentRule: variable = qCO2
	global_par_qCO2=1000/44.01*(1.499*reaction_r2+0.5*reaction_r3+1.466*reaction_r5+0.127*reaction_r7+0.325*reaction_r8)/(x(6)*compartment_env);

% Reaction: id = r1, name = glycolysis
	reaction_r1=(global_par_k_1l*x(1)/(x(1)+global_par_K_1l)+global_par_k_1h*x(1)/(x(1)+global_par_K_1h)+global_par_k_1e*x(4)*x(1)/(x(1)*(global_par_K_1i*x(4)+1)+global_par_K_1e))*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r2, name = TCA (pyruvate)
	reaction_r2=global_par_k_2*x(2)/((x(2)+global_par_K_2)*(global_par_K_2i*x(1)+1))*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r3, name = Pyruvate Dehydrogenase
	reaction_r3=global_par_k_3*x(2)^4/(x(2)^4+global_par_K_3)*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r4, name = Acetald. dehydrogenase
	reaction_r4=global_par_k_4*x(4)/(x(4)+global_par_K_4)*x(6)*global_par_X_a*global_par_X_AcDH*compartment_env;

% Reaction: id = r5, name = TCA (acetate)
	reaction_r5=(global_par_k_5*x(3)/(x(3)+global_par_K_5)+global_par_k_5e*x(3)/((x(3)+global_par_K_5e)*(1+global_par_K_5i*x(1))))*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r6, name = ADH
	reaction_r6=global_par_k_6*(x(4)-global_par_k_6r*x(5))/(x(4)+global_par_K_6+global_par_K_6e*x(5))*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r7, name = BM growth (gluc)
	reaction_r7=global_par_k_7*x(1)/(x(1)+global_par_K_7)*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r8, name = BM growth (acetate)
	reaction_r8=global_par_k_8*x(3)/((x(3)+global_par_K_5e)*(1+global_par_K_5i*x(1)))*x(6)*global_par_X_a*compartment_env;

% Reaction: id = r9, name = Acdh production
	reaction_r9=((global_par_k_9*x(1)/(x(1)+global_par_K_9)+global_par_k_9e*x(5)/(x(5)+global_par_K_9e))/(global_par_K_9i*x(1)+1)+global_par_k_9c*x(1)/(x(1)+global_par_K_9))*global_par_X_a*x(6)*compartment_env;

% Reaction: id = r10, name = active BM degradation
	reaction_r10=(global_par_k_10*x(1)/(x(1)+global_par_K_10)+global_par_k_10e*x(5)/(x(5)+global_par_K_10e))*global_par_X_a*x(6)*compartment_env;

% Reaction: id = r11, name = Acdh degradation
	reaction_r11=global_par_k_11*global_par_X_AcDH*x(6)*compartment_env;

% Reaction: id = s_glu_in, name = Glucose inflow
	reaction_s_glu_in=x(11)*global_par_D*compartment_env;

% Reaction: id = s_glu_out, name = Glucose outflow
	reaction_s_glu_out=x(1)*global_par_D*compartment_env;

% Reaction: id = s_pyr_out, name = Pyruvate outflow
	reaction_s_pyr_out=x(2)*global_par_D*compartment_env;

% Reaction: id = s_acetate_out, name = Acetate outflow
	reaction_s_acetate_out=x(3)*global_par_D*compartment_env;

% Reaction: id = s_acetald_out, name = Acetaldehyde outflow
	reaction_s_acetald_out=x(4)*global_par_D*compartment_env;

% Reaction: id = s_EtOH_out, name = EtOH outflow
	reaction_s_EtOH_out=x(5)*global_par_D*compartment_env;

% Reaction: id = a_out, name = active BM outflow
	reaction_a_out=x(7)*global_par_D*compartment_env;

% Reaction: id = x_out, name = BM outflow
	reaction_x_out=x(6)*global_par_D*compartment_env;

% Reaction: id = AcDH_out, name = AcDH BM outflow
	reaction_AcDH_out=x(8)*global_par_D*compartment_env;

	xdot=zeros(13,1);
	% rateRule: variable = X_a
	xdot(12) = ((0.732*reaction_r7+0.619*reaction_r8)*(1-global_par_X_a)-reaction_r9-reaction_r10)/(x(6)*compartment_env);
	% rateRule: variable = X_AcDH
	xdot(13) = (reaction_r9-reaction_r11-(0.732*reaction_r7+0.619*reaction_r8)*global_par_X_AcDH)/(x(6)*compartment_env);
	
% Species:   id = s_glu, name = Glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_env))*((-1.0 * reaction_r1) + (-1.0 * reaction_r7) + ( 1.0 * reaction_s_glu_in) + (-1.0 * reaction_s_glu_out));
	
% Species:   id = s_pyr, name = Pyruvate, affected by kineticLaw
	xdot(2) = (1/(compartment_env))*(( 0.978 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r3) + (-1.0 * reaction_s_pyr_out));
	
% Species:   id = s_acetate, name = Acetate, affected by kineticLaw
	xdot(3) = (1/(compartment_env))*(( 1.363 * reaction_r4) + (-1.0 * reaction_r5) + (-1.0 * reaction_r8) + (-1.0 * reaction_s_acetate_out));
	
% Species:   id = s_acetald, name = Acetaldehyde, affected by kineticLaw
	xdot(4) = (1/(compartment_env))*(( 0.5 * reaction_r3) + (-1.0 * reaction_r4) + (-1.0 * reaction_r6) + (-1.0 * reaction_s_acetald_out));
	
% Species:   id = s_EtOH, name = EtOH, affected by kineticLaw
	xdot(5) = (1/(compartment_env))*(( 1.045 * reaction_r6) + (-1.0 * reaction_s_EtOH_out));
	
% Species:   id = x, name = BM, affected by kineticLaw
	xdot(6) = (1/(compartment_env))*(( 0.732 * reaction_r7) + ( 0.619 * reaction_r8) + (-1.0 * reaction_x_out));
	
% Species:   id = a, name = BM(active), involved in a rule 	xdot(7) = x(7);
	
% Species:   id = AcDH, name = BM(AcDH), involved in a rule 	xdot(8) = x(8);
	
% Species:   id = CO2, name = CO2
%WARNING speciesID: CO2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = Red, name = Red. Equ. (NADH)
%WARNING speciesID: Red, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = S_f, name = Glucose(feed)
%WARNING speciesID: S_f, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
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


