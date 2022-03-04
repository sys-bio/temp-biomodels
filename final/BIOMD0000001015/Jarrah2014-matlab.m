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
% Model name = Jarrah2014 - mathematical model of the immune response in muscle degeneration and subsequent regeneration in Duchenne muscular dystrophy in mdx mice
%
% isDescribedBy http://identifiers.org/pubmed/25013809
% is http://identifiers.org/biomodels.db/MODEL2107200002
% is http://identifiers.org/biomodels.db/BIOMD0000001015
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 400.0;
	x0(4) = 4.0;
	x0(5) = 100.0;
	x0(6) = 0.0;


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

% Compartment: id = compartment, name = Skeletal_muscle, constant
	compartment_compartment=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0341;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.115375;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.766576;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.123848;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.00409948;
% Parameter:   id =  k6, name = k6
	global_par_k6=3.23097E-4;
% Parameter:   id =  bH, name = bH
% Parameter:   id =  bC, name = bC
% Parameter:   id =  bM, name = bM
% Parameter:   id =  dH, name = dH
	global_par_dH=1.0;
% Parameter:   id =  dC, name = dC
	global_par_dC=1.61511;
% Parameter:   id =  dM, name = dM
	global_par_dM=0.781155;
% Parameter:   id =  dD, name = dD
	global_par_dD=1.34671;
% Parameter:   id =  H0, name = H0
	global_par_H0=0.0;
% Parameter:   id =  C0, name = C0
	global_par_C0=4.0;
% Parameter:   id =  M0, name = M0
	global_par_M0=400.0;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=2.2;
% Parameter:   id =  m, name = m
	global_par_m=4.22686;
% Parameter:   id =  h, name = h
	global_par_h=0.511657;
% Parameter:   id =  alpha, name = alpha
% assignmentRule: variable = bC
	global_par_bC=global_par_dC*global_par_C0;
% assignmentRule: variable = bH
	global_par_bH=global_par_dH*global_par_H0;
% assignmentRule: variable = bM
	global_par_bM=global_par_dM*global_par_M0;
% assignmentRule: variable = alpha
	global_par_alpha=global_par_h/((time+1E-11)*global_par_sigma*(2*pi)^0.5)*exp((-(log(time+1E-11)-global_par_m)^2)/(2*global_par_sigma^2));

% Reaction: id = reaction, name = T_helper_cells_creation
	reaction_reaction=compartment_compartment*Rate_Law_for_reaction(global_par_bH, global_par_k1, x(2), x(3));

% Reaction: id = reaction_1, name = T_helper_cells_degradation
	reaction_reaction_1=compartment_compartment*global_par_dH*x(1);

% Reaction: id = reaction_2, name = T_lymphocytes_creation
	reaction_reaction_2=compartment_compartment*Rate_Law_for_reaction(global_par_bC, global_par_k2, x(2), x(1));

% Reaction: id = reaction_3, name = T_lymphocytes_degradation
	reaction_reaction_3=compartment_compartment*global_par_dC*x(4);

% Reaction: id = reaction_4, name = Macrophage_creation
	reaction_reaction_4=compartment_compartment*Rate_Law_for_reaction_4(global_par_bM, global_par_k3, x(2), x(3));

% Reaction: id = reaction_5, name = Macrophage_degradation
	reaction_reaction_5=compartment_compartment*global_par_dM*x(3);

% Reaction: id = reaction_6, name = Fibre_damage
	reaction_reaction_6=compartment_compartment*Rate_Law_for_reaction_6(global_par_k5, x(4), x(5), global_par_alpha);

% Reaction: id = reaction_7, name = Fibre_regeneration
	reaction_reaction_7=compartment_compartment*Rate_Law_for_reaction_6(global_par_k6, x(3), x(2), global_par_dD);

% Reaction: id = reaction_8, name = Fibre_normalisation
	reaction_reaction_8=compartment_compartment*global_par_k4*x(6);

	xdot=zeros(6,1);
	
% Species:   id = H, name = CD4+_T_Helper_cells_(H), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction) + (-1.0 * reaction_reaction_1));
	
% Species:   id = D, name = Damaged_fibres_(D), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = M, name = Macrophages_(M), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = C, name = CD8+_cytotoxic_T_lymphocytes_(C), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = N, name = Normal_fibres_(N), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = R, name = Regenerative_fibres_(R), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
end

function z=Rate_Law_for_reaction_4(bm,k3,D,M), z=(bm+k3*D*M);end

function z=Rate_Law_for_reaction(bH,k1,D,M), z=(bH+k1*D*M);end

function z=Rate_Law_for_reaction_6(k5,C,N,alpha), z=(k5*C*N+alpha*N);end

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


