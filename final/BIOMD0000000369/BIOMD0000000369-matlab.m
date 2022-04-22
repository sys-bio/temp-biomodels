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
% Model name = Beltrami1995_ThrombinGeneration_D
%
% is http://identifiers.org/biomodels.db/MODEL1108260012
% is http://identifiers.org/biomodels.db/BIOMD0000000369
% isDescribedBy http://identifiers.org/pubmed/7568009
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(8) = 5.0;
	x0(9) = 10.0;
	x0(10) = 100.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(1) = 5.0;
	x0(2) = 10.0;
	x0(3) = 100.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=1.0;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.1;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=1.0;
% Parameter:   id =  mu4, name = mu4
	global_par_mu4=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  mu5, name = mu5
	global_par_mu5=0.0;
% Parameter:   id =  C, name = C
	global_par_C=0.001;
% rateRule: variable = Z1
x(1) = x(8);
% rateRule: variable = Z2
x(2) = x(9);
% rateRule: variable = Z4
x(3) = x(10);
% rateRule: variable = E1
x(4) = x(11);
% rateRule: variable = E2
x(5) = x(12);
% rateRule: variable = E3
x(6) = x(13);
% rateRule: variable = E4
x(7) = x(14);

	xdot=zeros(14,1);
	% rateRule: variable = Z1
	xdot(8) = (-(global_par_mu1*x(5)+global_par_mu5*x(7)))*x(1);
	% rateRule: variable = Z2
	xdot(9) = (-global_par_mu2)*(1+global_par_C)*x(4)*x(2);
	% rateRule: variable = Z4
	xdot(10) = (-global_par_mu4)*x(6)*x(3);
	% rateRule: variable = E1
	xdot(11) = (global_par_mu1*x(5)+global_par_mu5*x(7))*x(1)-global_par_k1*x(4);
	% rateRule: variable = E2
	xdot(12) = global_par_mu2*x(4)*x(2)-global_par_mu3*x(7)*x(5)-global_par_k2*x(5);
	% rateRule: variable = E3
	xdot(13) = global_par_mu2*global_par_C*x(4)*x(2)+global_par_mu3*x(7)*x(5)-global_par_k3*x(6);
	% rateRule: variable = E4
	xdot(14) = global_par_mu4*x(6)*x(3)-global_par_k4*x(7);
	
% Species:   id = Z1, name = Z1, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = Z2, name = Z2, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Z4, name = Z4, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = E1, name = E1, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = E2, name = E2, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = E3, name = E3, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = E4, name = E4, defined in a rule 	xdot(7) = x(7);
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


