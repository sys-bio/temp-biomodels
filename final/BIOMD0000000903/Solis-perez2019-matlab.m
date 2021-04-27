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
% Model name = Solis-perez2019 - A fractional mathematical model of breast cancer competition model
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C4872
% isDescribedBy http://identifiers.org/ncit/C4872
% isDescribedBy http://identifiers.org/doi/10.1016/j.chaos.2019.06.027
% isDerivedFrom http://identifiers.org/doi/10.1007/s12591-017-0346-x
% is http://identifiers.org/biomodels.db/MODEL1912180005
% is http://identifiers.org/biomodels.db/BIOMD0000000903
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 737100.0;
	x0(2) = 7616700.0;
	x0(3) = 2.5E7;
	x0(4) = 0.0;
	x0(5) = 0.0;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=0.75;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.514;
% Parameter:   id =  q, name = q
	global_par_q=0.7;
% Parameter:   id =  M1, name = M1
	global_par_M1=2270000.0;
% Parameter:   id =  M2, name = M2
	global_par_M2=2.27E7;
% Parameter:   id =  M3, name = M3
	global_par_M3=2.5E7;
% Parameter:   id =  gamma1, name = gamma1
	global_par_gamma1=3.0E-7;
% Parameter:   id =  gamma2, name = gamma2
	global_par_gamma2=3.0E-6;
% Parameter:   id =  gamma3, name = gamma3
	global_par_gamma3=1.0E-7;
% Parameter:   id =  p1, name = p1
	global_par_p1=600.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.0;
% Parameter:   id =  p3, name = p3
	global_par_p3=100.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=1135000.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=1.135E7;
% Parameter:   id =  a3, name = a3
	global_par_a3=1250000.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=0.01;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.29;
% Parameter:   id =  delta, name = delta
	global_par_delta=6.0E-8;
% Parameter:   id =  s, name = s
	global_par_s=13000.0;
% Parameter:   id =  p, name = p
	global_par_p=0.2;
% Parameter:   id =  w, name = w
	global_par_w=300000.0;
% Parameter:   id =  u, name = u
	global_par_u=0.2;
% Parameter:   id =  v, name = v
	global_par_v=400.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=2700.0;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.01;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.01;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.01;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.97;

% Reaction: id = Formation_of_Stem_cell, name = Formation of Stem cell
	reaction_Formation_of_Stem_cell=compartment_compartment*Function_for_formation_of_Stem_cell(global_par_k1, x(1), global_par_M1, global_par_p1, x(5), global_par_a1);

% Reaction: id = Removal_of_stem_cell_from_the_system, name = Removal of stem cell from the system
	reaction_Removal_of_stem_cell_from_the_system=compartment_compartment*Function_for_removal_of_stem_cell_from_the_system(global_par_gamma1, x(4), x(1));

% Reaction: id = Induction_of_tumor_cell, name = Induction of tumor cell
	reaction_Induction_of_tumor_cell=compartment_compartment*Function_for_induction_of_tumor_cell(global_par_k2, x(1), global_par_M1, x(2), global_par_M2, global_par_p2, x(5), global_par_a2);

% Reaction: id = Removal_of_tumor_cell_y_immune_cell_and_other_immune_response, name = Removal of tumor cell y immune cell and other immune response
	reaction_Removal_of_tumor_cell_y_immune_cell_and_other_immune_response=compartment_compartment*Function_for_removal_of_tumor_cell(global_par_n1, x(2), global_par_gamma2, x(4));

% Reaction: id = Increase_in_the_healthy_cell_in_the_system, name = Increase in the healthy cell in the system
	reaction_Increase_in_the_healthy_cell_in_the_system=compartment_compartment*Function_for_increase_in_healthy_cell_in_the_system(global_par_q, x(3), global_par_M3);

% Reaction: id = Decrase_of_healthy_cell_due_to_cancer, name = Decrase of healthy cell due to cancer
	reaction_Decrase_of_healthy_cell_due_to_cancer=compartment_compartment*Function_for_decrease_in_healthy_cell(global_par_delta, x(3), x(2), global_par_p3, x(5), global_par_a3);

% Reaction: id = Increase_in_immune_cell_against_tumor, name = Increase in immune cell against tumor
	reaction_Increase_in_immune_cell_against_tumor=compartment_compartment*Function_for_increase_in_tumor_cell_against_cancer(global_par_s, global_par_p, x(4), x(2), global_par_w);

% Reaction: id = Decrease_in_the_density_of_immune_cell_that_provide_immune_response, name = Decrease in the density of immune cell that provide immune response
	reaction_Decrease_in_the_density_of_immune_cell_that_provide_immune_response=compartment_compartment*Function_for_decrease_in_immune_cell(global_par_gamma3, x(4), x(2), global_par_n2, global_par_u, x(5), global_par_v);

% Reaction: id = Decrease_in_strogen_content, name = Decrease in strogen content
	reaction_Decrease_in_strogen_content=compartment_compartment*Function_for_decrease_in_strogen_content(global_par_mu, global_par_d1, x(1), global_par_a1, global_par_d2, x(2), global_par_a2, global_par_d3, x(3), global_par_a3, x(5));

	xdot=zeros(5,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_Stem_cell) + (-1.0 * reaction_Removal_of_stem_cell_from_the_system));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Induction_of_tumor_cell) + (-1.0 * reaction_Removal_of_tumor_cell_y_immune_cell_and_other_immune_response));
	
% Species:   id = H, name = H, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_healthy_cell_in_the_system) + (-1.0 * reaction_Decrase_of_healthy_cell_due_to_cancer));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_immune_cell_against_tumor) + (-1.0 * reaction_Decrease_in_the_density_of_immune_cell_that_provide_immune_response));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_Excess_strogen) + (-1.0 * reaction_Decrease_in_strogen_content));
end

function z=Function_for_removal_of_stem_cell_from_the_system(gamma1,I,C), z=(gamma1*I*C);end

function z=Function_for_formation_of_Stem_cell(k1,C,M1,p1,E,a1), z=(k1*C*(1-C/M1)+p1*C*E/(a1+C));end

function z=Function_for_increase_in_healthy_cell_in_the_system(q,H,M3), z=(q*H*(1-H/M3));end

function z=Function_for_decrease_in_healthy_cell(delta,H,T,p3,E,a3), z=(delta*H*T+p3*H*E/(a3+H));end

function z=Function_for_induction_of_tumor_cell(k2,C,M1,T,M2,p2,E,a2), z=(k2*C*C/M1*(1-T/M2)+p2*T*E/(a2+T));end

function z=Function_for_removal_of_tumor_cell(n1,T,gamma2,I), z=(n1*T+gamma2*I*T);end

function z=Function_for_increase_in_excess_strogen(tau), z=(tau);end

function z=Function_for_decrease_in_strogen_content(mu,d1,C,a1,d2,T,a2,d3,H,a3,E), z=((mu+d1*C/(a1+C)+d2*T/(a2+T)+d3*H/(a3+H))*E);end

function z=Function_for_increase_in_tumor_cell_against_cancer(s,p,I,T,w), z=(s+p*I*T/(w+T));end

function z=Function_for_decrease_in_immune_cell(gamma3,I,T,n2,u,E,v), z=(gamma3*I*T+n2*I+u*I*E/(v+E));end

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


