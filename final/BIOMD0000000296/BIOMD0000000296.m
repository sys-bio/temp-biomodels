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
% Model name = Balagaddé2008_E_coli_Predator_Prey
%
% is http://identifiers.org/biomodels.db/MODEL8305195207
% is http://identifiers.org/biomodels.db/BIOMD0000000296
% isDescribedBy http://identifiers.org/pubmed/18414488
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 20.0;
	x0(2) = 20.0;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = environment, name = environment, constant
	compartment_environment=1.0;
% Parameter:   id =  kc1, name = kc1
	global_par_kc1=0.8;
% Parameter:   id =  kc2, name = kc2
	global_par_kc2=0.4;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=100.0;
% Parameter:   id =  D, name = D
	global_par_D=0.1125;
% Parameter:   id =  kA1, name = kA1
	global_par_kA1=0.1;
% Parameter:   id =  kA2, name = kA2
% Parameter:   id =  d2, name = d2
	global_par_d2=0.3;
% Parameter:   id =  K2, name = K2
	global_par_K2=10.0;
% Parameter:   id =  d1, name = d1
% Parameter:   id =  K1, name = K1
	global_par_K1=10.0;
% Parameter:   id =  dAA1, name = dAA1
	global_par_dAA1=0.017;
% Parameter:   id =  dAA2, name = dAA2
	global_par_dAA2=0.11;
% assignmentRule: variable = d1
	global_par_d1=0.5+const_species_IPTG^2/(5^2+const_species_IPTG^2);
% assignmentRule: variable = kA2
	global_par_kA2=0.02+0.03*const_species_IPTG^2/(5^2+const_species_IPTG^2);

% Reaction: id = J0, name = predator growth
	reaction_J0=compartment_environment*global_par_kc1*x(1)*(1-(x(1)+x(2))/global_par_Cm);

% Reaction: id = J1, name = predator death
	reaction_J1=compartment_environment*(global_par_D+global_par_d1*global_par_K1/(global_par_K1+x(4)^2))*x(1);

% Reaction: id = J2, name = prey growth
	reaction_J2=compartment_environment*global_par_kc2*x(2)*(1-(x(1)+x(2))/global_par_Cm);

% Reaction: id = J3, name = prey death
	reaction_J3=compartment_environment*(global_par_D+global_par_d2*x(3)^2/(global_par_K2+x(3)^2))*x(2);

% Reaction: id = J4, name = 3OC12HSL synthesis
	reaction_J4=compartment_environment*global_par_kA1*x(1);

% Reaction: id = J5, name = 3OC12HSL removal
	reaction_J5=compartment_environment*(global_par_dAA1+global_par_D)*x(3);

% Reaction: id = J6, name = 3OC6HSL synthesis
	reaction_J6=compartment_environment*global_par_kA2*x(2);

% Reaction: id = J7, name = 3OC6HSL removal
	reaction_J7=compartment_environment*(global_par_dAA2+global_par_D)*x(4);

% Species:   id = IPTG, name = IPTG, constant	const_species_IPTG=5.0;

	xdot=zeros(6,1);
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(1) = (1/(compartment_environment))*(( 1.0 * reaction_J0) + (-1.0 * reaction_J1));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(2) = (1/(compartment_environment))*(( 1.0 * reaction_J2) + (-1.0 * reaction_J3));
	
% Species:   id = A1, name = A1, affected by kineticLaw
	xdot(3) = (1/(compartment_environment))*(( 1.0 * reaction_J4) + (-1.0 * reaction_J5));
	
% Species:   id = A2, name = A2, affected by kineticLaw
	xdot(4) = (1/(compartment_environment))*(( 1.0 * reaction_J6) + (-1.0 * reaction_J7));
	
% Species:   id = sink, name = sink
%WARNING speciesID: sink, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = source, name = source
%WARNING speciesID: source, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
end

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


