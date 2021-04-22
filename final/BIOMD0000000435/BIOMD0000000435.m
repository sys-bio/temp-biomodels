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
% Model name = deBack2012 - Lineage Specification in Pancreas Development
%
% is http://identifiers.org/biomodels.db/MODEL1211010000
% is http://identifiers.org/biomodels.db/BIOMD0000000435
% isDescribedBy http://identifiers.org/pubmed/23193107
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;

% Reaction: id = reaction_1, name = Xi expr	% Local Parameter:   id =  theta, name = theta
	reaction_reaction_1_theta=1.0E-4;
	% Local Parameter:   id =  a, name = a
	reaction_reaction_1_a=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_1_n=4.0;

	reaction_reaction_1=compartment_compartment_1*function_1(reaction_reaction_1_theta, reaction_reaction_1_a, x(3), reaction_reaction_1_n);

% Reaction: id = reaction_2, name = Xi degr	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1.0;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(1);

% Reaction: id = reaction_3, name = Yi expr	% Local Parameter:   id =  theta, name = theta
	reaction_reaction_3_theta=1.0E-4;
	% Local Parameter:   id =  b, name = b
	reaction_reaction_3_b=21.0;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_3_n=4.0;
	% Local Parameter:   id =  c, name = c
	reaction_reaction_3_c=1.0;

	reaction_reaction_3=compartment_compartment_1*function_2(reaction_reaction_3_theta, reaction_reaction_3_b, x(2), x(4), reaction_reaction_3_n, reaction_reaction_3_c, x(1));

% Reaction: id = reaction_4, name = Yi degr	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=1.0;

	reaction_reaction_4=compartment_compartment_1*reaction_reaction_4_k1*x(2);

% Reaction: id = reaction_5, name = Xj expr	% Local Parameter:   id =  theta, name = theta
	reaction_reaction_5_theta=1.0E-4;
	% Local Parameter:   id =  a, name = a
	reaction_reaction_5_a=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_5_n=4.0;

	reaction_reaction_5=compartment_compartment_1*function_1(reaction_reaction_5_theta, reaction_reaction_5_a, x(1), reaction_reaction_5_n);

% Reaction: id = reaction_6, name = Xj degr	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=1.0;

	reaction_reaction_6=compartment_compartment_1*reaction_reaction_6_k1*x(3);

% Reaction: id = reaction_7, name = Yj expr	% Local Parameter:   id =  theta, name = theta
	reaction_reaction_7_theta=1.0E-4;
	% Local Parameter:   id =  b, name = b
	reaction_reaction_7_b=21.0;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_7_n=4.0;
	% Local Parameter:   id =  c, name = c
	reaction_reaction_7_c=1.0;

	reaction_reaction_7=compartment_compartment_1*function_2(reaction_reaction_7_theta, reaction_reaction_7_b, x(2), x(4), reaction_reaction_7_n, reaction_reaction_7_c, x(3));

% Reaction: id = reaction_8, name = Yj degr	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=1.0;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(4);

	xdot=zeros(4,1);
	
% Species:   id = species_1, name = Xi, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_2, name = Yi, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_3, name = Xj, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_4, name = Yj, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
end

function z=function_1(theta,a,Xj,n), z=(theta/(theta+a*Xj^n));end

function z=function_2(theta,b,Yi,Yj,n,c,Xi), z=((theta+b*(Yi*Yj)^n)/(theta+c*Xi^n+b*(Yi*Yj)^n));end

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


