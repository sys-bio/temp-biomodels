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
% Model name = Clancy2001_Kchannel
%
% is http://identifiers.org/biomodels.db/MODEL2898180293
% is http://identifiers.org/biomodels.db/BIOMD0000000121
% isDescribedBy http://identifiers.org/pubmed/11334834
% isDerivedFrom http://identifiers.org/pubmed/7514509
% isDerivedFrom http://identifiers.org/pubmed/7788872
% isDerivedFrom http://identifiers.org/pubmed/10318671
% isDerivedFrom http://identifiers.org/pubmed/10448858
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.06;
	x0(5) = 0.0;
	x0(6) = 0.1;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  R, name = gas constant
	global_par_R=8.314;
% Parameter:   id =  F, name = Faraday constant
	global_par_F=96.485;
% Parameter:   id =  Temp, name = temperature
	global_par_Temp=310.0;
% Parameter:   id =  ko, name = extracellular K
	global_par_ko=5.4;
% Parameter:   id =  ki, name = introcellular K
	global_par_ki=140.0;
% Parameter:   id =  vhold, name = holding_potential
	global_par_vhold=-40.0;
% Parameter:   id =  vtest, name = test_potential
	global_par_vtest=0.0;
% Parameter:   id =  vk, name = reversal potential for k
% Parameter:   id =  Gk, name = membrane_conductance
% Parameter:   id =  a, name = a
% Parameter:   id =  b, name = b
% Parameter:   id =  ain, name = ain
	global_par_ain=2.172;
% Parameter:   id =  bin, name = bin
	global_par_bin=1.077;
% Parameter:   id =  aa, name = aa
% Parameter:   id =  bb, name = bb
% Parameter:   id =  ai, name = ai
% Parameter:   id =  bi, name = bi
% Parameter:   id =  u, name = u
% Parameter:   id =  v, name = membrane_potential
	global_par_v=-40.0;
% assignmentRule: variable = vk
	global_par_vk=global_par_R*global_par_Temp/global_par_F*log(global_par_ko/global_par_ki);
% assignmentRule: variable = Gk
	global_par_Gk=1.35E-2*global_par_ko^0.59;
% assignmentRule: variable = a
	global_par_a=5.55E-2*exp(0.05547153*(global_par_v-12));
% assignmentRule: variable = b
	global_par_b=2.357E-3*exp((-0.036588)*global_par_v);
% assignmentRule: variable = aa
	global_par_aa=6.55E-2*exp(0.05547153*(global_par_v-36));
% assignmentRule: variable = bb
	global_par_bb=2.9357E-3*exp((-0.02158)*global_par_v);
% assignmentRule: variable = ai
	global_par_ai=0.439*exp((-0.02352)*(global_par_v+25))*4.5/global_par_ko;
% assignmentRule: variable = bi
	global_par_bi=0.656*exp(0.000942*global_par_v)*(4.5/global_par_ko)^0.3;
% assignmentRule: variable = u
	global_par_u=global_par_ai*global_par_bb*global_par_aa/(global_par_aa*global_par_bi);
% assignmentRule: variable = ik
	x(6)=global_par_Gk*x(4)*(global_par_v-global_par_vk);

% Reaction: id = reaction_0000001, name = c3-c2 transition
	reaction_reaction_0000001=(global_par_a*x(1)-global_par_b*x(2))*compartment_cell;

% Reaction: id = reaction_0000002, name = c2-c1 transition
	reaction_reaction_0000002=(global_par_ain*x(2)-global_par_bin*x(3))*compartment_cell;

% Reaction: id = reaction_0000003, name = c1-o transition
	reaction_reaction_0000003=(x(3)*global_par_aa-global_par_bb*x(4))*compartment_cell;

% Reaction: id = reaction_0000004, name = o-i transition
	reaction_reaction_0000004=(x(4)*global_par_bi-global_par_ai*x(5))*compartment_cell;

% Reaction: id = reaction_0000005, name = c1-i transition
	reaction_reaction_0000005=(global_par_aa*x(3)-global_par_u*x(5))*compartment_cell;

%Event: id=event_0000001
	event_event_0000001=(time > 50) && (time <= 300);

	if(event_event_0000001) 
		global_par_v=global_par_vtest;
	end

%Event: id=event_0000002
	event_event_0000002=time > 300;

	if(event_event_0000002) 
		global_par_v=global_par_vhold;
	end

	xdot=zeros(6,1);
	
% Species:   id = c3, name = ClosedState_3, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000001));
	
% Species:   id = c2, name = ClosedState_2, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000002));
	
% Species:   id = c1, name = ClosedState_1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000005));
	
% Species:   id = o, name = OpenState, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004));
	
% Species:   id = i, name = InactivationState, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000004) + ( 1.0 * reaction_reaction_0000005));
	
% Species:   id = ik, name = cardiac delayed rectifier current, defined in a rule 	xdot(6) = x(6);
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


