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
% Model name = Nakakuki2010_CellFateDecision_Core
%
% is http://identifiers.org/biomodels.db/MODEL1003170000
% is http://identifiers.org/biomodels.db/BIOMD0000000251
% isDescribedBy http://identifiers.org/pubmed/20493519
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000175
% isDerivedFrom http://identifiers.org/pubmed/12242336
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0;


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
% Parameter:   id =  k7, name = k7
	global_par_k7=0.5;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.11;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.06;
% Parameter:   id =  L, name = L
	global_par_L=1.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=1.09;
% Parameter:   id =  tau1, name = tau1
	global_par_tau1=3.07;
% Parameter:   id =  K2, name = K
	global_par_K2=2.89;
% Parameter:   id =  tau2, name = tau
	global_par_tau2=472.0;
% assignmentRule: variable = ppERKc
	x(10)=x(1)-x(2);

% Reaction: id = reaction_1, name = 1 PhIM 1
	reaction_reaction_1=compartment_compartment*((-x(1))/global_par_tau1+global_par_K1*global_par_L/global_par_tau1);

% Reaction: id = reaction_2, name = 1 PhIM 2
	reaction_reaction_2=compartment_compartment*((-x(2))/global_par_tau2+global_par_K2*global_par_L/global_par_tau2);

% Reaction: id = reaction_3, name = 2a ppERKn	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=15.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=50.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_reaction_3_k3=14.0;

	reaction_reaction_3=compartment_compartment*(reaction_reaction_3_k1*x(10)-reaction_reaction_3_k2*x(3)-reaction_reaction_3_k3*x(4)*x(3));

% Reaction: id = reaction_4, name = 2b DUSP	% Local Parameter:   id =  k, name = k
	reaction_reaction_4_k=1.0;

	reaction_reaction_4=compartment_compartment*reaction_reaction_4_k*x(3);

% Reaction: id = reaction_5, name = 3 pRSKn	% Local Parameter:   id =  k4, name = k4
	reaction_reaction_5_k4=0.1;
	% Local Parameter:   id =  k5, name = k5
	reaction_reaction_5_k5=0.15;

	reaction_reaction_5=compartment_compartment*(reaction_reaction_5_k4*x(3)-reaction_reaction_5_k5*x(5));

% Reaction: id = reaction_6, name = 4 cFOSp	% Local Parameter:   id =  k6, name = k6
	reaction_reaction_6_k6=0.13;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_6_n=1.1;

	reaction_reaction_6=compartment_compartment*((x(3)*x(5))^reaction_reaction_6_n/(reaction_reaction_6_k6^reaction_reaction_6_n+(x(3)*x(5))^reaction_reaction_6_n)-global_par_k7*x(6));

% Reaction: id = reaction_7, name = 5 cFOSm	% Local Parameter:   id =  k8, name = k8
	reaction_reaction_7_k8=0.08;

	reaction_reaction_7=compartment_compartment*(global_par_k7*x(6)-reaction_reaction_7_k8*x(9));

% Reaction: id = reaction_8, name = 6 cFOS	% Local Parameter:   id =  k10, name = k10
	reaction_reaction_8_k10=0.3;
	% Local Parameter:   id =  k9, name = k9
	reaction_reaction_8_k9=0.3;

	reaction_reaction_8=compartment_compartment*(reaction_reaction_8_k9*x(9)-reaction_reaction_8_k10*x(7)-global_par_k11*x(7)*x(10)+global_par_k13*x(8));

% Reaction: id = reaction_9, name = 7 pcFOS	% Local Parameter:   id =  k12, name = k12
	reaction_reaction_9_k12=0.001;

	reaction_reaction_9=compartment_compartment*(global_par_k11*x(7)*x(10)-reaction_reaction_9_k12*x(8)-global_par_k13*x(8));

	xdot=zeros(10,1);
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2));
	
% Species:   id = ppERKn, name = ppERK(nucleus), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3));
	
% Species:   id = DUSP, name = DUSP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_4));
	
% Species:   id = pRSKn, name = pRSKn, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5));
	
% Species:   id = cFOSp, name = cFOS preRNA, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6));
	
% Species:   id = cFOS, name = cFOS, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_8));
	
% Species:   id = pcFOS, name = pc-FOS, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_9));
	
% Species:   id = cFOSm, name = cFOSmRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_7));
	
% Species:   id = ppERKc, name = ppERK(cytosol), involved in a rule 	xdot(10) = x(10);
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


