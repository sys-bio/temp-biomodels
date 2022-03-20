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
% Model name = Kuznetsov1994 - Nonlinear dynamics of immunogenic tumors
%
% isDescribedBy http://identifiers.org/pubmed/8186756
% is http://identifiers.org/biomodels.db/MODEL1907230002
% is http://identifiers.org/biomodels.db/BIOMD0000000762
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 320000.0;
	x0(2) = 5000000.0;


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
% Parameter:   id =  p, name = p
	global_par_p=0.1245;
% Parameter:   id =  g, name = g
	global_par_g=2.019E7;
% Parameter:   id =  m, name = m
	global_par_m=3.422E-10;
% Parameter:   id =  n, name = n
	global_par_n=1.101E-7;
% Parameter:   id =  d, name = d
	global_par_d=0.0412;
% Parameter:   id =  s, name = s
	global_par_s=13000.0;
% Parameter:   id =  a, name = a
	global_par_a=0.18;
% Parameter:   id =  b, name = b
	global_par_b=2.0E-9;

% Reaction: id = EC_Accumulation, name = EC_Accumulation
	reaction_EC_Accumulation=compartment_compartment*Function_for_EC_Accumulation(global_par_p, x(1), x(2), global_par_g);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_a, x(2));

% Reaction: id = Tumor_Growth_Inhibition, name = Tumor_Growth_Inhibition
	reaction_Tumor_Growth_Inhibition=compartment_compartment*Function_for_Tumor_Growth_Inhibition(global_par_a, global_par_b, x(2));

% Reaction: id = Tumor_Killing, name = Tumor_Killing
	reaction_Tumor_Killing=compartment_compartment*Function_for_Tumor_Killing(global_par_n, x(1), x(2));

% Reaction: id = EC_Tumor_Complex_Formation, name = EC_Tumor_Complex_Formation
	reaction_EC_Tumor_Complex_Formation=compartment_compartment*Function_for_EC_Tumor_Complex_Formation(global_par_m, x(1), x(2));

% Reaction: id = EC_Elimination, name = EC_Elimination
	reaction_EC_Elimination=compartment_compartment*global_par_d*x(1);

	xdot=zeros(2,1);
	
% Species:   id = E, name = Effector Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_EC_Passive_Accumulation) + ( 1.0 * reaction_EC_Accumulation) + (-1.0 * reaction_EC_Tumor_Complex_Formation) + (-1.0 * reaction_EC_Elimination));
	
% Species:   id = T, name = Tumor Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Growth_Inhibition) + (-1.0 * reaction_Tumor_Killing));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_EC_Tumor_Complex_Formation(m,E,T), z=(m*E*T);end

function z=Function_for_Tumor_Growth(a,T), z=(a*T);end

function z=Function_for_Tumor_Killing(n,E,T), z=(n*E*T);end

function z=Function_for_EC_Accumulation(p,E,T,g), z=(p*E*T/(g+T));end

function z=Function_for_Tumor_Growth_Inhibition(a,b,T), z=(a*b*T^2);end

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


