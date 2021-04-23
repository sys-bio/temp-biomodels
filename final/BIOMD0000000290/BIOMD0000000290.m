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
% Model name = Alexander2010_Tcell_Regulation_Sys2
%
% is http://identifiers.org/biomodels.db/MODEL1012220001
% is http://identifiers.org/biomodels.db/BIOMD0000000290
% isDescribedBy http://identifiers.org/pubmed/20195912
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0E8;
	x0(5) = 0.0;


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

% Compartment: id = body, name = body, constant
	compartment_body=1.0;
% Parameter:   id =  v_max, name = v_max
	global_par_v_max=125000.0;
% Parameter:   id =  k, name = k
	global_par_k=5.0E7;
% Parameter:   id =  f, name = f
	global_par_f=1.0E-4;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=2000.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=200.0;
% Parameter:   id =  pi1, name = pi1
	global_par_pi1=0.016;
% Parameter:   id =  lambdaE, name = lambdaE
	global_par_lambdaE=1000.0;
% Parameter:   id =  muA, name = muA
	global_par_muA=0.25;
% Parameter:   id =  muR, name = muR
	global_par_muR=0.25;
% Parameter:   id =  muE, name = muE
	global_par_muE=0.25;
% Parameter:   id =  muG, name = muG
	global_par_muG=5.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.25;
% Parameter:   id =  sigma1, name = sigma1
	global_par_sigma1=3.0E-6;
% Parameter:   id =  mA, name = mA
% Parameter:   id =  mG, name = mG
% Parameter:   id =  R0, name = R0
% assignmentRule: variable = mA
	global_par_mA=global_par_b1+global_par_muA;
% assignmentRule: variable = mG
	global_par_mG=global_par_muG+global_par_v_max/global_par_k;
% assignmentRule: variable = R0
	global_par_R0=global_par_f*global_par_v_max/global_par_k*global_par_lambdaE*global_par_gamma/(global_par_mG*global_par_mA*global_par_muE);

% Reaction: id = r1a, name = r1a: self-antigen uptake
	reaction_r1a=global_par_v_max/(global_par_k+x(4))*x(4);

% Reaction: id = r1b, name = r1b: pAPC maturation
	reaction_r1b=global_par_f*global_par_v_max/(global_par_k+x(4))*x(4);

% Reaction: id = r2, name = r2: self-antigen release triggered by E
	reaction_r2=global_par_gamma*x(3);

% Reaction: id = r3, name = r3: R activation by A
	reaction_r3=global_par_beta*x(1);

% Reaction: id = r4, name = r4: R activation by A and E
	reaction_r4=global_par_pi1*x(3)*x(1);

% Reaction: id = r5, name = r5: E generation by A
	reaction_r5=global_par_lambdaE*x(1);

% Reaction: id = r6, name = r6: A death
	reaction_r6=global_par_muA*x(1);

% Reaction: id = r7, name = r7: R death
	reaction_r7=global_par_muR*x(2);

% Reaction: id = r8, name = r8: E death
	reaction_r8=global_par_muE*x(3);

% Reaction: id = r9, name = r9: G clearance
	reaction_r9=global_par_muG*x(4);

% Reaction: id = r10, name = r10: A suppression by Tregs of other specificity
	reaction_r10=global_par_b1*x(1);

% Reaction: id = r11, name = r11: A suppression by R
	reaction_r11=global_par_sigma1*x(1)*x(2);

	xdot=zeros(5,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_r1b) + (-1.0 * reaction_r6) + (-1.0 * reaction_r10) + (-1.0 * reaction_r11);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_r3) + ( 1.0 * reaction_r4) + (-1.0 * reaction_r7);
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_r5) + (-1.0 * reaction_r8);
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_r1a) + ( 1.0 * reaction_r2) + (-1.0 * reaction_r9);
	
% Species:   id = A_im, name = A_im
%WARNING speciesID: A_im, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
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


