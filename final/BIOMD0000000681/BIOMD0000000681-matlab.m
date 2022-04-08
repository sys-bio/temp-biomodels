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
% Model name = Waugh2006 - Diabetic Wound Healing - Treated and Untreated Macrophage Dynamics
%
% is http://identifiers.org/biomodels.db/MODEL1006230098
% isDescribedBy http://identifiers.org/pubmed/16794927
% is http://identifiers.org/biomodels.db/BIOMD0000000681
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(5) = 200.0;
	x0(6) = 200.0;
	x0(7) = 6.0;
	x0(1) = 296.53;
	x0(2) = 200.0;
	x0(3) = 200.0;
	x0(4) = 6.0;


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

% Compartment: id = COMpartment, name = Wound, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  tau1, name = tau1
	global_par_tau1=-2.47;
% Parameter:   id =  tau2, name = tau2
	global_par_tau2=21.94;
% Parameter:   id =  tau3, name = tau3
	global_par_tau3=6.41;
% Parameter:   id =  tau4, name = tau4
	global_par_tau4=1.75;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.8;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.05;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.693;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.002;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.07;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.2;
% Parameter:   id =  d2, name = d2
	global_par_d2=9.1;
% Parameter:   id =  total_M, name = total_M
% Parameter:   id =  dummy_variable, name = dummy_variable
	global_par_dummy_variable=0.0;
% assignmentRule: variable = K_T
	x(1)=global_par_tau1*x(4)^3+global_par_tau2*x(4)^2+global_par_tau3*x(4)+global_par_tau4;
% assignmentRule: variable = total_M
	global_par_total_M=0*x(1)+x(2)+x(3);
% rateRule: variable = phi_I
x(2) = x(5);
% rateRule: variable = phi_R
x(3) = x(6);
% rateRule: variable = T
x(4) = x(7);

%Event: id=event
	event_event=time > 22;

	if(event_event) 
		global_par_alpha=0.2+0.6*global_par_dummy_variable;
	end

	xdot=zeros(7,1);
	% rateRule: variable = phi_I
	xdot(5) = global_par_alpha*x(1)+global_par_k1*global_par_k2*x(2)*(1-global_par_k3*(x(2)+x(3)))-global_par_d1*x(2);
	% rateRule: variable = phi_R
	xdot(6) = (1-global_par_alpha)*x(1)+global_par_k1*global_par_k2*x(3)*(1-global_par_k3*(x(2)+x(3)))-global_par_d1*x(3);
	% rateRule: variable = T
	xdot(7) = global_par_k4*x(2)-global_par_d2*x(4);
	
% Species:   id = K_T, name = K_T, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = phi_I, name = phi_I, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = phi_R, name = phi_R, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = T, name = T, involved in a rule 	xdot(4) = x(4);
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


