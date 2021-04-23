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
% Model name = Muller2008_treshold_minimal
%
% is http://identifiers.org/biomodels.db/MODEL1108260013
% is http://identifiers.org/biomodels.db/BIOMD0000000367
% isDescribedBy http://identifiers.org/pubmed/17936855
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(4) = 4.0;
	x0(5) = 0.2;
	x0(6) = 0.4;
	x0(7) = 0.4;
	x0(1) = 4.0;
	x0(2) = 0.2;
	x0(3) = 0.4;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.2;
% Parameter:   id =  mu_x, name = mu_x
	global_par_mu_x=4.0;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=0.5;
% Parameter:   id =  b, name = b
	global_par_b=1.5;
% Parameter:   id =  mu_z, name = mu_z
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.002;
% Parameter:   id =  k, name = k
	global_par_k=0.4;
% Parameter:   id =  mu_z_star, name = mu_z_star
	global_par_mu_z_star=0.4;
% rateRule: variable = x
x(1) = x(4);
% rateRule: variable = y
x(2) = x(5);
% rateRule: variable = z
x(3) = x(6);
% rateRule: variable = mu_z
global_par_mu_z = x(7);

	xdot=zeros(7,1);
	% rateRule: variable = x
	xdot(4) = (-global_par_r)*x(1)*x(2)+global_par_zeta*global_par_mu_x-global_par_zeta*x(1);
	% rateRule: variable = y
	xdot(5) = global_par_r*x(1)*x(2)-global_par_b*x(2)*x(3)-global_par_zeta*x(2);
	% rateRule: variable = z
	xdot(6) = (-global_par_b)*x(2)*x(3)+global_par_zeta*global_par_mu_z-global_par_zeta*x(3);
	% rateRule: variable = mu_z
	xdot(7) = global_par_epsilon*(x(2)-global_par_k*(global_par_mu_z-global_par_mu_z_star));
	
% Species:   id = x, name = x, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = y, name = y, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = z, involved in a rule 	xdot(3) = x(3);
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


