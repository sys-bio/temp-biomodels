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
% Model name = DeBoeck2021 - Modular approach to modeling the cell cycle, simple cell cycle model
%
% isDescribedBy http://identifiers.org/doi:10.1371/journal.pcbi.1009008
% is http://identifiers.org/biomodels.db/MODEL2212060001
% is http://identifiers.org/biomodels.db/BIOMD0000001079
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(2) = 0.04;
	x0(1) = 17.45;


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

% Compartment: id = default_compartment, name = default_compartment, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  ks, name = ks
	global_par_ks=1.1;
% Parameter:   id =  bdeg, name = bdeg
	global_par_bdeg=0.1;
% Parameter:   id =  APC, name = APC
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;
% Parameter:   id =  n, name = n
	global_par_n=15.0;
% Parameter:   id =  K, name = K
	global_par_K=20.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.16;
% Parameter:   id =  r, name = r
	global_par_r=0.5;
% rateRule: variable = APC
global_par_APC = x(2);

% Reaction: id = _J0, name = CycCdk synthesis
	reaction__J0=compartment_default_compartment*Function_for__J0(compartment_default_compartment, global_par_ks);

% Reaction: id = _J1, name = CycCdk degradation
	reaction__J1=compartment_default_compartment*Function_for__J1(global_par_APC, x(1), global_par_bdeg, compartment_default_compartment);

	xdot=zeros(2,1);
	% rateRule: variable = APC
	xdot(2) = 1/global_par_epsilon*(x(1)^global_par_n/((global_par_K*Xi(global_par_APC, global_par_alpha, global_par_r))^global_par_n+x(1)^global_par_n)-global_par_APC);
	
% Species:   id = CycCdk, name = CycCdk, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction__J0) + (-1.0 * reaction__J1));
end

function z=Xi(x,alpha,r), z=(1+alpha*x*(x-1)*(x-r));end

function z=Function_for__J0(default_compartment,ks), z=(ks/default_compartment);end

function z=Function_for__J1(APC,CycCdk,bdeg,default_compartment), z=(bdeg*CycCdk*APC/default_compartment);end

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


