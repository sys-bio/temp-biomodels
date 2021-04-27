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
% Model name = Sandip2013 - Modeling the dynamics of hepatitis C virus with combined antiviral drug therapy: interferon and ribavirin.
%
% isDescribedBy http://identifiers.org/pubmed/23891586
% is http://identifiers.org/biomodels.db/MODEL1912130002
% is http://identifiers.org/biomodels.db/BIOMD0000000892
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000000.0;
	x0(2) = 1000000.0;
	x0(3) = 1.0E7;
	x0(4) = 1000000.0;


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
% Parameter:   id =  s, name = s
	global_par_s=1.0;
% Parameter:   id =  r, name = r
	global_par_r=1.99;
% Parameter:   id =  k, name = k
	global_par_k=3.6E7;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=2.25E-7;
% Parameter:   id =  d2, name = d2
	global_par_d2=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=2.9;
% Parameter:   id =  d3, name = d3
	global_par_d3=6.0;
% Parameter:   id =  nr, name = nr
	global_par_nr=0.0;
% Parameter:   id =  c, name = c
	global_par_c=0.5;
% Parameter:   id =  n1, name = n1
	global_par_n1=0.8;

% Reaction: id = Formation_of_target_cells, name = Formation of target cells
	reaction_Formation_of_target_cells=compartment_compartment*Function_for_formation_of_target_cells(global_par_s, global_par_r, x(1), global_par_k);

% Reaction: id = Removal_of_target_cell, name = Removal of target cell
	reaction_Removal_of_target_cell=compartment_compartment*Function_for_removal_of_target_cell(global_par_d1, x(1), global_par_c, global_par_n1, global_par_alpha, x(3));

% Reaction: id = Formation_infected_cell, name = Formation infected cell
	reaction_Formation_infected_cell=compartment_compartment*Function_for_formation_of_infected_cell(global_par_c, global_par_n1, global_par_alpha, x(3), x(1));

% Reaction: id = Removal_of_infected_cell, name = Removal of infected cell
	reaction_Removal_of_infected_cell=compartment_compartment*Function_for_removal_of_infected_cell(global_par_d2, x(2));

% Reaction: id = Formation_of_infected_virion, name = Formation of infected virion
	reaction_Formation_of_infected_virion=compartment_compartment*Function_for_formation_of_infected_virion(global_par_nr, global_par_n1, global_par_beta, x(2));

% Reaction: id = Removal_of_infected_virion, name = Removal of infected virion
	reaction_Removal_of_infected_virion=compartment_compartment*Function_for_removal_of_infected_virion(global_par_d3, x(3));

% Reaction: id = Formation_of_non_infected_virion, name = Formation of non infected virion
	reaction_Formation_of_non_infected_virion=compartment_compartment*Function_for_formation_of_noninfected_virion(global_par_nr, global_par_n1, global_par_beta, x(2));

% Reaction: id = Removal_of_non_infected_virion, name = Removal of non infected virion
	reaction_Removal_of_non_infected_virion=compartment_compartment*Function_for_removal_of_noninfected_virion(global_par_d3, x(4));

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_target_cells) + (-1.0 * reaction_Removal_of_target_cell));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_infected_cell) + (-1.0 * reaction_Removal_of_infected_cell));
	
% Species:   id = VI, name = VI, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_infected_virion) + (-1.0 * reaction_Removal_of_infected_virion));
	
% Species:   id = VNI, name = VNI, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_non_infected_virion) + (-1.0 * reaction_Removal_of_non_infected_virion));
end

function z=Function_for_formation_of_target_cells(s,r,T,k), z=(s+r*T*(1-(T+1)/k));end

function z=Function_for_removal_of_target_cell(d1,T,c,n1,alpha,V1), z=(d1*T+(1-c*n1)*alpha*V1*T);end

function z=Function_for_formation_of_infected_cell(c,n1,alpha,V1,T), z=((1-c*n1)*alpha*V1*T);end

function z=Function_for_removal_of_infected_cell(d2,I), z=(d2*I);end

function z=Function_for_formation_of_infected_virion(nr,n1,beta,I), z=((1-(nr+n1)/2)*beta*I);end

function z=Function_for_removal_of_infected_virion(d3,VI), z=(d3*VI);end

function z=Function_for_formation_of_noninfected_virion(nr,n1,beta,I), z=((nr+n1)/2*beta*I);end

function z=Function_for_removal_of_noninfected_virion(d3,VNI), z=(d3*VNI);end

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


