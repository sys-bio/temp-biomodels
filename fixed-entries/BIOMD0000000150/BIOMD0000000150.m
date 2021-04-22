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
% Model name = Morris2002_CellCycle_CDK2Cyclin
%
% is http://identifiers.org/biomodels.db/MODEL4821491663
% is http://identifiers.org/biomodels.db/BIOMD0000000150
% isDescribedBy http://identifiers.org/pubmed/11959850
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 4.0E-7;
	x0(3) = 1.0E-7;
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

% Compartment: id = geometry, name = geometry, constant
	compartment_geometry=1.0E-12;
% Parameter:   id =  basal_fluorescence, name = basal_fluorescence
% Warning parameter basal_fluorescence is not constant, it should be controlled by a Rule and/or events
	global_par_basal_fluorescence=1.21210648148148;
% Parameter:   id =  total_fluorescence, name = total_fluorescence
% assignmentRule: variable = total_fluorescence
	global_par_total_fluorescence=x(1)*599990*1E6/43200+x(4)*599990*1E6/43200+global_par_basal_fluorescence;

% Reaction: id = Binding	% Local Parameter:   id =  kf, name = kf
	reaction_Binding_kf=1.9E7;
	% Local Parameter:   id =  kb, name = kb
	reaction_Binding_kb=25.0;

	reaction_Binding=reaction_Binding_kf*x(3)*x(2)*compartment_geometry-reaction_Binding_kb*x(1)*compartment_geometry;

% Reaction: id = Activation	% Local Parameter:   id =  kf, name = kf
	reaction_Activation_kf=0.813;
	% Local Parameter:   id =  kb, name = kb
	reaction_Activation_kb=0.557;

	reaction_Activation=reaction_Activation_kf*x(1)*compartment_geometry-reaction_Activation_kb*x(4)*compartment_geometry;

	xdot=zeros(4,1);
	
% Species:   id = CDK2cycA, name = CDK2cycA, affected by kineticLaw
	xdot(1) = (1/(compartment_geometry))*(( 1.0 * reaction_Binding) + (-1.0 * reaction_Activation));
	
% Species:   id = CyclinA, name = CyclinA, affected by kineticLaw
	xdot(2) = (1/(compartment_geometry))*((-1.0 * reaction_Binding));
	
% Species:   id = Cdk2, name = Cdk2, affected by kineticLaw
	xdot(3) = (1/(compartment_geometry))*((-1.0 * reaction_Binding));
	
% Species:   id = CDK2cycA_star_, name = CDK2cycA_star_, affected by kineticLaw
	xdot(4) = (1/(compartment_geometry))*(( 1.0 * reaction_Activation));
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


