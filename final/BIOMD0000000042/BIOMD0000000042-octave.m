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
% Model name = Nielsen1998_Glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL6622455387
% is http://identifiers.org/biomodels.db/BIOMD0000000042
% isDescribedBy http://identifiers.org/pubmed/17029704
% isDerivedFrom http://identifiers.org/pubmed/6454892
% isDerivedFrom http://identifiers.org/pubmed/8061224
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 4.49064;
	x0(2) = 0.108367;
	x0(3) = 0.00261149;
	x0(4) = 0.0112817;
	x0(5) = 0.65939;
	x0(6) = 0.00770135;
	x0(7) = 0.00190919;
	x0(8) = 3.62057;
	x0(9) = 0.616118;
	x0(10) = 0.299109;
	x0(11) = 0.0021125;
	x0(12) = 0.00422702;
	x0(13) = 0.0738334;
	x0(14) = 0.33981;
	x0(15) = 0.0;


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
% Parameter:   id =  V1, name = V1
	global_par_V1=0.5;
% Parameter:   id =  K1GLC, name = K1GLC
	global_par_K1GLC=0.1;
% Parameter:   id =  K1ATP, name = K1ATP
	global_par_K1ATP=0.063;
% Parameter:   id =  V2, name = V2
	global_par_V2=1.5;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.0016;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.017;
% Parameter:   id =  K2ATP, name = K2ATP
	global_par_K2ATP=0.01;
% Parameter:   id =  k3f, name = k3f
	global_par_k3f=1.0;
% Parameter:   id =  k3b, name = k3b
	global_par_k3b=50.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=10.0;
% Parameter:   id =  K4GAP, name = K4GAP
	global_par_K4GAP=1.0;
% Parameter:   id =  K4NAD, name = K4NAD
	global_par_K4NAD=1.0;
% Parameter:   id =  k5f, name = k5f
	global_par_k5f=1.0;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=0.5;
% Parameter:   id =  V6, name = V6
	global_par_V6=10.0;
% Parameter:   id =  K6PEP, name = K6PEP
	global_par_K6PEP=0.2;
% Parameter:   id =  K6ADP, name = K6ADP
	global_par_K6ADP=0.3;
% Parameter:   id =  V7, name = V7
	global_par_V7=2.0;
% Parameter:   id =  K7PYR, name = K7PYR
	global_par_K7PYR=0.3;
% Parameter:   id =  k8f, name = k8f
	global_par_k8f=1.0;
% Parameter:   id =  k8b, name = k8b
	global_par_k8b=1.43E-4;
% Parameter:   id =  k9f, name = k9f
	global_par_k9f=10.0;
% Parameter:   id =  k9b, name = k9b
	global_par_k9b=10.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.05;
% Parameter:   id =  flow, name = flow
	global_par_flow=0.011;

% Reaction: id = ATPflow
	reaction_ATPflow=compartment_compartment*(3.5-x(1))*global_par_flow;

% Reaction: id = ADPflow
	reaction_ADPflow=compartment_compartment*(1.1-x(2))*global_par_flow;

% Reaction: id = NADHflow
	reaction_NADHflow=compartment_compartment*(0.24-x(9))*global_par_flow;

% Reaction: id = NADflow
	reaction_NADflow=compartment_compartment*(4-x(8))*global_par_flow;

% Reaction: id = GLCflow
	reaction_GLCflow=compartment_compartment*(50-x(4))*global_par_flow;

% Reaction: id = F6Pflow
	reaction_F6Pflow=compartment_compartment*x(5)*global_par_flow;

% Reaction: id = FBPflow
	reaction_FBPflow=compartment_compartment*x(6)*global_par_flow;

% Reaction: id = GAPflow
	reaction_GAPflow=compartment_compartment*x(7)*global_par_flow;

% Reaction: id = DPGflow
	reaction_DPGflow=compartment_compartment*x(10)*global_par_flow;

% Reaction: id = PEPflow
	reaction_PEPflow=compartment_compartment*x(11)*global_par_flow;

% Reaction: id = PYRflow
	reaction_PYRflow=compartment_compartment*x(12)*global_par_flow;

% Reaction: id = ACAflow
	reaction_ACAflow=compartment_compartment*x(13)*global_par_flow;

% Reaction: id = EtOHflow
	reaction_EtOHflow=compartment_compartment*x(14)*global_par_flow;

% Reaction: id = AMPflow
	reaction_AMPflow=compartment_compartment*x(3)*global_par_flow;

% Reaction: id = Pflow
	reaction_Pflow=compartment_compartment*x(15)*global_par_flow;

% Reaction: id = reaction_1
	reaction_reaction_1=compartment_compartment*global_par_V1*x(1)*x(4)/((global_par_K1GLC+x(4))*(global_par_K1ATP+x(1)));

% Reaction: id = reaction_2
	reaction_reaction_2=compartment_compartment*global_par_V2*x(1)*x(5)^2/((global_par_K2*(1+global_par_k2*(x(1)/x(3))^2)+x(5)^2)*(global_par_K2ATP+x(1)));

% Reaction: id = reaction_3
	reaction_reaction_3=compartment_compartment*(global_par_k3f*x(6)-global_par_k3b*x(7)^2);

% Reaction: id = reaction_4
	reaction_reaction_4=compartment_compartment*global_par_V4*x(8)*x(7)/((global_par_K4GAP+x(7))*(global_par_K4NAD+x(8)));

% Reaction: id = reaction_5
	reaction_reaction_5=compartment_compartment*(global_par_k5f*x(10)*x(2)-global_par_k5b*x(11)*x(1));

% Reaction: id = reaction_6
	reaction_reaction_6=compartment_compartment*global_par_V6*x(2)*x(11)/((global_par_K6PEP+x(11))*(global_par_K6ADP+x(2)));

% Reaction: id = reaction_7
	reaction_reaction_7=compartment_compartment*global_par_V7*x(12)/(global_par_K7PYR+x(12));

% Reaction: id = reaction_8
	reaction_reaction_8=compartment_compartment*(global_par_k8f*x(9)*x(13)-global_par_k8b*x(8)*x(14));

% Reaction: id = reaction_9
	reaction_reaction_9=compartment_compartment*(global_par_k9f*x(3)*x(1)-global_par_k9b*x(2)^2);

% Reaction: id = reaction_10
	reaction_reaction_10=compartment_compartment*global_par_k10*x(5);

	xdot=zeros(15,1);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_ATPflow) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_ADPflow) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + ( 2.0 * reaction_reaction_9));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_AMPflow) + (-1.0 * reaction_reaction_9));
	
% Species:   id = GLC, name = GLC, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_GLCflow) + (-1.0 * reaction_reaction_1));
	
% Species:   id = F6P, name = F6P, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_F6Pflow) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_10));
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_FBPflow) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_GAPflow) + ( 2.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_NADflow) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_NADHflow) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8));
	
% Species:   id = DPG, name = DPG, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_DPGflow) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = PEP, name = PEP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_PEPflow) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = PYR, name = PYR, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_PYRflow) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = ACA, name = ACA, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_ACAflow) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = EtOH, name = EtOH, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*((-1.0 * reaction_EtOHflow) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_Pflow) + ( 1.0 * reaction_reaction_10));
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


