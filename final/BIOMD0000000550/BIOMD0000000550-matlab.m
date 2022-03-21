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
% Model name = Baker2013 - Cytokine Mediated Inflammation in Rheumatoid Arthritis
%
% is http://identifiers.org/biomodels.db/MODEL1409250000
% is http://identifiers.org/biomodels.db/BIOMD0000000550
% isDescribedBy http://identifiers.org/pubmed/23002057
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(3) = 0.00577667577789773;
	x0(4) = 0.0203298264712407;
	x0(1) = 0.00577667577789773;
	x0(2) = 0.0203298264712407;


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

% Compartment: id = compartment_1, name = Synovium, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = alpha1
	global_par_parameter_1=0.025;
% Parameter:   id =  parameter_2, name = alpha2
	global_par_parameter_2=1.0;
% Parameter:   id =  parameter_3, name = alpha3
	global_par_parameter_3=0.5;
% Parameter:   id =  parameter_4, name = alpha4
	global_par_parameter_4=3.5;
% Parameter:   id =  parameter_5, name = gamma
	global_par_parameter_5=1.25;
% rateRule: variable = species_1
x(1) = x(3);
% rateRule: variable = species_2
x(2) = x(4);

	xdot=zeros(4,1);
	% rateRule: variable = species_1
	xdot(3) = -x(1)+global_par_parameter_4*x(2)^2/(global_par_parameter_3^2+x(2)^2);
	% rateRule: variable = species_2
	xdot(4) = (-global_par_parameter_5)*x(2)+1/(1+x(1)^2)*(global_par_parameter_1+global_par_parameter_2*x(2)^2/(1+x(2)^2));
	
% Species:   id = species_1, name = a, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = species_2, name = p, involved in a rule 	xdot(2) = x(2);
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


