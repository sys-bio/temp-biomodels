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
% Model name = Borghans1997 - Calcium Oscillation - Model 1
%
% is http://identifiers.org/biomodels.db/MODEL6622689184
% is http://identifiers.org/biomodels.db/BIOMD0000000043
% isDescribedBy http://identifiers.org/pubmed/17029867
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.36;
	x0(5) = 0.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = intravesicular, name = intravesicular, constant
	compartment_intravesicular=1.0;
% Parameter:   id =  a, name = a
	global_par_a=40000.0;
% Parameter:   id =  d, name = d
	global_par_d=100.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;

% Reaction: id = vin	% Local Parameter:   id =  v0, name = v0
	reaction_vin_v0=1.0;
	% Local Parameter:   id =  v1, name = v1
	reaction_vin_v1=1.0;

	reaction_vin=compartment_cytosol*(reaction_vin_v0+reaction_vin_v1*global_par_beta);

% Reaction: id = v2	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_v2_Vm2=6.5;
	% Local Parameter:   id =  K2, name = K2
	reaction_v2_K2=0.1;

	reaction_v2=compartment_intravesicular*reaction_v2_Vm2*x(2)^2/(reaction_v2_K2^2+x(2)^2);

% Reaction: id = v3	% Local Parameter:   id =  Vm3, name = Vm3
	reaction_v3_Vm3=50.0;
	% Local Parameter:   id =  Ky, name = Ky
	reaction_v3_Ky=0.2;

	reaction_v3=compartment_cytosol*global_par_beta*x(3)*global_par_a/global_par_d*x(2)^4/(1+global_par_a/global_par_d*x(2)^4)*reaction_v3_Vm3*x(4)^2/(reaction_v3_Ky^2+x(4)^2);

% Reaction: id = v4	% Local Parameter:   id =  Kf, name = Kf
	reaction_v4_Kf=1.0;

	reaction_v4=compartment_cytosol*reaction_v4_Kf*x(4);

% Reaction: id = v5	% Local Parameter:   id =  K, name = K
	reaction_v5_K=10.0;

	reaction_v5=compartment_extracellular*reaction_v5_K*x(2);

% Reaction: id = v6	% Local Parameter:   id =  Kd, name = Kd
	reaction_v6_Kd=5000.0;

	reaction_v6=compartment_cytosol*reaction_v6_Kd*x(2)^4*x(3);

% Reaction: id = v7	% Local Parameter:   id =  Kr, name = Kr
	reaction_v7_Kr=5.0;

	reaction_v7=compartment_cytosol*reaction_v7_Kr*(1-x(3));

	xdot=zeros(5,1);
	
% Species:   id = EC, name = EC, affected by kineticLaw
	xdot(1) = (1/(compartment_extracellular))*((-1.0 * reaction_vin) + ( 1.0 * reaction_v5));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_vin) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = Rho, name = Rho, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*((-1.0 * reaction_v6) + ( 1.0 * reaction_v7));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(4) = (1/(compartment_intravesicular))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Fraction_Inactive_Channels, name = Fraction_Inactive_Channels, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7));
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


