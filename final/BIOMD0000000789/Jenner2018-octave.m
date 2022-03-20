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
% Model name = Jenner2018 - treatment of oncolytic virus
%
% isDescribedBy http://identifiers.org/pubmed/29644518
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 2.51E8;
	x0(3) = 0.0;
	x0(4) = 2.51E8;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  V0, name = V0
	global_par_V0=0.0;
% Parameter:   id =  dv, name = dv
	global_par_dv=0.0;
% Parameter:   id =  a, name = a
	global_par_a=0.0;
% Parameter:   id =  di, name = di
	global_par_di=0.0;
% Parameter:   id =  r, name = r
	global_par_r=0.037;
% Parameter:   id =  L, name = L
	global_par_L=3.49E9;
% Parameter:   id =  b, name = b
	global_par_b=0.0;
% Parameter:   id =  S0, name = S0
	global_par_S0=2.51E8;
% assignmentRule: variable = T
	x(4)=x(3)+x(2);

% Reaction: id = virus_burst, name = virus burst
	reaction_virus_burst=compartment_tme*burst(global_par_a, global_par_di, x(3));

% Reaction: id = virus_decay, name = virus decay
	reaction_virus_decay=compartment_tme*global_par_dv*x(1);

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_r, global_par_L, x(2));

% Reaction: id = tumor_infection, name = tumor infection
	reaction_tumor_infection=compartment_tme*inf(global_par_b, x(2), x(1), x(4));

% Reaction: id = infected_tumor_death, name = infected tumor death
	reaction_infected_tumor_death=compartment_tme*global_par_di*x(3);

%Event: id=virus_treatment_1
	event_virus_treatment_1=time >= 2;

	if(event_virus_treatment_1) 
		x(1)=global_par_V0;
	end

%Event: id=virus_treatment_2
	event_virus_treatment_2=time >= 4;

	if(event_virus_treatment_2) 
		x(1)=global_par_V0;
	end

	xdot=zeros(4,1);
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_virus_burst) + (-1.0 * reaction_virus_decay));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_infection));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_infection) + (-1.0 * reaction_infected_tumor_death));
	
% Species:   id = T, name = T, involved in a rule 	xdot(4) = x(4);
end

function z=inf(b,S,V,T), z=(b*S*V/T);end

function z=tg(r,L,S), z=(r*S*log(L/S));end

function z=burst(a,di,I), z=(a*di*I);end

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


