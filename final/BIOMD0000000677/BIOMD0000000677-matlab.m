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
% Model name = Holmes2006 - Hill's model of muscle contraction
%
% is http://identifiers.org/biomodels.db/MODEL1006230007
% is http://identifiers.org/biomodels.db/BIOMD0000000677
% isDescribedBy http://identifiers.org/pubmed/16709736
% is http://identifiers.org/biomodels.db/MODEL1006230007
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.7;


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
% Parameter:   id =  L_ce, name = L_ce
% Parameter:   id =  L_se, name = L_se
% Parameter:   id =  L, name = L
% Parameter:   id =  P, name = P
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1449.027;
% Parameter:   id =  a, name = a
	global_par_a=37.24;
% Parameter:   id =  b, name = b
	global_par_b=0.325;
% Parameter:   id =  v_ce, name = v_ce
% Parameter:   id =  P_0, name = P_0
	global_par_P_0=144.9;
% Parameter:   id =  ModelValue_1, name = Initial for L_se
	global_par_ModelValue_1=0.3;
% assignmentRule: variable = L
	global_par_L=piecewise(1, time < 2, 0.95);
% assignmentRule: variable = L_se
	global_par_L_se=global_par_L-global_par_L_ce;
% assignmentRule: variable = P
	global_par_P=global_par_alpha*(global_par_L_se-global_par_ModelValue_1);
% assignmentRule: variable = v_ce
	global_par_v_ce=global_par_b*(global_par_P-global_par_P_0)/(global_par_P+global_par_a);
% rateRule: variable = L_ce
global_par_L_ce = x(1);

	xdot=zeros(1,1);
	% rateRule: variable = L_ce
	xdot(1) = global_par_v_ce;
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


