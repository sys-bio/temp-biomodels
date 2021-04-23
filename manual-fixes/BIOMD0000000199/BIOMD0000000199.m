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
% Model name = Santolini2001_nNOS_Mechanism_Regulation
%
% is http://identifiers.org/biomodels.db/MODEL4734733125
% is http://identifiers.org/biomodels.db/BIOMD0000000199
% isDescribedBy http://identifiers.org/pubmed/11038356
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 40.0;
	x0(10) = 140.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.6;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.9;
% Parameter:   id =  k3, name = k3
	global_par_k3=26.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.6;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.9;
% Parameter:   id =  k6, name = k6
	global_par_k6=26.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=5.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=2.6;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0E-4;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.0013;
% assignmentRule: variable = FeIII_t
	x(15)=x(1)+x(4);

% Reaction: id = r1
	reaction_r1=compartment_cytosol*global_par_k1*x(1);

% Reaction: id = r2
	reaction_r2=compartment_cytosol*global_par_k2*x(2)*x(10);

% Reaction: id = r3
	reaction_r3=compartment_cytosol*global_par_k3*x(3);

% Reaction: id = r4
	reaction_r4=compartment_cytosol*global_par_k4*x(4);

% Reaction: id = r5
	reaction_r5=compartment_cytosol*global_par_k5*x(5)*x(10);

% Reaction: id = r6
	reaction_r6=compartment_cytosol*global_par_k6*x(6);

% Reaction: id = rF
	reaction_rF=compartment_cytosol*global_par_k7*x(7);

% Reaction: id = rG
	reaction_rG=compartment_cytosol*global_par_k8*x(7);

% Reaction: id = r9
	reaction_r9=compartment_cytosol*global_par_k9*x(8);

% Reaction: id = r10
	reaction_r10=compartment_cytosol*global_par_k10*x(8)*x(10);

	xdot=zeros(15,1);
	
% Species:   id = FeIII, name = FeIII, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_r1) + ( 1.0 * reaction_rF) + ( 1.0 * reaction_r10));
	
% Species:   id = FeII, name = FeII, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + ( 1.0 * reaction_r9));
	
% Species:   id = FeII_O2, name = FeII_O2, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_r2) + (-1.0 * reaction_r3));
	
% Species:   id = FeIII_star, name = FeIII_star, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4));
	
% Species:   id = FeII_star, name = FeII_star, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r5));
	
% Species:   id = FeII_star_O2, name = FeII_star_O2, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r6));
	
% Species:   id = FeIII_NO, name = FeIII_NO, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_r6) + (-1.0 * reaction_rF) + (-1.0 * reaction_rG));
	
% Species:   id = FeII_NO, name = FeII_NO, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_rG) + (-1.0 * reaction_r9) + (-1.0 * reaction_r10));
	
% Species:   id = NADPH, name = NADPH
%WARNING speciesID: NADPH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = O2, name = O2
%WARNING speciesID: O2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = citrulline, name = citruline
%WARNING speciesID: citrulline, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = NO3, name = NO3
%WARNING speciesID: NO3, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = NO, name = NO
%WARNING speciesID: NO, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = NADPplus, name = NADPplus
%WARNING speciesID: NADPplus, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = FeIII_t, name = FeIII_t, defined in a rule 	xdot(15) = x(15);
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


