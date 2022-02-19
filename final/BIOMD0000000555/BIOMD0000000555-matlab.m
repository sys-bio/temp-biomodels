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
% Model name = Auer2010 - Correlation between lag time and aggregation rate in protein aggregation
%
% is http://identifiers.org/biomodels.db/MODEL1411100000
% is http://identifiers.org/biomodels.db/BIOMD0000000555
% isDescribedBy http://identifiers.org/pubmed/20602358
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
% Parameter:   id =  omega, name = omega
	global_par_omega=35.3;
% Parameter:   id =  n, name = n
	global_par_n=7.2;
% Parameter:   id =  a, name = a
% Parameter:   id =  e, name = e
	global_par_e=2.718;
% Parameter:   id =  k, name = k
	global_par_k=0.205;
% Parameter:   id =  ka, name = ka
% Parameter:   id =  C, name = C+
	global_par_C=6.9E-4;
% Parameter:   id =  t1, name = t1
% assignmentRule: variable = Amyloid
	x(1)=1-exp(-(time/global_par_omega)^global_par_n);
% assignmentRule: variable = a
	global_par_a=global_par_n*exp((-(global_par_n-1))/global_par_n)-1;
% assignmentRule: variable = ka
	global_par_ka=global_par_k/global_par_e;
% assignmentRule: variable = t1
	global_par_t1=(log(1/global_par_C)-global_par_e+1)*1/global_par_k;

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


