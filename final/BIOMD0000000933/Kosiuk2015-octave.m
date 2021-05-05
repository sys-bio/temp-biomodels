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
% Model name = Kosiuk2015-Geometric analysis of the Goldbeter minimal model for the embryonic cell cycle
%
% isDerivedFrom urn:miriam:pubmed:1833774
% isDescribedBy http://identifiers.org/pubmed/26100376
% is http://identifiers.org/biomodels.db/MODEL2004240001
% is http://identifiers.org/biomodels.db/BIOMD0000000933
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.3;
	x0(2) = 0.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.25;
% Parameter:   id =  vi, name = vi
	global_par_vi=0.25;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.5;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.0;
% Parameter:   id =  VM1, name = VM1
	global_par_VM1=3.0;
% Parameter:   id =  V2, name = V2
	global_par_V2=1.5;
% Parameter:   id =  VM3, name = VM3
	global_par_VM3=1.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=0.7;
% Parameter:   id =  vd, name = vd
	global_par_vd=0.25;
% Parameter:   id =  kj, name = kj
	global_par_kj=0.001;
% Parameter:   id =  j, name = j
	global_par_j=1.0;
% Parameter:   id =  V1C, name = V1C
% Parameter:   id =  V3M, name = V3M
% Parameter:   id =  epislon, name = epislon
	global_par_epislon=0.001;
% assignmentRule: variable = V1C
	global_par_V1C=global_par_VM1*x(1)/(global_par_Kc+x(1));
% assignmentRule: variable = V3M
	global_par_V3M=global_par_VM3*x(2);

% Reaction: id = Production_of_Cyclin, name = Production of Cyclin
	reaction_Production_of_Cyclin=compartment_compartment*Rate_Law_for_reaction_for_Cyclin__C(x(3), x(1));

% Reaction: id = Cdc2_kinase_activation, name = Cdc2 kinase activation
	reaction_Cdc2_kinase_activation=compartment_compartment*Rate_Law_for_reaction_for__active_cdc2_kinase__M(x(2), x(1), global_par_epislon);

% Reaction: id = activation_of_cyclin_protease, name = activation of cyclin protease
	reaction_activation_of_cyclin_protease=compartment_compartment*Rate_Law_for_reaction_for_active_cyclin_protease__X(x(3), x(2), global_par_epislon);

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_Cyclin));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdc2_kinase_activation));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_activation_of_cyclin_protease));
end

function z=Rate_Law_for_reaction_for_Cyclin__C(X,C), z=(1/4*(1-X-C));end

function z=Rate_Law_for_reaction_for__active_cdc2_kinase__M(M,C,epislon), z=(6*C/(1+2*C)*(1-M)/(epislon+1-M)-3/2*M/(epislon+M));end

function z=Rate_Law_for_reaction_for_active_cyclin_protease__X(X,M,epislon), z=(M*(1-X)/(epislon+1-X)-7/10*X/(epislon+X));end

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


