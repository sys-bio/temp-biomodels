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
% Model name = Kraan199_Kinetics of Cortisol Metabolism and Excretion.
%
% is http://identifiers.org/biomodels.db/MODEL2002280001
% is http://identifiers.org/biomodels.db/BIOMD0000000916
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=3.6;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.2;
% Parameter:   id =  K3, name = K3
	global_par_K3=26.6;
% Parameter:   id =  K4, name = K4
	global_par_K4=1.2;
% Parameter:   id =  K5, name = K5
	global_par_K5=1.2;

% Reaction: id = R1, name = R1
	reaction_R1=compartment_compartment*Rate_Law_for_R1(global_par_K3, x(1));

% Reaction: id = R2, name = R2
	reaction_R2=compartment_compartment*Rate_Law_for_R2(x(2), global_par_K4, global_par_K5, x(4));

% Reaction: id = R3, name = R3
	reaction_R3=compartment_compartment*Rate_Law_for_R3(global_par_K2, x(4));

% Reaction: id = R4, name = R4
	reaction_R4=compartment_compartment*Rate_Law_for_R4(global_par_K1, x(2));

	xdot=zeros(5,1);
	
% Species:   id = The_FOD_in_the_circulation__X1, name = The FOD in the circulation (X1), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R1));
	
% Species:   id = The_FOD_in_the_metabolizing_tissues__X4, name = The FOD in the metabolizing tissues (X4), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R4));
	
% Species:   id = The_cumulative_FOD_excreted_in_the_non_urinary_pool__X3, name = The cumulative FOD excreted in the non-urinary pool (X3), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R3));
	
% Species:   id = The_FOD_in_the_gallbladder___intestinal_lumen__X5, name = The FOD in the gallbladder + intestinal lumen (X5), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = The_cumulative_FOD_excreted_in_the_urine__X2, name = The cumulative FOD excreted in the urine (X2), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R4));
end

function z=Rate_Law_for_R1(K3,X1), z=(K3*X1);end

function z=Rate_Law_for_R2(X4,K4,K5,X5), z=(K4*X4-K5*X5);end

function z=Rate_Law_for_R3(K2,X5), z=(K2*X5);end

function z=Rate_Law_for_R4(K1,X4), z=(K1*X4);end

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


