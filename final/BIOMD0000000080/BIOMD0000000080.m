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
% Model name = Thomsen1989_AdenylateCyclase
%
% is http://identifiers.org/biomodels.db/MODEL1173806337
% is http://identifiers.org/biomodels.db/BIOMD0000000080
% isDescribedBy http://identifiers.org/pubmed/2574993
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000082
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 3.1E-5;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0E-6;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.0E-5;
	x0(9) = 0.0;
	x0(10) = 1.0E-10;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = Reaction_1, name = Forming DR	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction_1_k1=5000000.0;
	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction_1_k7=10.0;

	reaction_Reaction_1=compartment_cell*(reaction_Reaction_1_k1*x(1)*x(10)-reaction_Reaction_1_k7*x(2));

% Reaction: id = Reaction_2, name = DR Binding with G_GDP produce DRG_GDP	% Local Parameter:   id =  k2, name = k2
	reaction_Reaction_2_k2=1.0E8;
	% Local Parameter:   id =  k8, name = k8
	reaction_Reaction_2_k8=0.1;

	reaction_Reaction_2=compartment_cell*(reaction_Reaction_2_k2*x(2)*x(4)-reaction_Reaction_2_k8*x(3));

% Reaction: id = Reaction_3, name = GDP Releasing	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction_3_k3=5.0;
	% Local Parameter:   id =  k9, name = k9
	reaction_Reaction_3_k9=100000.0;

	reaction_Reaction_3=compartment_cell*(reaction_Reaction_3_k3*x(3)-reaction_Reaction_3_k9*x(6)*x(5));

% Reaction: id = Reaction_4, name = GTP binding with DRG	% Local Parameter:   id =  k4, name = k4
	reaction_Reaction_4_k4=5000000.0;
	% Local Parameter:   id =  k10, name = k10
	reaction_Reaction_4_k10=55.0;

	reaction_Reaction_4=compartment_cell*(reaction_Reaction_4_k4*x(5)*x(8)-reaction_Reaction_4_k10*x(7));

% Reaction: id = Reaction_5, name = G protein activation	% Local Parameter:   id =  k5, name = k5
	reaction_Reaction_5_k5=1.0;

	reaction_Reaction_5=compartment_cell*reaction_Reaction_5_k5*x(7);

% Reaction: id = Reaction_6, name = Hydrolysis of GTP to GDP	% Local Parameter:   id =  k6, name = k6
	reaction_Reaction_6_k6=2.0;

	reaction_Reaction_6=compartment_cell*reaction_Reaction_6_k6*x(9);

	xdot=zeros(10,1);
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_Reaction_1));
	
% Species:   id = DR, name = DR, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_1) + (-1.0 * reaction_Reaction_2) + ( 1.0 * reaction_Reaction_5));
	
% Species:   id = DRG_GDP, name = DRG_GDP, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_2) + (-1.0 * reaction_Reaction_3));
	
% Species:   id = G_GDP, name = G_GDP, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_Reaction_2) + ( 1.0 * reaction_Reaction_6));
	
% Species:   id = DRG, name = DRG, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_3) + (-1.0 * reaction_Reaction_4));
	
% Species:   id = GDP, name = GDP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_3));
	
% Species:   id = DRG_GTP, name = DRG_GTP, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_4) + (-1.0 * reaction_Reaction_5));
	
% Species:   id = GTP, name = GTP, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_Reaction_4));
	
% Species:   id = G_GTP, name = G_GTP, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_Reaction_5) + (-1.0 * reaction_Reaction_6));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_Reaction_1));
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


