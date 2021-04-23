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
% Model name = Meyer1991_CalciumSpike_ICC
%
% is http://identifiers.org/biomodels.db/MODEL9412103933
% is http://identifiers.org/biomodels.db/BIOMD0000000224
% isDescribedBy http://identifiers.org/pubmed/1867714
% isDerivedFrom http://identifiers.org/pubmed/2455890
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.1;
	x0(2) = 0.05;
	x0(3) = 1100.0;
	x0(4) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = ER_store, name = ER_store, constant
	compartment_ER_store=1.0;
% Parameter:   id =  A, name = A
	global_par_A=20.0;
% Parameter:   id =  B, name = B
	global_par_B=40.0;
% Parameter:   id =  C, name = C
	global_par_C=1.1;
% Parameter:   id =  D, name = D
	global_par_D=2.0;
% Parameter:   id =  E, name = E
	global_par_E=1.0;
% Parameter:   id =  F, name = F
	global_par_F=0.02;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.15;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  L, name = L
	global_par_L=0.01;
% Parameter:   id =  R, name = R
	global_par_R=0.09;

% Reaction: id = JChannel
	reaction_JChannel=(1-x(4))*(global_par_A*(x(2)*0.5)^4/(x(2)*0.5+global_par_k1)^4+global_par_L)*x(3);

% Reaction: id = JPump
	reaction_JPump=global_par_B*(x(1)*0.01)^2/((x(1)*0.01)^2+global_par_k2^2);

% Reaction: id = kPLC
	reaction_kPLC=global_par_C*(1-global_par_k3/(x(1)*0.01+global_par_k3)*1/(1+global_par_R));

% Reaction: id = kPhosphatase
	reaction_kPhosphatase=global_par_D*x(2)*0.5;

% Reaction: id = inhibition_parameter1
	reaction_inhibition_parameter1=global_par_E*(x(1)*0.01)^4*(1-x(4));

% Reaction: id = inhibition_parameter2
	reaction_inhibition_parameter2=global_par_F;

	xdot=zeros(4,1);
	
% Species:   id = CaI, name = CaI, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_JChannel) + (-1.0 * reaction_JPump));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_kPLC) + (-1.0 * reaction_kPhosphatase));
	
% Species:   id = CaS, name = CaS, affected by kineticLaw
	xdot(3) = (1/(compartment_ER_store))*((-1.0 * reaction_JChannel) + ( 1.0 * reaction_JPump));
	
% Species:   id = g, name = g, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_inhibition_parameter1) + (-1.0 * reaction_inhibition_parameter2));
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


