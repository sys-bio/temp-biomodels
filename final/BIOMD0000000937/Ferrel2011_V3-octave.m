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
% Model name = Ferrel2011 - Autonomous biochemical oscillator in regulation of CDK1, Plk1, and APC in Xenopus Laevis cell cycle
%
% is http://identifiers.org/biomodels.db/MODEL1809040004
% is http://identifiers.org/biomodels.db/BIOMD0000000937
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

% Compartment: id = compartment, name = nuclear, constant
	compartment_compartment=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.1;
% Parameter:   id =  a2, name = a2
	global_par_a2=3.0;
% Parameter:   id =  a3, name = a3
	global_par_a3=3.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=3.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=1.0;
% Parameter:   id =  b3, name = b3
	global_par_b3=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.5;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.5;
% Parameter:   id =  n1, name = n1
	global_par_n1=8.0;
% Parameter:   id =  n2, name = n2
	global_par_n2=8.0;
% Parameter:   id =  n3, name = n3
	global_par_n3=8.0;

% Reaction: id = R2_Cdk1_inactivation_by_APC_active, name = R2 Cdk1 inactivation by APC_active
	reaction_R2_Cdk1_inactivation_by_APC_active=compartment_compartment*function_for_cdk1_inactivation(global_par_b1, x(2), global_par_n1, global_par_k1, x(1));

% Reaction: id = R3_APC_activation_by_Cdk1_active, name = R3 APC activation by Cdk1_active
	reaction_R3_APC_activation_by_Cdk1_active=compartment_compartment*function_for_APC_activation(global_par_a3, x(2), x(3), global_par_n3, global_par_k3);

% Reaction: id = R4_APC_Inactivation, name = R4 APC Inactivation
	reaction_R4_APC_Inactivation=compartment_compartment*global_par_b3*x(2);

% Reaction: id = R5_Plk1_activation_by, name = R5 Plk1 activation by
	reaction_R5_Plk1_activation_by=compartment_compartment*function_for_APC_activation(global_par_a2, x(3), x(1), global_par_n2, global_par_k2);

% Reaction: id = R6_Plk1_inactivation, name = R6 Plk1 inactivation
	reaction_R6_Plk1_inactivation=compartment_compartment*global_par_b2*x(3);

	xdot=zeros(3,1);
	
% Species:   id = CDK1_active, name = CDK1_active, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1_Cdk1_activation_by_cyclin_synthesis) + (-1.0 * reaction_R2_Cdk1_inactivation_by_APC_active));
	
% Species:   id = APC_active, name = APC_active, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R3_APC_activation_by_Cdk1_active) + (-1.0 * reaction_R4_APC_Inactivation));
	
% Species:   id = Plk1_active, name = Plk1_active, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R5_Plk1_activation_by) + (-1.0 * reaction_R6_Plk1_inactivation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_APC_activation(a2,product,modifier,n2,k2), z=(a2*(1-product)*modifier^n2/(k2^n2+modifier^n2));end

function z=function_for_cdk1_inactivation(b1,modifier,n1,k1,substrate), z=(b1*substrate*modifier^n1/(k1^n1+modifier^n1));end

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


