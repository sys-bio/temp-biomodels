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
% Model name = Lopez2014 - A Validated Mathematical Model of Tumor Growth Including Tumor-Host Interaction and Cell-Mediated Immune Response
%
% isDescribedBy http://identifiers.org/pubmed/25348062
% is http://identifiers.org/biomodels.db/MODEL1908090001
% is http://identifiers.org/biomodels.db/BIOMD0000000784
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.1;
	x0(2) = 0.9;
	x0(3) = 0.2;


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
% Parameter:   id =  a_12, name = a_12
	global_par_a_12=0.195;
% Parameter:   id =  d, name = d
	global_par_d=5.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.21;
% Parameter:   id =  s, name = s
	global_par_s=11.5;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.35;
% Parameter:   id =  a_21, name = a_21
	global_par_a_21=0.954;
% Parameter:   id =  d_3, name = d_3
	global_par_d_3=0.112;
% Parameter:   id =  g, name = g
	global_par_g=0.29;
% Parameter:   id =  h, name = h
	global_par_h=7.95E-11;
% Parameter:   id =  a_31, name = a_31
	global_par_a_31=5.25;
% Parameter:   id =  D_x_z, name = D_x_z
% Parameter:   id =  h_x, name = h_x
% Parameter:   id =  ModelValue_1, name = Initial for d
	global_par_ModelValue_1=5.0;
% Parameter:   id =  ModelValue_2, name = Initial for lambda
	global_par_ModelValue_2=0.21;
% Parameter:   id =  ModelValue_3, name = Initial for s
	global_par_ModelValue_3=11.5;
% assignmentRule: variable = h_x
	global_par_h_x=global_par_ModelValue_3*x(1)^global_par_ModelValue_2;
% assignmentRule: variable = D_x_z
	global_par_D_x_z=global_par_ModelValue_1*x(3)^global_par_ModelValue_2/(global_par_h_x+x(3)^global_par_ModelValue_2);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(x(1));

% Reaction: id = Tumor_Competition_Healthy_Cells, name = Tumor_Competition_Healthy_Cells
	reaction_Tumor_Competition_Healthy_Cells=compartment_compartment*Function_for_Tumor_Competition_Healthy_Cells(global_par_a_12, x(2), x(1));

% Reaction: id = Tumor_Killing, name = Tumor_Killing
	reaction_Tumor_Killing=compartment_compartment*global_par_D_x_z*x(1);

% Reaction: id = Healthy_Cells_Production, name = Healthy_Cells_Production
	reaction_Healthy_Cells_Production=compartment_compartment*Function_for_Helper_Cells_Production(global_par_r_2, x(2));

% Reaction: id = Healthy_Cells_Competition_Tumor, name = Healthy_Cells_Competition_Tumor
	reaction_Healthy_Cells_Competition_Tumor=compartment_compartment*Function_for_Healthy_Cells_Competition_Tumor(global_par_a_21, x(1), x(2));

% Reaction: id = Effector_Death, name = Effector_Death
	reaction_Effector_Death=compartment_compartment*global_par_d_3*x(3);

% Reaction: id = Effector_Recruitment, name = Effector_Recruitment
	reaction_Effector_Recruitment=compartment_compartment*Function_for_Effector_Recruitment(global_par_g, global_par_D_x_z, x(1), global_par_h);

% Reaction: id = Effector_Competition_Tumor, name = Effector_Competition_Tumor
	reaction_Effector_Competition_Tumor=compartment_compartment*Function_for_Effector_Competition_Tumor(global_par_a_31, x(1), x(3));

	xdot=zeros(3,1);
	
% Species:   id = x_Tumor_Cells, name = x_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Competition_Healthy_Cells) + (-1.0 * reaction_Tumor_Killing));
	
% Species:   id = y_Healthy_Cells, name = y_Healthy_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Healthy_Cells_Production) + (-1.0 * reaction_Healthy_Cells_Competition_Tumor));
	
% Species:   id = z_Effector_Cells, name = z_Effector_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Effector_Production_Constant) + (-1.0 * reaction_Effector_Death) + ( 1.0 * reaction_Effector_Recruitment) + (-1.0 * reaction_Effector_Competition_Tumor));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Healthy_Cells_Competition_Tumor(a_21,x,y), z=(a_21*x*y);end

function z=Function_for_Effector_Competition_Tumor(a_31,x,z), z=(a_31*x*z);end

function z=Function_for_Tumor_Competition_Healthy_Cells(a_12,y,x), z=(a_12*y*x);end

function z=Function_for_Tumor_Growth(x), z=(x*(1-x));end

function z=Function_for_Helper_Cells_Production(r_2,y), z=(r_2*y*(1-y));end

function z=Function_for_Effector_Recruitment(g,D_x_z,x,h), z=(g*D_x_z^2*x^2/(h+D_x_z^2*x^2));end

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


