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
% Model name = Lenbury2001_InsulinKineticsModel_A
%
% isDescribedBy http://identifiers.org/pubmed/11226623
% is http://identifiers.org/biomodels.db/MODEL1201140002
% is http://identifiers.org/biomodels.db/BIOMD0000000878
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 4.57;
	x0(2) = 1.9;
	x0(3) = 1.01;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  time_environment, name = time
	global_par_time_environment=1.0;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.2;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.1;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=0.1;
% Parameter:   id =  r_3, name = r_3
	global_par_r_3=0.1;
% Parameter:   id =  r_4, name = r_4
	global_par_r_4=0.1;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=0.1;
% Parameter:   id =  r_5, name = r_5
	global_par_r_5=0.1;
% Parameter:   id =  r_6, name = r_6
	global_par_r_6=0.1;
% Parameter:   id =  r_7, name = r_7
	global_par_r_7=0.05;
% Parameter:   id =  z_hat, name = z_hat
	global_par_z_hat=2.57039578276886;
% Parameter:   id =  y_hat, name = y_hat
	global_par_y_hat=1.24;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;

% Reaction: id = Production_of_insulin, name = Production of insulin
	reaction_Production_of_insulin=compartment_COMpartment*function_for_formation_of_insulin(global_par_r_1, x(2), global_par_c_1, x(3));

% Reaction: id = Utilisation_of_insulin, name = Utilisation of insulin
	reaction_Utilisation_of_insulin=compartment_COMpartment*Function_for_utilisation_of_insulin(global_par_r_2, x(1), x(3));

% Reaction: id = Production_of_glucose, name = Production of glucose
	reaction_Production_of_glucose=compartment_COMpartment*Function_for_production_of_glucose(global_par_epsilon, global_par_r_3, x(3), global_par_c_2);

% Reaction: id = utilisation_of_glucose, name = utilisation of glucose
	reaction_utilisation_of_glucose=compartment_COMpartment*Function_for_utilisation_of_glucose(global_par_epsilon, global_par_r_4, x(1));

% Reaction: id = Production_of_Beta_cell, name = Production of Beta cell
	reaction_Production_of_Beta_cell=compartment_COMpartment*Function_for_production_of_Beta_cell(global_par_r_5, x(2), global_par_y_hat, global_par_z_hat, x(3), global_par_r_6);

% Reaction: id = Removal_of_Beta_Cell, name = Removal of Beta Cell
	reaction_Removal_of_Beta_Cell=compartment_COMpartment*Function_for_removal_of_Beta_Cell(global_par_r_7, x(3));

	xdot=zeros(3,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_insulin) + (-1.0 * reaction_Utilisation_of_insulin));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_glucose) + (-1.0 * reaction_utilisation_of_glucose));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Production_of_Beta_cell) + (-1.0 * reaction_Removal_of_Beta_Cell));
end

function z=function_for_formation_of_insulin(r_1,y,c_1,z), z=(z*(r_1*y+c_1));end

function z=Function_for_utilisation_of_insulin(r_2,x,z), z=(z*r_2*x);end

function z=Function_for_production_of_glucose(epsilon,r_3,z,c_2), z=(epsilon*r_3/z+epsilon*c_2);end

function z=Function_for_utilisation_of_glucose(epsilon,r_4,x), z=(epsilon*r_4*x);end

function z=Function_for_production_of_Beta_cell(r_5,y,y_hat,z_hat,z,r_6), z=(r_5*(y-y_hat)*(z_hat-z)+r_6*z*(z_hat-z));end

function z=Function_for_removal_of_Beta_Cell(r_7,z), z=(r_7*z);end

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


