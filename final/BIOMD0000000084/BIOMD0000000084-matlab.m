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
% Model name = Hornberg2005_ERKcascade
%
% is http://identifiers.org/biomodels.db/MODEL6623610941
% is http://identifiers.org/biomodels.db/BIOMD0000000084
% isDescribedBy http://identifiers.org/pubmed/15634347
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.5;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 0.0;


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

% Compartment: id = compartment, name = Cytosol, constant
	compartment_compartment=1.0;

% Reaction: id = v1, name = Receptor inactivation	% Local Parameter:   id =  Vm1, name = Vm1
	reaction_v1_Vm1=1.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_v1_Km1=0.1;

	reaction_v1=reaction_v1_Vm1*x(1)/(reaction_v1_Km1+x(1));

% Reaction: id = v2, name = Receptor activation	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_v2_Vm2=0.01;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_v2_Km2=0.1;

	reaction_v2=reaction_v2_Vm2*x(2)/(reaction_v2_Km2+x(2));

% Reaction: id = v3, name = Kinase-1 activation	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=1.0;
	% Local Parameter:   id =  Km3, name = Km3
	reaction_v3_Km3=0.1;

	reaction_v3=reaction_v3_k3*x(1)*x(3)/(reaction_v3_Km3+x(3));

% Reaction: id = v4, name = Kinase-1 inactivation	% Local Parameter:   id =  Vm4, name = Vm4
	reaction_v4_Vm4=0.3;
	% Local Parameter:   id =  Km4, name = Km4
	reaction_v4_Km4=1.0;

	reaction_v4=reaction_v4_Vm4*x(4)/(reaction_v4_Km4+x(4));

% Reaction: id = v5, name = Kinase-2 activation	% Local Parameter:   id =  k5, name = k5
	reaction_v5_k5=1.0;
	% Local Parameter:   id =  Km5, name = Km5
	reaction_v5_Km5=0.1;

	reaction_v5=reaction_v5_k5*x(4)*x(5)/(reaction_v5_Km5+x(5));

% Reaction: id = v6, name = Kinase-2 inactivation	% Local Parameter:   id =  Vm6, name = Vm6
	reaction_v6_Vm6=0.3;
	% Local Parameter:   id =  Km6, name = Km6
	reaction_v6_Km6=1.0;

	reaction_v6=reaction_v6_Vm6*x(6)/(reaction_v6_Km6+x(6));

% Reaction: id = v7, name = Kinase-3 activation	% Local Parameter:   id =  k7, name = k7
	reaction_v7_k7=1.0;
	% Local Parameter:   id =  Km7, name = Km7
	reaction_v7_Km7=0.1;

	reaction_v7=reaction_v7_k7*x(6)*x(7)/(reaction_v7_Km7+x(7));

% Reaction: id = v8, name = Kinase-3 inactivation	% Local Parameter:   id =  Vm8, name = Vm8
	reaction_v8_Vm8=0.3;
	% Local Parameter:   id =  Km8, name = Km8
	reaction_v8_Km8=1.0;
	% Local Parameter:   id =  Inh, name = Inh
	reaction_v8_Inh=0.0;
	% Local Parameter:   id =  Ki8, name = Ki8
	reaction_v8_Ki8=1.0;

	reaction_v8=reaction_v8_Vm8*x(8)/reaction_v8_Km8/(1+x(8)/reaction_v8_Km8+reaction_v8_Inh/reaction_v8_Ki8);

	xdot=zeros(8,1);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_v1) + ( 1.0 * reaction_v2);
	
% Species:   id = Rin, name = Rin, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_v1) + (-1.0 * reaction_v2);
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_v3) + ( 1.0 * reaction_v4);
	
% Species:   id = x1p, name = x1p, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_v3) + (-1.0 * reaction_v4);
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_v5) + ( 1.0 * reaction_v6);
	
% Species:   id = x2p, name = x2p, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_v5) + (-1.0 * reaction_v6);
	
% Species:   id = x3, name = x3, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_v7) + ( 1.0 * reaction_v8);
	
% Species:   id = x3p, name = x3p, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_v7) + (-1.0 * reaction_v8);
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


