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
% Model name = Wilson2012 - tumor vaccine efficacy
%
% isDescribedBy http://identifiers.org/pubmed/22438084
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 3.0;
	x0(2) = 0.0;
	x0(3) = 100.0;
	x0(4) = 1.0;
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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  g0, name = g0
	global_par_g0=0.0;
% Parameter:   id =  a0, name = a0
	global_par_a0=0.1946;
% Parameter:   id =  c0, name = c0
% Parameter:   id =  d0, name = d0
	global_par_d0=1.0E-5;
% Parameter:   id =  c1, name = c1
	global_par_c1=100.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.3;
% Parameter:   id =  c2, name = c2
	global_par_c2=300.0;
% Parameter:   id =  d, name = d
	global_par_d=7.0E-4;
% Parameter:   id =  f, name = f
	global_par_f=0.62;
% Parameter:   id =  c3, name = c3
	global_par_c3=300.0;
% Parameter:   id =  r, name = r
	global_par_r=0.01;
% Parameter:   id =  d1, name = d1
	global_par_d1=1.0E-5;
% Parameter:   id =  c0inv, name = c0inv
	global_par_c0inv=369.0;
% assignmentRule: variable = c0
	global_par_c0=1/global_par_c0inv;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_a0, x(1), global_par_c0);

% Reaction: id = tumor_immune, name = tumor immune
	reaction_tumor_immune=compartment_tme*imm(global_par_d0, x(3), x(1), global_par_c1, x(2));

% Reaction: id = tumor_immune_induced, name = tumor immune-induced
	reaction_tumor_immune_induced=compartment_tme*induced(global_par_d0, x(1), x(5));

% Reaction: id = tgfb_secretion, name = tgfb secretion
	reaction_tgfb_secretion=compartment_tme*tgfb(global_par_a1, x(1), global_par_c2);

% Reaction: id = tgfb_decay, name = tgfb decay
	reaction_tgfb_decay=compartment_tme*global_par_d*x(2);

% Reaction: id = effector_stimulation, name = effector stimulation
	reaction_effector_stimulation=compartment_tme*es(global_par_f, x(3), x(1), global_par_c3, x(2));

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_tme*global_par_d1*x(3);

% Reaction: id = effector_regulation, name = effector regulation
	reaction_effector_regulation=compartment_tme*er(global_par_d0, x(4), x(3));

% Reaction: id = effector_conversion, name = effector conversion
	reaction_effector_conversion=compartment_tme*global_par_r*x(3);

% Reaction: id = Treg_death, name = Treg death
	reaction_Treg_death=compartment_tme*global_par_d1*x(4);

% Reaction: id = vaccine_decay, name = vaccine decay
	reaction_vaccine_decay=compartment_tme*global_par_d1*x(5);

%Event: id=vaccine_administration
	event_vaccine_administration=time >= 3;

	if(event_vaccine_administration) 
		x(5)=global_par_g0;
	end

	xdot=zeros(5,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_immune) + (-1.0 * reaction_tumor_immune_induced));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_tgfb_secretion) + (-1.0 * reaction_tgfb_decay));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_effector_stimulation) + (-1.0 * reaction_effector_death) + (-1.0 * reaction_effector_regulation) + (-1.0 * reaction_effector_conversion));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_effector_conversion) + (-1.0 * reaction_Treg_death));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(5) = (1/(compartment_tme))*((-1.0 * reaction_vaccine_decay));
end

function z=er(d0,R,E), z=(d0*R*E);end

function z=es(f,E,T,c3,B), z=(f*E*T/(1+c3*T*B));end

function z=tg(a0,T,c0), z=(a0*T*(1-c0*T));end

function z=imm(d0,E,T,c1,B), z=(d0*E*T/(1+c1*B));end

function z=induced(d0,T,V), z=(d0*T*V);end

function z=tgfb(a1,T,c2), z=(a1*T^2/(c2+T^2));end

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


