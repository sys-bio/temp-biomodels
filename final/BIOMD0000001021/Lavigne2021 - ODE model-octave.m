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
% Model name = Lavigne2021 - Non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection
%
% is http://identifiers.org/biomodels.db/MODEL2107220003
% is http://identifiers.org/biomodels.db/BIOMD0000001021
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 4.0E8;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 100.0;
	x0(6) = 0.0;
	x0(7) = 1.0;


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

% Compartment: id = whole_organism, name = whole_organism, constant
	compartment_whole_organism=1.0;
% Parameter:   id =  Beta, name = Beta
	global_par_Beta=5.0E-10;
% Parameter:   id =  Phi, name = Phi
	global_par_Phi=5.0E-10;
% Parameter:   id =  Rho, name = Rho
	global_par_Rho=1.0;
% Parameter:   id =  Delta, name = Delta
	global_par_Delta=4.0;
% Parameter:   id =  k, name = k
	global_par_k=2.0;
% Parameter:   id =  p, name = p
	global_par_p=2400.0;
% Parameter:   id =  f, name = f
	global_par_f=0.9;
% Parameter:   id =  c, name = c
	global_par_c=14.0;
% Parameter:   id =  Pi, name = Pi
	global_par_Pi=1.0;
% Parameter:   id =  Metabolite_0, name = Initial for Target_cells
	global_par_Metabolite_0=4.0E8;
% assignmentRule: variable = Fraction_target_cells_remaining
	x(7)=x(1)/global_par_Metabolite_0;

% Reaction: id = Infection, name = Infection
	reaction_Infection=compartment_whole_organism*Rate_Law_for_Infection(global_par_Beta, x(5), x(1));

% Reaction: id = Refractory_state, name = Refractory_state
	reaction_Refractory_state=compartment_whole_organism*Rate_Law_for_Refractory_state(global_par_Phi, x(6), x(1), x(4), global_par_Rho);

% Reaction: id = Antiviral_response, name = Antiviral_response
	reaction_Antiviral_response=compartment_whole_organism*Rate_Law_for_Antiviral_response(global_par_Phi, x(6), x(2), global_par_k);

% Reaction: id = Infected_cell_death, name = Infected_cell_death
	reaction_Infected_cell_death=compartment_whole_organism*global_par_Delta*x(2);

% Reaction: id = Antiviral_infected_cell_death, name = Antiviral_infected_cell_death
	reaction_Antiviral_infected_cell_death=compartment_whole_organism*global_par_Delta*x(3);

% Reaction: id = Virus_release, name = Virus_release
	reaction_Virus_release=compartment_whole_organism*Rate_Law_for_Virus_release(global_par_p, x(2), global_par_f, x(3));

% Reaction: id = IFN_release, name = IFN_release
	reaction_IFN_release=compartment_whole_organism*Rate_Law_for_IFN_release(global_par_Pi, global_par_p, x(2), x(3));

% Reaction: id = Virus_clearence, name = Virus_clearence
	reaction_Virus_clearence=compartment_whole_organism*global_par_c*x(5);

% Reaction: id = IFN_clearence, name = IFN_clearence
	reaction_IFN_clearence=compartment_whole_organism*global_par_c*x(6);

	xdot=zeros(7,1);
	
% Species:   id = Target_cells, name = Target_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_whole_organism))*((-1.0 * reaction_Infection) + (-1.0 * reaction_Refractory_state));
	
% Species:   id = Infected_cells, name = Infected_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_whole_organism))*(( 1.0 * reaction_Infection) + (-1.0 * reaction_Antiviral_response) + (-1.0 * reaction_Infected_cell_death));
	
% Species:   id = Infected_cells_antiviral, name = Infected_cells_antiviral, affected by kineticLaw
	xdot(3) = (1/(compartment_whole_organism))*(( 1.0 * reaction_Antiviral_response) + (-1.0 * reaction_Antiviral_infected_cell_death));
	
% Species:   id = Refractory_cells, name = Refractory_cells, affected by kineticLaw
	xdot(4) = (1/(compartment_whole_organism))*(( 1.0 * reaction_Refractory_state));
	
% Species:   id = Virions, name = Virions, affected by kineticLaw
	xdot(5) = (1/(compartment_whole_organism))*(( 1.0 * reaction_Virus_release) + (-1.0 * reaction_Virus_clearence));
	
% Species:   id = IFN, name = IFN, affected by kineticLaw
	xdot(6) = (1/(compartment_whole_organism))*(( 1.0 * reaction_IFN_release) + (-1.0 * reaction_IFN_clearence));
	
% Species:   id = Fraction_target_cells_remaining, name = Fraction_target_cells_remaining, involved in a rule 	xdot(7) = x(7);
end

function z=Rate_Law_for_Antiviral_response(Phi,F,I,k), z=(k*I+Phi*F*I);end

function z=Rate_Law_for_Virus_release(p,I,f,_I_), z=(p*I+(1-f)*p*_I_);end

function z=Rate_Law_for_IFN_release(Pi,p,I,_I_), z=(Pi*p*(I+_I_));end

function z=Rate_Law_for_Infection(Beta,V,T), z=(Beta*V*T);end

function z=Rate_Law_for_Refractory_state(Phi,F,T,R,Rho), z=(Phi*F*T-Rho*R);end

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


