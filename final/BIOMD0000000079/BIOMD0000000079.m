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
% Model name = Goldbeter2006_weightCycling
%
% is http://identifiers.org/biomodels.db/MODEL4644593552
% is http://identifiers.org/biomodels.db/BIOMD0000000079
% isDescribedBy http://identifiers.org/pubmed/16595882
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.43;
	x0(2) = 0.8;
	x0(3) = 0.55;


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

% Compartment: id = body, name = body, constant
	compartment_body=1.0;

% Reaction: id = reaction_0, name = Increase of  P	% Local Parameter:   id =  a, name = a
	reaction_reaction_0_a=0.1;

	reaction_reaction_0=compartment_body*function_0(reaction_reaction_0_a, x(2));

% Reaction: id = reaction_1, name = Decrease of P	% Local Parameter:   id =  V, name = V
	reaction_reaction_1_V=0.1;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_1_Km=0.2;

	reaction_reaction_1=function_1(reaction_reaction_1_V, x(1), reaction_reaction_1_Km);

% Reaction: id = reaction_2, name = Increase of Q	% Local Parameter:   id =  V1, name = V1
	reaction_reaction_2_V1=1.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_2_K1=0.01;

	reaction_reaction_2=function_2(reaction_reaction_2_V1, x(2), reaction_reaction_2_K1);

% Reaction: id = reaction_3, name = Decrease of Q	% Local Parameter:   id =  V2, name = V2
	reaction_reaction_3_V2=1.5;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_3_K2=0.01;

	reaction_reaction_3=function_3(reaction_reaction_3_V2, x(3), x(2), reaction_reaction_3_K2);

% Reaction: id = reaction_4, name = Increase of R	% Local Parameter:   id =  V3, name = V3
	reaction_reaction_4_V3=6.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_reaction_4_k3=0.01;

	reaction_reaction_4=function_4(x(1), reaction_reaction_4_V3, x(3), reaction_reaction_4_k3);

% Reaction: id = reaction_5, name = Decrease of R	% Local Parameter:   id =  V, name = V
	reaction_reaction_5_V=2.5;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_5_Km=0.01;

	reaction_reaction_5=function_1(reaction_reaction_5_V, x(3), reaction_reaction_5_Km);

	xdot=zeros(3,1);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1);
	
% Species:   id = Q, name = Q, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5);
end

function z=function_4(P,V3,R,k3), z=(P*V3*(1-R)/(k3+(1-R)));end

function z=function_3(V2,R,Q,K2), z=(V2*R*Q/(K2+Q));end

function z=function_2(V1,Q,K1), z=(V1*(1-Q)/(K1+(1-Q)));end

function z=function_1(V,substrate,Km), z=(V*substrate/(Km+substrate));end

function z=function_0(a,Q), z=(a*Q);end

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


