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
% Model name = Barros2021 - CARTmath, Mathematical Model of CAR-T Immunotherapy in Raji Cell Line
%
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/34208323
% is http://identifiers.org/biomodels.db/MODEL2107220002
% is http://identifiers.org/biomodels.db/BIOMD0000001020
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 3000000.0;


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
% Parameter:   id =  phi, name = phi
	global_par_phi=0.83;
% Parameter:   id =  pi, name = pi
	global_par_pi=0.8300536;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.59795;
% Parameter:   id =  theta, name = theta
	global_par_theta=2.3E-4;
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  mu, name = mu
	global_par_mu=6.89E-7;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.5071721;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=3.365388E-8;
% Parameter:   id =  Raji_IDO_CAT19, name = Raji-IDO+CAT19
	global_par_Raji_IDO_CAT19=0.0;
% Parameter:   id =  Raji_IDO_CART_19_1MT, name = Raji-IDO+CART-19+1MT
	global_par_Raji_IDO_CART_19_1MT=0.0;
% Parameter:   id =  ModelValue_10, name = Initial for Raji-IDO+CART-19+1MT
	global_par_ModelValue_10=0.0;
% Parameter:   id =  ModelValue_9, name = Initial for Raji-IDO+CAT19
	global_par_ModelValue_9=0.0;
% assignmentRule: variable = alpha
	global_par_alpha=piecewise(1.461699E-8, global_par_ModelValue_9 == 1, piecewise(1.26166E-8, global_par_ModelValue_10 == 1, 1.248506E-8));

% Reaction: id = R3_Cm_activation_into_Ct, name = R3_Cm activation into Ct
	reaction_R3_Cm_activation_into_Ct=compartment_compartment*function_for_R3_R5(global_par_theta, x(3), x(1));

% Reaction: id = R6_Ct_expansion, name = R6_Ct expansion
	reaction_R6_Ct_expansion=compartment_compartment*function_for_indirect_stimulation(global_par_phi, x(2));

% Reaction: id = R4_Ct_natural_death, name = R4_Ct natural death
	reaction_R4_Ct_natural_death=compartment_compartment*global_par_pi*x(2);

% Reaction: id = R5_Ct_inhibiton_by_Tumor, name = R5_Ct inhibiton by Tumor
	reaction_R5_Ct_inhibiton_by_Tumor=compartment_compartment*function_for_R3_R5(global_par_alpha, x(3), x(2));

% Reaction: id = R1_Cm_formation, name = R1_Cm formation
	reaction_R1_Cm_formation=compartment_compartment*function_for_indirect_stimulation(global_par_epsilon, x(2));

% Reaction: id = R2_Cm_death, name = R2_Cm death
	reaction_R2_Cm_death=compartment_compartment*global_par_mu*x(1);

% Reaction: id = R7_Tumor_proliferation, name = R7_Tumor proliferation
	reaction_R7_Tumor_proliferation=compartment_compartment*function_for_R7(global_par_rho, x(3), global_par_beta);

% Reaction: id = R8_Tumor_death_by_Ct, name = R8_Tumor death by Ct
	reaction_R8_Tumor_death_by_Ct=compartment_compartment*function_for_R3_R5(global_par_gamma, x(2), x(3));

%Event: id=event1
	event_event1=time >= 7;

	if(event_event1) 
		x(2)=10000000;
	end

	xdot=zeros(3,1);
	
% Species:   id = Cm, name = Cm, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R3_Cm_activation_into_Ct) + ( 1.0 * reaction_R1_Cm_formation) + (-1.0 * reaction_R2_Cm_death));
	
% Species:   id = Ct, name = Ct, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R3_Cm_activation_into_Ct) + ( 1.0 * reaction_R6_Ct_expansion) + (-1.0 * reaction_R4_Ct_natural_death) + (-1.0 * reaction_R5_Ct_inhibiton_by_Tumor));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R7_Tumor_proliferation) + (-1.0 * reaction_R8_Tumor_death_by_Ct));
end

function z=function_for_R3_R5(par,T,Cm), z=(par*T*Cm);end

function z=function_for_R7(par,T,b), z=(par*T*(1-b*T));end

function z=function_for_indirect_stimulation(par,modifier), z=(par*modifier);end

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


