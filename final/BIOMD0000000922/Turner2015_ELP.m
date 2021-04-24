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
% Model name = Turner2015-Human/Mosquito ELP Model
%
% is http://identifiers.org/biomodels.db/MODEL2003130001
% is http://identifiers.org/biomodels.db/BIOMD0000000922
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 10000.0;
	x0(2) = 5000.0;
	x0(3) = 3000.0;


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
% Parameter:   id =  Ar, name = Ar
	global_par_Ar=20.0;
% Parameter:   id =  ep, name = ep
	global_par_ep=30.0;
% Parameter:   id =  Te, name = Te
	global_par_Te=0.361;
% Parameter:   id =  Me, name = Me
	global_par_Me=0.05;
% Parameter:   id =  K0, name = K0
	global_par_K0=2.0E-4;
% Parameter:   id =  Tl, name = Tl
	global_par_Tl=0.134;
% Parameter:   id =  Tp, name = Tp
	global_par_Tp=0.342;
% Parameter:   id =  Mp, name = Mp
	global_par_Mp=0.0025;
% Parameter:   id =  Ml, name = Ml
	global_par_Ml=0.0501;

% Reaction: id = reaction_for_E, name = reaction for E
	reaction_reaction_for_E=compartment_compartment*Rate_Law_for_reaction_for_E_1(global_par_Ar, global_par_Me, x(1), global_par_Te, global_par_ep);

% Reaction: id = reaction_for_L, name = reaction for L
	reaction_reaction_for_L=compartment_compartment*Rate_Law_for_reaction_for_L_1(global_par_K0, global_par_Ml, x(1), x(2), global_par_Te, global_par_Tl);

% Reaction: id = reaction_for_P, name = reaction for P
	reaction_reaction_for_P=compartment_compartment*Rate_Law_for_reaction_for_P_1(global_par_Mp, x(2), x(3), global_par_Tl, global_par_Tp);

	xdot=zeros(3,1);
	
% Species:   id = Population_of_Eggs, name = Population of Eggs, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_E));
	
% Species:   id = Population_of_Larvae, name = Population of Larvae, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_L));
	
% Species:   id = Population_of_Pupae, name = Population of Pupae, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_P));
end

function z=Rate_Law_for_reaction_for_E_1(Ar,Me,Population_of_Eggs,Te,ep), z=(Ar*ep-Population_of_Eggs*(Te+Me));end

function z=Rate_Law_for_reaction_for_L_1(K0,Ml,Population_of_Eggs,Population_of_Larvae,Te,Tl), z=(Population_of_Eggs*Te-Population_of_Larvae*(Tl+Ml)-K0*Population_of_Larvae^2);end

function z=Rate_Law_for_reaction_for_P_1(Mp,Population_of_Larvae,Population_of_Pupae,Tl,Tp), z=(Population_of_Larvae*Tl-Population_of_Pupae*(Tp+Mp));end

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


