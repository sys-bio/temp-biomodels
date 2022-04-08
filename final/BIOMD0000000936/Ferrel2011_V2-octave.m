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
% Model name = ferrel2011 - autonomous biochemical oscillator in cell cycle in Xenopus laevis v2
%
% is http://identifiers.org/biomodels.db/MODEL1809040002
% is http://identifiers.org/biomodels.db/BIOMD0000000936
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.0;


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
% Parameter:   id =  a1, name = a1
	global_par_a1=0.1;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  n1, name = n1
	global_par_n1=8.0;

% Reaction: id = R2_Cdk1_inactivation_by_APC_active, name = R2 Cdk1 inactivation by APC_active
	reaction_R2_Cdk1_inactivation_by_APC_active=compartment_compartment*function_for_cdk1_inactivation_1(x(1), global_par_b1, global_par_k1, global_par_n1);

	xdot=zeros(1,1);
	
% Species:   id = CDK1_active, name = CDK1_active, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1_Cdk1_activation_by_cyclin_synthesis) + (-1.0 * reaction_R2_Cdk1_inactivation_by_APC_active));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_cdk1_inactivation_1(CDK1_active,b1,k1,n1), z=(b1*CDK1_active^(n1+1)/(k1^n1+CDK1_active^n1));end

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


