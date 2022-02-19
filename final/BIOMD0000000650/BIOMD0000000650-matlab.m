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
% Model name = Owen1998 - Tumour  treatment model
%
% is http://identifiers.org/biomodels.db/MODEL1708250002
% is http://identifiers.org/biomodels.db/BIOMD0000000650
% isDescribedBy http://identifiers.org/pubmed/9661282
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 0.0999999999999994;
	x0(5) = 0.899999999999994;
	x0(6) = 0.899999999999994;
	x0(1) = 0.0999999999999994;
	x0(2) = 0.899999999999994;
	x0(3) = 0.899999999999994;


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

% Compartment: id = cell, name = compartment, constant
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
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.7823;
% Parameter:   id =  xi, name = xi
	global_par_xi=2.0;
% Parameter:   id =  S, name = S
	global_par_S=62.5;
% Parameter:   id =  F, name = F
	global_par_F=0.0;
% Parameter:   id =  treatment_start, name = treatment_start
	global_par_treatment_start=10.0;
% Parameter:   id =  treatment_end, name = treatment_end
	global_par_treatment_end=400.0;
% Parameter:   id =  sink, name = sink
	global_par_sink=0.0;
% rateRule: variable = l
x(1) = x(4);
% rateRule: variable = m
x(2) = x(5);
% rateRule: variable = n
x(3) = x(6);

%Event: id=treatment_start_0
	event_treatment_start_0=time >= global_par_treatment_start;

	if(event_treatment_start_0) 
		global_par_F=0.072;
	end

%Event: id=treatment_end_0
	event_treatment_end_0=time >= global_par_treatment_end;

	if(event_treatment_end_0) 
		global_par_F=0;
	end

	xdot=zeros(6,1);
	% rateRule: variable = l
	xdot(4) = global_par_A*x(1)*(x(2)+global_par_F)*(global_par_N+1)/(global_par_N+x(1)+x(2)+x(3))+global_par_I*(1+global_par_S*(x(2)+global_par_F))-global_par_K_l*x(1)*x(2)*(x(2)+global_par_F)-global_par_delta_l*x(1);
	% rateRule: variable = m
	xdot(5) = global_par_xi*x(2)*(global_par_N+1)/(global_par_N+x(1)+x(2)+x(3))-x(2)-global_par_K_m*x(1)*x(2)*(x(2)+global_par_F);
	% rateRule: variable = n
	xdot(6) = x(3)*(global_par_N+1)/(global_par_N+x(1)+x(2)+x(3))-x(3);
	
% Species:   id = l, name = macrophage, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = m, name = mutated cell, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = n, name = normal cell, involved in a rule 	xdot(3) = x(3);
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


