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
% Model name = Macnamara2015/1 - virotherapy full model
%
% isDescribedBy http://identifiers.org/pubmed/25882747
% is http://identifiers.org/biomodels.db/MODEL1907290002
% is http://identifiers.org/biomodels.db/BIOMD0000000766
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1000000.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 1.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.927;
% Parameter:   id =  K, name = K
	global_par_K=1.8182E8;
% Parameter:   id =  dv, name = dv
	global_par_dv=0.0038;
% Parameter:   id =  du, name = du
	global_par_du=2.0;
% Parameter:   id =  hu, name = hu
	global_par_hu=1.0;
% Parameter:   id =  he, name = he
	global_par_he=1000.0;
% Parameter:   id =  hv, name = hv
	global_par_hv=10000.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0;
% Parameter:   id =  pm, name = pm
	global_par_pm=2.5;
% Parameter:   id =  m, name = m
	global_par_m=10000.0;
% Parameter:   id =  pe, name = pe
	global_par_pe=0.4;
% Parameter:   id =  de, name = de
	global_par_de=0.1;
% Parameter:   id =  dt, name = dt
	global_par_dt=5.0E-9;
% Parameter:   id =  w, name = w
	global_par_w=2.042;
% Parameter:   id =  b, name = b
	global_par_b=1000.0;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_r, x(1), x(2), global_par_K);

% Reaction: id = tumor_infection, name = tumor infection
	reaction_tumor_infection=compartment_tme*inf(global_par_dv, x(5), x(1), global_par_hu);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tme*kill(global_par_du, x(1), x(4), global_par_he);

% Reaction: id = infected_tumor_death, name = infected tumor death
	reaction_infected_tumor_death=compartment_tme*global_par_delta*x(2);

% Reaction: id = infected_tumor_killing, name = infected tumor killing
	reaction_infected_tumor_killing=compartment_tme*kill(global_par_du, x(2), x(4), global_par_he);

% Reaction: id = memory_cell_growth, name = memory cell growth
	reaction_memory_cell_growth=compartment_tme*mg(global_par_pm, x(5), x(3), global_par_m, global_par_hv);

% Reaction: id = effector_growth, name = effector growth
	reaction_effector_growth=compartment_tme*eg(global_par_pe, x(3), x(1), x(5), global_par_hv);

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_tme*global_par_de*x(4);

% Reaction: id = effector_exhaustion, name = effector exhaustion
	reaction_effector_exhaustion=compartment_tme*exh(global_par_dt, x(1), x(4));

% Reaction: id = virus_burst, name = virus burst
	reaction_virus_burst=compartment_tme*burst(global_par_delta, global_par_b, x(2));

% Reaction: id = virus_clearance, name = virus clearance
	reaction_virus_clearance=compartment_tme*global_par_w*x(5);

	xdot=zeros(5,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_infection) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_infection) + (-1.0 * reaction_infected_tumor_death) + (-1.0 * reaction_infected_tumor_killing));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_memory_cell_growth));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_effector_growth) + (-1.0 * reaction_effector_death) + (-1.0 * reaction_effector_exhaustion));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(5) = (1/(compartment_tme))*(( 1.0 * reaction_virus_burst) + (-1.0 * reaction_virus_clearance));
end

function z=inf(dv,V,U,hu), z=(dv*V*U/(hu+U));end

function z=tg(r,U,I,K), z=(r*U*(1-(U+I)/K));end

function z=exh(dt,U,E), z=(dt*U*E);end

function z=kill(du,x,E,he), z=(du*x*E/(he+E));end

function z=burst(d,b,I), z=(d*b*I);end

function z=mg(pm,V,M,m,hv), z=(pm*V*M*(1-M/m)/(hv+V));end

function z=eg(pe,M,U,V,hv), z=(pe*M*(U+V)/(U+V+hv));end

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


