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
% Model name = Dong2014 - Mathematical modeling on helper t cells in a tumor immune system
%
% isDescribedBy http://identifiers.org/doi/10.3934/dcdsb.2014.19.55
% isDerivedFrom http://identifiers.org/pubmed/8186756
% is http://identifiers.org/biomodels.db/MODEL1908080001
% is http://identifiers.org/biomodels.db/BIOMD0000000783
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;


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
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.636;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.002;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.3743;
% Parameter:   id =  omega_1, name = omega_1
	global_par_omega_1=0.04;
% Parameter:   id =  sigma_2, name = sigma_2
	global_par_sigma_2=0.38;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=0.055;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.01;
% Parameter:   id =  omega_2, name = omega_2
	global_par_omega_2=0.002;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_alpha, x(1), global_par_beta);

% Reaction: id = Tumor_Killing_ECs, name = Tumor_Killing_ECs
	reaction_Tumor_Killing_ECs=compartment_compartment*Function_for_Tumor_Killing_ECs(x(1), x(2));

% Reaction: id = EC_Stimulation_Tumor_Debris, name = EC_Stimulation_Tumor_Debris
	reaction_EC_Stimulation_Tumor_Debris=compartment_compartment*Function_for_EC_Stimulation_Tumor_Debris(global_par_omega_1, x(1), x(2));

% Reaction: id = EC_Natural_Death, name = EC_Natural_Death
	reaction_EC_Natural_Death=compartment_compartment*global_par_delta_1*x(2);

% Reaction: id = EC_Activation_HTC, name = EC_Activation_HTC
	reaction_EC_Activation_HTC=compartment_compartment*Function_for_EC_Activation_HTC(global_par_rho, x(2), x(3));

% Reaction: id = HTC_Stimulation_Tumor_Antigens, name = HTC_Stimulation_Tumor_Antigens
	reaction_HTC_Stimulation_Tumor_Antigens=compartment_compartment*Function_for_HTC_Stimulation_Tumor_Antigens(global_par_omega_2, x(1), x(3));

% Reaction: id = HTC_Natural_Death, name = HTC_Natural_Death
	reaction_HTC_Natural_Death=compartment_compartment*global_par_delta_2*x(3);

	xdot=zeros(3,1);
	
% Species:   id = x_Tumor_Cells, name = x_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing_ECs));
	
% Species:   id = y_Effector_Cells, name = y_Effector_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_EC_Stimulation_Tumor_Debris) + (-1.0 * reaction_EC_Natural_Death) + ( 1.0 * reaction_EC_Activation_HTC));
	
% Species:   id = z_Helper_T_Cells, name = z_Helper_T_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_HTC_Production) + ( 1.0 * reaction_HTC_Stimulation_Tumor_Antigens) + (-1.0 * reaction_HTC_Natural_Death));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Tumor_Growth(alpha,x,beta), z=(alpha*x*(1-beta*x));end

function z=Function_for_Tumor_Killing_ECs(x,y), z=(x*y);end

function z=Function_for_EC_Stimulation_Tumor_Debris(omega_1,x,y), z=(omega_1*x*y);end

function z=Function_for_EC_Activation_HTC(rho,y,z), z=(rho*y*z);end

function z=Function_for_HTC_Stimulation_Tumor_Antigens(omega_2,x,z), z=(omega_2*x*z);end

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


