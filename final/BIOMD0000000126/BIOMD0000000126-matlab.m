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
% Model name = Clancy2002_CardiacSodiumChannel_WT
%
% is http://identifiers.org/biomodels.db/MODEL4716238623
% is http://identifiers.org/biomodels.db/BIOMD0000000126
% isDescribedBy http://identifiers.org/pubmed/11889015
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000121
% isDerivedFrom http://identifiers.org/pubmed/10533588
% isDerivedFrom http://identifiers.org/pubmed/10318671
% isDerivedFrom http://identifiers.org/pubmed/7788872
% isDerivedFrom http://identifiers.org/pubmed/7514509
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  nao, name = [Na]out
	global_par_nao=140.0;
% Parameter:   id =  nai, name = [Na]in
	global_par_nai=15.0;
% Parameter:   id =  scale, name = scale
	global_par_scale=1000.0;
% Parameter:   id =  v, name = v
	global_par_v=-80.0;
% Parameter:   id =  Ena, name = Ena
% Parameter:   id =  a11, name = a11
% Parameter:   id =  a12, name = a12
% Parameter:   id =  a13, name = a13
% Parameter:   id =  b11, name = b11
% Parameter:   id =  b12, name = b12
% Parameter:   id =  b13, name = b13
% Parameter:   id =  a2, name = a2
% Parameter:   id =  b2, name = b2
% Parameter:   id =  a3, name = a3
% Parameter:   id =  b3, name = b3
% Parameter:   id =  a4, name = a4
% Parameter:   id =  b4, name = b4
% Parameter:   id =  a5, name = a5
% Parameter:   id =  b5, name = b5
% Parameter:   id =  Gna, name = Gna
	global_par_Gna=23.5;
% Parameter:   id =  Rk, name = Rk
	global_par_Rk=8314.0;
% Parameter:   id =  Fara, name = Fara
	global_par_Fara=96485.0;
% Parameter:   id =  Temp, name = Temp
	global_par_Temp=310.0;
% Parameter:   id =  Ina, name = I_Na
% assignmentRule: variable = a11
	global_par_a11=3.802/(0.1027*exp((-global_par_v)/17)+0.2*exp((-global_par_v)/150));
% assignmentRule: variable = a12
	global_par_a12=3.802/(0.1027*exp((-global_par_v)/15)+0.23*exp((-global_par_v)/150));
% assignmentRule: variable = a13
	global_par_a13=3.802/(0.1027*exp((-global_par_v)/12)+0.25*exp((-global_par_v)/150));
% assignmentRule: variable = a2
	global_par_a2=9.178*exp(global_par_v/29.68);
% assignmentRule: variable = a3
	global_par_a3=3.7933*1E-7*exp((-global_par_v)/7.7);
% assignmentRule: variable = b3
	global_par_b3=0.0084+2E-5*global_par_v;
% assignmentRule: variable = a4
	global_par_a4=global_par_a2/100;
% assignmentRule: variable = b4
	global_par_b4=global_par_a3;
% assignmentRule: variable = a5
	global_par_a5=global_par_a2/(9.5*10000);
% assignmentRule: variable = b5
	global_par_b5=global_par_a3/50;
% assignmentRule: variable = Ena
	global_par_Ena=global_par_Rk*global_par_Temp/global_par_Fara*log(global_par_nao/global_par_nai);
% assignmentRule: variable = Ina
	global_par_Ina=global_par_Gna*x(8)/(x(4)+x(5)+x(9)+x(6)+x(7)+x(3)+x(2)+x(1)+x(8))*(global_par_v-global_par_Ena)/global_par_scale;
% assignmentRule: variable = b11
	global_par_b11=0.1917*exp((-global_par_v)/20.3);
% assignmentRule: variable = b12
	global_par_b12=0.2*exp((-(global_par_v-5))/20.3);
% assignmentRule: variable = b13
	global_par_b13=0.22*exp((-(global_par_v-10))/20.3);
% assignmentRule: variable = b2
	global_par_b2=global_par_a13*global_par_a2*global_par_a3/(global_par_b13*global_par_b3);

% Reaction: id = reaction_0000001, name = IC3=IC2
	reaction_reaction_0000001=compartment_cell*(x(4)*global_par_a11-x(5)*global_par_b11);

% Reaction: id = reaction_0000002, name = IC2=IF
	reaction_reaction_0000002=compartment_cell*(x(5)*global_par_a12-x(9)*global_par_b12);

% Reaction: id = reaction_0000003, name = IF=IM1
	reaction_reaction_0000003=compartment_cell*(x(9)*global_par_a4-x(6)*global_par_b4);

% Reaction: id = reaction_0000004, name = IM1=IM2
	reaction_reaction_0000004=compartment_cell*(x(6)*global_par_a5-x(7)*global_par_b5);

% Reaction: id = reaction_0000005, name = C3=IC3
	reaction_reaction_0000005=compartment_cell*(x(3)*global_par_b3-x(4)*global_par_a3);

% Reaction: id = reaction_0000006, name = C2=C3
	reaction_reaction_0000006=compartment_cell*(x(2)*global_par_b11-x(3)*global_par_a11);

% Reaction: id = reaction_0000007, name = C2=IC2
	reaction_reaction_0000007=compartment_cell*(x(2)*global_par_b3-x(5)*global_par_a3);

% Reaction: id = reaction_0000008, name = C1=C2
	reaction_reaction_0000008=compartment_cell*(x(1)*global_par_b12-x(2)*global_par_a12);

% Reaction: id = reaction_0000009, name = C1=IF
	reaction_reaction_0000009=compartment_cell*(x(1)*global_par_b3-x(9)*global_par_a3);

% Reaction: id = reaction_0000010, name = IF=O
	reaction_reaction_0000010=compartment_cell*(x(9)*global_par_b2-global_par_a2*x(8));

% Reaction: id = reaction_0000011, name = O=C1
	reaction_reaction_0000011=compartment_cell*((-x(1))*global_par_a13+x(8)*global_par_b13);

%Event: id=event_0000001
	event_event_0000001=(time >= 5) && (time <= 20);

	if(event_event_0000001) 
		global_par_v=-30;
	end

%Event: id=event_0000002
	event_event_0000002=time > 20;

	if(event_event_0000002) 
		global_par_v=-80;
	end

	xdot=zeros(9,1);
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000009) + ( 1.0 * reaction_reaction_0000011));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000007) + ( 1.0 * reaction_reaction_0000008));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000005) + ( 1.0 * reaction_reaction_0000006));
	
% Species:   id = IC3, name = IC3, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000001) + ( 1.0 * reaction_reaction_0000005));
	
% Species:   id = IC2, name = IC2, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000002) + ( 1.0 * reaction_reaction_0000007));
	
% Species:   id = IM1, name = IM1, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004));
	
% Species:   id = IM2, name = IM2, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000004));
	
% Species:   id = O, name = open states, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000010) + (-1.0 * reaction_reaction_0000011));
	
% Species:   id = IF, name = IF, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + ( 1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000010));
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


