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
% Model name = Borghans1997 - Calcium Oscillation - Model 3
%
% is http://identifiers.org/biomodels.db/MODEL6623009547
% is http://identifiers.org/biomodels.db/BIOMD0000000045
% isDescribedBy http://identifiers.org/pubmed/17029867
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.5;


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
% Compartment: id = intravesicular1, name = intravesicular1, constant
	compartment_intravesicular1=1.0;
% Compartment: id = intravesicular2, name = intravesicular2, constant
	compartment_intravesicular2=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;

% Reaction: id = vin	% Local Parameter:   id =  v0, name = v0
	reaction_vin_v0=0.015;
	% Local Parameter:   id =  v1, name = v1
	reaction_vin_v1=0.012;

	reaction_vin=compartment_cytosol*(reaction_vin_v0+reaction_vin_v1*global_par_beta);

% Reaction: id = v2i	% Local Parameter:   id =  Vm2i, name = Vm2i
	reaction_v2i_Vm2i=3.1;
	% Local Parameter:   id =  K2i, name = K2i
	reaction_v2i_K2i=0.005;

	reaction_v2i=compartment_intravesicular2*reaction_v2i_Vm2i*x(2)^2/(reaction_v2i_K2i^2+x(2)^2);

% Reaction: id = v3i	% Local Parameter:   id =  Vm3i, name = Vm3i
	reaction_v3i_Vm3i=25.0;
	% Local Parameter:   id =  K3y, name = K3y
	reaction_v3i_K3y=0.065;
	% Local Parameter:   id =  K3z, name = K3z
	reaction_v3i_K3z=0.022;

	reaction_v3i=compartment_cytosol*reaction_v3i_Vm3i*x(3)^2*x(2)^2/((reaction_v3i_K3y^2+x(3)^2)*(reaction_v3i_K3z^2+x(2)^2));

% Reaction: id = v4	% Local Parameter:   id =  Kf, name = Kf
	reaction_v4_Kf=0.5;

	reaction_v4=compartment_cytosol*reaction_v4_Kf*x(3);

% Reaction: id = v5	% Local Parameter:   id =  K, name = K
	reaction_v5_K=1.0;

	reaction_v5=compartment_extracellular*reaction_v5_K*x(2);

% Reaction: id = v6	% Local Parameter:   id =  Kf, name = Kf
	reaction_v6_Kf=0.5;

	reaction_v6=compartment_cytosol*reaction_v6_Kf*x(4);

% Reaction: id = v2s	% Local Parameter:   id =  Vm2s, name = Vm2s
	reaction_v2s_Vm2s=1.5;
	% Local Parameter:   id =  K2s, name = K2s
	reaction_v2s_K2s=0.0265;

	reaction_v2s=compartment_intravesicular1*reaction_v2s_Vm2s*x(2)^2/(reaction_v2s_K2s^2+x(2)^2);

% Reaction: id = v3s	% Local Parameter:   id =  Vm3s, name = Vm3s
	reaction_v3s_Vm3s=0.169;
	% Local Parameter:   id =  K3s, name = K3s
	reaction_v3s_K3s=0.1;

	reaction_v3s=compartment_cytosol*global_par_beta*reaction_v3s_Vm3s*x(4)^2/(reaction_v3s_K3s^2+x(4)^2);

	xdot=zeros(4,1);
	
% Species:   id = EC, name = EC, affected by kineticLaw
	xdot(1) = (1/(compartment_extracellular))*((-1.0 * reaction_vin) + ( 1.0 * reaction_v5));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_vin) + (-1.0 * reaction_v2i) + ( 1.0 * reaction_v3i) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v6) + (-1.0 * reaction_v2s) + ( 1.0 * reaction_v3s));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(3) = (1/(compartment_intravesicular2))*(( 1.0 * reaction_v2i) + (-1.0 * reaction_v3i) + (-1.0 * reaction_v4));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(4) = (1/(compartment_intravesicular1))*((-1.0 * reaction_v6) + ( 1.0 * reaction_v2s) + (-1.0 * reaction_v3s));
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


