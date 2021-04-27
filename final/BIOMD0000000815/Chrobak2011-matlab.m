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
% Model name = Chrobak2011 - A mathematical model of induced cancer-adaptive immune system competition
%
% isDescribedBy http://identifiers.org/doi/10.1142/S0218339011004111
% is http://identifiers.org/biomodels.db/MODEL1909170003
% is http://identifiers.org/biomodels.db/BIOMD0000000815
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 5.0E-4;
	x0(2) = 0.01;


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
% Parameter:   id =  a, name = a
% Parameter:   id =  b, name = b
% Parameter:   id =  c, name = c
% Parameter:   id =  d, name = d
% Parameter:   id =  e, name = e
% Parameter:   id =  f, name = f
% assignmentRule: variable = d
	global_par_d=1/32;
% assignmentRule: variable = e
	global_par_e=275/3200;
% assignmentRule: variable = f
	global_par_f=1/32;
% assignmentRule: variable = a
	global_par_a=1/16;
% assignmentRule: variable = b
	global_par_b=1/8;
% assignmentRule: variable = c
	global_par_c=1/32;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_a, x(1));

% Reaction: id = Tumor_Killing, name = Tumor_Killing
	reaction_Tumor_Killing=compartment_compartment*Function_for_Tumor_Killing(global_par_b, x(1), x(2));

% Reaction: id = Tumor_Competition, name = Tumor_Competition
	reaction_Tumor_Competition=compartment_compartment*Function_for_Tumor_Competition(global_par_c, x(1));

% Reaction: id = Immune_Growth, name = Immune_Growth
	reaction_Immune_Growth=compartment_compartment*Function_for_Immune_Growth(global_par_d, x(2));

% Reaction: id = Immune_Loss_Tumor, name = Immune_Loss_Tumor
	reaction_Immune_Loss_Tumor=compartment_compartment*Function_for_Immune_Loss_Tumor(global_par_e, x(1), x(2));

% Reaction: id = Immune_Growth_Control, name = Immune_Growth_Control
	reaction_Immune_Growth_Control=compartment_compartment*Function_for_Immune_Growth_Control(global_par_f, x(2));

	xdot=zeros(2,1);
	
% Species:   id = x_Cancer, name = x_Cancer, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing) + (-1.0 * reaction_Tumor_Competition));
	
% Species:   id = y_Immune_System, name = y_Immune_System, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Immune_Growth) + (-1.0 * reaction_Immune_Loss_Tumor) + (-1.0 * reaction_Immune_Growth_Control));
end

function z=Function_for_Immune_Growth(d,y), z=(d*y);end

function z=Function_for_Tumor_Growth(a,x), z=(a*x);end

function z=Function_for_Tumor_Killing(b,x,y), z=(b*x*y);end

function z=Function_for_Immune_Loss_Tumor(e,x,y), z=(e*x*y);end

function z=Function_for_Tumor_Competition(c,x), z=(c*x^2);end

function z=Function_for_Immune_Growth_Control(f,y), z=(f*y^2);end

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


