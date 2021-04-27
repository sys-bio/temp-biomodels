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
% Model name = Galante2012 - B7-H1 and a Mathematical Model for Cytotoxic T Cell and Tumor Cell Interaction
%
% isDescribedBy http://identifiers.org/pubmed/21656310
% is http://identifiers.org/biomodels.db/MODEL1909160001
% is http://identifiers.org/biomodels.db/BIOMD0000000812
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.315;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;


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
% Parameter:   id =  k, name = k
	global_par_k=0.035;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=1.0E-4;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=1.0E-4;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=1.0E-4;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=3.0;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=0.003;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=0.63;
% Parameter:   id =  k_p, name = k_p
	global_par_k_p=0.097;
% Parameter:   id =  k_m, name = k_m
	global_par_k_m=1.0;
% Parameter:   id =  k_m_1, name = k_m_1
	global_par_k_m_1=2.2;
% Parameter:   id =  k_m_2, name = k_m_2
	global_par_k_m_2=80.0;
% Parameter:   id =  E_init, name = E_init
	global_par_E_init=1.0;
% Parameter:   id =  Perc_Lysis, name = Perc_Lysis
% Parameter:   id =  P_10, name = P_10
% Parameter:   id =  X_1000, name = X_1000
% Parameter:   id =  ModelValue_11, name = Initial for E_init
	global_par_ModelValue_11=1.0;
% assignmentRule: variable = E_CTL
	x(5)=global_par_ModelValue_11-x(1);
% assignmentRule: variable = T_Cancer_Cell_Total
	x(6)=x(3)+x(1);
% assignmentRule: variable = Perc_Lysis
	global_par_Perc_Lysis=100*(x(4)-x(6))/x(4);
% assignmentRule: variable = P_10
	global_par_P_10=10*x(2);
% assignmentRule: variable = X_1000
	global_par_X_1000=x(1)*1000;

% Reaction: id = X_Complex_Formation, name = X_Complex_Formation
	reaction_X_Complex_Formation=compartment_compartment*Function_for_X_Complex_Formation(global_par_k_1, x(3), x(5));

% Reaction: id = X_Complex_Dissociation, name = X_Complex_Dissociation
	reaction_X_Complex_Dissociation=compartment_compartment*global_par_k_2*x(1);

% Reaction: id = X_Complex_Apoptosis, name = X_Complex_Apoptosis
	reaction_X_Complex_Apoptosis=compartment_compartment*global_par_k_3*x(1);

% Reaction: id = P_Production, name = P_Production
	reaction_P_Production=compartment_compartment*Function_for_P_Production(global_par_k_p, x(5), global_par_k_m_1, global_par_k_m_2, x(3));

% Reaction: id = P_Apoptosis_Perforin, name = P_Apoptosis_Perforin
	reaction_P_Apoptosis_Perforin=compartment_compartment*global_par_k_4*x(2)*x(3);

% Reaction: id = C_Growth, name = C_Growth
	reaction_C_Growth=compartment_compartment*Function_for_C_Growth(global_par_k, x(3));

% Reaction: id = C_Carrying_Capacity_Limit, name = C_Carrying_Capacity_Limit
	reaction_C_Carrying_Capacity_Limit=compartment_compartment*Function_for_C_Carrying_Capacity_Limit(global_par_k_5, x(3));

% Reaction: id = T_Growth, name = T_Growth
	reaction_T_Growth=compartment_compartment*Function_for_T_Growth(global_par_k, x(4));

% Reaction: id = T_Carrying_Capacity_Limit, name = T_Carrying_Capacity_Limit
	reaction_T_Carrying_Capacity_Limit=compartment_compartment*Function_for_C_Carrying_Capacity_Limit(global_par_k_5, x(4));

	xdot=zeros(6,1);
	
% Species:   id = X_Complex, name = X_Complex, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_X_Complex_Formation) + (-1.0 * reaction_X_Complex_Dissociation) + (-1.0 * reaction_X_Complex_Apoptosis));
	
% Species:   id = P_Perforin, name = P_Perforin, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_P_Production) + (-1.0 * reaction_P_Apoptosis_Perforin));
	
% Species:   id = C_Cancer_Uncomplexed, name = C_Cancer_Uncomplexed, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_X_Complex_Formation) + ( 1.0 * reaction_X_Complex_Dissociation) + (-1.0 * reaction_P_Apoptosis_Perforin) + ( 1.0 * reaction_C_Growth) + (-1.0 * reaction_C_Carrying_Capacity_Limit));
	
% Species:   id = T_ast, name = T_ast, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_T_Growth) + (-1.0 * reaction_T_Carrying_Capacity_Limit));
	
% Species:   id = E_CTL, name = E_CTL, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = T_Cancer_Cell_Total, name = T_Cancer_Cell_Total, involved in a rule 	xdot(6) = x(6);
end

function z=Function_for_T_Growth(k,T), z=(k*T);end

function z=Function_for_X_Complex_Formation(k1,C,E), z=(k1*C*E);end

function z=Function_for_C_Carrying_Capacity_Limit(k_5,C), z=(k_5*C^2);end

function z=Function_for_P_Production(k_p,E,k_m_1,k_m_2,C), z=(k_p*E/((k_m_1+E)*k_m_2*C));end

function z=Function_for_C_Growth(k,C), z=(k*C);end

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


