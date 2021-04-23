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
% Model name = Martins2003_AmadoriDegradation
%
% is http://identifiers.org/biomodels.db/MODEL7981660691
% is http://identifiers.org/biomodels.db/BIOMD0000000050
% isDescribedBy http://identifiers.org/pubmed/12873422
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 9.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;


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

% Reaction: id = v1	% Local Parameter:   id =  k1, name = k1
	reaction_v1_k1=0.0057;

	reaction_v1=reaction_v1_k1*x(1);

% Reaction: id = v2	% Local Parameter:   id =  k2, name = k2
	reaction_v2_k2=0.0156;

	reaction_v2=reaction_v2_k2*x(1);

% Reaction: id = v3	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=0.0155;

	reaction_v3=reaction_v3_k3*x(1);

% Reaction: id = v4	% Local Parameter:   id =  k4, name = k4
	reaction_v4_k4=0.0794;

	reaction_v4=reaction_v4_k4*x(2);

% Reaction: id = v5	% Local Parameter:   id =  k5, name = k5
	reaction_v5_k5=0.0907;

	reaction_v5=reaction_v5_k5*x(6);

% Reaction: id = v6	% Local Parameter:   id =  k6, name = k6
	reaction_v6_k6=0.0274;

	reaction_v6=reaction_v6_k6*x(6);

% Reaction: id = v7	% Local Parameter:   id =  k7, name = k7
	reaction_v7_k7=0.2125;

	reaction_v7=reaction_v7_k7*x(3);

% Reaction: id = v8	% Local Parameter:   id =  k8, name = k8
	reaction_v8_k8=0.0;

	reaction_v8=reaction_v8_k8*x(8);

% Reaction: id = v9	% Local Parameter:   id =  k9, name = k9
	reaction_v9_k9=1.9085;

	reaction_v9=reaction_v9_k9*x(8);

% Reaction: id = v10	% Local Parameter:   id =  k10, name = k10
	reaction_v10_k10=0.0707;

	reaction_v10=reaction_v10_k10*x(2);

% Reaction: id = v11	% Local Parameter:   id =  k11, name = k11
	reaction_v11_k11=0.1131;

	reaction_v11=reaction_v11_k11*x(2);

% Reaction: id = v12	% Local Parameter:   id =  k12, name = k12
	reaction_v12_k12=8.0E-4;

	reaction_v12=reaction_v12_k12*x(10);

% Reaction: id = v13	% Local Parameter:   id =  k13, name = k13
	reaction_v13_k13=0.0022;

	reaction_v13=reaction_v13_k13*x(11);

% Reaction: id = v14	% Local Parameter:   id =  k14, name = k14
	reaction_v14_k14=0.0034;

	reaction_v14=reaction_v14_k14*x(4)*x(5);

% Reaction: id = v15	% Local Parameter:   id =  k15, name = k15
	reaction_v15_k15=0.0159;

	reaction_v15=reaction_v15_k15*x(4);

% Reaction: id = v16	% Local Parameter:   id =  k16, name = k16
	reaction_v16_k16=0.0134;

	reaction_v16=reaction_v16_k16*x(3);

	xdot=zeros(14,1);
	
% Species:   id = DFG, name = DFG, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = E1, name = E1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v4) + (-1.0 * reaction_v10) + (-1.0 * reaction_v11));
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v7) + (-1.0 * reaction_v16));
	
% Species:   id = Cn, name = Cn, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15));
	
% Species:   id = Gly, name = Gly, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + ( 1.0 * reaction_v7) + ( 1.0 * reaction_v10) + ( 1.0 * reaction_v11) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v16));
	
% Species:   id = _3DG, name = _3DG, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v13));
	
% Species:   id = FA, name = FA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + ( 1.0 * reaction_v15));
	
% Species:   id = _1DG, name = _1DG, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + (-1.0 * reaction_v9));
	
% Species:   id = AA, name = AA, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + ( 1.0 * reaction_v15));
	
% Species:   id = Man, name = Man, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v12));
	
% Species:   id = Glu, name = Glu, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v13));
	
% Species:   id = MG, name = MG, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_v15));
	
% Species:   id = Mel, name = Mel, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v14));
	
% Species:   id = Fru, name = Fru, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_v16));
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


