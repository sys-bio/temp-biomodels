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
% Model name = Hoffman2018- ADCC against cancer
%
% isDescribedBy http://identifiers.org/pubmed/28970093
% is http://identifiers.org/biomodels.db/MODEL1908200002
% is http://identifiers.org/biomodels.db/BIOMD0000000802
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
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
% Parameter:   id =  a1, name = a1
	global_par_a1=0.001;
% Parameter:   id =  a2, name = a2
	global_par_a2=1.44;
% Parameter:   id =  y, name = y
% Parameter:   id =  f, name = f
% Parameter:   id =  v1, name = v1
	global_par_v1=120.0;
% Parameter:   id =  u, name = u
	global_par_u=20.0;
% Parameter:   id =  v2, name = v2
	global_par_v2=14.4;
% Parameter:   id =  fk, name = fk
	global_par_fk=1.0;
% Parameter:   id =  rk, name = rk
	global_par_rk=0.5;
% Parameter:   id =  e, name = e
% Parameter:   id =  n, name = n
	global_par_n=0.0;
% assignmentRule: variable = f
	global_par_f=global_par_fk*x(2)/(x(2)+global_par_rk);
% assignmentRule: variable = e
	global_par_e=global_par_a1;
% assignmentRule: variable = y
	global_par_y=global_par_e^global_par_n;

% Reaction: id = antibody_association, name = antibody association
	reaction_antibody_association=compartment_tme*aa(global_par_a1, x(2), x(1), x(3));

% Reaction: id = antibody_dissociation, name = antibody dissociation
	reaction_antibody_dissociation=compartment_tme*ad(global_par_a2, global_par_y, x(2), x(3));

% Reaction: id = complex_formation, name = complex formation
	reaction_complex_formation=compartment_tme*rf(global_par_a1, global_par_y, x(2), x(1));

% Reaction: id = complex_dissociation, name = complex dissociation
	reaction_complex_dissociation=compartment_tme*global_par_a2*x(2);

% Reaction: id = cancer_cell_killing_C, name = cancer cell killing-C
	reaction_cancer_cell_killing_C=compartment_tme*global_par_f*x(4);

% Reaction: id = NK_complex_formation, name = NK complex formation
	reaction_NK_complex_formation=compartment_tme*cf(global_par_v1, global_par_u, x(4), x(3));

% Reaction: id = NK_complex_degradation, name = NK complex degradation
	reaction_NK_complex_degradation=compartment_tme*global_par_v2*x(4);

% Reaction: id = cancer_cell_killing_S, name = cancer cell killing-S
	reaction_cancer_cell_killing_S=compartment_tme*ck(global_par_f, x(4));

	xdot=zeros(4,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*((-1.0 * reaction_antibody_association) + ( 1.0 * reaction_antibody_dissociation));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_complex_formation) + (-1.0 * reaction_complex_dissociation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*((-1.0 * reaction_cancer_cell_killing_S));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*((-1.0 * reaction_cancer_cell_killing_C) + ( 1.0 * reaction_NK_complex_formation) + (-1.0 * reaction_NK_complex_degradation));
end

function z=ad(a2,y,R,S), z=(a2*y*R*S);end

function z=aa(a1,R,A,S), z=(a1*(1-R)*A*S);end

function z=rf(a1,y,R,A), z=(a1/y*(1-R)*A);end

function z=ck(f,C), z=(f*C);end

function z=cf(v1,u,C,S), z=(v1*(u-C)*(S-C));end

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


