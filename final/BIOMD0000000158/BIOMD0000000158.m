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
% Model name = Zatorsky2006_p53_Model2
%
% is http://identifiers.org/biomodels.db/MODEL0076306022
% is http://identifiers.org/biomodels.db/BIOMD0000000158
% isDescribedBy http://identifiers.org/pubmed/16773083
% isDerivedFrom http://identifiers.org/pubmed/15725723
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.28;
	x0(2) = 0.73;
	x0(3) = 0.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  beta_x, name = beta_x
	global_par_beta_x=2.55;
% Parameter:   id =  psi, name = psi
	global_par_psi=1.0;
% Parameter:   id =  alpha_x, name = alpha_x
	global_par_alpha_x=0.0;
% Parameter:   id =  alpha_xy, name = alpha_xy
	global_par_alpha_xy=3.15;
% Parameter:   id =  beta_y, name = beta_y
	global_par_beta_y=0.85;
% Parameter:   id =  alpha_y, name = alpha_y
	global_par_alpha_y=0.6;
% Parameter:   id =  alpha_0, name = alpha_0
	global_par_alpha_0=55.0;
% Parameter:   id =  fx, name = fx
% Parameter:   id =  flag1, name = flag1
	global_par_flag1=0.0;
% Parameter:   id =  flag2, name = flag2
	global_par_flag2=0.0;
% Parameter:   id =  flag3, name = flag3
	global_par_flag3=1.0;
% Parameter:   id =  M, name = M
	global_par_M=34.0;
% Parameter:   id =  xmax, name = xmax
% Warning parameter xmax is not constant, it should be controlled by a Rule and/or events
	global_par_xmax=0.92;
% Parameter:   id =  xmin, name = xmin
% Warning parameter xmin is not constant, it should be controlled by a Rule and/or events
	global_par_xmin=0.12;
% assignmentRule: variable = fx
	global_par_fx=global_par_beta_x*global_par_flag1+global_par_beta_x/global_par_M*global_par_flag2+global_par_flag3*global_par_beta_x/global_par_M*(1+(global_par_M-1)*(x(1)-global_par_xmin)/(global_par_xmax-global_par_xmin));

% Reaction: id = R1, name = p53 production
	reaction_R1=compartment_compartment*global_par_fx*global_par_psi;

% Reaction: id = R2, name = Mdm2 independent p53 degradation
	reaction_R2=compartment_compartment*global_par_alpha_x*x(1);

% Reaction: id = R3, name = Mdm2 dependent p53 degradation
	reaction_R3=compartment_compartment*global_par_alpha_xy*x(2)*x(1);

% Reaction: id = R4, name = p53 dependent Mdm2 precursor production
	reaction_R4=compartment_compartment*global_par_beta_y*x(1)*global_par_psi;

% Reaction: id = R5, name = Mdm2 synthesis from precursor
	reaction_R5=compartment_compartment*global_par_alpha_0*x(3);

% Reaction: id = R6, name = Mdm2 degradation
	reaction_R6=compartment_compartment*global_par_alpha_y*x(2);

%Event: id=event_0000001
	event_event_0000001=x(1) >= global_par_xmax;

	if(event_event_0000001) 
		global_par_flag1=1;
		global_par_flag2=0;
		global_par_flag3=0;
	end

%Event: id=event_0000002
	event_event_0000002=x(1) < global_par_xmax;

	if(event_event_0000002) 
		global_par_flag1=0;
		global_par_flag2=0;
		global_par_flag3=1;
	end

	xdot=zeros(3,1);
	
% Species:   id = x, name = p53, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = y, name = Mdm2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = y0, name = precursor Mdm2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
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


