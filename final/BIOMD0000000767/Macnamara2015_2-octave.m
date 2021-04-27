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
% Model name = Macnamara2015/2 - virotherapy virus-free submodel
%
% isDerivedFrom http://identifiers.org/ncit/C62713
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000766
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1907290002
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000766
% isDescribedBy http://identifiers.org/biomodels.db/MODEL1907290002
% isDescribedBy http://identifiers.org/pubmed/25882747
% is http://identifiers.org/biomodels.db/MODEL1907290003
% is http://identifiers.org/biomodels.db/BIOMD0000000767
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1000000.0;
	x0(2) = 1.0;
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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.927;
% Parameter:   id =  K, name = K
	global_par_K=1.8182E8;
% Parameter:   id =  du, name = du
	global_par_du=2.0;
% Parameter:   id =  he, name = he
	global_par_he=1000.0;
% Parameter:   id =  hv, name = hv
	global_par_hv=10000.0;
% Parameter:   id =  pe, name = pe
	global_par_pe=0.4;
% Parameter:   id =  de, name = de
	global_par_de=0.1;
% Parameter:   id =  dt, name = dt
	global_par_dt=5.0E-9;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_r, x(1), global_par_K);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tme*kill(global_par_du, x(1), x(3), global_par_he);

% Reaction: id = effector_growth, name = effector growth
	reaction_effector_growth=compartment_tme*eg(global_par_pe, x(2), x(1), global_par_hv);

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_tme*global_par_de*x(3);

% Reaction: id = effector_exhaustion, name = effector exhaustion
	reaction_effector_exhaustion=compartment_tme*exh(global_par_dt, x(1), x(3));

	xdot=zeros(3,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = M, name = M
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_effector_growth) + (-1.0 * reaction_effector_death) + (-1.0 * reaction_effector_exhaustion));
end

function z=tg(r,U,K), z=(r*U*(1-U/K));end

function z=eg(pe,M,U,hv), z=(pe*M*U/(U+hv));end

function z=kill(du,x,E,he), z=(du*x*E/(he+E));end

function z=exh(dt,U,E), z=(dt*U*E);end

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


