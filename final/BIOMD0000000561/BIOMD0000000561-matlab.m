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
% Model name = Martins2013 - True and apparent inhibition of amyloid fribril formation
%
% is http://identifiers.org/biomodels.db/MODEL1412110000
% is http://identifiers.org/biomodels.db/BIOMD0000000561
% isDescribedBy http://identifiers.org/pubmed/23232498
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000531
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

% Compartment: id = Brain, name = Brain, constant
	compartment_Brain=1.0;
% Parameter:   id =  kb, name = kb
	global_par_kb=0.001;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.5;
% Parameter:   id =  sigmao, name = sigmao
	global_par_sigmao=1.0;
% Parameter:   id =  V, name = V
	global_par_V=1.0;
% Parameter:   id =  C, name = C*
	global_par_C=1.0;
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  deltamt, name = deltamt
% Parameter:   id =  C_0, name = C
	global_par_C_0=2.0;
% assignmentRule: variable = gamma
	global_par_gamma=(global_par_C_0-global_par_C)/global_par_C;
% assignmentRule: variable = deltamt
	global_par_deltamt=global_par_sigmao*global_par_V*global_par_C*global_par_gamma;
% assignmentRule: variable = Amyloid
	x(1)=(1-1/(global_par_kb*(exp(global_par_ka*time)-1)+1))*global_par_deltamt;

	xdot=zeros(1,1);
	
% Species:   id = Amyloid, name = Amyloid, involved in a rule 	xdot(1) = x(1);
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


