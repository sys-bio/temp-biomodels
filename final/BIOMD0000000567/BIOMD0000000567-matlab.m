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
% Model name = Morris2009 - ?-Synuclein aggregation variable temperature and pH
%
% is http://identifiers.org/biomodels.db/MODEL1501160000
% is http://identifiers.org/biomodels.db/BIOMD0000000567
% isDescribedBy http://identifiers.org/pubmed/18247636
% isDerivedFrom http://identifiers.org/pubmed/15794636
% isDerivedFrom http://identifiers.org/pubmed/16117499
% isDerivedFrom http://identifiers.org/pubmed/12785778
% isDerivedFrom http://identifiers.org/pubmed/16536526
% isDerivedFrom http://identifiers.org/pubmed/16301322
% isDerivedFrom http://identifiers.org/pubmed/16981679
% isDerivedFrom http://identifiers.org/pubmed/16081040
% isDerivedFrom http://identifiers.org/pubmed/12186976
% isDerivedFrom http://identifiers.org/pubmed/16981684
% isDerivedFrom http://identifiers.org/pubmed/16981683
% isDerivedFrom http://identifiers.org/pubmed/16981676
% isDerivedFrom http://identifiers.org/doi/10.1021/ja9705102
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.0;


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
	global_par_k1=4.0E-5;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.57E-6;
% Parameter:   id =  A0, name = A0
% Parameter:   id =  k2A0, name = k2A0
	global_par_k2A0=0.29;
% assignmentRule: variable = A0
	global_par_A0=global_par_k2A0/global_par_k2;
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


