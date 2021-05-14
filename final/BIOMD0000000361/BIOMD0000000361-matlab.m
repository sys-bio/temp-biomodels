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
% Model name = Panteleev2002_TFPImechanism_schmema1
%
% is http://identifiers.org/biomodels.db/MODEL1108260006
% is http://identifiers.org/biomodels.db/BIOMD0000000361
% isDescribedBy http://identifiers.org/pubmed/11985578
% isDerivedFrom http://identifiers.org/pubmed/9468448
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.9999997;
	x0(2) = 169.9999;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 2.399999;
	x0(7) = 0.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;

% Reaction: id = reaction_1, name = reaction_1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=5.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=770.0;

	reaction_reaction_1=compartment_compartment*(reaction_reaction_1_k1*x(2)*x(1)-reaction_reaction_1_k2*x(3));

% Reaction: id = reaction_2, name = reaction_2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=420.0;

	reaction_reaction_2=compartment_compartment*reaction_reaction_2_k1*x(3);

% Reaction: id = reaction_3, name = reaction_3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=770.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=5.0;

	reaction_reaction_3=compartment_compartment*(reaction_reaction_3_k1*x(4)-reaction_reaction_3_k2*x(5)*x(1));

% Reaction: id = reaction_4, name = reaction_4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.054;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_4_k2=0.02;

	reaction_reaction_4=compartment_compartment*(reaction_reaction_4_k1*x(5)*x(6)-reaction_reaction_4_k2*x(7));

% Reaction: id = reaction_5, name = reaction_5	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.44;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=0.066;

	reaction_reaction_5=compartment_compartment*(reaction_reaction_5_k1*x(1)*x(7)-reaction_reaction_5_k2*x(8));

	xdot=zeros(8,1);
	
% Species:   id = VIIa_TF, name = VIIa_TF, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_1));
	
% Species:   id = VIIa_TF_X, name = VIIa_TF_X, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = VIIa_TF_Xa, name = VIIa_TF_Xa, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = TFPI, name = TFPI, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_4));
	
% Species:   id = Xa_TFPI, name = Xa_TFPI, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = Xa_TFPI_VIIa_TF, name = Xa_TFPI_VIIa_TF, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5));
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


