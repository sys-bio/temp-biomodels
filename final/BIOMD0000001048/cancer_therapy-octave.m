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
% Model name = Siddhartha2002 - Kinetic modelling of cancer therapies
%
% is http://identifiers.org/biomodels.db/MODEL2204120001
% is http://identifiers.org/biomodels.db/BIOMD0000001048
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1000000.0;
	x0(2) = 4000000.0;
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

% Compartment: id = Tumor, name = Tumor, constant
	compartment_Tumor=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  b, name = b
	global_par_b=0.2;
% Parameter:   id =  c, name = c
	global_par_c=0.67;
% Parameter:   id =  d, name = d
	global_par_d=1.0;
% Parameter:   id =  kf1, name = kf1
	global_par_kf1=0.067;
% Parameter:   id =  kf2, name = kf2
	global_par_kf2=6.7E-4;
% Parameter:   id =  kr1, name = kr1
	global_par_kr1=6.7E-4;
% Parameter:   id =  kr2, name = kr2
	global_par_kr2=0.067;
% Parameter:   id =  T0, name = T0
	global_par_T0=3000000.0;
% Parameter:   id =  n, name = n
	global_par_n=10.0;
% Parameter:   id =  r, name = r
	global_par_r=0.069;

% Reaction: id = migration_to_bloodstream, name = migration to bloodstream
	reaction_migration_to_bloodstream=compartment_Tumor*Mass_action_2(global_par_b, global_par_kf1, x(2), x(1), global_par_kr1);

% Reaction: id = clearance, name = clearance
	reaction_clearance=compartment_Tumor*clearance_0(global_par_d, global_par_c, x(2));

% Reaction: id = cell_attachment_to_new_tumor, name = cell attachment to new tumor
	reaction_cell_attachment_to_new_tumor=compartment_Tumor*Mass_action_4(global_par_kf2, global_par_b, global_par_kr2, x(3), x(2));

% Reaction: id = new_tumor_auto_amplification, name = new tumor auto-amplification
	reaction_new_tumor_auto_amplification=compartment_Tumor*auto_amplification(global_par_a, global_par_r, global_par_T0, x(3));

% Reaction: id = old_tumor_auto_amplification, name = old tumor auto-amplification
	reaction_old_tumor_auto_amplification=compartment_Tumor*auto_amplification(global_par_a, global_par_r, global_par_T0, x(1));

% Reaction: id = cell_detachment, name = cell detachment
	reaction_cell_detachment=compartment_Tumor*function_for_cell_detachment(global_par_n, global_par_kf2, x(2), global_par_b, global_par_kr2, x(3));

	xdot=zeros(3,1);
	
% Species:   id = Ttum, name = Ttum, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor))*((-1.0 * reaction_migration_to_bloodstream) + ( 1.0 * reaction_old_tumor_auto_amplification));
	
% Species:   id = Tplas, name = Tplas, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor))*(( 1.0 * reaction_migration_to_bloodstream) + (-1.0 * reaction_clearance) + (-1.0 * reaction_cell_detachment));
	
% Species:   id = Tnew, name = Tnew, affected by kineticLaw
	xdot(3) = (1/(compartment_Tumor))*(( 1.0 * reaction_cell_attachment_to_new_tumor) + ( 1.0 * reaction_new_tumor_auto_amplification));
end

function z=Mass_action_2(b,k1,product,substrate,k2), z=(b*k1*substrate-k2*product);end

function z=auto_amplification(a,r,T0,Tum), z=(a*r*Tum*(1-Tum/T0));end

function z=Mass_action_4(k1,b,k2,product,modifier), z=(k1*modifier-b*k2*product);end

function z=function_for_cell_detachment(n,k1,substrate,b,k2,modifier), z=(n*(k1*substrate-b*k2*modifier));end

function z=clearance_0(d,c,Tplas), z=(d*c*Tplas);end

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


