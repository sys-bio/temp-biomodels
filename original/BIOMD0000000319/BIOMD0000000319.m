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
% Model name = Decroly1982_Enzymatic_Oscillator
%
% is http://identifiers.org/biomodels.db/MODEL1102070000
% is http://identifiers.org/biomodels.db/BIOMD0000000319
% isDescribedBy http://identifiers.org/pubmed/6960354
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 29.19988;
	x0(2) = 188.8;
	x0(3) = 0.3367;


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

% Reaction: id = r1	% Local Parameter:   id =  v_Km1, name = v_Km1
	reaction_r1_v_Km1=0.45;

	reaction_r1=reaction_r1_v_Km1;

% Reaction: id = r2	% Local Parameter:   id =  L1, name = L1
	reaction_r2_L1=5.0E8;
	% Local Parameter:   id =  sigma1, name = sigma1
	reaction_r2_sigma1=10.0;

	reaction_r2=reaction_r2_sigma1*x(1)*(1+x(1))*(1+x(2))^2/(reaction_r2_L1+(1+x(1))^2*(1+x(2))^2);

% Reaction: id = r3	% Local Parameter:   id =  L2, name = L2
	reaction_r3_L2=100.0;
	% Local Parameter:   id =  d, name = d
	reaction_r3_d=0.0;
	% Local Parameter:   id =  sigma2, name = sigma2
	reaction_r3_sigma2=10.0;

	reaction_r3=reaction_r3_sigma2*x(2)*(1+reaction_r3_d*x(2))*(1+x(3))^2/(reaction_r3_L2+(1+reaction_r3_d*x(2))^2*(1+x(3))^2);

% Reaction: id = r4	% Local Parameter:   id =  ks, name = ks
	reaction_r4_ks=1.99;

	reaction_r4=reaction_r4_ks*x(3);

	xdot=zeros(3,1);
	
% Species:   id = alpha, name = alpha, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = beta, name = beta, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 50.0 * reaction_r2) + (-1.0 * reaction_r3));
	
% Species:   id = gamma, name = gamma, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 0.02 * reaction_r3) + (-1.0 * reaction_r4));
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


