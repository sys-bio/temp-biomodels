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
% Model name = Landberg2009 - Alkylresorcinol Dose Response
%
% is http://identifiers.org/biomodels.db/MODEL1803050001
% is http://identifiers.org/biomodels.db/BIOMD0000000948
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.01;
	x0(4) = 485.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Compartment: id = A1, name = A1, constant
	compartment_A1=1.0;
% Compartment: id = A2, name = A2, constant
	compartment_A2=1.0;
% Compartment: id = Central, name = Central, constant
	compartment_Central=1.0;
% Parameter:   id =  Lag_time_1, name = Lag_time_1
	global_par_Lag_time_1=0.9;
% Parameter:   id =  Lag_time_2, name = Lag_time_2
	global_par_Lag_time_2=4.7;
% Parameter:   id =  k_a_1, name = k_a_1
	global_par_k_a_1=0.3;
% Parameter:   id =  k_a_2, name = k_a_2
	global_par_k_a_2=1.8;
% Parameter:   id =  base, name = base
	global_par_base=0.32;
% Parameter:   id =  CL_V, name = CL/V
	global_par_CL_V=20.0;
% assignmentRule: variable = F1
	x(5)=piecewise(0, time < global_par_Lag_time_1, piecewise(0.1, (time >= global_par_Lag_time_1) && (time < global_par_Lag_time_2), 0.052));
% assignmentRule: variable = F2
	x(6)=piecewise(0, time < global_par_Lag_time_2, 0.048);

% Reaction: id = reaction, name = reaction
	reaction_reaction=modifier_function(x(5), x(4));

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=modifier_function(x(6), x(4));

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=global_par_k_a_1*x(1);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=global_par_k_a_2*x(2);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_Central*global_par_CL_V*x(3);

	xdot=zeros(6,1);
	
% Species:   id = AR_A1, name = AR, affected by kineticLaw
	xdot(1) = (1/(compartment_A1))*(( 1.0 * reaction_reaction) + (-1.0 * reaction_reaction_2));
	
% Species:   id = AR_A2, name = AR, affected by kineticLaw
	xdot(2) = (1/(compartment_A2))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3));
	
% Species:   id = AR_Central, name = AR, affected by kineticLaw
	xdot(3) = (1/(compartment_Central))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = AR_Dose, name = AR_Dose, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction) + (-1.0 * reaction_reaction_1));
	
% Species:   id = F1, name = F1, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = F2, name = F2, involved in a rule 	xdot(6) = x(6);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=modifier_function(modifier,drug), z=(modifier*drug);end

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


