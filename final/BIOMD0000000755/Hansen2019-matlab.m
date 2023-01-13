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
% Model name = Hansen2019 - Nine species reduced model of blood coagulation
%
% isDescribedBy http://identifiers.org/pubmed/31161687
% is http://identifiers.org/biomodels.db/MODEL1907180004
% is http://identifiers.org/biomodels.db/BIOMD0000000755
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1.0E-9;
	x0(2) = 1.6E-7;
	x0(3) = 0.0;
	x0(4) = 1.4E-6;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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

% Reaction: id = reaction_1, name = reaction 1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=121.267;

	reaction_reaction_1=compartment_compartment*reaction_reaction_1_k1*x(1)*x(2);

% Reaction: id = reaction_2, name = reaction 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=4.74645E-16;

	reaction_reaction_2=compartment_compartment*reaction_reaction_2_k1*x(1)*x(2)*x(4);

% Reaction: id = reaction_3, name = reaction 3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=2.56984E12;

	reaction_reaction_3=compartment_compartment*reaction_reaction_3_k1*x(3)*x(4);

% Reaction: id = reaction_4, name = reaction 4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=77540.2;

	reaction_reaction_4=compartment_compartment*reaction_reaction_4_k1*x(6);

% Reaction: id = reaction_5, name = reaction 5	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=6.96794E10;

	reaction_reaction_5=compartment_compartment*reaction_reaction_5_k1*x(3)*x(7);

% Reaction: id = reaction_6, name = reaction 6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.00472749;

	reaction_reaction_6=compartment_compartment*reaction_reaction_6_k1*x(7);

% Reaction: id = reaction_7, name = reaction 7	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.0201671;

	reaction_reaction_7=compartment_compartment*reaction_reaction_7_k1*x(5);

	xdot=zeros(9,1);
	
% Species:   id = TF, name = TF, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = Xa_Va, name = Xa_Va, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_5));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = Xa_Va_II, name = Xa_Va_II, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = mIIa, name = mIIa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = mIIa_ATIII, name = mIIa_ATIII, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6));
	
% Species:   id = IIa_ATIII, name = IIa_ATIII, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_7));
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


