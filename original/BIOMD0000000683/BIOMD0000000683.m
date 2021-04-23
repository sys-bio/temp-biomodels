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
% Model name = Wodarz1999 - Cytotoxic T lymphocyte memory response to HIV infection
%
% is http://identifiers.org/biomodels.db/MODEL1006230062
% is http://identifiers.org/biomodels.db/BIOMD0000000683
% isDescribedBy http://identifiers.org/pubmed/10588728
% is http://identifiers.org/biomodels.db/MODEL1006230062
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 10.0;
	x0(2) = 0.1;
	x0(3) = 0.001;
	x0(4) = 0.0;


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

% Compartment: id = COMpartment, name = Patient, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  x, name = x
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  y, name = y
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  log_y, name = log_y
% Parameter:   id =  w, name = w
% Parameter:   id =  b, name = b
	global_par_b=0.01;
% Parameter:   id =  log_w, name = log_w
% Parameter:   id =  z, name = z
% Parameter:   id =  h, name = h
	global_par_h=0.1;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.5;
% Parameter:   id =  p, name = p
	global_par_p=1.0;
% Parameter:   id =  q, name = q
	global_par_q=0.5;
% Parameter:   id =  c, name = c
	global_par_c=0.1;
% Parameter:   id =  s, name = s
% assignmentRule: variable = log_y
	global_par_log_y=log(10, global_par_y*1)/log(10, 10);
% assignmentRule: variable = log_w
	global_par_log_w=log(10, global_par_w*1)/log(10, 10);
% assignmentRule: variable = s
	global_par_s=piecewise(1, time < 1, piecewise(1, time > 15, 0.0042));
% rateRule: variable = x
global_par_x = x(1);
% rateRule: variable = y
global_par_y = x(2);
% rateRule: variable = w
global_par_w = x(3);
% rateRule: variable = z
global_par_z = x(4);

	xdot=zeros(4,1);
	% rateRule: variable = x
	xdot(1) = global_par_lamda-(global_par_d*global_par_x+global_par_s*global_par_beta*global_par_x*global_par_y);
	% rateRule: variable = y
	xdot(2) = global_par_s*global_par_beta*global_par_x*global_par_y-(global_par_a*global_par_y+global_par_p*global_par_y*global_par_z);
	% rateRule: variable = w
	xdot(3) = global_par_c*global_par_x*global_par_y*global_par_w-(global_par_c*global_par_q*global_par_y*global_par_w+global_par_b*global_par_w);
	% rateRule: variable = z
	xdot(4) = global_par_c*global_par_q*global_par_y*global_par_w-global_par_h*global_par_z;
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


