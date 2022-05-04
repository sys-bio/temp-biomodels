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
% Model name = Lenbury2001_InsulinKineticsModel_A
%
% is http://identifiers.org/biomodels.db/MODEL1201140002
% isDescribedBy http://identifiers.org/pubmed/11226623
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 4.0;
	x0(2) = 0.0;
	x0(3) = 1.0;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  x, name = x
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.2;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.1;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=0.1;
% Parameter:   id =  y, name = y
% Parameter:   id =  r_3, name = r_3
	global_par_r_3=0.1;
% Parameter:   id =  r_4, name = r_4
	global_par_r_4=0.1;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=0.1;
% Parameter:   id =  z, name = z
% Parameter:   id =  r_5, name = r_5
	global_par_r_5=0.1;
% Parameter:   id =  r_6, name = r_6
	global_par_r_6=0.1;
% Parameter:   id =  r_7, name = r_7
	global_par_r_7=0.05;
% Parameter:   id =  z_hat, name = z_hat
	global_par_z_hat=2.0;
% Parameter:   id =  y_hat, name = y_hat
	global_par_y_hat=1.24;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;
% rateRule: variable = x
global_par_x = x(1);
% rateRule: variable = y
global_par_y = x(2);
% rateRule: variable = z
global_par_z = x(3);

	xdot=zeros(3,1);
	% rateRule: variable = x
	xdot(1) = global_par_z*(global_par_r_1*global_par_y+(-global_par_r_2)*global_par_x+global_par_c_1);
	% rateRule: variable = y
	xdot(2) = global_par_epsilon*(global_par_r_3/global_par_z-global_par_r_4*global_par_x+global_par_c_2);
	% rateRule: variable = z
	xdot(3) = global_par_r_5*(global_par_y-global_par_y_hat)*(global_par_z_hat-global_par_z)+global_par_r_6*global_par_z*(global_par_z_hat-global_par_z)-global_par_r_7*global_par_z;
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


