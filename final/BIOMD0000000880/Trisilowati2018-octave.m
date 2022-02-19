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
% Model name = Trisilowati2018 - Optimal control of tumor-immune system interaction with treatment
%
% isDescribedBy http://identifiers.org/doi/10.1063/1.5062816
% is http://identifiers.org/biomodels.db/MODEL1911280003
% is http://identifiers.org/biomodels.db/BIOMD0000000880
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000000.0;
	x0(2) = 10.0;
	x0(3) = 10.0;
	x0(4) = 5.0;


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
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=0.431;
% Parameter:   id =  a_2, name = a_2
	global_par_a_2=0.234;
% Parameter:   id =  a_3, name = a_3
	global_par_a_3=0.017;
% Parameter:   id =  b_1__1, name = b_1_-1
	global_par_b_1__1=1.02E-9;
% Parameter:   id =  b_2__1, name = b_2_-1
	global_par_b_2__1=1.25E-5;
% Parameter:   id =  b_3__1, name = b_3_-1
	global_par_b_3__1=5.0E-4;
% Parameter:   id =  e, name = e
	global_par_e=1.04E-8;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=4.2E-8;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=8.0E-10;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=2.0E-5;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=2.0E-5;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=2.0E-5;
% Parameter:   id =  u_1, name = u_1
	global_par_u_1=0.0;
% Parameter:   id =  u_2, name = u_2
	global_par_u_2=0.0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_a_1, x(1), global_par_b_1__1);

% Reaction: id = Tumor_Death_CD8, name = Tumor_Death_CD8
	reaction_Tumor_Death_CD8=compartment_compartment*Function_for_Tumor_Death_CD8(global_par_alpha_1, x(1), x(2));

% Reaction: id = Tumor_Death_Chemotherapy, name = Tumor_Death_Chemotherapy
	reaction_Tumor_Death_Chemotherapy=compartment_compartment*global_par_u_1*x(1);

% Reaction: id = CD8_Activation, name = CD8_Activation
	reaction_CD8_Activation=compartment_compartment*Function_for_CD8_Activation(global_par_beta_1, x(3), x(4), x(2));

% Reaction: id = CD8_Inactivation, name = CD8_Inactivation
	reaction_CD8_Inactivation=compartment_compartment*Function_for_CD8_Inactivation(global_par_alpha_2, x(1), x(2));

% Reaction: id = CD8_Death, name = CD8_Death
	reaction_CD8_Death=compartment_compartment*global_par_e*x(2);

% Reaction: id = DC_Growth, name = DC_Growth
	reaction_DC_Growth=compartment_compartment*Function_for_DC_Growth(global_par_a_2, x(3), global_par_b_2__1);

% Reaction: id = DC_Inactivation, name = DC_Inactivation
	reaction_DC_Inactivation=compartment_compartment*Function_for_DC_Inactivation(global_par_beta_2, x(3), x(2));

% Reaction: id = CD4_Growth, name = CD4_Growth
	reaction_CD4_Growth=compartment_compartment*Function_for_CD4_Growth(global_par_a_3, x(4), global_par_b_3__1);

% Reaction: id = CD4_Inactivation, name = CD4_Inactivation
	reaction_CD4_Inactivation=compartment_compartment*Function_for_CD4_Inactivation(global_par_beta_3, x(4), x(2));

	xdot=zeros(4,1);
	
% Species:   id = T_Tumor_Cells, name = T_Tumor_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Death_CD8) + (-1.0 * reaction_Tumor_Death_Chemotherapy));
	
% Species:   id = L_CD8_T_Cells, name = L_CD8_T_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CD8_Activation) + (-1.0 * reaction_CD8_Inactivation) + (-1.0 * reaction_CD8_Death));
	
% Species:   id = D_Dendritic_Cells, name = D_Dendritic_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_DC_Growth) + (-1.0 * reaction_DC_Inactivation) + ( 1.0 * reaction_DC_Immunotherapy));
	
% Species:   id = H_CD4_T_Cells, name = H_CD4_T_Cells, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4_Growth) + (-1.0 * reaction_CD4_Inactivation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_CD4_Growth(a_3,H,b_3), z=(a_3*H*(1-b_3*H));end

function z=Function_for_CD4_Inactivation(beta_3,H,L), z=(beta_3*H*L);end

function z=Function_for_CD8_Inactivation(alpha_2,T,L), z=(alpha_2*T*L);end

function z=Function_for_DC_Inactivation(beta_2,D,L), z=(beta_2*D*L);end

function z=Function_for_CD8_Activation(beta_1,D,H,L), z=(beta_1*(D+H)*L);end

function z=Function_for_Tumor_Growth(a_1,T,b_1), z=(a_1*T*(1-b_1*T));end

function z=Function_for_DC_Growth(a_2,D,b_2), z=(a_2*D*(1-b_2*D));end

function z=Function_for_Tumor_Death_CD8(alpha_1,T,L), z=(alpha_1*T*L);end

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


