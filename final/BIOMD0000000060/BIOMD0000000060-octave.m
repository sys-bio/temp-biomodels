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
% Model name = Keizer1996_Ryanodine_receptor_adaptation
%
% is http://identifiers.org/biomodels.db/MODEL0332756009
% is http://identifiers.org/biomodels.db/BIOMD0000000060
% isDescribedBy http://identifiers.org/pubmed/8968617
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.963;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.037;


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
% Parameter:   id =  Open_probability, name = Open_probability
% assignmentRule: variable = Open_probability
	global_par_Open_probability=x(3)+x(2);

% Reaction: id = Closed_state_1	% Local Parameter:   id =  ka_minus, name = ka_minus
	reaction_Closed_state_1_ka_minus=28.8;
	% Local Parameter:   id =  ka_plus, name = ka_plus
	reaction_Closed_state_1_ka_plus=1500.0;
	% Local Parameter:   id =  Ca, name = Ca
	reaction_Closed_state_1_Ca=0.9;
	% Local Parameter:   id =  n, name = n
	reaction_Closed_state_1_n=4.0;

	reaction_Closed_state_1=reaction_Closed_state_1_ka_minus*x(3)-reaction_Closed_state_1_ka_plus*reaction_Closed_state_1_Ca^reaction_Closed_state_1_n*x(1);

% Reaction: id = Open_state_2	% Local Parameter:   id =  kb_plus, name = kb_plus
	reaction_Open_state_2_kb_plus=1500.0;
	% Local Parameter:   id =  Ca, name = Ca
	reaction_Open_state_2_Ca=0.9;
	% Local Parameter:   id =  m, name = m
	reaction_Open_state_2_m=3.0;
	% Local Parameter:   id =  kb_minus, name = kb_minus
	reaction_Open_state_2_kb_minus=385.9;

	reaction_Open_state_2=reaction_Open_state_2_kb_plus*reaction_Open_state_2_Ca^reaction_Open_state_2_m*x(3)-reaction_Open_state_2_kb_minus*x(2);

% Reaction: id = Closed_State_2, name = Closed State 2	% Local Parameter:   id =  kc_plus, name = kc_plus
	reaction_Closed_State_2_kc_plus=1.75;
	% Local Parameter:   id =  kc_minus, name = kc_minus
	reaction_Closed_State_2_kc_minus=0.1;

	reaction_Closed_State_2=reaction_Closed_State_2_kc_plus*x(3)-reaction_Closed_State_2_kc_minus*x(4);

	xdot=zeros(4,1);
	
% Species:   id = Pc1, name = Pc1, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Closed_state_1);
	
% Species:   id = Po2, name = Po2, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Open_state_2);
	
% Species:   id = Po1, name = Po1, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_Closed_state_1) + (-1.0 * reaction_Open_state_2) + (-1.0 * reaction_Closed_State_2);
	
% Species:   id = Pc2, name = Pc2, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Closed_State_2);
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


