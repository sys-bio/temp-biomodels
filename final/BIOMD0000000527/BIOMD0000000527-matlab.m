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
% Model name = Kaiser2014 - Salmonella persistence after ciprofloxacin treatment
%
% is http://identifiers.org/biomodels.db/MODEL1312170001
% is http://identifiers.org/biomodels.db/BIOMD0000000527
% isDescribedBy http://identifiers.org/pubmed/24558351
% is http://identifiers.org/biomodels.db/MODEL1312170001
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(2) = 0.0;
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

% Compartment: id = LN, name = Lymph node, constant
	compartment_LN=1.0;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=297.78957;
% Parameter:   id =  r1, name = r1
	global_par_r1=2.8195198;
% Parameter:   id =  c1, name = c1
	global_par_c1=0.0;
% Parameter:   id =  t1, name = t1
	global_par_t1=1.0;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=0.0;
% Parameter:   id =  r3, name = r3
	global_par_r3=4.5867007;
% Parameter:   id =  c3, name = c3
	global_par_c3=5.042901;
% Parameter:   id =  t3, name = t3
	global_par_t3=3.0;
% Parameter:   id =  mu5, name = mu5
	global_par_mu5=0.0;
% Parameter:   id =  r5, name = r5
	global_par_r5=1.8812956;
% Parameter:   id =  c5, name = c5
	global_par_c5=2.497735;
% Parameter:   id =  t5, name = t5
	global_par_t5=5.0;
% Parameter:   id =  mu10, name = mu10
	global_par_mu10=0.0;
% Parameter:   id =  r10, name = r10
	global_par_r10=0.3757764;
% Parameter:   id =  c10, name = c10
	global_par_c10=2.43E-7;
% Parameter:   id =  t10, name = t10
	global_par_t10=10.0;
% rateRule: variable = L
x(1) = x(2);

	xdot=zeros(2,1);
	% rateRule: variable = L
	xdot(2) = piecewise(global_par_mu1+(global_par_r1-global_par_c1)*x(1), (time >= 0) && (time <= global_par_t1), global_par_mu3+(global_par_r3-global_par_c3)*x(1), (time > global_par_t1) && (time <= global_par_t3), global_par_mu5+(global_par_r5-global_par_c5)*x(1), (time > global_par_t3) && (time <= global_par_t5), global_par_mu10+(global_par_r10-global_par_c10)*x(1), (time > global_par_t5) && (time <= global_par_t10));
	
% Species:   id = L, name = L, defined in a rule 	xdot(1) = x(1);
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


