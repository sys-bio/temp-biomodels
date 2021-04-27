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
% Model name = Ataullahkhanov1996_Adenylate
%
% is http://identifiers.org/biomodels.db/MODEL4770526315
% is http://identifiers.org/biomodels.db/BIOMD0000000054
% isDescribedBy http://identifiers.org/pubmed/8733433
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 10.0;
	x0(2) = 2.1;
	x0(3) = 1.11;


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

% Compartment: id = cell, name = Erythrocyte, constant
	compartment_cell=1.0;
% Parameter:   id =  T, name = ATP
% Parameter:   id =  M, name = AMP
% Parameter:   id =  P, name = Membrane permeability
	global_par_P=0.121;
% Parameter:   id =  J, name = Extracellular ion concentration
	global_par_J=100.0;
% Parameter:   id =  W2, name = Ion pump activity
	global_par_W2=0.2;
% Parameter:   id =  W3, name = Glycolytic activity
	global_par_W3=13.48;
% Parameter:   id =  U, name = de novo AMP synthesis
	global_par_U=0.02;
% Parameter:   id =  W, name = AMP degradation
	global_par_W=0.01;
% Parameter:   id =  n, name = Dependence of AMP degradation on ATP
	global_par_n=1.2;
% Parameter:   id =  k, name = Dependence of AMP degradation on AMP
	global_par_k=-1.0;
% assignmentRule: variable = T
	global_par_T=(x(3)+3*x(2)-(6*x(3)*x(2)-3*x(2)^2+x(3)^2)^0.5)/6;
% assignmentRule: variable = M
	global_par_M=(7*x(3)-3*x(2)-(6*x(3)*x(2)-3*x(2)^2+x(3)^2)^0.5)/6;

% Reaction: id = U1, name = Passive ion influx
	reaction_U1=compartment_cell*global_par_P*global_par_J;

% Reaction: id = U2, name = ATP consumption by ion pump
	reaction_U2=compartment_cell*global_par_W2*x(1)*global_par_T;

% Reaction: id = U3, name = ATP from glycolysis
	reaction_U3=compartment_cell*global_par_W3*global_par_T^0.52*global_par_M^0.41;

% Reaction: id = U6_plus_3U7, name = AMP synthesis de novo
	reaction_U6_plus_3U7=compartment_cell*2*global_par_U;

% Reaction: id = U6_plus_U7_minus_U8, name = Adenylate pool
	reaction_U6_plus_U7_minus_U8=compartment_cell*global_par_U*(1-global_par_W*global_par_T^global_par_n*global_par_M^global_par_k);

	xdot=zeros(3,1);
	
% Species:   id = I, name = Ions, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_U1) + (-3.0 * reaction_U2));
	
% Species:   id = E, name = Energy pool, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_U2) + ( 1.0 * reaction_U3) + (-1.0 * reaction_U6_plus_3U7));
	
% Species:   id = A, name = Adenylate pool, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_U6_plus_U7_minus_U8));
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


