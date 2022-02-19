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
% Model name = Vazquez2014 - Chemical inhibition from amyloid protein aggregation kinetics
%
% is http://identifiers.org/biomodels.db/MODEL1407300000
% is http://identifiers.org/biomodels.db/BIOMD0000000532
% isDescribedBy http://identifiers.org/pubmed/24572069
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.00427219370168501;
	x0(2) = 0.972654947412286;
	x0(3) = 0.239400820174643;
	x0(4) = 3.47731075423886;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  xm, name = xm
	global_par_xm=1.0;
% Parameter:   id =  vm, name = vm
	global_par_vm=0.25;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=3.0;
% Parameter:   id =  kx, name = kx
	global_par_kx=1.0;
% Parameter:   id =  mx, name = mx
	global_par_mx=5.0;
% Parameter:   id =  ax, name = ax
	global_par_ax=2.0;
% Parameter:   id =  kv, name = kv
	global_par_kv=1.0;
% Parameter:   id =  mv, name = mv
	global_par_mv=4.0;
% Parameter:   id =  av, name = av
	global_par_av=2.0;
% Parameter:   id =  klambda, name = klambda
	global_par_klambda=1.0;
% Parameter:   id =  mlambda, name = mlambda
	global_par_mlambda=2.0;
% Parameter:   id =  alambda, name = alambda
	global_par_alambda=2.0;
% Parameter:   id =  C, name = C
	global_par_C=1.0;
% assignmentRule: variable = X
	x(1)=x(2)/(1+exp(2+4*x(3)/x(2)*(x(4)-time)));

	xdot=zeros(4,1);
	
% Species:   id = X, name = X, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Xm, name = Xm, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Vm, name = Vm, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Lambda, name = Lambda, involved in a rule 	xdot(4) = x(4);
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


