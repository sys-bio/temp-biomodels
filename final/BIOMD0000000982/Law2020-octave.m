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
% Model name = Law2020 - SIR model of COVID-19 transmission in Malyasia with time-varying parameters
%
% isDescribedBy http://identifiers.org/pubmed/33303925
% is http://identifiers.org/biomodels.db/MODEL2012240001
% is http://identifiers.org/biomodels.db/BIOMD0000000982
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 3.268E7;
	x0(2) = 728.0;
	x0(3) = 62.0000000000001;


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

% Compartment: id = Malayasia, name = Malayasia, constant
	compartment_Malayasia=1.0;
% Parameter:   id =  z, name = z
% Parameter:   id =  beta_0, name = beta_0
	global_par_beta_0=0.4114;
% Parameter:   id =  delta, name = delta
% Parameter:   id =  p, name = p
% Parameter:   id =  beta, name = beta
% Parameter:   id =  I_total, name = I_total
% Parameter:   id =  N, name = N
% Parameter:   id =  Trigger_Stage_1, name = Trigger_Stage_1
	global_par_Trigger_Stage_1=0.0;
% Parameter:   id =  Trigger_Stage_2, name = Trigger_Stage_2
	global_par_Trigger_Stage_2=0.0;
% Parameter:   id =  Trigger_Stage_3, name = Trigger_Stage_3
	global_par_Trigger_Stage_3=1.0;
% assignmentRule: variable = delta
	global_par_delta=global_par_Trigger_Stage_1*0.025+global_par_Trigger_Stage_2*0.042+global_par_Trigger_Stage_3*0.05;
% assignmentRule: variable = p
	global_par_p=global_par_Trigger_Stage_1*0.0784+global_par_Trigger_Stage_2*0.045+global_par_Trigger_Stage_3*0.0466;
% assignmentRule: variable = z
	global_par_z=global_par_Trigger_Stage_1*0.4374+global_par_Trigger_Stage_2*0.3914+global_par_Trigger_Stage_3*0.4047;
% assignmentRule: variable = N
	global_par_N=x(2)+x(3)+x(1);
% assignmentRule: variable = I_total
	global_par_I_total=x(2)+x(3);
% assignmentRule: variable = beta
	global_par_beta=global_par_beta_0*(1-global_par_p)^time;

% Reaction: id = Susceptible_to_Infected, name = Susceptible_to_Infected
	reaction_Susceptible_to_Infected=compartment_Malayasia*Rate_Law_for_reaction(global_par_z, global_par_beta, x(1), x(2), global_par_N);

% Reaction: id = Infected_to_Removed, name = Infected_to_Removed
	reaction_Infected_to_Removed=compartment_Malayasia*global_par_delta*x(2);

	xdot=zeros(3,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Malayasia))*((-1.0 * reaction_Susceptible_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(2) = (1/(compartment_Malayasia))*(( 1.0 * reaction_Susceptible_to_Infected) + (-1.0 * reaction_Infected_to_Removed));
	
% Species:   id = Removed, name = Removed, affected by kineticLaw
	xdot(3) = (1/(compartment_Malayasia))*(( 1.0 * reaction_Infected_to_Removed));
end

function z=Rate_Law_for_reaction(z,beta_t,S,I,N), z=(z*beta_t*S*I/N);end

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


