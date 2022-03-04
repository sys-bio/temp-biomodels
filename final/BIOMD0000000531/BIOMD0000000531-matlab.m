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
% Model name = Crespo2012 - Kinetics of Amyloid Fibril Formation
%
% is http://identifiers.org/biomodels.db/MODEL1407170000
% is http://identifiers.org/biomodels.db/BIOMD0000000531
% isDescribedBy http://identifiers.org/pubmed/22767606
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=1.44;
% Parameter:   id =  kb, name = kb
	global_par_kb=1.6E-10;
% Parameter:   id =  kat50, name = kat50
% Parameter:   id =  v50t50, name = v50t50
% assignmentRule: variable = kat50
	global_par_kat50=log(1/global_par_kb+1);
% assignmentRule: variable = v50t50
	global_par_v50t50=1/4*(global_par_kb+1)*log(1/global_par_kb+1);
% assignmentRule: variable = alpha
	x(1)=1-1/(global_par_kb*(exp(global_par_Ka*time)-1)+1);

	xdot=zeros(1,1);
	
% Species:   id = alpha, name = alpha, involved in a rule 	xdot(1) = x(1);
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


