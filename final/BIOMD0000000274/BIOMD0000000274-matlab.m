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
% Model name = Rattanakul2003_BoneFormationModel
%
% is http://identifiers.org/biomodels.db/MODEL7909987998
% is http://identifiers.org/biomodels.db/BIOMD0000000274
% isDescribedBy http://identifiers.org/pubmed/12753937
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 2.0;
	x0(5) = 1.0;
	x0(6) = 0.15;
	x0(1) = 2.0;
	x0(2) = 1.0;
	x0(3) = 0.15;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.9;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.05;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.009;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.675;
% Parameter:   id =  a4, name = a4
	global_par_a4=0.01;
% Parameter:   id =  a5, name = a5
	global_par_a5=0.005;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.1;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.3;
% Parameter:   id =  b3, name = b3
	global_par_b3=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.5;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.025;
% rateRule: variable = x
x(1) = x(4);
% rateRule: variable = y
x(2) = x(5);
% rateRule: variable = z
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = x
	xdot(4) = global_par_a1/(global_par_k1+x(2))-global_par_b1*x(1);
	% rateRule: variable = y
	xdot(5) = global_par_epsilon*((global_par_a2+global_par_a3*x(1))*x(2)*x(3)/(global_par_k2+x(1)^2)-global_par_b2*x(2));
	% rateRule: variable = z
	xdot(6) = global_par_epsilon*global_par_delta*(global_par_a4*x(1)-(global_par_b3*x(3)+global_par_a5*x(1)*x(3)/(global_par_k3+x(1))));
	
% Species:   id = x, name = PTH, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = y, name = active osteoclasts, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = active osteoblasts, defined in a rule 	xdot(3) = x(3);
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


