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
% Model name = Sriram2007_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL8610478473
% is http://identifiers.org/biomodels.db/BIOMD0000000181
% isDescribedBy http://identifiers.org/pubmed/18203579
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000195
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 6.0;
	x0(2) = 5.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  j1, name = j1
	global_par_j1=0.9;
% Parameter:   id =  vd1, name = vd1
	global_par_vd1=6.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  km1, name = km1
	global_par_km1=5.0;
% Parameter:   id =  kc1, name = kc1
	global_par_kc1=0.2;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=0.8;
% Parameter:   id =  j2, name = j2
	global_par_j2=0.5;
% Parameter:   id =  vd2, name = vd2
	global_par_vd2=1.052;
% Parameter:   id =  km2, name = km2
	global_par_km2=5.0;
% Parameter:   id =  kc2, name = kc2
	global_par_kc2=0.22;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.9;
% Parameter:   id =  j3, name = j3
	global_par_j3=0.2;
% Parameter:   id =  vd3, name = vd3
	global_par_vd3=3.0;
% Parameter:   id =  km3, name = km3
	global_par_km3=5.0;
% Parameter:   id =  kc3, name = kc3
	global_par_kc3=0.6;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.8;
% Parameter:   id =  v12, name = v12
	global_par_v12=15.0;
% Parameter:   id =  k120, name = k120
	global_par_k120=10.0;
% Parameter:   id =  kd4, name = kd4
	global_par_kd4=0.16;
% Parameter:   id =  v11, name = v11
	global_par_v11=15.0;
% Parameter:   id =  k110, name = k110
	global_par_k110=10.0;
% Parameter:   id =  kd5, name = kd5
	global_par_kd5=0.16;
% Parameter:   id =  v10, name = v10
	global_par_v10=15.0;
% Parameter:   id =  k100, name = k100
	global_par_k100=10.0;
% Parameter:   id =  kd6, name = kd6
	global_par_kd6=0.16;

% Reaction: id = R1
	reaction_R1=compartment_compartment*global_par_j1;

% Reaction: id = R2
	reaction_R2=compartment_compartment*global_par_vd1*x(3)^global_par_n/(global_par_km1^global_par_n+x(3)^global_par_n);

% Reaction: id = R3
	reaction_R3=compartment_compartment*global_par_kc1*x(4);

% Reaction: id = R4
	reaction_R4=compartment_compartment*global_par_kd1*x(1);

% Reaction: id = R5
	reaction_R5=compartment_compartment*global_par_j2;

% Reaction: id = R6
	reaction_R6=compartment_compartment*global_par_vd2*x(1)^global_par_n/(global_par_km2^global_par_n+x(1)^global_par_n);

% Reaction: id = R7
	reaction_R7=compartment_compartment*global_par_kc2*x(5);

% Reaction: id = R8
	reaction_R8=compartment_compartment*global_par_kd2*x(2);

% Reaction: id = R9
	reaction_R9=compartment_compartment*global_par_j3;

% Reaction: id = R10
	reaction_R10=compartment_compartment*global_par_vd3*x(2)^global_par_n/(global_par_km3^global_par_n+x(2)^global_par_n);

% Reaction: id = R11
	reaction_R11=compartment_compartment*global_par_kc3*x(6);

% Reaction: id = R12
	reaction_R12=compartment_compartment*global_par_kd3*x(3);

% Reaction: id = R13
	reaction_R13=compartment_compartment*global_par_v12*x(1)^global_par_n/(global_par_k120^global_par_n+x(1)^global_par_n+x(5)^global_par_n);

% Reaction: id = R14
	reaction_R14=compartment_compartment*global_par_kd4*x(4);

% Reaction: id = R15
	reaction_R15=compartment_compartment*global_par_v11*x(2)^global_par_n/(global_par_k110^global_par_n+x(2)^global_par_n+x(6)^global_par_n);

% Reaction: id = R16
	reaction_R16=compartment_compartment*global_par_kd5*x(5);

% Reaction: id = R17
	reaction_R17=compartment_compartment*global_par_v10*x(3)^global_par_n/(global_par_k100^global_par_n+x(3)^global_par_n+x(4)^global_par_n);

% Reaction: id = R18
	reaction_R18=compartment_compartment*global_par_kd6*x(6);

	xdot=zeros(6,1);
	
% Species:   id = T1, name = T1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = T2, name = T2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = T3, name = T3, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R18));
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


