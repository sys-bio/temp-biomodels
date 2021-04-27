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
% Model name = Chakrabarty2010 - A control theory approach to cancer remission aided by an optimal therapy
%
% isDescribedBy http://identifiers.org/doi/10.1142/S0218339010003226
% is http://identifiers.org/biomodels.db/MODEL1908040001
% is http://identifiers.org/biomodels.db/BIOMD0000000777
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 2750000.0;
	x0(2) = 200000.0;
	x0(3) = 7200000.0;


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
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.18;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=5000000.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=1.101E-7;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=0.0412;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=3.422E-10;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.0245;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=1.0E7;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.05;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=0.0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r_1, x(1), global_par_k_1);

% Reaction: id = Tumor_Killing_T_Cells, name = Tumor_Killing_T_Cells
	reaction_Tumor_Killing_T_Cells=compartment_compartment*Function_for_Tumor_Killing_T_Cells(global_par_alpha_1, x(1), x(2));

% Reaction: id = CTL_Recruitment, name = CTL_Recruitment
	reaction_CTL_Recruitment=compartment_compartment*Function_for_CTL_Recruitment(global_par_mu_2, x(2), x(3));

% Reaction: id = CTL_Death, name = CTL_Death
	reaction_CTL_Death=compartment_compartment*global_par_d_1*x(2);

% Reaction: id = CTL_Decay, name = CTL_Decay
	reaction_CTL_Decay=compartment_compartment*Function_for_CTL_Decay(global_par_alpha_2, x(1), x(2));

% Reaction: id = THL_Growth, name = THL_Growth
	reaction_THL_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r_2, x(3), global_par_k_2);

% Reaction: id = THL_Decay_IL_2, name = THL_Decay_IL-2
	reaction_THL_Decay_IL_2=compartment_compartment*Function_for_THL_Decay_IL_2(global_par_mu_2, x(2), x(3));

% Reaction: id = Tumor_Killing_ACI, name = Tumor_Killing_ACI
	reaction_Tumor_Killing_ACI=compartment_compartment*global_par_mu_1*x(1);

	xdot=zeros(3,1);
	
% Species:   id = M_Tumor_Cells, name = M_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing_T_Cells) + (-1.0 * reaction_Tumor_Killing_ACI));
	
% Species:   id = N_CTL, name = N_CTL, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CTL_Recruitment) + (-1.0 * reaction_CTL_Death) + (-1.0 * reaction_CTL_Decay));
	
% Species:   id = Z_THL, name = Z_THL, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_THL_Growth) + (-1.0 * reaction_THL_Decay_IL_2));
end

function z=Function_for_Tumor_Growth(r_1,M,k_1), z=(r_1*M*(1-M/k_1));end

function z=Function_for_Tumor_Killing_T_Cells(alpha_1,M,N), z=(alpha_1*M*N);end

function z=Function_for_THL_Decay_IL_2(mu_2,N,Z), z=(mu_2*N*Z);end

function z=Function_for_CTL_Recruitment(mu_2,N,Z), z=(mu_2*N*Z);end

function z=Function_for_CTL_Decay(alpha_2,M,N), z=(alpha_2*M*N);end

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


