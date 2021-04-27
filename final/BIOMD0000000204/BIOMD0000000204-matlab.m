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
% Model name = Chickarmane2006 - Stem cell switch irreversible
%
% is http://identifiers.org/biomodels.db/MODEL7957942740
% is http://identifiers.org/biomodels.db/BIOMD0000000204
% isDescribedBy http://identifiers.org/pubmed/16978048
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.01;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 10.0;
	x0(8) = 0.01;
	x0(9) = 0.01;
	x0(10) = 0.01;
	x0(11) = 0.1;
	x0(12) = 0.0;


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
% Parameter:   id =  eta1, name = eta1
	global_par_eta1=1.0E-4;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.01;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.5;
% Parameter:   id =  f, name = f
	global_par_f=1000.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.0011;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.001;
% Parameter:   id =  b3, name = b3
	global_par_b3=0.001;
% Parameter:   id =  gamma1, name = gamma1
	global_par_gamma1=1.0;
% Parameter:   id =  eta5, name = eta5
	global_par_eta5=1.0E-4;
% Parameter:   id =  e1, name = e1
	global_par_e1=0.01;
% Parameter:   id =  e2, name = e2
	global_par_e2=0.1;
% Parameter:   id =  f2, name = f2
	global_par_f2=0.001;
% Parameter:   id =  f1, name = f1
	global_par_f1=0.001;
% Parameter:   id =  f3, name = f3
	global_par_f3=0.05;
% Parameter:   id =  gamma2, name = gamma2
	global_par_gamma2=1.0;
% Parameter:   id =  k1c, name = k1c
	global_par_k1c=0.05;
% Parameter:   id =  k2c, name = k2c
	global_par_k2c=0.001;
% Parameter:   id =  k3c, name = k3c
	global_par_k3c=5.0;
% Parameter:   id =  eta3, name = eta3
	global_par_eta3=1.0E-4;
% Parameter:   id =  c1, name = c1
	global_par_c1=1.0;
% Parameter:   id =  c2, name = c2
	global_par_c2=0.01;
% Parameter:   id =  c3, name = c3
	global_par_c3=0.5;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.0011;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.001;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.001;
% Parameter:   id =  gamma3, name = gamma3
	global_par_gamma3=1.0;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.1;
% Parameter:   id =  eta7, name = eta7
	global_par_eta7=1.0E-4;
% Parameter:   id =  h1, name = h1
	global_par_h1=0.0011;
% Parameter:   id =  h2, name = h2
	global_par_h2=1.0;
% Parameter:   id =  gamma4, name = gamma4
	global_par_gamma4=0.01;

% Reaction: id = J0
	reaction_J0=(global_par_eta1+global_par_a1*x(7)+global_par_a2*x(11)+global_par_a3*x(11)*x(10))/(1+global_par_eta1/global_par_f+global_par_b1*x(7)+global_par_b2*x(11)+global_par_b3*x(11)*x(10));

% Reaction: id = J1
	reaction_J1=global_par_gamma1*x(8);

% Reaction: id = J2
	reaction_J2=(global_par_eta5+global_par_e1*x(11)+global_par_e2*x(11)*x(10))/(1+global_par_eta5/global_par_f+global_par_f2*x(11)+global_par_f1*x(11)*x(10)+global_par_f3*x(6));

% Reaction: id = J3
	reaction_J3=global_par_gamma2*x(10);

% Reaction: id = J4
	reaction_J4=global_par_k1c*x(8)*x(9)-global_par_k2c*x(11);

% Reaction: id = J5
	reaction_J5=global_par_k3c*x(11);

% Reaction: id = J6
	reaction_J6=(global_par_eta3+global_par_c1*x(7)+global_par_c2*x(11)+global_par_c3*x(11)*x(10))/(1+global_par_eta3/global_par_f+global_par_d1*x(7)+global_par_d2*x(11)+global_par_d3*x(11)*x(10));

% Reaction: id = J7
	reaction_J7=global_par_gamma3*x(9);

% Reaction: id = J8
	reaction_J8=(global_par_g1*x(11)+global_par_eta7)/(1+global_par_eta7/global_par_f2+global_par_h1*x(11)+global_par_h2*x(11)*x(10));

% Reaction: id = J9
	reaction_J9=global_par_gamma4*x(12);

	xdot=zeros(12,1);
	
% Species:   id = OCT4_Gene, name = OCT4_Gene
%WARNING speciesID: OCT4_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = NANOG_Gene, name = NANOG_Gene
%WARNING speciesID: NANOG_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = SOX2_Gene, name = SOX2_Gene
%WARNING speciesID: SOX2_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = targetGene, name = targetGene
%WARNING speciesID: targetGene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = degradation, name = degradation
%WARNING speciesID: degradation, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = p53, name = p53
%WARNING speciesID: p53, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = A, name = A
%WARNING speciesID: A, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = OCT4, name = OCT4, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_J0) + (-1.0 * reaction_J1) + (-1.0 * reaction_J4));
	
% Species:   id = SOX2, name = SOX2, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_J4) + ( 1.0 * reaction_J6) + (-1.0 * reaction_J7));
	
% Species:   id = NANOG, name = NANOG, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_J2) + (-1.0 * reaction_J3));
	
% Species:   id = OCT4_SOX2, name = OCT4_SOX2, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_J4) + (-1.0 * reaction_J5));
	
% Species:   id = Protein, name = Protein, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_J8) + (-1.0 * reaction_J9));
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


