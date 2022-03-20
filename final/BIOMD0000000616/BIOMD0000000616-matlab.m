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
% Model name = Dunster2014 - WBC Interactions (Model1)
%
% is http://identifiers.org/biomodels.db/MODEL1608160000
% is http://identifiers.org/biomodels.db/BIOMD0000000616
% isDescribedBy http://identifiers.org/pubmed/25053556
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = default_compartment, name = Soft_Tissue, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  vt, name = vt
	global_par_vt=0.1;
% Parameter:   id =  Gat, name = Gat
	global_par_Gat=1.0;
% Parameter:   id =  Tt, name = Tt
	global_par_Tt=0.001;
% Parameter:   id =  Gmt, name = Gmt
	global_par_Gmt=0.01;
% Parameter:   id =  alt, name = alt
	global_par_alt=0.05;
% Parameter:   id =  Bat, name = Bat
	global_par_Bat=0.1;
% Parameter:   id =  A, name = A
	global_par_A=1.0;
% Parameter:   id =  t1, name = t1
	global_par_t1=10.0;

% Reaction: id = R1, name = R1
	reaction_R1=compartment_default_compartment*Function_for_R1(x(2), compartment_default_compartment);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_default_compartment*Function_for_R2(global_par_vt, compartment_default_compartment, x(1));

% Reaction: id = R3, name = R3
	reaction_R3=compartment_default_compartment*Function_for_R3(global_par_vt, compartment_default_compartment, x(1));

% Reaction: id = R4, name = R4
	reaction_R4=compartment_default_compartment*Function_for_R4(global_par_Gat, x(3), compartment_default_compartment);

% Reaction: id = R5, name = R5
	reaction_R5=compartment_default_compartment*Function_for_R5(global_par_Tt, x(3), compartment_default_compartment, x(4));

% Reaction: id = R6, name = R6
	reaction_R6=compartment_default_compartment*Function_for_R6(x(2), compartment_default_compartment);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_default_compartment*Function_for_R7(global_par_Gmt, compartment_default_compartment, x(4));

% Reaction: id = R8, name = R8
	reaction_R8=compartment_default_compartment*Function_for_R8(time, global_par_A, global_par_t1, global_par_alt, compartment_default_compartment);

% Reaction: id = R9, name = R9
	reaction_R9=compartment_default_compartment*Function_for_R9(global_par_Gat, global_par_Bat, x(3), compartment_default_compartment);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_default_compartment*Function_for_R10(x(2), compartment_default_compartment);

	xdot=zeros(4,1);
	
% Species:   id = n, name = n, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = c, name = c, affected by kineticLaw
	xdot(2) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R8) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = a, name = a, affected by kineticLaw
	xdot(3) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = m, name = m, affected by kineticLaw
	xdot(4) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
end

function z=Function_for_R2(ModelValue_4,default_compartment,n), z=(ModelValue_4*n/default_compartment);end

function z=Function_for_R1(c,default_compartment), z=(c/default_compartment);end

function z=Function_for_R6(c,default_compartment), z=(c/default_compartment);end

function z=Function_for_R5(ModelValue_6,a,default_compartment,m), z=(ModelValue_6*m*a/default_compartment);end

function z=Function_for_R10(c,default_compartment), z=(c/default_compartment);end

function z=Function_for_R3(ModelValue_4,default_compartment,n), z=(ModelValue_4*n/default_compartment);end

function z=Function_for_R4(ModelValue_5,a,default_compartment), z=(ModelValue_5*a/default_compartment);end

function z=Function_for_R9(ModelValue_5,ModelValue_9,a,default_compartment), z=(ModelValue_5*a^2/(ModelValue_9^2+a^2)/default_compartment);end

function z=Function_for_R7(ModelValue_7,default_compartment,m), z=(ModelValue_7*m/default_compartment);end

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


