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
% Model name = Wolf2000_Glycolytic_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL3352181362
% is http://identifiers.org/biomodels.db/BIOMD0000000206
% isDescribedBy http://identifiers.org/pubmed/10692304
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1.0;
	x0(2) = 2.0;
	x0(3) = 5.0;
	x0(4) = 0.6;
	x0(5) = 0.6;
	x0(6) = 0.7;
	x0(7) = 8.0;
	x0(8) = 0.08;
	x0(9) = 0.02;


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
% Parameter:   id =  k0, name = k0
	global_par_k0=50.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=550.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=9.8;
% Parameter:   id =  k31, name = k31
	global_par_k31=323.8;
% Parameter:   id =  k33, name = k33
	global_par_k33=57823.1;
% Parameter:   id =  k32, name = k32
	global_par_k32=76411.1;
% Parameter:   id =  k34, name = k34
	global_par_k34=23.7;
% Parameter:   id =  k4, name = k4
	global_par_k4=80.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=9.7;
% Parameter:   id =  k6, name = k6
	global_par_k6=2000.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=28.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=85.7;
% Parameter:   id =  k9, name = k9
	global_par_k9=80.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=375.0;
% Parameter:   id =  atot, name = atot
	global_par_atot=4.0;
% Parameter:   id =  ntot, name = ntot
	global_par_ntot=1.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  ki, name = ki
	global_par_ki=1.0;

% Reaction: id = v1, name = v1
	reaction_v1=compartment_compartment*global_par_k1*x(1)*x(2)/(1+(x(2)/global_par_ki)^global_par_n);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_compartment*global_par_k2*x(3);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_compartment*(global_par_k31*global_par_k32*x(4)*x(5)*(global_par_atot-x(2))-global_par_k33*global_par_k34*x(6)*x(2)*(global_par_ntot-x(5)))/(global_par_k33*(global_par_ntot-x(5))+global_par_k32*(global_par_atot-x(2)));

% Reaction: id = v4, name = v4
	reaction_v4=compartment_compartment*global_par_k4*x(6)*(global_par_atot-x(2));

% Reaction: id = v5, name = v5
	reaction_v5=compartment_compartment*global_par_k5*x(7);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_compartment*global_par_k7*x(2);

% Reaction: id = v8, name = v8
	reaction_v8=compartment_compartment*global_par_k8*x(4)*(global_par_ntot-x(5));

% Reaction: id = v9, name = v9
	reaction_v9=compartment_compartment*global_par_k9*x(9);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_compartment*global_par_k10*(x(8)-x(9));

% Reaction: id = v6, name = v6
	reaction_v6=compartment_compartment*global_par_k6*x(8)*(global_par_ntot-x(5));

% Reaction: id = v0, name = v0
	reaction_v0=compartment_compartment*global_par_k0;

	xdot=zeros(9,1);
	
% Species:   id = s1, name = Glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v0));
	
% Species:   id = at, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-2.0 * reaction_v1) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v7));
	
% Species:   id = s2, name = F16P, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = s3, name = Triose_Gly3Phos_DHAP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 2.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v8));
	
% Species:   id = na, name = NAD, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_v3) + ( 1.0 * reaction_v8) + ( 1.0 * reaction_v6));
	
% Species:   id = s4, name = 3PG, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = s5, name = Pyruvate, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = s6, name = Acetaldehyde, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v10) + (-1.0 * reaction_v6));
	
% Species:   id = s6o, name = extracellular acetaldehyde, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_v9) + ( 0.1 * reaction_v10));
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


