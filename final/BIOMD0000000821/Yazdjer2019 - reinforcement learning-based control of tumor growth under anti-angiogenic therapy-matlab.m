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
% Model name = Yazdjer2019 - reinforcement learning-based control of tumor growth under anti-angiogenic therapy
%
% is http://identifiers.org/biomodels.db/MODEL1909240003
% is http://identifiers.org/biomodels.db/BIOMD0000000821
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 0.0;


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
% Parameter:   id =  lambda_1, name = lambda_1
	global_par_lambda_1=0.192;
% Parameter:   id =  lambda_2, name = lambda_2
	global_par_lambda_2=0.0;
% Parameter:   id =  lambda_3, name = lambda_3
	global_par_lambda_3=1.3;
% Parameter:   id =  b, name = b
	global_par_b=5.85;
% Parameter:   id =  d, name = d
	global_par_d=0.00873;
% Parameter:   id =  e, name = e
	global_par_e=0.66;
% Parameter:   id =  u, name = u
	global_par_u=0.0;
% Parameter:   id =  a, name = a
	global_par_a=1.0;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_compartment*Function_for_tumor_growth(global_par_lambda_1, x(1), x(2), global_par_a);

% Reaction: id = endothelial_loss, name = endothelial loss
	reaction_endothelial_loss=compartment_compartment*Function_for_endothelial_loss(global_par_lambda_2, x(2), global_par_a);

% Reaction: id = stimulatory_effect, name = stimulatory effect
	reaction_stimulatory_effect=compartment_compartment*Function_for_stimulatory_effect(global_par_b, x(1), global_par_a);

% Reaction: id = inhibition_effect, name = inhibition effect
	reaction_inhibition_effect=compartment_compartment*Function_for_inhibition_effect(global_par_d, x(2), x(1), global_par_a);

% Reaction: id = drug_kill, name = drug kill
	reaction_drug_kill=compartment_compartment*Function_for_drug_kill(global_par_e, x(2), x(3), global_par_a);

% Reaction: id = inhibitor_clearance, name = inhibitor clearance
	reaction_inhibitor_clearance=compartment_compartment*Function_for_inhibitor_clearance(global_par_lambda_3, x(3), global_par_a);

	xdot=zeros(3,1);
	
% Species:   id = tumor_volume_x_1, name = tumor volume x_1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_tumor_growth));
	
% Species:   id = endothelial_volume_x_2, name = endothelial volume x_2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_endothelial_loss) + ( 1.0 * reaction_stimulatory_effect) + (-1.0 * reaction_inhibition_effect) + (-1.0 * reaction_drug_kill));
	
% Species:   id = concentration_of_administrated_inhibitor_x_3, name = concentration of administrated inhibitor x_3, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_inhibitor_clearance) + ( 1.0 * reaction_administrated_inhibitor));
end

function z=Function_for_tumor_growth(lambda_1,x_1,x_2,a), z=(lambda_1*x_1*log(x_1/x_2)*a);end

function z=Function_for_drug_kill(e,x_2,x_3,a), z=(e*x_2*x_3*a);end

function z=Function_for_inhibition_effect(d,x_2,x_1,a), z=(d*x_2*x_1^(2/3)*a);end

function z=Function_for_endothelial_loss(lambda_2,x_2,a), z=(lambda_2*x_2*a);end

function z=Function_for_stimulatory_effect(b,x_1,a), z=(b*x_1*a);end

function z=Function_for_inhibitor_clearance(lambda_3,x_3,a), z=(lambda_3*x_3*a);end

function z=Function_for_administrated_inhibitor_rate(u), z=(u);end

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


