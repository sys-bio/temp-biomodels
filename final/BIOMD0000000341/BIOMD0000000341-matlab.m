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
% Model name = Topp2000_BetaCellMass_Diabetes
%
% is http://identifiers.org/biomodels.db/MODEL1106270000
% is http://identifiers.org/biomodels.db/BIOMD0000000341
% isDescribedBy http://identifiers.org/pubmed/11013117
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 250.0;
	x0(5) = 2.8;
	x0(6) = 37.0;
	x0(1) = 250.0;
	x0(2) = 2.8;
	x0(3) = 37.0;


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
% Parameter:   id =  si, name = si
	global_par_si=0.72;
% Parameter:   id =  Eg0, name = Eg0
	global_par_Eg0=1.44;
% Parameter:   id =  R0, name = R0
	global_par_R0=864.0;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=43.2;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=20000.0;
% Parameter:   id =  k, name = k
	global_par_k=432.0;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.06;
% Parameter:   id =  r1, name = r1
	global_par_r1=8.4E-4;
% Parameter:   id =  r2, name = r2
	global_par_r2=2.4E-6;
% rateRule: variable = G
x(1) = x(4);
% rateRule: variable = I
x(2) = x(5);
% rateRule: variable = B
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = G
	xdot(4) = global_par_R0-(global_par_Eg0+global_par_si*x(2))*x(1);
	% rateRule: variable = I
	xdot(5) = x(3)*global_par_sigma*x(1)^2/(global_par_alpha+x(1)^2)-global_par_k*x(2);
	% rateRule: variable = B
	xdot(6) = (-global_par_d0+global_par_r1*x(1)-global_par_r2*x(1)^2)*x(3);
	
% Species:   id = G, name = glucose, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = I, name = insulin, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = B, name = Mass, involved in a rule 	xdot(3) = x(3);
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


