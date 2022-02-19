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
% Model name = Ma2002_cAMP_oscillations
%
% is http://identifiers.org/biomodels.db/MODEL0606755064
% is http://identifiers.org/biomodels.db/BIOMD0000000229
% isDescribedBy http://identifiers.org/pubmed/12482327
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000099
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 3.39;
	x0(2) = 2.45;
	x0(3) = 1.6;
	x0(4) = 1.2;
	x0(5) = 1.13;
	x0(6) = 0.9;
	x0(7) = 0.48;


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
	global_par_k1=2.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.9;
% Parameter:   id =  k3, name = k3
	global_par_k3=2.5;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.5;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.6;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.8;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.3;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.3;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.8;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.7;
% Parameter:   id =  k12, name = k12
	global_par_k12=4.9;
% Parameter:   id =  k13, name = k13
	global_par_k13=23.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=4.5;

% Reaction: id = v1, name = v1
	reaction_v1=global_par_k1*x(2);

% Reaction: id = v2, name = v2
	reaction_v2=global_par_k2*x(1)*x(3);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_k3*x(4);

% Reaction: id = v4, name = v4
	reaction_v4=global_par_k4*x(3);

% Reaction: id = v5, name = v5
	reaction_v5=global_par_k5*x(2);

% Reaction: id = v6, name = v6
	reaction_v6=global_par_k6*x(3)*x(5);

% Reaction: id = v7, name = v7
	reaction_v7=global_par_k7;

% Reaction: id = v8, name = v8
	reaction_v8=global_par_k8*x(5)*x(6);

% Reaction: id = v9, name = v9
	reaction_v9=global_par_k9*x(1);

% Reaction: id = v10, name = v10
	reaction_v10=global_par_k10*x(6)*x(4);

% Reaction: id = v11, name = v11
	reaction_v11=global_par_k11*x(1);

% Reaction: id = v12, name = v12
	reaction_v12=global_par_k12*x(7);

% Reaction: id = v13, name = v13
	reaction_v13=global_par_k13*x(7);

% Reaction: id = v14, name = v14
	reaction_v14=global_par_k14*x(2);

	xdot=zeros(7,1);
	
% Species:   id = ACA, name = ACA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = CAR1, name = CAR1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14));
	
% Species:   id = PKA, name = PKA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = incAMP, name = incAMP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = ERK2, name = ERK2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = REGA, name = REGA, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = excAMP, name = excAMP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
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


