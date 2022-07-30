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
% Model name = Frank2021 - Macrophage polarization
%
% is http://identifiers.org/biomodels.db/MODEL2205230001
% is http://identifiers.org/biomodels.db/BIOMD0000001060
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.2;
	x0(2) = 2.0;


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

% Compartment: id = Macrophage, name = Macrophage, constant
	compartment_Macrophage=1.0;
% Parameter:   id =  H_plus_x1, name = H_plus_x1
% Parameter:   id =  H_min_x_1, name = H_min_x_1
% Parameter:   id =  a1, name = a1
	global_par_a1=5.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=5.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.05;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.05;
% Parameter:   id =  n1, name = n1
	global_par_n1=6.0;
% Parameter:   id =  n2, name = n2
	global_par_n2=6.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  l1, name = l1
	global_par_l1=1.0;
% Parameter:   id =  l2, name = l2
	global_par_l2=1.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.5;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.0;
% Parameter:   id =  q1, name = q1
	global_par_q1=5.0;
% Parameter:   id =  q2, name = q2
	global_par_q2=5.0;
% Parameter:   id =  S1, name = S1
	global_par_S1=3.75;
% Parameter:   id =  S2, name = S2
	global_par_S2=3.75;
% Parameter:   id =  H_plus_x2, name = H_plus_x2
% Parameter:   id =  H_min_x2, name = H_min_x2
% assignmentRule: variable = H_plus_x1
	global_par_H_plus_x1=x(1)^global_par_n1/(x(1)^global_par_n1+global_par_k1^global_par_n1);
% assignmentRule: variable = H_min_x_1
	global_par_H_min_x_1=global_par_p1^global_par_l1/(global_par_p1^global_par_l1+x(1)^global_par_l1);
% assignmentRule: variable = H_plus_x2
	global_par_H_plus_x2=x(2)^global_par_n2/(x(2)^global_par_n2+global_par_k2^global_par_n2);
% assignmentRule: variable = H_min_x2
	global_par_H_min_x2=global_par_p2^global_par_l2/(global_par_p2^global_par_l2+x(2)^global_par_l2);

% Reaction: id = _1, name = 1
	reaction__1=compartment_Macrophage*function_1(global_par_a1, global_par_H_plus_x1, global_par_S1, global_par_H_min_x2);

% Reaction: id = _3, name = 3
	reaction__3=compartment_Macrophage*global_par_q1*x(1);

% Reaction: id = _4, name = 4
	reaction__4=compartment_Macrophage*function_2(global_par_a2, global_par_H_plus_x2);

% Reaction: id = _5, name = 5
	reaction__5=compartment_Macrophage*function_3(global_par_S2, global_par_H_min_x_1);

% Reaction: id = _7, name = 7
	reaction__7=compartment_Macrophage*global_par_q2*x(2);

	xdot=zeros(2,1);
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_Macrophage))*(( 1.0 * reaction__1) + ( 1.0 * reaction__2) + (-1.0 * reaction__3));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_Macrophage))*(( 1.0 * reaction__4) + ( 1.0 * reaction__5) + ( 1.0 * reaction__6) + (-1.0 * reaction__7));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_1(a1,Hplus_x1,S1,Hmin_x2), z=((a1*Hplus_x1+S1)*Hmin_x2);end

function z=function_3(S_i,H_minx_j), z=(S_i*H_minx_j);end

function z=function_2(a2,Hplus_x2), z=(a2*Hplus_x2);end

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


