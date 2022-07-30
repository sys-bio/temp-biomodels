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
% Model name = Pearce2021 - Fibrin Polymerization
%
% is http://identifiers.org/biomodels.db/MODEL2204200001
% is http://identifiers.org/biomodels.db/BIOMD0000001054
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0;
	x0(2) = 0.15;
	x0(3) = 1.0;
	x0(4) = 2.5;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = Endothelium, name = Endothelium, constant
	compartment_Endothelium=1.0;
% Parameter:   id =  k, name = k
	global_par_k=1931.0;
% Parameter:   id =  k_0, name = k+
	global_par_k_0=0.031;
% Parameter:   id =  k_1, name = k-
	global_par_k_1=366.0;
% Parameter:   id =  k1, name = k1+
	global_par_k1=0.49;
% Parameter:   id =  k1_0, name = k1-
	global_par_k1_0=250.0;
% Parameter:   id =  k2, name = k2+
	global_par_k2=298.0;
% Parameter:   id =  k2_0, name = k2-
	global_par_k2_0=0.26;
% Parameter:   id =  k3, name = k3+
	global_par_k3=2.66;
% Parameter:   id =  k3_0, name = k3-
	global_par_k3_0=26.9;
% Parameter:   id =  k4, name = k4+
	global_par_k4=15.5;
% Parameter:   id =  k4_0, name = k4-
	global_par_k4_0=375.0;

% Reaction: id = _1, name = 1
	reaction__1=compartment_Endothelium*global_par_k1*x(1)*x(3);

% Reaction: id = _2, name = 2
	reaction__2=compartment_Endothelium*global_par_k1_0*x(6);

% Reaction: id = _3, name = 3
	reaction__3=compartment_Endothelium*global_par_k3*x(6)*x(1);

% Reaction: id = _4, name = 4
	reaction__4=compartment_Endothelium*global_par_k3_0*x(7);

% Reaction: id = _5, name = 5
	reaction__5=compartment_Endothelium*global_par_k*x(5);

% Reaction: id = _6, name = 6
	reaction__6=compartment_Endothelium*global_par_k2*x(6);

% Reaction: id = _7, name = 7
	reaction__7=compartment_Endothelium*global_par_k2_0*x(2)*x(3);

% Reaction: id = _8, name = 8
	reaction__8=compartment_Endothelium*global_par_k4*x(7);

% Reaction: id = _9, name = 9
	reaction__9=compartment_Endothelium*global_par_k4_0*x(2)*x(6);

% Reaction: id = _10, name = 10
	reaction__10=compartment_Endothelium*global_par_k_0*x(3)*x(4);

% Reaction: id = _11, name = 11
	reaction__11=compartment_Endothelium*global_par_k_1*x(5);

	xdot=zeros(7,1);
	
% Species:   id = Fbna, name = Fbna, affected by kineticLaw
	xdot(1) = (1/(compartment_Endothelium))*((-1.0 * reaction__1) + ( 1.0 * reaction__2) + (-1.0 * reaction__3) + ( 1.0 * reaction__4) + ( 1.0 * reaction__5));
	
% Species:   id = FM, name = FM, affected by kineticLaw
	xdot(2) = (1/(compartment_Endothelium))*(( 1.0 * reaction__6) + (-1.0 * reaction__7) + ( 1.0 * reaction__8) + (-1.0 * reaction__9));
	
% Species:   id = Thb, name = Thb, affected by kineticLaw
	xdot(3) = (1/(compartment_Endothelium))*((-1.0 * reaction__1) + ( 1.0 * reaction__2) + ( 1.0 * reaction__5) + ( 1.0 * reaction__6) + (-1.0 * reaction__7) + (-1.0 * reaction__10) + ( 1.0 * reaction__11));
	
% Species:   id = Fbni, name = Fbni, affected by kineticLaw
	xdot(4) = (1/(compartment_Endothelium))*((-1.0 * reaction__10) + ( 1.0 * reaction__11));
	
% Species:   id = C0, name = C0, affected by kineticLaw
	xdot(5) = (1/(compartment_Endothelium))*((-1.0 * reaction__5) + ( 1.0 * reaction__10) + (-1.0 * reaction__11));
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(6) = (1/(compartment_Endothelium))*(( 1.0 * reaction__1) + (-1.0 * reaction__2) + (-1.0 * reaction__3) + ( 1.0 * reaction__4) + (-1.0 * reaction__6) + ( 1.0 * reaction__7) + ( 1.0 * reaction__8) + (-1.0 * reaction__9));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(7) = (1/(compartment_Endothelium))*(( 1.0 * reaction__3) + (-1.0 * reaction__4) + (-1.0 * reaction__8) + ( 1.0 * reaction__9));
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


