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
% Model name = Smolen2002_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6618294363
% is http://identifiers.org/biomodels.db/BIOMD0000000025
% isDescribedBy http://identifiers.org/pubmed/12414672
% isDerivedFrom http://identifiers.org/pubmed/11517254
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 5.0E-16;
	x0(2) = 1.0E-16;
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

% Compartment: id = CELL, name = CELL, constant
	compartment_CELL=1.0E-15;
% Parameter:   id =  dClkF_tau1, name = dClkF_tau1
% Parameter:   id =  dClkF_tau2, name = dClkF_tau2
% Parameter:   id =  tau1, name = tau1
	global_par_tau1=10.0;
% Parameter:   id =  tau2, name = tau2
	global_par_tau2=10.0;
% Parameter:   id =  Vsp, name = Vsp
	global_par_Vsp=0.5;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.3;
% Parameter:   id =  Vsc, name = Vsc
	global_par_Vsc=0.25;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.1;
% Parameter:   id =  kdc, name = kdc
	global_par_kdc=0.5;
% Parameter:   id =  kdp, name = kdp
	global_par_kdp=0.5;
% assignmentRule: variable = dClkF
	x(3)=piecewise(0, (x(2)-x(1)) < 0, x(2)-x(1));
% assignmentRule: variable = dClkF_tau1
	global_par_dClkF_tau1=piecewise(0, (delay(x(2), global_par_tau1)-delay(x(1), global_par_tau1)) < 0, delay(x(2), global_par_tau1)-delay(x(1), global_par_tau1));
% assignmentRule: variable = dClkF_tau2
	global_par_dClkF_tau2=piecewise(0, (delay(x(2), global_par_tau2)-delay(x(1), global_par_tau2)) < 0, delay(x(2), global_par_tau2)-delay(x(1), global_par_tau2));

% Reaction: id = rPer, name = Per production
	reaction_rPer=global_par_Vsp*global_par_dClkF_tau1/(global_par_K1+global_par_dClkF_tau1)*compartment_CELL;

% Reaction: id = rdClk, name = dClk production
	reaction_rdClk=compartment_CELL*global_par_Vsc*global_par_K2/(global_par_K2+global_par_dClkF_tau2);

% Reaction: id = rPerD, name = Per degradation
	reaction_rPerD=global_par_kdc*x(1)*compartment_CELL;

% Reaction: id = rdClkD, name = dClk degradation
	reaction_rdClkD=global_par_kdp*x(2)*compartment_CELL;

% Species:   id = EmptySet, name = EmptySet, constant	const_species_EmptySet=0.0;

	xdot=zeros(3,1);
	
% Species:   id = Per, name = Per, affected by kineticLaw
	xdot(1) = (1/(compartment_CELL))*(( 1.0 * reaction_rPer) + (-1.0 * reaction_rPerD));
	
% Species:   id = dClk, name = dClk, affected by kineticLaw
	xdot(2) = (1/(compartment_CELL))*(( 1.0 * reaction_rdClk) + (-1.0 * reaction_rdClkD));
	
% Species:   id = dClkF, name = free dClk, defined in a rule 	xdot(3) = x(3);
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


