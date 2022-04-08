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
% Model name = Sneyd2002_IP3_Receptor
%
% is http://identifiers.org/biomodels.db/MODEL9098147664
% is http://identifiers.org/biomodels.db/BIOMD0000000057
% isDescribedBy http://identifiers.org/pubmed/11842185
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  open_probability, name = open_probability
% Parameter:   id =  Phi1, name = Phi1
% Parameter:   id =  k1, name = k1
	global_par_k1=0.64;
% Parameter:   id =  L1, name = L1
	global_par_L1=0.12;
% Parameter:   id =  l2, name = l2
	global_par_l2=1.7;
% Parameter:   id =  lminus2, name = lminus2
	global_par_lminus2=0.8;
% Parameter:   id =  c, name = c
	global_par_c=10.0;
% Parameter:   id =  L3, name = L3
	global_par_L3=0.025;
% Parameter:   id =  Phi2, name = Phi2
% Parameter:   id =  k2, name = k2
	global_par_k2=37.4;
% Parameter:   id =  l4, name = l4
	global_par_l4=1.7;
% Parameter:   id =  Phi_minus2, name = Phi_minus2
% Parameter:   id =  kminus1, name = kminus1
	global_par_kminus1=0.04;
% Parameter:   id =  kminus2, name = kminus2
	global_par_kminus2=1.4;
% Parameter:   id =  kminus3, name = kminus3
	global_par_kminus3=29.8;
% Parameter:   id =  lminus4, name = lminus4
	global_par_lminus4=2.5;
% Parameter:   id =  L5, name = L5
	global_par_L5=54.7;
% Parameter:   id =  Phi3, name = Phi3
% Parameter:   id =  k3, name = k3
	global_par_k3=0.11;
% Parameter:   id =  Phi4, name = Phi4
% Parameter:   id =  k4, name = k4
	global_par_k4=4.0;
% Parameter:   id =  l6, name = l6
	global_par_l6=4707.0;
% Parameter:   id =  Phi_minus4, name = Phi_minus4
% Parameter:   id =  kminus4, name = kminus4
	global_par_kminus4=0.54;
% Parameter:   id =  lminus6, name = lminus6
	global_par_lminus6=11.4;
% Parameter:   id =  Phi5, name = Phi5
% Parameter:   id =  IP3, name = IP3
	global_par_IP3=10.0;
% assignmentRule: variable = open_probability
	global_par_open_probability=(0.1*x(2)+0.9*x(5))^4;
% assignmentRule: variable = Phi1
	global_par_Phi1=(global_par_k1*global_par_L1+global_par_l2)*global_par_c/(global_par_L1+global_par_c*(1+global_par_L1/global_par_L3));
% assignmentRule: variable = Phi2
	global_par_Phi2=(global_par_k2*global_par_L3+global_par_l4*global_par_c)/(global_par_L3+global_par_c*(1+global_par_L3/global_par_L1));
% assignmentRule: variable = Phi_minus2
	global_par_Phi_minus2=(global_par_kminus2+global_par_lminus4*global_par_c)/(1+global_par_c/global_par_L5);
% assignmentRule: variable = Phi3
	global_par_Phi3=global_par_k3*global_par_L5/(global_par_L5+global_par_c);
% assignmentRule: variable = Phi4
	global_par_Phi4=(global_par_k4*global_par_L5+global_par_l6)*global_par_c/(global_par_L5+global_par_c);
% assignmentRule: variable = Phi_minus4
	global_par_Phi_minus4=global_par_L1*(global_par_kminus4+global_par_lminus6)/(global_par_L1+global_par_c);
% assignmentRule: variable = Phi5
	global_par_Phi5=(global_par_k1*global_par_L1+global_par_l2)*global_par_c/(global_par_L1+global_par_c);

% Reaction: id = v1, name = Receptor-Open state transition	% Local Parameter:   id =  IP3, name = IP3
	reaction_v1_IP3=10.0;

	reaction_v1=compartment_compartment*(global_par_Phi2*reaction_v1_IP3*x(1)-global_par_Phi_minus2*x(2));

% Reaction: id = v2, name = Receptor-Inactivated state 1 transition	% Local Parameter:   id =  kminus1, name = kminus1
	reaction_v2_kminus1=0.04;
	% Local Parameter:   id =  lminus2, name = lminus2
	reaction_v2_lminus2=0.8;

	reaction_v2=compartment_compartment*(global_par_Phi1*x(1)-(reaction_v2_kminus1+reaction_v2_lminus2)*x(3));

% Reaction: id = v3, name = Open-Shut state transition	% Local Parameter:   id =  kminus3, name = kminus3
	reaction_v3_kminus3=29.8;

	reaction_v3=compartment_compartment*(global_par_Phi3*x(2)-reaction_v3_kminus3*x(4));

% Reaction: id = v4, name = Open-Activated state transition
	reaction_v4=compartment_compartment*(global_par_Phi4*x(2)-global_par_Phi_minus4*x(5));

% Reaction: id = v5, name = Activated-Inactivated state 2 transition	% Local Parameter:   id =  kminus1, name = kminus1
	reaction_v5_kminus1=0.04;
	% Local Parameter:   id =  lminus2, name = lminus2
	reaction_v5_lminus2=0.8;

	reaction_v5=compartment_compartment*(global_par_Phi5*x(5)-(reaction_v5_kminus1+reaction_v5_lminus2)*x(6));

	xdot=zeros(6,1);
	
% Species:   id = R, name = Receptor, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = O, name = Open State, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = I1, name = Inactivated State 1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v2));
	
% Species:   id = S, name = Shut State, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v3));
	
% Species:   id = A, name = Activated State, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = I2, name = Inactivated State 2, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v5));
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


