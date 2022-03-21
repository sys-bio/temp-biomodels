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
% Model name = Smith1980 - Hypothalamic Regulation
%
% isInstanceOf http://identifiers.org/mamo/MAMO_0000046
% isInstanceOf http://identifiers.org/biomodels.db/MODEL7898438988
% isInstanceOf http://identifiers.org/taxonomy/9913
% isInstanceOf http://identifiers.org/go/GO:0032274
% isInstanceOf http://identifiers.org/go/GO:0032275
% isDescribedBy http://identifiers.org/go/GO:0032274
% isDescribedBy http://identifiers.org/go/GO:0032275
% isDescribedBy http://identifiers.org/pubmed/6986927
% is http://identifiers.org/biomodels.db/MODEL7898438988
% is http://identifiers.org/biomodels.db/BIOMD0000000831
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.5;
	x0(2) = 22.0;
	x0(3) = 15.0;


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

% Compartment: id = Compartment, name = Com, constant
	compartment_Compartment=1.0;
% Parameter:   id =  h, name = h
	global_par_h=12.0;
% Parameter:   id =  c, name = c
	global_par_c=100.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.29;
% Parameter:   id =  g1, name = g1
	global_par_g1=10.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.97;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.7;
% Parameter:   id =  b3, name = b3
	global_par_b3=1.39;
% Parameter:   id =  x, name = x
% Parameter:   id =  H, name = H
% assignmentRule: variable = x
	global_par_x=x(3)-global_par_c/global_par_h;
% assignmentRule: variable = H
	global_par_H=piecewise(1, global_par_x > 0, 0);

% Reaction: id = LH_formation, name = LH formation
	reaction_LH_formation=compartment_Compartment*Function_fror_LH_formation(global_par_g1, x(1));

% Reaction: id = T_formation, name = T formation
	reaction_T_formation=compartment_Compartment*Function_for_T_formation(global_par_g2, x(2));

% Reaction: id = R_degradation, name = R degradation
	reaction_R_degradation=compartment_Compartment*Function_for_R_degradation(global_par_b1, x(1));

% Reaction: id = LH_degradation, name = LH degradation
	reaction_LH_degradation=compartment_Compartment*Function_for_LH_degradation(global_par_b2, x(2));

% Reaction: id = T_degradation, name = T degradation
	reaction_T_degradation=compartment_Compartment*Function_for_T_degradation(global_par_b3, x(3));

% Reaction: id = R_formation, name = R formation
	reaction_R_formation=compartment_Compartment*Function_for_R_formation(global_par_c, global_par_h, x(3), global_par_H);

	xdot=zeros(3,1);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(1) = (1/(compartment_Compartment))*((-1.0 * reaction_R_degradation) + ( 1.0 * reaction_R_formation));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment))*(( 1.0 * reaction_LH_formation) + (-1.0 * reaction_LH_degradation));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment))*(( 1.0 * reaction_T_formation) + (-1.0 * reaction_T_degradation));
end

function z=Function_for_R_formation(c,h,T,H), z=((c-h*T)*(1-H));end

function z=Function_for_R_degradation(b1,R), z=(b1*R);end

function z=Function_fror_LH_formation(g1,R), z=(g1*R);end

function z=Function_for_LH_degradation(b2,L), z=(b2*L);end

function z=Function_for_T_formation(g2,L), z=(g2*L);end

function z=Function_for_T_degradation(b3,T), z=(b3*T);end

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


