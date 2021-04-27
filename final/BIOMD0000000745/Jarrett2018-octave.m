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
% Model name = Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model
%
% is http://identifiers.org/biomodels.db/MODEL1907050004
% is http://identifiers.org/biomodels.db/BIOMD0000000745
% isDescribedBy http://identifiers.org/pubmed/30239754
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.2;
	x0(2) = 0.071;
	x0(3) = 0.12;
	x0(4) = 0.1;
	x0(5) = 0.18;


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

% Compartment: id = tumor, name = breast tumor, constant
	compartment_tumor=1.0;
% Parameter:   id =  g, name = g
	global_par_g=0.044;
% Parameter:   id =  an, name = an
	global_par_an=0.2;
% Parameter:   id =  av, name = av
	global_par_av=0.199;
% Parameter:   id =  ut, name = ut
	global_par_ut=0.187;
% Parameter:   id =  ui, name = ui
	global_par_ui=0.722;
% Parameter:   id =  at, name = at
	global_par_at=0.101;
% Parameter:   id =  ai, name = ai
	global_par_ai=0.045;
% Parameter:   id =  uv, name = uv
	global_par_uv=1.723;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.027;
% Parameter:   id =  un, name = un
	global_par_un=0.911;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.743;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.284;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.523;

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tumor*t_d_1(x(2), x(1), global_par_ut);

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor*t_g_1(x(5), x(1), global_par_g, global_par_rho);

% Reaction: id = immune_stimulation, name = immune stimulation
	reaction_immune_stimulation=compartment_tumor*i__1(x(4), x(3), global_par_an, global_par_av);

% Reaction: id = immune_inhibition, name = immune inhibition
	reaction_immune_inhibition=compartment_tumor*i__1_0(x(2), x(4), x(1), x(3), global_par_an, global_par_av, global_par_ui);

% Reaction: id = vasc_increase, name = vasc increase
	reaction_vasc_increase=compartment_tumor*v__1(x(2), x(1), global_par_ai, global_par_at);

% Reaction: id = vasc_decrease, name = vasc decrease
	reaction_vasc_decrease=compartment_tumor*v__1_0(x(2), x(1), x(3), global_par_ai, global_par_at, global_par_uv);

% Reaction: id = necrotise, name = necrotise
	reaction_necrotise=compartment_tumor*n__1(x(4), x(3), global_par_beta);

% Reaction: id = de_necrotise, name = de-necrotise
	reaction_de_necrotise=compartment_tumor*n__1_0(x(2), x(4), x(3), global_par_beta, global_par_un);

% Reaction: id = hypoxia, name = hypoxia
	reaction_hypoxia=compartment_tumor*h__1(x(5), x(3), global_par_delta, global_par_gamma);

% Reaction: id = normoxia, name = normoxia
	reaction_normoxia=compartment_tumor*h__1_0(x(5), x(3), global_par_delta, global_par_gamma);

	xdot=zeros(5,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor))*((-1.0 * reaction_tumor_death) + ( 1.0 * reaction_tumor_growth));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor))*(( 1.0 * reaction_immune_stimulation) + (-1.0 * reaction_immune_inhibition));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor))*(( 1.0 * reaction_vasc_increase) + (-1.0 * reaction_vasc_decrease));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor))*(( 1.0 * reaction_necrotise) + (-1.0 * reaction_de_necrotise));
	
% Species:   id = H, name = H, affected by kineticLaw
	xdot(5) = (1/(compartment_tumor))*(( 1.0 * reaction_hypoxia) + (-1.0 * reaction_normoxia));
end

function z=t_d_1(I,T,ut), z=(ut*T*I);end

function z=i__1(N,V,an,av), z=(av*V+an*N);end

function z=t_g_1(H,T,g,rho), z=(g*T*(rho*H+1));end

function z=i__1_0(I,N,T,V,an,av,ui), z=(av*V*I+an*N*I+ui*I*T);end

function z=v__1(I,T,ai,at), z=(at*T+ai*I);end

function z=v__1_0(I,T,V,ai,at,uv), z=(at*T*V+ai*I*V+uv*V*T);end

function z=n__1(N,V,beta), z=(beta+beta*V*N);end

function z=n__1_0(I,N,V,beta,un), z=(beta*V+beta*N+un*N*I);end

function z=h__1(H,V,delta,gamma), z=(gamma*delta*H+gamma*V*H*H);end

function z=h__1_0(H,V,delta,gamma), z=(gamma*delta*H*H+gamma*V*H);end

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


