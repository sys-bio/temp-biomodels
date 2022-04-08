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
% Model name = Anderson2015 - Qualitative behavior of systems of tumor-CD4+-cytokine interactions with treatments
%
% isDescribedBy http://identifiers.org/doi/10.1002/mma.3370
% is http://identifiers.org/biomodels.db/MODEL1909170001
% is http://identifiers.org/biomodels.db/BIOMD0000000813
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.5;
	x0(2) = 0.01;
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
% Parameter:   id =  r, name = r
	global_par_r=0.03;
% Parameter:   id =  K, name = K
	global_par_K=1000.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.1;
% Parameter:   id =  m, name = m
	global_par_m=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.02;
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  a, name = a
	global_par_a=0.02;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.1;
% Parameter:   id =  b, name = b
	global_par_b=0.1;
% Parameter:   id =  mu, name = mu
	global_par_mu=47.0;
% Parameter:   id =  I_1, name = I_1
	global_par_I_1=10.0;
% Parameter:   id =  I_2, name = I_2
	global_par_I_2=0.0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r, x(1), global_par_K);

% Reaction: id = Tumor_Killing, name = Tumor_Killing
	reaction_Tumor_Killing=compartment_compartment*Function_for_Tumor_Killing(global_par_delta, x(1), x(3), global_par_m);

% Reaction: id = CD4_Production, name = CD4_Production
	reaction_CD4_Production=compartment_compartment*Function_for_CD4_Production(global_par_beta, x(1), x(2), global_par_k);

% Reaction: id = CD4_Death, name = CD4_Death
	reaction_CD4_Death=compartment_compartment*global_par_a*x(2);

% Reaction: id = Cytokine_Production, name = Cytokine_Production
	reaction_Cytokine_Production=compartment_compartment*Function_for_Cytokine_Production(global_par_alpha, x(1), x(2), global_par_b);

% Reaction: id = Cytokine_Loss, name = Cytokine_Loss
	reaction_Cytokine_Loss=compartment_compartment*global_par_mu*x(3);

	xdot=zeros(3,1);
	
% Species:   id = x_Tumor_Cells, name = x_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing));
	
% Species:   id = y_CD4_T_Cells, name = y_CD4_T_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4_Production) + (-1.0 * reaction_CD4_Death) + ( 1.0 * reaction_CD4_Treatment));
	
% Species:   id = z_Cytokine, name = z_Cytokine, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Cytokine_Production) + (-1.0 * reaction_Cytokine_Loss) + ( 1.0 * reaction_Cytokine_Treatment));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Tumor_Growth(r,x,K), z=(r*x*(1-x/K));end

function z=Function_for_Tumor_Killing(delta,x,z,m), z=(delta*x*z/(m+x));end

function z=Function_for_Cytokine_Production(alpha,x,y,b), z=(alpha*x*y/(b+x));end

function z=Function_for_CD4_Production(beta,x,y,k), z=(beta*x*y/(k+x));end

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


