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
% Model name = Bunimovich-Mendrazitsky2007 - Mathematical model of BCG immunotherapy
%
% is http://identifiers.org/biomodels.db/MODEL2108190003
% is http://identifiers.org/biomodels.db/BIOMD0000001034
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.05;
	x0(3) = 0.0;
	x0(4) = 0.55;


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

% Compartment: id = Bladder, name = Bladder, constant
	compartment_Bladder=1.0;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=1.0;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.41;
% Parameter:   id =  p1, name = p1
	global_par_p1=1.25;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.285;
% Parameter:   id =  p3, name = p3
	global_par_p3=1.1;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.085;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.003;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.52;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0155;
% Parameter:   id =  r, name = r
	global_par_r=0.12;
% Parameter:   id =  b, name = b
	global_par_b=1.9;
% Parameter:   id =  mu, name = mu
% assignmentRule: variable = mu
	global_par_mu=global_par_mu2/global_par_mu1;

% Reaction: id = Effector_cell_activation_recruitment, name = Effector_cell_activation/recruitment
	reaction_Effector_cell_activation_recruitment=compartment_Bladder*Rate_Law_for_Effector_cell_activation_recruitment(x(2), global_par_p4, x(1), global_par_alpha, x(3));

% Reaction: id = Effector_cell_inactivation_death, name = Effector_cell_inactivation/death
	reaction_Effector_cell_inactivation_death=compartment_Bladder*Rate_Law_for_Effector_cell_inactivation_death(x(2), global_par_mu, global_par_p5, x(3));

% Reaction: id = Tumor_growth, name = Tumor_growth
	reaction_Tumor_growth=compartment_Bladder*Rate_Law_for_Tumor_growth(x(4), global_par_r, global_par_beta);

% Reaction: id = Tumor_infection, name = Tumor_infection
	reaction_Tumor_infection=compartment_Bladder*global_par_p2*x(4)*x(1);

% Reaction: id = Infected_tumor_cell_death, name = Infected_tumor_cell_death
	reaction_Infected_tumor_cell_death=compartment_Bladder*Rate_Law_for_Infected_tumor_cell_death(global_par_p3, x(2), x(3));

% Reaction: id = BCG_killing, name = BCG_killing
	reaction_BCG_killing=compartment_Bladder*Rate_Law_for_BCG_killing(x(1), global_par_p1, x(2));

	xdot=zeros(4,1);
	
% Species:   id = BCG, name = BCG, affected by kineticLaw
	xdot(1) = (1/(compartment_Bladder))*(( 1.0 * reaction_BCG_production) + (-1.0 * reaction_Tumor_infection) + (-1.0 * reaction_BCG_killing));
	
% Species:   id = Effector_cells, name = Effector_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Bladder))*(( 1.0 * reaction_Effector_cell_activation_recruitment) + (-1.0 * reaction_Effector_cell_inactivation_death));
	
% Species:   id = Tumor_infected_cells, name = Tumor_infected_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Bladder))*(( 1.0 * reaction_Tumor_infection) + (-1.0 * reaction_Infected_tumor_cell_death));
	
% Species:   id = Tumor_uninfected_cells, name = Tumor_uninfected_cells, affected by kineticLaw
	xdot(4) = (1/(compartment_Bladder))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_Tumor_infection));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_BCG_killing(B,p_1,E), z=(B*p_1*E+B);end

function z=Rate_Law_for_Effector_cell_activation_recruitment(E,p4,B,alpha,T_i), z=(E*p4*B+alpha*T_i);end

function z=Rate_Law_for_Infected_tumor_cell_death(p3,E,T_i), z=(p3*E*T_i);end

function z=Rate_Law_for_Tumor_growth(T_u,r,beta), z=(T_u*r*(1-beta*T_u));end

function z=Rate_Law_for_Effector_cell_inactivation_death(E,mu,p5,T_i), z=(E*mu+E*p5*T_i);end

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


