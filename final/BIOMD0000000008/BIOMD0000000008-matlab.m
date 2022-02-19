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
% Model name = Gardner1998 - Cell Cycle Goldbeter
%
% is http://identifiers.org/biomodels.db/MODEL6614879888
% is http://identifiers.org/biomodels.db/BIOMD0000000008
% isDescribedBy http://identifiers.org/pubmed/9826676
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000003
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000004
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 1.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  V1, name = V1
% Parameter:   id =  K6, name = K6
	global_par_K6=0.3;
% Parameter:   id =  V1p, name = V1p
	global_par_V1p=0.75;
% Parameter:   id =  V3, name = V3
% Parameter:   id =  V3p, name = V3p
	global_par_V3p=0.3;
% assignmentRule: variable = V1
	global_par_V1=x(1)*global_par_V1p*(x(1)+global_par_K6)^(-1);
% assignmentRule: variable = V3
	global_par_V3=x(3)*global_par_V3p;

% Reaction: id = reaction1, name = creation of cyclin	% Local Parameter:   id =  vi, name = vi
	reaction_reaction1_vi=0.1;

	reaction_reaction1=reaction_reaction1_vi;

% Reaction: id = reaction2, name = cdc2 kinase triggered degration of cyclin	% Local Parameter:   id =  k1, name = k1
	reaction_reaction2_k1=0.5;
	% Local Parameter:   id =  K5, name = K5
	reaction_reaction2_K5=0.02;

	reaction_reaction2=x(1)*reaction_reaction2_k1*x(2)*(x(1)+reaction_reaction2_K5)^(-1);

% Reaction: id = reaction3, name = default degradation of cyclin	% Local Parameter:   id =  kd, name = kd
	reaction_reaction3_kd=0.02;

	reaction_reaction3=x(1)*reaction_reaction3_kd;

% Reaction: id = reaction4, name = activation of cdc2 kinase	% Local Parameter:   id =  K1, name = K1
	reaction_reaction4_K1=0.1;

	reaction_reaction4=(1- 1*x(3))*global_par_V1*(reaction_reaction4_K1- 1*x(3)+1)^(-1);

% Reaction: id = reaction5, name = deactivation of cdc2 kinase	% Local Parameter:   id =  V2, name = V2
	reaction_reaction5_V2=0.25;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction5_K2=0.1;

	reaction_reaction5=x(3)*reaction_reaction5_V2*(reaction_reaction5_K2+x(3))^(-1);

% Reaction: id = reaction6, name = activation of cyclin protease	% Local Parameter:   id =  K3, name = K3
	reaction_reaction6_K3=0.2;

	reaction_reaction6=global_par_V3*(1- 1*x(2))*(reaction_reaction6_K3- 1*x(2)+1)^(-1);

% Reaction: id = reaction7, name = deactivation of cyclin protease	% Local Parameter:   id =  K4, name = K4
	reaction_reaction7_K4=0.1;
	% Local Parameter:   id =  V4, name = V4
	reaction_reaction7_V4=0.1;

	reaction_reaction7=reaction_reaction7_V4*x(2)*(reaction_reaction7_K4+x(2))^(-1);

% Reaction: id = reaction8, name = reaction8	% Local Parameter:   id =  a1, name = a1
	reaction_reaction8_a1=0.05;

	reaction_reaction8=reaction_reaction8_a1*x(1)*x(4);

% Reaction: id = reaction9, name = reaction9	% Local Parameter:   id =  a2, name = a2
	reaction_reaction9_a2=0.05;

	reaction_reaction9=reaction_reaction9_a2*x(5);

% Reaction: id = reaction10, name = desinhibition of cyclin	% Local Parameter:   id =  alpha, name = alpha
	reaction_reaction10_alpha=0.1;
	% Local Parameter:   id =  d1, name = d1
	reaction_reaction10_d1=0.05;

	reaction_reaction10=reaction_reaction10_alpha*reaction_reaction10_d1*x(5);

% Reaction: id = reaction11, name = degradation of inhibited cyclin	% Local Parameter:   id =  kd, name = kd
	reaction_reaction11_kd=0.02;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_reaction11_alpha=0.1;

	reaction_reaction11=reaction_reaction11_alpha*reaction_reaction11_kd*x(5);

% Reaction: id = reaction12, name = creation of cyclin inhibitor	% Local Parameter:   id =  vs, name = vs
	reaction_reaction12_vs=0.2;

	reaction_reaction12=reaction_reaction12_vs;

% Reaction: id = reaction13, name = degradation of cyclin inhibitor	% Local Parameter:   id =  d1, name = d1
	reaction_reaction13_d1=0.05;

	reaction_reaction13=reaction_reaction13_d1*x(4);

	xdot=zeros(5,1);
	
% Species:   id = C, name = cyclin, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + (-1.0 * reaction_reaction3) + (-1.0 * reaction_reaction8) + ( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction10));
	
% Species:   id = X, name = protease, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction7));
	
% Species:   id = M, name = cdc2k, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction5));
	
% Species:   id = Y, name = cyclin inhibitor, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_reaction8) + ( 1.0 * reaction_reaction9) + ( 1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction12) + (-1.0 * reaction_reaction13));
	
% Species:   id = Z, name = complex inhibitor-cyclin, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_reaction8) + (-1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10) + (-1.0 * reaction_reaction11));
end

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


