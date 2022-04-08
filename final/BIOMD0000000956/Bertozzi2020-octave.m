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
% Model name = Bertozzi2020 - SIR model of scenarios of COVID-19 spread in CA and NY
%
% isDescribedBy http://identifiers.org/pubmed/32616574
% is http://identifiers.org/biomodels.db/MODEL2008070001
% is http://identifiers.org/biomodels.db/BIOMD0000000956
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.2639029322548E-7;
	x0(2) = 0.0;
	x0(3) = 0.999999999999997;


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

% Compartment: id = USA___CA__NY, name = USA - CA, NY, constant
	compartment_USA___CA__NY=1.0;
% Parameter:   id =  Pop_CA, name = Pop_CA
	global_par_Pop_CA=3.956E7;
% Parameter:   id =  Ro_CA, name = Ro_CA
	global_par_Ro_CA=2.7;
% Parameter:   id =  gamma_CA, name = gamma_CA
	global_par_gamma_CA=0.14;
% Parameter:   id =  Io_CA, name = Io_CA
	global_par_Io_CA=5.0;
% Parameter:   id =  Time, name = Time
% Parameter:   id =  Trigger_CA, name = Trigger_CA
	global_par_Trigger_CA=1.0;
% Parameter:   id =  Trigger_NY, name = Trigger_NY
	global_par_Trigger_NY=0.0;
% Parameter:   id =  Pop_NY, name = Pop_NY
	global_par_Pop_NY=1.954E7;
% Parameter:   id =  Ro_NY, name = Ro_NY
	global_par_Ro_NY=4.1;
% Parameter:   id =  gamma_NY, name = gamma_NY
	global_par_gamma_NY=0.1;
% Parameter:   id =  Io_NY, name = Io_NY
	global_par_Io_NY=29.0;
% Parameter:   id =  Pop, name = Pop
% Parameter:   id =  Ro, name = Ro
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  Trigger_Lockdown, name = Trigger_Lockdown
	global_par_Trigger_Lockdown=0.0;
% Parameter:   id =  Lockdown_CA_start, name = Lockdown_CA_start
	global_par_Lockdown_CA_start=27.0;
% Parameter:   id =  Lockdown_CA_end, name = Lockdown_CA_end
	global_par_Lockdown_CA_end=66.0;
% Parameter:   id =  Lockdown_NY_start, name = Lockdown_NY_start
	global_par_Lockdown_NY_start=30.0;
% Parameter:   id =  Lockdown_NY_end, name = Lockdown_NY_end
	global_par_Lockdown_NY_end=67.0;
% Parameter:   id =  Io, name = Io
% Parameter:   id =  Peak_Time, name = Peak_Time
	global_par_Peak_Time=0.0;
% Parameter:   id =  ModelValue_3, name = Initial for Io_CA
	global_par_ModelValue_3=5.0;
% Parameter:   id =  ModelValue_10, name = Initial for Io_NY
	global_par_ModelValue_10=29.0;
% Parameter:   id =  ModelValue_16, name = Initial for Lockdown_CA_end
	global_par_ModelValue_16=66.0;
% Parameter:   id =  ModelValue_15, name = Initial for Lockdown_CA_start
	global_par_ModelValue_15=27.0;
% Parameter:   id =  ModelValue_18, name = Initial for Lockdown_NY_end
	global_par_ModelValue_18=67.0;
% Parameter:   id =  ModelValue_17, name = Initial for Lockdown_NY_start
	global_par_ModelValue_17=30.0;
% Parameter:   id =  ModelValue_0, name = Initial for Pop_CA
	global_par_ModelValue_0=3.956E7;
% Parameter:   id =  ModelValue_7, name = Initial for Pop_NY
	global_par_ModelValue_7=1.954E7;
% Parameter:   id =  ModelValue_1, name = Initial for Ro_CA
	global_par_ModelValue_1=2.7;
% Parameter:   id =  ModelValue_8, name = Initial for Ro_NY
	global_par_ModelValue_8=4.1;
% Parameter:   id =  ModelValue_5, name = Initial for Trigger_CA
	global_par_ModelValue_5=1.0;
% Parameter:   id =  ModelValue_14, name = Initial for Trigger_Lockdown
	global_par_ModelValue_14=0.0;
% Parameter:   id =  ModelValue_6, name = Initial for Trigger_NY
	global_par_ModelValue_6=0.0;
% Parameter:   id =  ModelValue_2, name = Initial for gamma_CA
	global_par_ModelValue_2=0.14;
% Parameter:   id =  ModelValue_9, name = Initial for gamma_NY
	global_par_ModelValue_9=0.1;
% assignmentRule: variable = Time
	global_par_Time=global_par_ModelValue_2*time;
% assignmentRule: variable = Pop
	global_par_Pop=global_par_ModelValue_5*global_par_ModelValue_0+global_par_ModelValue_6*global_par_ModelValue_7;
% assignmentRule: variable = Ro
	global_par_Ro=global_par_ModelValue_5*global_par_Ro_CA+global_par_ModelValue_6*global_par_Ro_NY;
% assignmentRule: variable = gamma
	global_par_gamma=global_par_ModelValue_5*global_par_ModelValue_2+global_par_ModelValue_6*global_par_ModelValue_9;
% assignmentRule: variable = Io
	global_par_Io=global_par_ModelValue_5*global_par_ModelValue_3+global_par_ModelValue_6*global_par_ModelValue_10;

% Reaction: id = Susceptible_to_Infected, name = Susceptible_to_Infected
	reaction_Susceptible_to_Infected=compartment_USA___CA__NY*Rate_Law_for_Susceptible_to_Infected(global_par_Ro, x(1), x(3), global_par_gamma);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_USA___CA__NY*global_par_gamma*x(1);

%Event: id=Lockdown_start
	event_Lockdown_start=(global_par_ModelValue_14 == 1) && (time > (global_par_ModelValue_5*global_par_ModelValue_15+global_par_ModelValue_6*global_par_ModelValue_17));

	if(event_Lockdown_start) 
		global_par_Ro_CA=global_par_Ro_CA/2;
		global_par_Ro_NY=global_par_Ro_NY/2;
	end

%Event: id=Lockdown_end
	event_Lockdown_end=(global_par_ModelValue_14 == 1) && (time > (global_par_ModelValue_5*global_par_ModelValue_16+global_par_ModelValue_6*global_par_ModelValue_18));

	if(event_Lockdown_end) 
		global_par_Ro_CA=global_par_ModelValue_1;
		global_par_Ro_NY=global_par_ModelValue_8;
	end

%Event: id=Peak_time_record_start
	event_Peak_time_record_start=rateOf(x(1)) < 1E-12;

	if(event_Peak_time_record_start) 
		global_par_Peak_Time=time;
	end

	xdot=zeros(3,1);
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(1) = (1/(compartment_USA___CA__NY))*(( 1.0 * reaction_Susceptible_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(2) = (1/(compartment_USA___CA__NY))*(( 1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(3) = (1/(compartment_USA___CA__NY))*((-1.0 * reaction_Susceptible_to_Infected));
end

function z=Rate_Law_for_Susceptible_to_Infected(Ro,I,S,gamma), z=(gamma*Ro*I*S);end

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


