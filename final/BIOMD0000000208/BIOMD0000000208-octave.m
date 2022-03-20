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
% Model name = Deineko2003_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL1475866846
% is http://identifiers.org/biomodels.db/BIOMD0000000208
% isDescribedBy http://identifiers.org/pubmed/14582399
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.014;
	x0(2) = 0.006;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.0E-4;
	x0(6) = 0.0;


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
% Parameter:   id =  emax, name = emax
	global_par_emax=2.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k1_prime, name = k1_prime
	global_par_k1_prime=1.0;
% Parameter:   id =  k1_double_prime, name = k1_double_prime
	global_par_k1_double_prime=10.0;
% Parameter:   id =  phi1, name = phi1
	global_par_phi1=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.4;
% Parameter:   id =  phi2, name = phi2
	global_par_phi2=0.01;
% Parameter:   id =  phi3, name = phi3
	global_par_phi3=0.1;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.09;
% Parameter:   id =  k4_double_prime, name = k4_double_prime
	global_par_k4_double_prime=0.1;
% Parameter:   id =  k4i, name = k4i
	global_par_k4i=1.0;
% Parameter:   id =  k4a, name = k4a
	global_par_k4a=2.0;
% Parameter:   id =  phi4i, name = phi4i
	global_par_phi4i=0.01;
% Parameter:   id =  phi4a, name = phi4a
	global_par_phi4a=0.01;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.0;
% Parameter:   id =  F6, name = F6
% Parameter:   id =  phi6, name = phi6
	global_par_phi6=0.1;
% assignmentRule: variable = F6
	global_par_F6=piecewise(0.044, t <= 60, 0);

% Reaction: id = R1
	reaction_R1=global_par_emax*global_par_k1*x(1)/(global_par_k1*x(1)+(global_par_k1_prime+global_par_k1_double_prime*x(1))*x(2));

% Reaction: id = R2
	reaction_R2=global_par_phi1*x(1);

% Reaction: id = R3
	reaction_R3=global_par_k2*x(1);

% Reaction: id = R4
	reaction_R4=global_par_k3*x(2)*x(5);

% Reaction: id = R5
	reaction_R5=global_par_phi2*x(2);

% Reaction: id = R6
	reaction_R6=global_par_phi3*x(3);

% Reaction: id = R7
	reaction_R7=global_par_k4*x(1);

% Reaction: id = R8
	reaction_R8=global_par_k4_double_prime*x(6);

% Reaction: id = R9
	reaction_R9=global_par_k4i*x(4)*x(5);

% Reaction: id = R10
	reaction_R10=global_par_k4a*x(5);

% Reaction: id = R11
	reaction_R11=global_par_phi4i*x(4);

% Reaction: id = R12
	reaction_R12=global_par_phi4a*x(5);

% Reaction: id = R13
	reaction_R13=global_par_k6*x(1);

% Reaction: id = R14
	reaction_R14=global_par_F6;

% Reaction: id = R15
	reaction_R15=global_par_phi6*x(6);

	xdot=zeros(6,1);
	
% Species:   id = y1, name = E2F, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = y2, name = pRB, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = y3, name = Phosphorylated pRB, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R6));
	
% Species:   id = y4, name = inactive cycE_cdk2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R11));
	
% Species:   id = y5, name = active cycE_cdk2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10) + (-1.0 * reaction_R12));
	
% Species:   id = y6, name = AP-1, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R15));
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


