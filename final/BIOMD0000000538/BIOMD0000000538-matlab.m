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
% Model name = Clarke2000 - One-hit model of cell death in neuronal degenerations
%
% is http://identifiers.org/biomodels.db/MODEL1408070000
% is http://identifiers.org/biomodels.db/BIOMD0000000538
% isDescribedBy http://identifiers.org/pubmed/10910361
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(4) = 100.0;
	x0(5) = 100.0;
	x0(1) = 100.0;
	x0(2) = 100.0;
	x0(3) = 100.0;


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
% Parameter:   id =  Munr, name = Munr
	global_par_Munr=0.278;
% Parameter:   id =  Mupcd, name = Mupcd
	global_par_Mupcd=0.223;
% Parameter:   id =  Rrom, name = Rrom
	global_par_Rrom=0.103;
% Parameter:   id =  ONLrom_0, name = ONLrom
	global_par_ONLrom_0=40.947;
% Parameter:   id =  Murom, name = Murom
	global_par_Murom=0.0708;
% assignmentRule: variable = ONLrom
	x(3)=global_par_ONLrom_0*exp((exp((-global_par_Rrom)*time)-1)*global_par_Murom/global_par_Rrom)*100/global_par_ONLrom_0;
% rateRule: variable = ONLnr
x(1) = x(4);
% rateRule: variable = ONLpcd
x(2) = x(5);

	xdot=zeros(5,1);
	% rateRule: variable = ONLnr
	xdot(4) = (-global_par_Munr)*x(1);
	% rateRule: variable = ONLpcd
	xdot(5) = (-global_par_Mupcd)*x(2);
	
% Species:   id = ONLnr, name = ONLnr, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = ONLpcd, name = ONLpcd, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = ONLrom, name = ONLrom, involved in a rule 	xdot(3) = x(3);
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


