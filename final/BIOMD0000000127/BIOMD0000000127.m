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
% Model name = Izhikevich2003_SpikingNeuron
%
% is http://identifiers.org/biomodels.db/MODEL4880479792
% is http://identifiers.org/biomodels.db/BIOMD0000000127
% isDescribedBy http://identifiers.org/pubmed/18244602
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = -70.0;
	x0(2) = -14.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.02;
% Parameter:   id =  b, name = b
	global_par_b=0.2;
% Parameter:   id =  c, name = c
	global_par_c=-65.0;
% Parameter:   id =  d, name = d
	global_par_d=8.0;
% Parameter:   id =  Vthresh, name = Vthresh
	global_par_Vthresh=30.0;
% Parameter:   id =  i, name = i
	global_par_i=0.0;
% Parameter:   id =  v, name = v
% Parameter:   id =  U, name = U
% rateRule: variable = v
global_par_v = x(1);
% rateRule: variable = U
global_par_U = x(2);

%Event: id=event_0000001
	event_event_0000001=global_par_v > global_par_Vthresh;

	if(event_event_0000001) 
		global_par_v=global_par_c;
		global_par_U=global_par_U+global_par_d;
	end

%Event: id=event_0000002
	event_event_0000002=time > 10;

	if(event_event_0000002) 
		global_par_i=10;
	end

	xdot=zeros(2,1);
	% rateRule: variable = v
	xdot(1) = 0.04*global_par_v^2+5*global_par_v+140-global_par_U+global_par_i;
	% rateRule: variable = U
	xdot(2) = global_par_a*(global_par_b*global_par_v-global_par_U);
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


