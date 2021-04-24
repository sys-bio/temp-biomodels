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
% Model name = GonzalezMiranda2013 - The effect of circadian oscillations on biochemical cell signaling by NF-κB
%
% isDescribedBy http://identifiers.org/pubmed/23820037
% is http://identifiers.org/biomodels.db/MODEL1912160002
% is http://identifiers.org/biomodels.db/BIOMD0000000893
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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
% Parameter:   id =  A, name = A
	global_par_A=0.007;
% Parameter:   id =  B, name = B
	global_par_B=954.5;
% Parameter:   id =  C, name = C
	global_par_C=0.035;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=2.0E-5;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.029;

% Reaction: id = x_Formation, name = x_Formation
	reaction_x_Formation=compartment_compartment*Function_for_x_Formation(global_par_A, x(1), global_par_epsilon, x(3));

% Reaction: id = x_Consumption, name = x_Consumption
	reaction_x_Consumption=compartment_compartment*Function_for_x_Consumption(global_par_B, x(3), x(1), global_par_delta);

% Reaction: id = y_Formation, name = y_Formation
	reaction_y_Formation=compartment_compartment*Function_for_y_Formation(x(1));

% Reaction: id = y_Consumption, name = y_Consumption	% Local Parameter:   id =  k1, name = k1
	reaction_y_Consumption_k1=1.0;

	reaction_y_Consumption=compartment_compartment*reaction_y_Consumption_k1*x(2);

% Reaction: id = z_Formation, name = z_Formation
	reaction_z_Formation=compartment_compartment*Function_for_z_Formation(x(2));

% Reaction: id = z_Consumption, name = z_Consumption
	reaction_z_Consumption=compartment_compartment*Function_for_z_Consumption(global_par_C, x(3), x(1), global_par_epsilon);

	xdot=zeros(3,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_x_Formation) + (-1.0 * reaction_x_Consumption));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_y_Formation) + (-1.0 * reaction_y_Consumption));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_z_Formation) + (-1.0 * reaction_z_Consumption));
end

function z=Function_for_x_Formation(A,x,epsilon,z), z=(A*(1-x)/(epsilon+z));end

function z=Function_for_y_Formation(x), z=(x*x);end

function z=Function_for_z_Consumption(C,z,x,epsilon), z=(C*z*(1-x)/(epsilon+z));end

function z=Function_for_x_Consumption(B,z,x,delta), z=(B*z*x/(delta+x));end

function z=Function_for_z_Formation(y), z=(y);end

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


