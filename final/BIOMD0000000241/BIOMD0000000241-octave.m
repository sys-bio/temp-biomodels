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
% Model name = Shi1993_Caffeine_pressor_tolerance
%
% is http://identifiers.org/biomodels.db/MODEL1001080000
% is http://identifiers.org/biomodels.db/BIOMD0000000241
% isDescribedBy http://identifiers.org/pubmed/8422743
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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

% Compartment: id = Gut, name = Gut, constant
	compartment_Gut=1.0;
% Compartment: id = C, name = C, constant
	compartment_C=0.31;
% Compartment: id = P, name = P, constant
	compartment_P=1.0;
% Compartment: id = Tol, name = Tol, constant
	compartment_Tol=1.0;
% Compartment: id = Eff, name = Eff, constant
	compartment_Eff=1.0;
% Parameter:   id =  CL, name = CL
	global_par_CL=0.11;
% Parameter:   id =  V_C, name = V_C
	global_par_V_C=0.32;
% Parameter:   id =  k_a, name = k_a
	global_par_k_a=12.0;
% Parameter:   id =  t_lag, name = t_lag
	global_par_t_lag=0.15;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.34;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.64;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.19;
% Parameter:   id =  t_half, name = t_half
	global_par_t_half=3.98;
% Parameter:   id =  F, name = F
	global_par_F=0.984;
% Parameter:   id =  k_eo, name = k_eo
	global_par_k_eo=2.03;
% Parameter:   id =  k_tol, name = k_tol
	global_par_k_tol=0.75;
% Parameter:   id =  E_0, name = E_0
	global_par_E_0=83.3;
% Parameter:   id =  S, name = S
	global_par_S=19.07;
% Parameter:   id =  T_50, name = T_50
	global_par_T_50=0.26;
% Parameter:   id =  E, name = MAP
% Parameter:   id =  t_int, name = t_intervall
	global_par_t_int=2.0;
% Parameter:   id =  cupsize, name = cupsize
	global_par_cupsize=90.0;
% Parameter:   id =  bodyweight, name = bodyweight
	global_par_bodyweight=80.0;
% Parameter:   id =  cups, name = cups
	global_par_cups=0.0;
% rateRule: variable = X_gut
x(1) = x(6);
% rateRule: variable = C_p
x(2) = x(7);
% rateRule: variable = C_per
x(3) = x(8);
% rateRule: variable = C_e
x(4) = x(9);
% rateRule: variable = C_t
x(5) = x(10);
% assignmentRule: variable = E
	global_par_E=global_par_E_0+global_par_S*x(4)/(1+x(5)/global_par_T_50);

%Event: id=coffecup
	event_coffecup=time >= (global_par_t_int*global_par_cups+global_par_t_lag);

	if(event_coffecup) 
		global_par_cups=global_par_cups+1;
		x(1)=x(1)+global_par_cupsize/global_par_bodyweight;
	end

	xdot=zeros(10,1);
	% rateRule: variable = X_gut
	xdot(6) = (-global_par_k_a)*x(1);
	% rateRule: variable = C_p
	xdot(7) = global_par_k_a*global_par_F*x(1)/global_par_V_C-global_par_k12*x(2)+global_par_k21*x(3)-global_par_k10*x(2);
	% rateRule: variable = C_per
	xdot(8) = global_par_k12*x(2)-global_par_k21*x(3);
	% rateRule: variable = C_e
	xdot(9) = global_par_k_eo*(x(2)-x(4));
	% rateRule: variable = C_t
	xdot(10) = global_par_k_tol*(x(2)-x(5));
	
% Species:   id = X_gut, name = X_gut, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = C_p, name = C_p, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = C_per, name = C_per, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = C_e, name = C_e, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = C_t, name = C_t, defined in a rule 	xdot(5) = x(5);
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


