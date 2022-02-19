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
% Model name = Bajzer2008 - Modeling of cancer virotherapy with recombinant measles viruses
%
% isDescribedBy http://identifiers.org/pubmed/18316099
% isDerivedFrom http://identifiers.org/pubmed/11309314
% is http://identifiers.org/biomodels.db/MODEL1907310005
% is http://identifiers.org/biomodels.db/BIOMD0000000771
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 126.237;
	x0(2) = 2.0;
	x0(3) = 0.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.2062134;
% Parameter:   id =  K, name = K
	global_par_K=2139.258;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.648773;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=4.48E-4;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.608;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.309;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.001;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.3;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r, x(1), x(3), global_par_epsilon, global_par_K);

% Reaction: id = Tumor_Cell_Infection, name = Tumor_Cell_Infection
	reaction_Tumor_Cell_Infection=compartment_compartment*global_par_kappa*x(1)*x(2);

% Reaction: id = Tumor_Cell_Fusion, name = Tumor_Cell_Fusion
	reaction_Tumor_Cell_Fusion=compartment_compartment*Function_for_Tumor_Cell_Fusion(global_par_rho, x(3), x(1));

% Reaction: id = Infected_Cell_Death, name = Infected_Cell_Death
	reaction_Infected_Cell_Death=compartment_compartment*global_par_delta*x(3);

% Reaction: id = Virus_Production_Infected_Cell, name = Virus_Production_Infected_Cell
	reaction_Virus_Production_Infected_Cell=compartment_compartment*Function_for_Virus_Production_Infected_Cell(global_par_alpha, x(3));

% Reaction: id = Virus_Elimination, name = Virus_Elimination
	reaction_Virus_Elimination=compartment_compartment*global_par_omega*x(2);

	xdot=zeros(3,1);
	
% Species:   id = y_Tumor_Cell, name = y_Tumor_Cell, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Cell_Infection) + (-1.0 * reaction_Tumor_Cell_Fusion));
	
% Species:   id = v_Virus, name = v_Virus, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Tumor_Cell_Infection) + ( 1.0 * reaction_Virus_Production_Infected_Cell) + (-1.0 * reaction_Virus_Elimination));
	
% Species:   id = x_Infected_Cell, name = x_Infected_Cell, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_Infection) + (-1.0 * reaction_Infected_Cell_Death));
end

function z=Function_for_Tumor_Growth(r,y,x,epsilon,K), z=(r*y*(1-(y+x)^epsilon/K^epsilon));end

function z=Function_for_Virus_Production_Infected_Cell(alpha,x), z=(alpha*x);end

function z=Function_for_Tumor_Cell_Fusion(rho,x,y), z=(rho*x*y);end

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


