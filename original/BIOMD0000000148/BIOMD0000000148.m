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
% Model name = Komarova2003_BoneRemodeling
%
% is http://identifiers.org/biomodels.db/MODEL6029826395
% is http://identifiers.org/biomodels.db/BIOMD0000000148
% isDescribedBy http://identifiers.org/pubmed/14499354
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 11.0;
	x0(2) = 212.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 100.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=3.0;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=4.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.2;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.02;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.5;
% Parameter:   id =  g21, name = g21
	global_par_g21=-0.5;
% Parameter:   id =  g12, name = g12
	global_par_g12=1.0;
% Parameter:   id =  g22, name = g22
	global_par_g22=0.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.24;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0017;
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  flag_resorption, name = flag_resorption
	global_par_flag_resorption=0.0;
% Parameter:   id =  flag_formation, name = flag_formation
	global_par_flag_formation=0.0;
% assignmentRule: variable = gamma
	global_par_gamma=global_par_g12*global_par_g21-(1-global_par_g11)*(1-global_par_g22);
% assignmentRule: variable = x1_bar
	x(3)=(global_par_beta1/global_par_alpha1)^((1-global_par_g22)/global_par_gamma)*(global_par_beta2/global_par_alpha2)^(global_par_g21/global_par_gamma);
% assignmentRule: variable = x2_bar
	x(4)=(global_par_beta1/global_par_alpha1)^(global_par_g12/global_par_gamma)*(global_par_beta2/global_par_alpha2)^((1-global_par_g11)/global_par_gamma);

% Reaction: id = R1, name = Osteoclast production
	reaction_R1=global_par_alpha1*x(1)^global_par_g11*x(2)^global_par_g21;

% Reaction: id = R2, name = Osteoclast removal
	reaction_R2=global_par_beta1*x(1);

% Reaction: id = R3, name = Osteoblast production
	reaction_R3=global_par_alpha2*x(1)^global_par_g12*x(2)^global_par_g22;

% Reaction: id = R4, name = Osteoblast removal
	reaction_R4=global_par_beta2*x(2);

% Reaction: id = R5, name = Bone resorption
	reaction_R5=global_par_flag_resorption*global_par_k1*(x(1)-x(3));

% Reaction: id = R6, name = Bone formation
	reaction_R6=global_par_flag_formation*global_par_k2*(x(2)-x(4));

%Event: id=event_0000001
	event_event_0000001=x(1) > x(3);

	if(event_event_0000001) 
		global_par_flag_resorption=1;
	end

%Event: id=event_0000003
	event_event_0000003=x(1) <= x(3);

	if(event_event_0000003) 
		global_par_flag_resorption=0;
	end

%Event: id=event_0000002
	event_event_0000002=x(2) > x(4);

	if(event_event_0000002) 
		global_par_flag_formation=1;
	end

%Event: id=event_0000004
	event_event_0000004=x(2) <= x(4);

	if(event_event_0000004) 
		global_par_flag_formation=0;
	end

	xdot=zeros(7,1);
	
% Species:   id = x1, name = Osteoclast, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_R1) + (-1.0 * reaction_R2);
	
% Species:   id = x2, name = Osteoblast, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_R3) + (-1.0 * reaction_R4);
	
% Species:   id = x1_bar, name = Steady state osteoclast, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = x2_bar, name = Steady state osteoblast, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = z, name = Bone mass, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_R5) + ( 1.0 * reaction_R6);
	
% Species:   id = y1, name = Cells actively resorbing bone
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = y2, name = Cells actively forming bone
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
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


