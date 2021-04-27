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
% Model name = Caravagna2010 - Tumour suppression by immune system
%
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000732
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000732
% isDescribedBy http://identifiers.org/pubmed/20580640
% is http://identifiers.org/biomodels.db/MODEL2001200001
% is http://identifiers.org/biomodels.db/BIOMD0000000912
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
% Parameter:   id =  r2, name = r2
	global_par_r2=0.18;
% Parameter:   id =  b, name = b
	global_par_b=1.0E-9;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  g2, name = g2
	global_par_g2=100000.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.1245;
% Parameter:   id =  g1, name = g1
	global_par_g1=2.0E7;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.03;
% Parameter:   id =  c, name = c
	global_par_c=0.02;
% Parameter:   id =  p2, name = p2
	global_par_p2=5.0;
% Parameter:   id =  g3, name = g3
	global_par_g3=1000.0;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=10.0;
% Parameter:   id =  V, name = V
	global_par_V=3.2;
% Parameter:   id =  s1, name = s1
	global_par_s1=0.0;
% Parameter:   id =  s2, name = s2
	global_par_s2=0.0;

% Reaction: id = Induction_of_tumor, name = Induction of tumor
	reaction_Induction_of_tumor=compartment_compartment*Function_for_induction_of_tumor(global_par_r2, x(1), global_par_b, global_par_V);

% Reaction: id = Removal_of_tumor_from_the_system_by_the_action_of_immune_response, name = Removal of tumor from the system by the action of immune response
	reaction_Removal_of_tumor_from_the_system_by_the_action_of_immune_response=compartment_compartment*Function_for_removal_of_the_tumor(global_par_a, x(1), global_par_g2, global_par_V, x(2));

% Reaction: id = Activation_and_transfer_of_effector_cells_to_the_action_site, name = Activation and transfer of effector cells to the action site
	reaction_Activation_and_transfer_of_effector_cells_to_the_action_site=compartment_compartment*Function_for_activation_and_transfer_of_effector_cells_to_the_tumor_site(global_par_p1, x(3), global_par_g1, x(2), global_par_c, x(1), global_par_V, global_par_s1);

% Reaction: id = Deactivation_and_removal_of_effector_cells_from_the_site_of_tumor, name = Deactivation and removal of effector cells from the site of tumor
	reaction_Deactivation_and_removal_of_effector_cells_from_the_site_of_tumor=compartment_compartment*Function_for_deactivation_and_removal_of_effector_cells_from_the_site_of_tumor(global_par_mu2, x(2));

% Reaction: id = Activation_of_interleukin_2, name = Activation of interleukin 2
	reaction_Activation_of_interleukin_2=compartment_compartment*Function_for_activation_of_interleukin_2(global_par_p2, global_par_V, x(1), x(2), global_par_g3, global_par_s2);

% Reaction: id = Deactivation_of_interleukin2, name = Deactivation of interleukin2
	reaction_Deactivation_of_interleukin2=compartment_compartment*Function_for_deactivation_of_interleukin_2(global_par_mu3, x(3));

	xdot=zeros(3,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Induction_of_tumor) + (-1.0 * reaction_Removal_of_tumor_from_the_system_by_the_action_of_immune_response));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_and_transfer_of_effector_cells_to_the_action_site) + (-1.0 * reaction_Deactivation_and_removal_of_effector_cells_from_the_site_of_tumor));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_interleukin_2) + (-1.0 * reaction_Deactivation_of_interleukin2));
end

function z=Function_for_removal_of_the_tumor(a,T,g2,V,E), z=(a*T/(g2*V+T)*E);end

function z=Function_for_induction_of_tumor(r,T,b,V), z=(r*T*(1-b/V*T));end

function z=Function_for_deactivation_of_interleukin_2(mu3,I), z=(mu3*I);end

function z=Function_for_activation_of_interleukin_2(p2,V,T,E,g3,s2), z=(p2/V*T*E/(g3*V+T)+s2);end

function z=Function_for_activation_and_transfer_of_effector_cells_to_the_tumor_site(p1,I,g1,E,c,T,V,s1), z=(p1*I/(g1*I)*E+c*T+V*s1);end

function z=Function_for_deactivation_and_removal_of_effector_cells_from_the_site_of_tumor(mu2,E), z=(mu2*E);end

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


