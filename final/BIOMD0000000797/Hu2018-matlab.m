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
% Model name = Hu2018 - Dynamics of tumor-CD4+-cytokine-host cells interactions with treatments
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.amc.2017.11.009
% isDerivedFrom http://identifiers.org/doi/10.1002/mma.3370
% is http://identifiers.org/biomodels.db/MODEL1908150001
% is http://identifiers.org/biomodels.db/BIOMD0000000797
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 67700.0;
	x0(2) = 1000000.0;
	x0(3) = 100000.0;
	x0(4) = 1.0E9;


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
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.514;
% Parameter:   id =  b_1, name = b_1
	global_par_b_1=1.02E-9;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=0.2;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=100000.0;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=1.1E-10;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.835;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=1000.0;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.1;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=1.0E-7;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=5.4;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=1000.0;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=34.0;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.2822;
% Parameter:   id =  b_2, name = b_2
	global_par_b_2=1.0E-9;
% Parameter:   id =  delta_3, name = delta_3
	global_par_delta_3=5.8E-11;
% Parameter:   id =  I_2, name = I_2
	global_par_I_2=0.0;
% Parameter:   id =  I_1, name = I_1
	global_par_I_1=0.0;
% Parameter:   id =  Tumor_Cells_1e8, name = Tumor_Cells_1e8
% Parameter:   id =  Host_Cells_1e8, name = Host_Cells_1e8
% assignmentRule: variable = Tumor_Cells_1e8
	global_par_Tumor_Cells_1e8=x(1)/100000000;
% assignmentRule: variable = Host_Cells_1e8
	global_par_Host_Cells_1e8=x(4)/100000000;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r_1, x(1), global_par_b_1);

% Reaction: id = Tumor_Killing_Cytokine, name = Tumor_Killing_Cytokine
	reaction_Tumor_Killing_Cytokine=compartment_compartment*Function_for_Tumor_Killing_Cytokine(global_par_c_1, x(1), x(3), global_par_a_1);

% Reaction: id = Tumor_Competition_Normal_Cells, name = Tumor_Competition_Normal_Cells
	reaction_Tumor_Competition_Normal_Cells=compartment_compartment*Function_for_Tumor_Competition_Normal_Cells(global_par_delta_1, x(1), x(4));

% Reaction: id = CD4T_Production, name = CD4T_Production
	reaction_CD4T_Production=compartment_compartment*Function_for_CD4T_Production(global_par_beta_1, x(1), x(3), global_par_alpha_1);

% Reaction: id = CD4T_Natural_Death, name = CD4T_Natural_Death
	reaction_CD4T_Natural_Death=compartment_compartment*global_par_mu_1*x(2);

% Reaction: id = CD4T_Depletion, name = CD4T_Depletion
	reaction_CD4T_Depletion=compartment_compartment*Function_for_CD4T_Depletion(global_par_delta_2, x(1), x(2));

% Reaction: id = Cytokine_Production, name = Cytokine_Production
	reaction_Cytokine_Production=compartment_compartment*Function_for_Cytokine_Production(global_par_beta_2, x(1), x(2), global_par_alpha_2);

% Reaction: id = Cytokine_Decay, name = Cytokine_Decay
	reaction_Cytokine_Decay=compartment_compartment*global_par_mu_2*x(3);

% Reaction: id = Normal_Tissue_Growth, name = Normal_Tissue_Growth
	reaction_Normal_Tissue_Growth=compartment_compartment*Function_for_Normal_Tissue_Growth(global_par_r_2, x(4), global_par_b_2);

% Reaction: id = Normal_Tissue_Competition_Tumor_Cells, name = Normal_Tissue_Competition_Tumor_Cells
	reaction_Normal_Tissue_Competition_Tumor_Cells=compartment_compartment*Function_for_Normal_Tissue_Competition_Tumor_Cells(global_par_delta_3, x(1), x(4));

	xdot=zeros(4,1);
	
% Species:   id = x_Tumor_Cells, name = x_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing_Cytokine) + (-1.0 * reaction_Tumor_Competition_Normal_Cells));
	
% Species:   id = y_CD4_T_Cells, name = y_CD4_T_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4T_Production) + (-1.0 * reaction_CD4T_Natural_Death) + (-1.0 * reaction_CD4T_Depletion) + ( 1.0 * reaction_CD4T_Treatment));
	
% Species:   id = z_Cytokine, name = z_Cytokine, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Cytokine_Production) + (-1.0 * reaction_Cytokine_Decay) + ( 1.0 * reaction_Cytokine_Treatment));
	
% Species:   id = w_Healthy_Tissue, name = w_Healthy_Tissue, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Normal_Tissue_Growth) + (-1.0 * reaction_Normal_Tissue_Competition_Tumor_Cells));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_CD4T_Production(beta_1,x,z,alpha_1), z=(beta_1*x*z/(alpha_1+x));end

function z=Function_for_Normal_Tissue_Growth(r_2,w,b_2), z=(r_2*w*(1-b_2*w));end

function z=Function_for_Tumor_Competition_Normal_Cells(delta_1,x,w), z=(delta_1*x*w);end

function z=Function_for_Normal_Tissue_Competition_Tumor_Cells(delta_3,x,w), z=(delta_3*x*w);end

function z=Function_for_CD4T_Depletion(delta_2,x,y), z=(delta_2*x*y);end

function z=Function_for_Tumor_Growth(r_1,x,b_1), z=(r_1*x*(1-b_1*x));end

function z=Function_for_Cytokine_Production(beta_2,x,y,alpha_2), z=(beta_2*x*y/(alpha_2+x));end

function z=Function_for_Tumor_Killing_Cytokine(c_1,x,z,a_1), z=(c_1*x*z/(a_1+x));end

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


