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
% Model name = Bier2000_GlycolyticOscillation
%
% is http://identifiers.org/biomodels.db/MODEL1007260000
% is http://identifiers.org/biomodels.db/BIOMD0000000254
% isDescribedBy http://identifiers.org/pubmed/10692299
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(5) = 6.6;
	x0(6) = 10.3;
	x0(7) = 7.6;
	x0(8) = 0.41;
	x0(1) = 6.6;
	x0(2) = 7.6;
	x0(3) = 10.3;
	x0(4) = 0.41;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  V_in, name = V_in
	global_par_V_in=0.36;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.02;
% Parameter:   id =  kp, name = kp
	global_par_kp=6.0;
% Parameter:   id =  km, name = km
	global_par_km=13.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.01;
% Parameter:   id =  Tsum, name = Tsum
% Parameter:   id =  Tdiff, name = Tdiff
% rateRule: variable = G1
x(1) = x(5);
% rateRule: variable = G2
x(3) = x(6);
% rateRule: variable = T1
x(2) = x(7);
% rateRule: variable = T2
x(4) = x(8);
% assignmentRule: variable = Tsum
	global_par_Tsum=x(4)+x(2);
% assignmentRule: variable = Tdiff
	global_par_Tdiff=x(4)-x(2);

	xdot=zeros(8,1);
	% rateRule: variable = G1
	xdot(5) = global_par_V_in-global_par_k1*x(1)*x(2);
	% rateRule: variable = G2
	xdot(6) = global_par_V_in-global_par_k1*x(3)*x(4);
	% rateRule: variable = T1
	xdot(7) = 2*global_par_k1*x(2)*x(1)-global_par_kp*x(2)/(global_par_km+x(2))+global_par_epsilon*(x(4)-x(2));
	% rateRule: variable = T2
	xdot(8) = 2*global_par_k1*x(3)*x(4)-global_par_kp*x(4)/(global_par_km+x(4))-global_par_epsilon*(x(4)-x(2));
	
% Species:   id = G1, name = Glucose_1, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = T1, name = ATP_1, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = G2, name = Glucose_2, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = T2, name = ATP_2, defined in a rule 	xdot(4) = x(4);
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


