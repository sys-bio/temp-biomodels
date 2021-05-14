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
% Model name = Chan2004_TCell_receptor_activation
%
% is http://identifiers.org/biomodels.db/MODEL2514697386
% is http://identifiers.org/biomodels.db/BIOMD0000000120
% isDescribedBy http://identifiers.org/pubmed/15255048
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.6;
	x0(4) = 0.6;
	x0(5) = 0.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  m1, name = m1
	global_par_m1=1.0;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.15;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.15;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.01;
% Parameter:   id =  m2, name = m2
	global_par_m2=1.0;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.02;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.0;
% Parameter:   id =  n, name = n
	global_par_n=1.95;
% Parameter:   id =  r_l, name = r_l
	global_par_r_l=0.0;
% assignmentRule: variable = lck_total
	x(5)=x(1)+x(2);

% Reaction: id = v1, name = Kinase recruitment to T-cell receptor
	reaction_v1=global_par_r_l;

% Reaction: id = v2, name = Kinase inactivation
	reaction_v2=global_par_n1*x(2)*x(4);

% Reaction: id = v3, name = Basal kinase activation
	reaction_v3=global_par_k1*x(1);

% Reaction: id = v4, name = Catalytic kinase activation
	reaction_v4=global_par_m1*x(2)^global_par_n*x(1);

% Reaction: id = v5, name = Inactive kinase diffusion
	reaction_v5=global_par_d0*x(1);

% Reaction: id = v6, name = Active kinase diffusion
	reaction_v6=global_par_d1*x(2);

% Reaction: id = v7, name = Basal phosphatase activation
	reaction_v7=global_par_k2*x(3);

% Reaction: id = v8, name = Catalyzed phosphatase activation
	reaction_v8=global_par_m2*x(2)*x(3);

% Reaction: id = v9, name = Phosphatase inactivation
	reaction_v9=global_par_n2*x(4);

% Reaction: id = v10, name = Active phosphatase diffusion
	reaction_v10=global_par_d2*x(4);

%Event: id=event_0000001
	event_event_0000001=t >= 10;

	if(event_event_0000001) 
		global_par_r_l=1;
	end

%Event: id=event_0000002
	event_event_0000002=t >= 24;

	if(event_event_0000002) 
		global_par_r_l=0;
	end

	xdot=zeros(5,1);
	
% Species:   id = lck_inactive, name = Inactive lck, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_v1) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4) + (-1.0 * reaction_v5);
	
% Species:   id = lck_active, name = Active lck, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_v2) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v6);
	
% Species:   id = phosphatase_inactive, name = Inactive phosphatase, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_v7) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v9);
	
% Species:   id = phosphatase_active, name = Active phosphatase, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_v7) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v9) + (-1.0 * reaction_v10);
	
% Species:   id = lck_total, name = Total kinase, defined in a rule 	xdot(5) = x(5);
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


