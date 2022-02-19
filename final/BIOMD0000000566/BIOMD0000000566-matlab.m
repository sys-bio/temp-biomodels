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
% Model name = Morris2008 - Fitting protein aggregation data via F-W 2-step mechanism
%
% is http://identifiers.org/biomodels.db/MODEL1501160001
% is http://identifiers.org/biomodels.db/BIOMD0000000566
% isDescribedBy http://identifiers.org/pubmed/19101068
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000567
% isDerivedFrom http://identifiers.org/pubmed/11152691
% isDerivedFrom http://identifiers.org/doi/10.1021/ja9705102
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = -4.44089209850063E-16;


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

% Compartment: id = Brain, name = Brain, constant
	compartment_Brain=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=8.0E-6;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.034;
% Parameter:   id =  A0, name = A0
	global_par_A0=3.55;
% assignmentRule: variable = B
	x(1)=global_par_A0-(global_par_k1/global_par_k2+global_par_A0)/(1+global_par_k1/(global_par_k2*global_par_A0)*exp((global_par_k1+global_par_k2*global_par_A0)*time));

% Reaction: id = Nucleation, name = Nucleation
	reaction_Nucleation=compartment_Brain*global_par_k1*const_species_A;

% Reaction: id = Growth, name = Growth
	reaction_Growth=compartment_Brain*global_par_k2*const_species_A*x(1);

% Species:   id = A, name = A, constant	const_species_A=1.0;

	xdot=zeros(1,1);
	
% Species:   id = B, name = B, involved in a rule 	xdot(1) = x(1);
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


