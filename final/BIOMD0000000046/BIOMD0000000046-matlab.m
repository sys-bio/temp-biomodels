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
% Model name = Olsen2003_peroxidase
%
% is http://identifiers.org/biomodels.db/MODEL6623265463
% is http://identifiers.org/biomodels.db/BIOMD0000000046
% isDescribedBy http://identifiers.org/pubmed/12823550
% isDerivedFrom http://identifiers.org/pubmed/11901676
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.4;
	x0(5) = 0.0;
	x0(6) = 500.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 12.0;
	x0(16) = 0.0;


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

% Reaction: id = v1	% Local Parameter:   id =  k1, name = k1
	reaction_v1_k1=3.0E-6;

	reaction_v1=compartment_compartment*reaction_v1_k1*x(1)*x(2);

% Reaction: id = v2	% Local Parameter:   id =  k2, name = k2
	reaction_v2_k2=18.0;

	reaction_v2=compartment_compartment*reaction_v2_k2*x(3)*x(4);

% Reaction: id = v3	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=0.15;

	reaction_v3=compartment_compartment*reaction_v3_k3*x(5)*x(6);

% Reaction: id = v4	% Local Parameter:   id =  k4, name = k4
	reaction_v4_k4=0.0052;

	reaction_v4=compartment_compartment*reaction_v4_k4*x(7)*x(6);

% Reaction: id = v5	% Local Parameter:   id =  k5, name = k5
	reaction_v5_k5=20.0;

	reaction_v5=compartment_compartment*reaction_v5_k5*x(9)*x(2);

% Reaction: id = v6	% Local Parameter:   id =  k6, name = k6
	reaction_v6_k6=17.0;

	reaction_v6=compartment_compartment*reaction_v6_k6*x(10)*x(4);

% Reaction: id = v7	% Local Parameter:   id =  k7, name = k7
	reaction_v7_k7=20.0;

	reaction_v7=compartment_compartment*reaction_v7_k7*x(10)*x(10);

% Reaction: id = v8	% Local Parameter:   id =  k8, name = k8
	reaction_v8_k8=40.0;

	reaction_v8=compartment_compartment*reaction_v8_k8*x(11)*x(9);

% Reaction: id = v9	% Local Parameter:   id =  k9, name = k9
	reaction_v9_k9=60.0;

	reaction_v9=compartment_compartment*reaction_v9_k9*x(9)*x(9);

% Reaction: id = v10	% Local Parameter:   id =  k10, name = k10
	reaction_v10_k10=1.8;

	reaction_v10=compartment_compartment*reaction_v10_k10*x(4)*x(9);

% Reaction: id = v11	% Local Parameter:   id =  k11, name = k11
	reaction_v11_k11=0.1;

	reaction_v11=compartment_compartment*reaction_v11_k11*x(12)*x(2);

% Reaction: id = v12	% Local Parameter:   id =  k12, name = k12
	reaction_v12_k12=0.08;

	reaction_v12=compartment_compartment*reaction_v12_k12;

% Reaction: id = v131	% Local Parameter:   id =  k13f, name = k13f
	reaction_v131_k13f=0.006;

	reaction_v131=compartment_compartment*reaction_v131_k13f*x(15);

% Reaction: id = v132	% Local Parameter:   id =  k13b, name = k13b
	reaction_v132_k13b=0.006;

	reaction_v132=compartment_compartment*reaction_v132_k13b*x(2);

% Reaction: id = v14	% Local Parameter:   id =  k14, name = k14
	reaction_v14_k14=0.7;

	reaction_v14=compartment_compartment*reaction_v14_k14*x(8)*x(1);

	xdot=zeros(16,1);
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v14));
	
% Species:   id = O2, name = O2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v11) + ( 1.0 * reaction_v131) + (-1.0 * reaction_v132));
	
% Species:   id = H2O2, name = H2O2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v7));
	
% Species:   id = per3, name = per3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_v2) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v6) + (-1.0 * reaction_v10));
	
% Species:   id = coI, name = coI, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v8));
	
% Species:   id = ArH, name = ArH, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v14));
	
% Species:   id = coII, name = coII, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Ar, name = Ar, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v14));
	
% Species:   id = NADrad, name = NADrad, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_v5) + (-1.0 * reaction_v8) + (-2.0 * reaction_v9) + (-1.0 * reaction_v10) + ( 1.0 * reaction_v14));
	
% Species:   id = super, name = super, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + (-2.0 * reaction_v7));
	
% Species:   id = coIII, name = coIII, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v11));
	
% Species:   id = per2, name = per2, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v11));
	
% Species:   id = NAD2, name = NAD2
%WARNING speciesID: NAD2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = NAD, name = NAD
%WARNING speciesID: NAD, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = O2g, name = O2g
%WARNING speciesID: O2g, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = NADHres, name = NADHres
%WARNING speciesID: NADHres, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
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


