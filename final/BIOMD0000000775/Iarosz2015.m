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
% Model name = Iarosz2015 - brain tumor
%
% isDescribedBy http://identifiers.org/pubmed/25596516
% is http://identifiers.org/biomodels.db/MODEL1908020001
% is http://identifiers.org/biomodels.db/BIOMD0000000775
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.99;
	x0(2) = 0.01;
	x0(3) = 0.99;
	x0(4) = 0.0;


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
% Parameter:   id =  o1, name = o1
	global_par_o1=0.0068;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.018;
% Parameter:   id =  p1, name = p1
	global_par_p1=4.7E-8;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.0;
% Parameter:   id =  o2, name = o2
	global_par_o2=0.012;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.0018;
% Parameter:   id =  p2, name = p2
	global_par_p2=4.7E-5;
% Parameter:   id =  a2, name = a2
	global_par_a2=1.0;
% Parameter:   id =  a, name = a
	global_par_a=2.0;
% Parameter:   id =  p3, name = p3
	global_par_p3=4.7E-8;
% Parameter:   id =  a3, name = a3
	global_par_a3=1.0;
% Parameter:   id =  fi, name = fi
	global_par_fi=100.0;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=0.2;
% Parameter:   id =  H, name = H
% Parameter:   id =  gg, name = gg
% assignmentRule: variable = gg
	global_par_gg=rateOf(x(1));
% assignmentRule: variable = H
	global_par_H=piecewise(0, (-global_par_gg) < 0, piecewise(1, (-global_par_gg) > 0, 0.5));

% Reaction: id = gc_growth, name = gc growth
	reaction_gc_growth=compartment_tme*logistic(global_par_o1, x(1));

% Reaction: id = gc_death, name = gc death
	reaction_gc_death=compartment_tme*death(global_par_b1, x(1), x(2));

% Reaction: id = gc_killing, name = gc killing
	reaction_gc_killing=compartment_tme*kill(global_par_p1, x(1), x(4), global_par_a1);

% Reaction: id = cc_growth, name = cc growth
	reaction_cc_growth=compartment_tme*logistic(global_par_o2, x(2));

% Reaction: id = cc_death, name = cc death
	reaction_cc_death=compartment_tme*death(global_par_b2, x(2), x(1));

% Reaction: id = cc_killing, name = cc killing
	reaction_cc_killing=compartment_tme*kill(global_par_p2, x(2), x(4), global_par_a2);

% Reaction: id = n_increase, name = n increase
	reaction_n_increase=compartment_tme*n(global_par_a, global_par_gg, global_par_H, x(3));

% Reaction: id = n_killing, name = n killing
	reaction_n_killing=compartment_tme*kill(global_par_p3, x(3), x(4), global_par_a3);

% Reaction: id = drug_decay, name = drug decay
	reaction_drug_decay=compartment_tme*global_par_zeta*x(4);

	xdot=zeros(4,1);
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_gc_growth) + (-1.0 * reaction_gc_death) + (-1.0 * reaction_gc_killing));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_cc_growth) + (-1.0 * reaction_cc_death) + (-1.0 * reaction_cc_killing));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_n_increase) + (-1.0 * reaction_n_killing));
	
% Species:   id = Q, name = Q, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_chemotherapy) + (-1.0 * reaction_drug_decay));
end

function z=death(beta,sub,mod), z=(beta*sub*mod);end

function z=logistic(o,cell), z=(o*cell*(1-cell));end

function z=n(a,gg,H,N), z=(a*gg*H*N);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=kill(p,sub,Q,a), z=(p*sub*Q/(a+sub));end

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


