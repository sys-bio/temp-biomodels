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
% Model name = Owen1998 - tumour growth model
%
% is http://identifiers.org/biomodels.db/BIOMD0000000670
% is http://identifiers.org/biomodels.db/MODEL1708240000
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 0.0999999999999985;
	x0(5) = 0.899999999999988;
	x0(6) = 0.899999999999988;
	x0(1) = 0.0999999999999985;
	x0(2) = 0.899999999999988;
	x0(3) = 0.899999999999988;


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

% Compartment: id = cell, name = Tumor Microenvironment, constant
	compartment_cell=1.0;
% Parameter:   id =  A, name = A
	global_par_A=0.025;
% Parameter:   id =  N, name = N
	global_par_N=1.0;
% Parameter:   id =  I, name = I
	global_par_I=0.01;
% Parameter:   id =  K_l, name = K_l
	global_par_K_l=17.857;
% Parameter:   id =  delta_l, name = delta_l
	global_par_delta_l=0.1;
% Parameter:   id =  K_m, name = K_m
	global_par_K_m=25.0;
% Parameter:   id =  xi, name = xi
	global_par_xi=2.0;
% Parameter:   id =  S, name = S
	global_par_S=62.5;
% rateRule: variable = l
x(1) = x(4);
% rateRule: variable = n
x(2) = x(5);
% rateRule: variable = m
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = l
	xdot(4) = global_par_A*x(1)*x(3)*(global_par_N+1)/(global_par_N+x(1)+x(3)+x(2))+global_par_I*(1+global_par_S*x(3))-global_par_K_l*x(1)*x(3)*x(3)-global_par_delta_l*x(1);
	% rateRule: variable = n
	xdot(5) = x(2)*(global_par_N+1)/(global_par_N+x(1)+x(3)+x(2))-x(2);
	% rateRule: variable = m
	xdot(6) = global_par_xi*x(3)*(global_par_N+1)/(global_par_N+x(1)+x(3)+x(2))-x(3)-global_par_K_m*x(1)*x(3)*x(3);
	
% Species:   id = l, name = macrophage, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = n, name = normal cell, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = m, name = mutated cell, involved in a rule 	xdot(3) = x(3);
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


