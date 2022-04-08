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
% Model name = Admon2017 - Modelling tumor growth with immune response and drug using ordinary differential equations
%
% isDescribedBy http://identifiers.org/doi/10.11113/jt.v79.9791
% is http://identifiers.org/biomodels.db/MODEL1912180006
% is http://identifiers.org/biomodels.db/BIOMD0000000904
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.3;
	x0(2) = 1.2;
	x0(3) = 0.9;
	x0(4) = 0.0;


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
% Parameter:   id =  a1, name = a1
	global_par_a1=1.0;
% Parameter:   id =  a4, name = a4
	global_par_a4=0.8;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.29;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.11;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.4;
% Parameter:   id =  c1, name = c1
	global_par_c1=0.9;
% Parameter:   id =  c3, name = c3
	global_par_c3=0.9;
% Parameter:   id =  c2, name = c2
	global_par_c2=0.085;
% Parameter:   id =  c4, name = c4
	global_par_c4=0.085;
% Parameter:   id =  k, name = k
	global_par_k=0.029;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.57;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.061;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.2;
% Parameter:   id =  p, name = p
	global_par_p=0.1;
% Parameter:   id =  n, name = n
	global_par_n=3.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.0;
% Parameter:   id =  d, name = d
% assignmentRule: variable = d
	global_par_d=2*global_par_a1*global_par_a4/(global_par_a1+global_par_d2);

% Reaction: id = Increase_in_the_population_of_tumor_cell_during_interphase, name = Increase in the population of tumor cell during interphase
	reaction_Increase_in_the_population_of_tumor_cell_during_interphase=compartment_compartment*Function_for_increase_in_the_population_of_tumor_cell_during_interphase(global_par_a4, x(2));

% Reaction: id = Decrease_in_the_population_of_tumor_cell_during_interphase, name = Decrease in the population of tumor cell during interphase
	reaction_Decrease_in_the_population_of_tumor_cell_during_interphase=compartment_compartment*Function_for_decrease_in_the_population_of_tumor_cell_during_interphase(global_par_c1, x(3), global_par_d2, x(1), global_par_a1);

% Reaction: id = Increase_in_population_of_tumor_cell_during_mitosis, name = Increase in population of tumor cell during mitosis
	reaction_Increase_in_population_of_tumor_cell_during_mitosis=compartment_compartment*Function_for_increase_in_the_population_of_tumor_cell_during_mitosis(global_par_a1, x(1));

% Reaction: id = Decrease_in_the_population_of_tumor_cell_during_mitosis, name = Decrease in the population of tumor cell during mitosis
	reaction_Decrease_in_the_population_of_tumor_cell_during_mitosis=compartment_compartment*Function_for_decrease_in_the_population_of_tumor_cell_during_mitosis(global_par_d3, x(2), global_par_a4, global_par_c3, x(3), global_par_k1, global_par_k2, x(4));

% Reaction: id = induction_of_immune_response_due_to_tumor_cell_formation, name = induction of immune response due to tumor cell formation
	reaction_induction_of_immune_response_due_to_tumor_cell_formation=compartment_compartment*Function_for_formation_of_immune_response(global_par_k, global_par_p, x(3), x(1), x(2), global_par_n, global_par_alpha);

% Reaction: id = Decrease_in_the_popoulation_of_immune_response, name = Decrease in the popoulation of immune response
	reaction_Decrease_in_the_popoulation_of_immune_response=compartment_compartment*Function_for_decrease_in_the_population_of_immune_response(global_par_c2, x(3), global_par_c4, x(2), global_par_d1, global_par_k3, global_par_k4, x(4), x(1));

% Reaction: id = Decrease_in_drug, name = Decrease in drug
	reaction_Decrease_in_drug=compartment_compartment*Function_for_decrease_in_drug(global_par_gamma, x(4));

	xdot=zeros(4,1);
	
% Species:   id = Ti, name = Ti, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_population_of_tumor_cell_during_interphase) + (-1.0 * reaction_Decrease_in_the_population_of_tumor_cell_during_interphase));
	
% Species:   id = Tm, name = Tm, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_population_of_tumor_cell_during_mitosis) + (-1.0 * reaction_Decrease_in_the_population_of_tumor_cell_during_mitosis));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_induction_of_immune_response_due_to_tumor_cell_formation) + (-1.0 * reaction_Decrease_in_the_popoulation_of_immune_response));
	
% Species:   id = u, name = u, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Decrease_in_drug));
end

function z=Function_for_increase_in_the_population_of_tumor_cell_during_interphase(a4,Tm), z=(2*a4*Tm);end

function z=Function_for_decrease_in_the_population_of_tumor_cell_during_mitosis(d3,Tm,a4,c3,I,k1,k2,u), z=(d3*Tm+a4*Tm+c3*Tm*I+k1*(-exp((-k2)*u))*Tm);end

function z=Function_for_decrease_in_the_population_of_immune_response(c2,I,c4,Tm,d1,k3,k4,u,Ti), z=(c2*I*Ti+c4*Tm*I+d1*I+k3*(1-exp((-k4)*u))*I);end

function z=Function_for_decrease_in_the_population_of_tumor_cell_during_interphase(c1,I,d2,Ti,a1), z=((c1*I+d2)*Ti+a1*Ti);end

function z=Function_for_increase_in_the_population_of_tumor_cell_during_mitosis(a1,Ti), z=(a1*Ti);end

function z=Function_for_formation_of_immune_response(k,p,I,Ti,Tm,n,alpha), z=(k+p*I*(Ti+Tm)^n/(alpha+(Ti+Tm)^n));end

function z=Function_for_decrease_in_drug(gamma,u), z=(gamma*u);end

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


