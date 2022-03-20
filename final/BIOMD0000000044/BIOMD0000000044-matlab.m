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
% Model name = Borghans1997 - Calcium Oscillation - Model 2
%
% is http://identifiers.org/biomodels.db/MODEL6622948601
% is http://identifiers.org/biomodels.db/BIOMD0000000044
% isDescribedBy http://identifiers.org/pubmed/17029867
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.45;
	x0(4) = 0.36;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = intravesicular, name = intravesicular, constant
	compartment_intravesicular=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.5;

% Reaction: id = vin	% Local Parameter:   id =  v0, name = v0
	reaction_vin_v0=2.0;
	% Local Parameter:   id =  v1, name = v1
	reaction_vin_v1=1.0;

	reaction_vin=compartment_cytosol*(reaction_vin_v0+reaction_vin_v1*global_par_beta);

% Reaction: id = v2	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_v2_Vm2=6.5;
	% Local Parameter:   id =  K2, name = K2
	reaction_v2_K2=0.1;

	reaction_v2=compartment_intravesicular*reaction_v2_Vm2*x(2)^2/(reaction_v2_K2^2+x(2)^2);

% Reaction: id = v3	% Local Parameter:   id =  Vm3, name = Vm3
	reaction_v3_Vm3=19.5;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_v3_Ka=0.2;
	% Local Parameter:   id =  Ky, name = Ky
	reaction_v3_Ky=0.2;
	% Local Parameter:   id =  Kz, name = Kz
	reaction_v3_Kz=0.3;

	reaction_v3=compartment_cytosol*reaction_v3_Vm3*x(3)^4*x(4)^2*x(2)^4/((reaction_v3_Ka^4+x(3)^4)*(reaction_v3_Ky^2+x(4)^2)*(reaction_v3_Kz^4+x(2)^4));

% Reaction: id = v4	% Local Parameter:   id =  Kf, name = Kf
	reaction_v4_Kf=1.0;

	reaction_v4=compartment_cytosol*reaction_v4_Kf*x(4);

% Reaction: id = v5	% Local Parameter:   id =  K, name = K
	reaction_v5_K=10.0;

	reaction_v5=compartment_extracellular*reaction_v5_K*x(2);

% Reaction: id = v6, name = Agonist stimulated production of IP3	% Local Parameter:   id =  Vp, name = Vp
	reaction_v6_Vp=2.5;

	reaction_v6=compartment_cytosol*global_par_beta*reaction_v6_Vp;

% Reaction: id = v7, name = Ca dependent IP3 degradation	% Local Parameter:   id =  Vd, name = Vd
	reaction_v7_Vd=80.0;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_v7_Kp=1.0;
	% Local Parameter:   id =  Kd, name = Kd
	reaction_v7_Kd=0.4;
	% Local Parameter:   id =  n, name = n
	reaction_v7_n=4.0;

	reaction_v7=compartment_cytosol*reaction_v7_Vd*x(3)^2*x(2)^reaction_v7_n/((reaction_v7_Kp^2+x(3)^2)*(reaction_v7_Kd^reaction_v7_n+x(2)^reaction_v7_n));

% Reaction: id = v8, name = Ca independent IP3 degradation	% Local Parameter:   id =  epsilon, name = epsilon
	reaction_v8_epsilon=0.1;

	reaction_v8=compartment_cytosol*reaction_v8_epsilon*x(3);

	xdot=zeros(4,1);
	
% Species:   id = EC, name = EC, affected by kineticLaw
	xdot(1) = (1/(compartment_extracellular))*((-1.0 * reaction_vin) + ( 1.0 * reaction_v5));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_vin) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(4) = (1/(compartment_intravesicular))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4));
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


