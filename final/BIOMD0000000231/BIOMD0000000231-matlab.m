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
% Model name = Valero2006_Adenine_TernaryCycle
%
% is http://identifiers.org/biomodels.db/MODEL5952687775
% is http://identifiers.org/biomodels.db/BIOMD0000000231
% isDescribedBy http://identifiers.org/pubmed/16884499
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 16.3;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 256.0;


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
% Parameter:   id =  Vmapp1, name = Vmapp1
	global_par_Vmapp1=2.3;
% Parameter:   id =  Kmapp1, name = Kmapp1
	global_par_Kmapp1=700.0;
% Parameter:   id =  Vm2, name = Vm2
	global_par_Vm2=170.0;
% Parameter:   id =  Km2ATP, name = Km2ATP
	global_par_Km2ATP=25.0;
% Parameter:   id =  Km2AMP, name = Km2AMP
	global_par_Km2AMP=110.0;
% Parameter:   id =  K, name = K
	global_par_K=71000.0;
% Parameter:   id =  Vmapp3, name = Vmapp3
	global_par_Vmapp3=65.0;
% Parameter:   id =  Kmapp3, name = Kmapp3
	global_par_Kmapp3=260.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=5.0;

% Reaction: id = v1, name = v1
	reaction_v1=global_par_Vmapp1*x(1)/(global_par_Kmapp1+x(1));

% Reaction: id = v2, name = v2
	reaction_v2=global_par_Vm2*x(1)*x(2)/(global_par_K+global_par_Km2ATP*x(2)+global_par_Km2AMP*x(1)+x(1)*x(2));

% Reaction: id = v3, name = v3
	reaction_v3=global_par_Vmapp3*x(3)/(global_par_Kmapp3+x(3));

% Reaction: id = v4, name = v4
	reaction_v4=global_par_k4*x(4);

% Species:   id = Lac, name = Lac, constant	const_species_Lac=0.0;

	xdot=zeros(5,1);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v3));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 2.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = Pyr, name = Pyr, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_v4));
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


