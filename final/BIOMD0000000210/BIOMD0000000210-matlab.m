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
% Model name = Chickarmane2008 - Stem cell lineage - NANOG GATA-6 switch
%
% is http://identifiers.org/biomodels.db/MODEL8389825246
% is http://identifiers.org/biomodels.db/BIOMD0000000210
% isDescribedBy http://identifiers.org/pubmed/18941526
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000204
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000203
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.01;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 10.0;
	x0(11) = 0.01;
	x0(12) = 0.01;
	x0(13) = 0.01;
	x0(14) = 0.01;
	x0(15) = 0.01;
	x0(16) = 0.01;
	x0(17) = 0.1;
	x0(18) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  a0, name = a0
	global_par_a0=0.001;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.02;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.0125;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.025;
% Parameter:   id =  b0, name = b0
	global_par_b0=1.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.02;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.0125;
% Parameter:   id =  b3, name = b3
	global_par_b3=0.03;
% Parameter:   id =  b4, name = b4
	global_par_b4=10.0;
% Parameter:   id =  b5, name = b5
	global_par_b5=10.0;
% Parameter:   id =  gamma1, name = gamma1
	global_par_gamma1=0.1;
% Parameter:   id =  c0, name = c0
	global_par_c0=0.001;
% Parameter:   id =  c1, name = c1
	global_par_c1=0.05;
% Parameter:   id =  c2, name = c2
	global_par_c2=0.0125;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.001;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.05;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.0125;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.05;
% Parameter:   id =  gamma2, name = gamma2
	global_par_gamma2=0.1;
% Parameter:   id =  e0, name = e0
	global_par_e0=0.001;
% Parameter:   id =  e1, name = e1
	global_par_e1=0.1;
% Parameter:   id =  e2, name = e2
	global_par_e2=0.1;
% Parameter:   id =  f0, name = f0
	global_par_f0=0.001;
% Parameter:   id =  f1, name = f1
	global_par_f1=0.1;
% Parameter:   id =  f2, name = f2
	global_par_f2=0.1;
% Parameter:   id =  f3, name = f3
	global_par_f3=10.0;
% Parameter:   id =  gamma3, name = gamma3
	global_par_gamma3=0.1;
% Parameter:   id =  g0, name = g0
	global_par_g0=0.001;
% Parameter:   id =  g1, name = g1
	global_par_g1=2.0;
% Parameter:   id =  h0, name = h0
	global_par_h0=2.0;
% Parameter:   id =  h1, name = h1
	global_par_h1=5.0;
% Parameter:   id =  gamma4, name = gamma4
	global_par_gamma4=0.1;
% Parameter:   id =  i0, name = i0
	global_par_i0=0.001;
% Parameter:   id =  i1, name = i1
	global_par_i1=0.1;
% Parameter:   id =  i2, name = i2
	global_par_i2=0.1;
% Parameter:   id =  j0, name = j0
	global_par_j0=0.1;
% Parameter:   id =  j1, name = j1
	global_par_j1=0.1;
% Parameter:   id =  gamma5, name = gamma5
	global_par_gamma5=0.1;
% Parameter:   id =  p0, name = p0
	global_par_p0=0.1;
% Parameter:   id =  p1, name = p1
	global_par_p1=1.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=2.5E-4;
% Parameter:   id =  q0, name = q0
	global_par_q0=1.0;
% Parameter:   id =  q1, name = q1
	global_par_q1=2.5E-4;
% Parameter:   id =  q2, name = q2
	global_par_q2=15.0;
% Parameter:   id =  gammag, name = gammag
	global_par_gammag=0.01;
% Parameter:   id =  gamman, name = gamman
	global_par_gamman=0.01;

% Reaction: id = R1, name = R1
	reaction_R1=(global_par_a0+global_par_a1*x(10)+global_par_a2*x(11)*x(12)+global_par_a3*x(11)*x(12)*x(13))/(1+global_par_b0*x(10)+global_par_b1*x(11)+global_par_b2*x(11)*x(12)+global_par_b3*x(11)*x(12)*x(13)+global_par_b4*x(15)*x(11)+global_par_b5*x(16));

% Reaction: id = R2, name = R2
	reaction_R2=global_par_gamma1*x(11);

% Reaction: id = R3, name = R3
	reaction_R3=(global_par_c0+global_par_c1*x(11)*x(12)+global_par_c2*x(11)*x(12)*x(13))/(1+global_par_d0*x(11)+global_par_d1*x(11)*x(12)+global_par_d2*x(11)*x(12)*x(13));

% Reaction: id = R4, name = R4
	reaction_R4=global_par_gamma2*x(12);

% Reaction: id = R5, name = R5
	reaction_R5=(global_par_a1*x(17)+global_par_a2*x(17)*x(13))/(1+global_par_b1*x(17)+global_par_b2*x(17)*x(13)+global_par_b3*x(17)*x(14));

% Reaction: id = R6, name = R6
	reaction_R6=global_par_gamman*x(13);

% Reaction: id = R7, name = R7
	reaction_R7=(global_par_g0+global_par_g1*x(15))/(1+global_par_h0*x(15)+global_par_h1*x(15)*x(11));

% Reaction: id = R8, name = R8
	reaction_R8=global_par_gamma4*x(15);

% Reaction: id = R9, name = R9
	reaction_R9=(global_par_i0+global_par_i1*x(15)+global_par_i2*x(14))/(1+global_par_j0*x(15)+global_par_j1*x(14));

% Reaction: id = R10, name = R10
	reaction_R10=global_par_gamma5*x(16);

% Reaction: id = R11, name = R11
	reaction_R11=(global_par_c1*x(17)+global_par_c2*x(14))/(1+global_par_d1*x(17)+global_par_d2*x(14)+global_par_d3*x(13));

% Reaction: id = R12, name = R12
	reaction_R12=global_par_gammag*x(14);

	xdot=zeros(18,1);
	
% Species:   id = OCT4_Gene, name = OCT4_Gene
%WARNING speciesID: OCT4_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = NANOG_Gene, name = NANOG_Gene
%WARNING speciesID: NANOG_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = SOX2_Gene, name = SOX2_Gene
%WARNING speciesID: SOX2_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = GATA6_Gene, name = GATA6_Gene
%WARNING speciesID: GATA6_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = CDX2_Gene, name = CDX2_Gene
%WARNING speciesID: CDX2_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = GCNF_Gene, name = GCNF_Gene
%WARNING speciesID: GCNF_Gene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = targetGene, name = targetGene
%WARNING speciesID: targetGene, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = degradation, name = degradation
%WARNING speciesID: degradation, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = p53, name = p53
%WARNING speciesID: p53, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = A, name = A
%WARNING speciesID: A, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = OCT4, name = OCT4, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = SOX2, name = SOX2, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = NANOG, name = NANOG, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = GATA6, name = GATA6, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = CDX2, name = CDX2, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = GCNF, name = GCNF, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = OCT4_SOX2, name = OCT4_SOX2
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = Protein, name = Protein
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
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


