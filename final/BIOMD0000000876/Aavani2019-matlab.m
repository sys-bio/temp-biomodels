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
% Model name = Aavani2019 - The role of CD4 T cells in immune system activation and viral reproduction in a simple model for HIV infection
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.apm.2019.05.028
% is http://identifiers.org/biomodels.db/MODEL1911270003
% is http://identifiers.org/biomodels.db/BIOMD0000000876
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 200.0;


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
% Parameter:   id =  C_ast, name = C_ast
	global_par_C_ast=1000.0;
% Parameter:   id =  N, name = N
	global_par_N=2000.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=5.75E-5;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.01;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  k, name = k
	global_par_k=23.0;
% Parameter:   id =  d_0, name = d_0
	global_par_d_0=0.001;
% Parameter:   id =  a_L, name = a_L
	global_par_a_L=0.1;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0;
% Parameter:   id =  b, name = b
	global_par_b=0.1;
% Parameter:   id =  e, name = e
	global_par_e=0.001;

% Reaction: id = CD4_Uninfected_Growth, name = CD4_Uninfected_Growth
	reaction_CD4_Uninfected_Growth=compartment_compartment*Function_for_CD4_Uninfected_Growth(global_par_lambda, global_par_C_ast);

% Reaction: id = CD4_Uninfected_Death, name = CD4_Uninfected_Death
	reaction_CD4_Uninfected_Death=compartment_compartment*global_par_lambda*x(1);

% Reaction: id = CD4_Infected_Death, name = CD4_Infected_Death
	reaction_CD4_Infected_Death=compartment_compartment*global_par_a*x(2);

% Reaction: id = CTL_Death, name = CTL_Death
	reaction_CTL_Death=compartment_compartment*global_par_b*x(3);

% Reaction: id = Virus_Degradation, name = Virus_Degradation
	reaction_Virus_Degradation=compartment_compartment*global_par_k*x(4);

% Reaction: id = CD4_Uninfected_Infection, name = CD4_Uninfected_Infection
	reaction_CD4_Uninfected_Infection=compartment_compartment*Function_for_CD4_Uninfected_Infection(global_par_beta, x(1), x(4));

% Reaction: id = CD4_Infected_Clearance_CTL, name = CD4_Infected_Clearance_CTL
	reaction_CD4_Infected_Clearance_CTL=compartment_compartment*Function_for_CD4_Infected_Clearance_CTL(global_par_rho, x(3), x(2));

% Reaction: id = CTL_Stimulation, name = CTL_Stimulation
	reaction_CTL_Stimulation=compartment_compartment*Function_for_CTL_Stimulation(global_par_e, x(1), x(4), x(3), global_par_C_ast);

% Reaction: id = Virus_Production, name = Virus_Production
	reaction_Virus_Production=compartment_compartment*Function_for_Virus_Production(global_par_a, global_par_N, x(2));

	xdot=zeros(4,1);
	
% Species:   id = C_Uninfected_CD4, name = C_Uninfected_CD4, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4_Uninfected_Growth) + (-1.0 * reaction_CD4_Uninfected_Death) + (-1.0 * reaction_CD4_Uninfected_Infection));
	
% Species:   id = I_Infected_CD4, name = I_Infected_CD4, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_CD4_Infected_Death) + ( 1.0 * reaction_CD4_Uninfected_Infection) + (-1.0 * reaction_CD4_Infected_Clearance_CTL));
	
% Species:   id = F_CTL, name = F_CTL, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_CTL_Death) + ( 1.0 * reaction_CTL_Stimulation));
	
% Species:   id = V_Virus, name = V_Virus, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Virus_Degradation) + ( 1.0 * reaction_Virus_Production));
end

function z=Function_for_CD4_Uninfected_Growth(lambda,C_ast), z=(lambda*C_ast);end

function z=Function_for_CD4_Infected_Clearance_CTL(rho,F,I), z=(rho*F*I);end

function z=Function_for_CD4_Uninfected_Infection(beta,C,V), z=(beta*C*V);end

function z=Function_for_Virus_Production(a,N,I), z=(a*N*I);end

function z=Function_for_CTL_Stimulation(e,C,V,F,C_ast), z=(e*C*V*F/(C_ast+F));end

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


