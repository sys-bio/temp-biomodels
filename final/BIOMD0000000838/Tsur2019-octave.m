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
% Model name = Tsur2019 - Response of patients with melanoma to immune checkpoint blockade
%
% isDescribedBy http://identifiers.org/pubmed/31580835
% is http://identifiers.org/biomodels.db/MODEL1910250002
% is http://identifiers.org/biomodels.db/BIOMD0000000838
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 14119.9020779221;
	x0(2) = 6.60941730355407E7;
	x0(3) = 1000000.0;


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
% Parameter:   id =  alpha_A, name = alpha_A
	global_par_alpha_A=2986.0;
% Parameter:   id =  b, name = b
	global_par_b=92330.0;
% Parameter:   id =  mu_a, name = mu_a
	global_par_mu_a=0.231;
% Parameter:   id =  alpha_e, name = alpha_e
	global_par_alpha_e=831.8;
% Parameter:   id =  mu_e, name = mu_e
	global_par_mu_e=0.1777;
% Parameter:   id =  gamma_mel, name = gamma_mel
	global_par_gamma_mel=0.04496;
% Parameter:   id =  nu_mel, name = nu_mel
	global_par_nu_mel=0.1245;
% Parameter:   id =  g, name = g
	global_par_g=6.01E7;

% Reaction: id = APC_Activation, name = APC_Activation
	reaction_APC_Activation=compartment_compartment*Function_for_APC_Activation(global_par_alpha_A, x(3), global_par_b);

% Reaction: id = APC_Death, name = APC_Death
	reaction_APC_Death=compartment_compartment*global_par_mu_a*x(1);

% Reaction: id = Activation_CD8, name = Activation_CD8
	reaction_Activation_CD8=compartment_compartment*Function_for_Activation_CD8(global_par_alpha_e, x(1));

% Reaction: id = CD8_Death, name = CD8_Death
	reaction_CD8_Death=compartment_compartment*global_par_mu_e*x(2);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_gamma_mel, x(3));

% Reaction: id = Tumor_Death_CD8, name = Tumor_Death_CD8
	reaction_Tumor_Death_CD8=compartment_compartment*Function_for_Tumor_Death_CD8(global_par_nu_mel, x(2), x(3), global_par_g);

	xdot=zeros(3,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_APC_Activation) + (-1.0 * reaction_APC_Death));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_CD8) + (-1.0 * reaction_CD8_Death));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Death_CD8));
end

function z=Function_for_Tumor_Death_CD8(nu_mel,T,M,g), z=(nu_mel*T*M/(M+g));end

function z=Function_for_Tumor_Growth(gamma_mel,M), z=(gamma_mel*M);end

function z=Function_for_APC_Activation(alpha_A,M,b), z=(alpha_A*M/(M+b));end

function z=Function_for_Activation_CD8(alpha_E,A), z=(alpha_E*A);end

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


