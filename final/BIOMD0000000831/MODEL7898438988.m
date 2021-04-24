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
% Model name = Smith1980_HypothalamicRegulation
%
% is http://identifiers.org/biomodels.db/MODEL7898438988
% isDescribedBy http://identifiers.org/pubmed/6986927
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.5;
	x0(2) = 22.0;
	x0(3) = 15.0;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  R, name = R
% Parameter:   id =  h, name = h
	global_par_h=12.0;
% Parameter:   id =  c, name = c
	global_par_c=100.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.29;
% Parameter:   id =  H, name = H
% Parameter:   id =  x, name = x
% Parameter:   id =  L, name = L
% Parameter:   id =  g1, name = g1
	global_par_g1=10.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.97;
% Parameter:   id =  T, name = T
% Parameter:   id =  g2, name = g2
	global_par_g2=0.7;
% Parameter:   id =  b3, name = b3
	global_par_b3=1.39;
% rateRule: variable = R
global_par_R = x(1);
% rateRule: variable = L
global_par_L = x(2);
% rateRule: variable = T
global_par_T = x(3);
% assignmentRule: variable = x
	global_par_x=global_par_T-global_par_c/global_par_h;
% assignmentRule: variable = H
	global_par_H=piecewise(1, global_par_x > 0, 0);

	xdot=zeros(3,1);
	% rateRule: variable = R
	xdot(1) = (global_par_c-global_par_h*global_par_T)*(1-global_par_H)-global_par_b1*global_par_R;
	% rateRule: variable = L
	xdot(2) = global_par_g1*global_par_R-global_par_b2*global_par_L;
	% rateRule: variable = T
	xdot(3) = global_par_g2*global_par_L-global_par_b3*global_par_T;
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


