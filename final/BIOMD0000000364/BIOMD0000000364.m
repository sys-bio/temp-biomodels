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
% Model name = Lee2010_ThrombinActivation_OneForm
%
% is http://identifiers.org/biomodels.db/MODEL1108260002
% is http://identifiers.org/biomodels.db/BIOMD0000000364
% isDescribedBy http://identifiers.org/pubmed/20435402
% isDerivedFrom http://identifiers.org/pubmed/17726029
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 1.5E-4;
	x0(2) = 0.0;
	x0(3) = 1.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=91.8;
% Parameter:   id =  k2, name = k2
	global_par_k2=82.4;
% Parameter:   id =  k9, name = k9
	global_par_k9=3.12E-8;
% Parameter:   id =  k3, name = k3
	global_par_k3=38.1;
% Parameter:   id =  k3a, name = k3a
	global_par_k3a=151.5;
% Parameter:   id =  k4, name = k4
	global_par_k4=38.1;
% Parameter:   id =  k4a, name = k4a
	global_par_k4a=209.9;
% Parameter:   id =  k5, name = k5
	global_par_k5=5.16;
% Parameter:   id =  k6, name = k6
	global_par_k6=32.3;
% Parameter:   id =  k10, name = k10
	global_par_k10=7.23E-10;
% Parameter:   id =  k7, name = k7
	global_par_k7=6.76E-8;
% Parameter:   id =  k7a, name = k7a
	global_par_k7a=4.7;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.00599;
% Parameter:   id =  k8a, name = k8a
	global_par_k8a=42.6;
% Parameter:   id =  kC1, name = kC1
	global_par_kC1=2.39E-6;
% Parameter:   id =  kC2, name = kC2
	global_par_kC2=0.031;
% Parameter:   id =  j1, name = j1
	global_par_j1=33.4;
% Parameter:   id =  j3, name = j3
	global_par_j3=1.58E-6;
% Parameter:   id =  j3a, name = j3a
	global_par_j3a=0.185;
% Parameter:   id =  j5, name = j5
	global_par_j5=21.8;
% Parameter:   id =  j7, name = j7
	global_par_j7=4.46E-9;
% Parameter:   id =  j7a, name = j7a
	global_par_j7a=2.66E-5;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_compartment*(global_par_k1*x(1)*x(3)-global_par_j1*x(2));

% Reaction: id = r2, name = r2
	reaction_r2=compartment_compartment*global_par_k2*x(2);

% Reaction: id = r3, name = r3
	reaction_r3=compartment_compartment*global_par_k9*x(4);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_compartment*(global_par_k3*x(1)*x(5)-global_par_j3*x(6));

% Reaction: id = r5, name = r5
	reaction_r5=compartment_compartment*(global_par_k3a*x(1)*x(4)-global_par_j3a*x(7));

% Reaction: id = r6, name = r6
	reaction_r6=compartment_compartment*global_par_k4*x(6);

% Reaction: id = r7, name = r7
	reaction_r7=compartment_compartment*global_par_k4a*x(7);

% Reaction: id = r8, name = r8
	reaction_r8=compartment_compartment*(global_par_k5*x(1)*x(3)-global_par_j5*x(9));

% Reaction: id = r9, name = r9
	reaction_r9=compartment_compartment*global_par_k6*x(9);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_compartment*global_par_k10*x(10);

% Reaction: id = r11, name = r11
	reaction_r11=compartment_compartment*(global_par_k7*x(1)*x(11)-global_par_j7*x(12));

% Reaction: id = r12, name = r12
	reaction_r12=compartment_compartment*(global_par_k7a*x(1)*x(10)-global_par_j7a*x(13));

% Reaction: id = r13, name = r13
	reaction_r13=compartment_compartment*global_par_k8*x(12);

% Reaction: id = r14, name = r14
	reaction_r14=compartment_compartment*global_par_k8a*x(13);

% Reaction: id = r15, name = r15
	reaction_r15=compartment_compartment*global_par_kC1*x(2);

% Reaction: id = r16, name = r16
	reaction_r16=compartment_compartment*global_par_kC2*x(9);

	xdot=zeros(14,1);
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r2) + (-1.0 * reaction_r4) + (-1.0 * reaction_r5) + ( 1.0 * reaction_r6) + ( 1.0 * reaction_r7) + (-1.0 * reaction_r8) + ( 1.0 * reaction_r9) + (-1.0 * reaction_r11) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r13) + ( 1.0 * reaction_r14));
	
% Species:   id = E_P_1, name = E_P_1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r15));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_r1) + (-1.0 * reaction_r8));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_r2) + (-1.0 * reaction_r3) + (-1.0 * reaction_r5));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4));
	
% Species:   id = E_M1, name = E_M1, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r6));
	
% Species:   id = E_M, name = E_M, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r7));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_r6) + ( 1.0 * reaction_r7) + ( 1.0 * reaction_r13) + ( 1.0 * reaction_r14) + ( 1.0 * reaction_r15) + ( 1.0 * reaction_r16));
	
% Species:   id = E_P_2, name = E_P_2, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_r8) + (-1.0 * reaction_r9) + (-1.0 * reaction_r16));
	
% Species:   id = P2, name = P2, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_r9) + (-1.0 * reaction_r10) + (-1.0 * reaction_r12));
	
% Species:   id = P21, name = P21, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r11));
	
% Species:   id = E_P21, name = E_P21, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_r11) + (-1.0 * reaction_r13));
	
% Species:   id = E_P2, name = E_P2, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_r12) + (-1.0 * reaction_r14));
	
% Species:   id = E_P1, name = E_P1
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
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


