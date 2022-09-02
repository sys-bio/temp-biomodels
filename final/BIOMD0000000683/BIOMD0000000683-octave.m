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
% Model name = Wodarz1999 CTL memory response HIV
%
% is http://identifiers.org/biomodels.db/MODEL1006230062
% is http://identifiers.org/biomodels.db/BIOMD0000000683
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.001;
	x0(2) = 10.0;
	x0(3) = 0.1;
	x0(4) = 0.0;


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

% Compartment: id = COMpartment, name = Patient, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  lamda, name = lamda
	global_par_lamda=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  log_y, name = log_y
% Parameter:   id =  b, name = b
	global_par_b=0.01;
% Parameter:   id =  log_w, name = log_w
% Parameter:   id =  h, name = h
	global_par_h=0.1;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.5;
% Parameter:   id =  p, name = p
	global_par_p=1.0;
% Parameter:   id =  q, name = q
	global_par_q=0.5;
% Parameter:   id =  c, name = c
	global_par_c=0.1;
% Parameter:   id =  s, name = s
% assignmentRule: variable = log_y
	global_par_log_y=log(10, x(3));
% assignmentRule: variable = log_w
	global_par_log_w=log(10, x(1));
% assignmentRule: variable = s
	global_par_s=piecewise(1, time < 1, piecewise(1, time > 15, 0.0042));

% Reaction: id = Degradation_of_w, name = Degradation of w
	reaction_Degradation_of_w=compartment_COMpartment*global_par_b*x(1);

% Reaction: id = Degradation_of_x, name = Degradation of x
	reaction_Degradation_of_x=compartment_COMpartment*global_par_d*x(2);

% Reaction: id = Degradation_of_y, name = Degradation of y
	reaction_Degradation_of_y=compartment_COMpartment*global_par_a*x(3);

% Reaction: id = Degradation_of_z, name = Degradation of z
	reaction_Degradation_of_z=compartment_COMpartment*global_par_h*x(4);

% Reaction: id = Differentiate_into_effectors, name = Differentiate into effectors
	reaction_Differentiate_into_effectors=compartment_COMpartment*Differentiate_into_effectors_0(global_par_c, x(3), global_par_q, x(1));

% Reaction: id = Infection_of_x, name = Infection of x
	reaction_Infection_of_x=compartment_COMpartment*Drug_therapy_during_primary_phase_of_infection(global_par_s, global_par_beta, x(2), x(3));

% Reaction: id = Killed_by_CTL_effectors, name = Killed by CTL effectors
	reaction_Killed_by_CTL_effectors=compartment_COMpartment*Killed_by_CTL_effectors_0(global_par_p, x(3), x(4));

% Reaction: id = Proliferation_of_CTLp, name = Proliferation of CTLp
	reaction_Proliferation_of_CTLp=compartment_COMpartment*Proliferation_of_CTLp_0(global_par_c, x(2), x(3), x(1));

	xdot=zeros(4,1);
	
% Species:   id = w, name = w, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*((-1.0 * reaction_Degradation_of_w) + (-1.0 * reaction_Differentiate_into_effectors) + ( 1.0 * reaction_Proliferation_of_CTLp));
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*((-1.0 * reaction_Degradation_of_x) + (-1.0 * reaction_Infection_of_x) + ( 1.0 * reaction_Production_of_x));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*((-1.0 * reaction_Degradation_of_y) + ( 1.0 * reaction_Infection_of_x) + (-1.0 * reaction_Killed_by_CTL_effectors));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(4) = (1/(compartment_COMpartment))*((-1.0 * reaction_Degradation_of_z) + ( 1.0 * reaction_Differentiate_into_effectors));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Differentiate_into_effectors_0(c,y,q,w), z=(c*q*y*w);end

function z=Killed_by_CTL_effectors_0(p,y,z), z=(p*y*z);end

function z=Proliferation_of_CTLp_0(c,x,y,w), z=(c*x*y*w);end

function z=Drug_therapy_during_primary_phase_of_infection(s,beta,x,y), z=(s*beta*x*y);end

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


