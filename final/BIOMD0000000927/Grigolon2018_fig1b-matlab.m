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
% Model name = Grigolon2018-Responses to auxin signals
%
% is http://identifiers.org/biomodels.db/MODEL1706070000
% is http://identifiers.org/biomodels.db/BIOMD0000000927
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.2;
	x0(2) = 0.0333299969972976;
	x0(3) = 49.9900030001007;


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
% Parameter:   id =  Tauxin, name = Tauxin
	global_par_Tauxin=10.0;
% Parameter:   id =  TIAA, name = TIAA
	global_par_TIAA=333.0;
% Parameter:   id =  TARF, name = TARF
	global_par_TARF=2.0;
% Parameter:   id =  alpha_no_reg, name = alpha_no_reg
	global_par_alpha_no_reg=0.05;
% Parameter:   id =  alpha_reg, name = alpha_reg
	global_par_alpha_reg=150.0;
% Parameter:   id =  SIAA, name = SIAA
	global_par_SIAA=1.0;
% Parameter:   id =  SARF, name = SARF
	global_par_SARF=25.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.003;
% Parameter:   id =  Sauxin, name = Sauxin
	global_par_Sauxin=0.02;

% Reaction: id = reaction_for_auxin_induction, name = reaction for auxin induction
	reaction_reaction_for_auxin_induction=compartment_compartment*Rate_Law_for_reaction_auxin_induction(global_par_Sauxin, x(1), global_par_Tauxin);

% Reaction: id = reaction_for_synthesis_of_IAA_along_with_natural_decay_of_IAA, name = reaction for synthesis of IAA
	reaction_reaction_for_synthesis_of_IAA_along_with_natural_decay_of_IAA=compartment_compartment*Rate_Law_for_reaction_synthesis_of_IAA_along_with_natural_decay_of_IAA(global_par_SIAA, x(2), global_par_TIAA);

% Reaction: id = reaction_for_synthesis_of_ARF_along_with_natural_decay_of_ARF, name = reaction for synthesis of ARF
	reaction_reaction_for_synthesis_of_ARF_along_with_natural_decay_of_ARF=compartment_compartment*Rate_Law_for_reaction_synthesis_of_ARF_along_with_natural_decay_of_ARF(global_par_SARF, x(3), global_par_TARF);

% Reaction: id = reaction_for__natural_decay_of_ARF, name = reaction for  natural decay of ARF
	reaction_reaction_for__natural_decay_of_ARF=compartment_compartment*Rate_Law_for_reaction_for__natural_decay_of_ARF(global_par_beta, x(2), x(3));

% Reaction: id = reaction_natural_decay_of_IAA, name = reaction natural decay of IAA
	reaction_reaction_natural_decay_of_IAA=compartment_compartment*Rate_Law_for_reaction_natural_decay_of_IAA(global_par_alpha_no_reg, x(1), x(2));

	xdot=zeros(3,1);
	
% Species:   id = auxin, name = auxin, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_auxin_induction));
	
% Species:   id = IAA, name = IAA, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_synthesis_of_IAA_along_with_natural_decay_of_IAA) + (-1.0 * reaction_reaction_natural_decay_of_IAA));
	
% Species:   id = ARF, name = ARF, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_synthesis_of_ARF_along_with_natural_decay_of_ARF) + (-1.0 * reaction_reaction_for__natural_decay_of_ARF));
end

function z=Rate_Law_for_reaction_auxin_induction(Sauxin,auxin,Tauxin), z=(Sauxin-auxin/Tauxin);end

function z=Rate_Law_for_reaction_synthesis_of_IAA_along_with_natural_decay_of_IAA(SIAA,IAA,TIAA), z=(SIAA-IAA/TIAA);end

function z=Rate_Law_for_reaction_synthesis_of_ARF_along_with_natural_decay_of_ARF(SARF,ARF,TARF), z=(SARF-ARF/TARF);end

function z=Rate_Law_for_reaction_natural_decay_of_IAA(alpha,auxin,IAA), z=(alpha*auxin*IAA);end

function z=Rate_Law_for_reaction_for__natural_decay_of_ARF(beta,IAA,ARF), z=(beta*IAA*ARF);end

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


