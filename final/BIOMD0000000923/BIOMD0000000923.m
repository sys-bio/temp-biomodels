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
% Model name = Liò2012_Modelling osteomyelitis_Control Model
%
% isDerivedFrom http://identifiers.org/pubmed/14499354
% isDescribedBy http://identifiers.org/pubmed/23095605
% is http://identifiers.org/biomodels.db/MODEL2003170001
% is http://identifiers.org/biomodels.db/BIOMD0000000923
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 100.0;
	x0(2) = 316.0;
	x0(3) = 15.0;
	x0(4) = 1.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=3.0;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=4.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.2;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.02;
% Parameter:   id =  g11, name = g11
	global_par_g11=1.1;
% Parameter:   id =  g12, name = g12
	global_par_g12=1.0;
% Parameter:   id =  g22, name = g22
	global_par_g22=0.0;
% Parameter:   id =  g21, name = g21
	global_par_g21=-0.5;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0748;
% Parameter:   id =  k2, name = k2
	global_par_k2=6.395E-4;
% Parameter:   id =  g_ageing, name = g_ageing
	global_par_g_ageing=2.0;
% Parameter:   id =  g_por, name = g_por
	global_par_g_por=0.1;
% Parameter:   id =  gamma_B, name = gamma_B
	global_par_gamma_B=0.005;
% Parameter:   id =  s, name = s
	global_par_s=100.0;
% Parameter:   id =  V, name = V
	global_par_V=0.007;
% Parameter:   id =  t_treat, name = t_treat
	global_par_t_treat=200.0;
% Parameter:   id =  f11, name = f11
	global_par_f11=0.005;
% Parameter:   id =  f12, name = f12
	global_par_f12=0.0;
% Parameter:   id =  f22, name = f22
	global_par_f22=0.2;
% Parameter:   id =  f21, name = f21
	global_par_f21=0.005;
% Parameter:   id =  O_cbar, name = O_cbar
	global_par_O_cbar=1.78;
% Parameter:   id =  O_bbar, name = O_bbar
	global_par_O_bbar=177.91;

% Reaction: id = reaction_fo_z, name = reaction fo z
	reaction_reaction_fo_z=compartment_compartment*Rate_Law_for_reaction_fo_z(global_par_k1, x(3), global_par_O_cbar, global_par_k2, x(2), global_par_O_bbar);

% Reaction: id = reaction_for_O_b, name = reaction for O_b
	reaction_reaction_for_O_b=compartment_compartment*Rate_Law_for_reaction_for_O_b(global_par_alpha2, x(3), global_par_g12, global_par_f12, x(4), global_par_s, x(2), global_par_g22, global_par_f22, global_par_beta2);

% Reaction: id = reaction_for_O_c, name = reaction for O_c
	reaction_reaction_for_O_c=compartment_compartment*Rate_Law_for_reaction_for_O_c(global_par_alpha1, x(3), global_par_g11, global_par_f11, x(4), global_par_s, x(2), global_par_g21, global_par_f21, global_par_beta1);

% Reaction: id = reaction_for_B, name = reaction for B
	reaction_reaction_for_B=compartment_compartment*Rate_Law_for_reaction_for_B(global_par_gamma_B, global_par_V, x(4), global_par_s);

	xdot=zeros(4,1);
	
% Species:   id = Bone_Density__z, name = Bone Density (z), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_fo_z));
	
% Species:   id = Osteoblasts__O_b, name = Osteoblasts (O_b), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_O_b));
	
% Species:   id = Osteoclasts__O_c, name = Osteoclasts (O_c), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_O_c));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_B));
end

function z=MAX(a,b,piecewise(a), z=(a >= b,b));end

function z=Rate_Law_for_reaction_for_O_b(alpha2,O_c,g12,f12,B,s,O_b,g22,f22,beta2), z=(alpha2*O_c^(g12*(1+f12*B/s))*O_b^(g22-f22*B/s)-beta2*O_b);end

function z=Rate_Law_for_reaction_for_O_c(alpha1,O_c,g11,f11,B,s,O_b,g21,f21,beta1), z=(alpha1*O_c^(g11*(1+f11*B/s))*O_b^(g21*(1+f21*B/s))-beta1*O_c);end

function z=Rate_Law_for_reaction_fo_z(K1,O_c,O_cbar,k2,O_b,O_bbar), z=((-K1)*MAX(O_c-O_cbar,0)+k2*MAX(O_b-O_bbar,0));end

function z=Rate_Law_for_reaction_for_B(gamma_B,V,B,s), z=((gamma_B-V)*B*log(10,s/B));end

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


