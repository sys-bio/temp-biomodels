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
% Model name = Baker2017 - The role of cytokines, MMPs and fibronectin fragments osteoarthritis
%
% is http://identifiers.org/biomodels.db/MODEL1704120000
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 5.0;
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

% Compartment: id = compartmentOne, name = compartmentOne, constant
	compartment_compartmentOne=1.0;
% Parameter:   id =  Afh, name = Afh
	global_par_Afh=1.0;
% Parameter:   id =  Afp, name = Afp
	global_par_Afp=10.0;
% Parameter:   id =  Aph, name = Aph
	global_par_Aph=1.0;
% Parameter:   id =  App, name = App
	global_par_App=10.0;
% Parameter:   id =  Fdam, name = Fdam
	global_par_Fdam=0.0;
% Parameter:   id =  Gamma_f, name = Gamma_f
	global_par_Gamma_f=1.0;
% Parameter:   id =  Gamma_m, name = Gamma_m
	global_par_Gamma_m=1.0;
% Parameter:   id =  Gamma_p, name = Gamma_p
	global_par_Gamma_p=1.0;
% Parameter:   id =  Mbp, name = Mbp
	global_par_Mbp=0.01;
% Parameter:   id =  Mph, name = Mph
	global_par_Mph=1.0;
% Parameter:   id =  Mpp, name = Mpp
	global_par_Mpp=10.0;
% Parameter:   id =  Pbp, name = Pbp
	global_par_Pbp=0.01;
% Parameter:   id =  Pfp, name = Pfp
	global_par_Pfp=10.0;
% Parameter:   id =  Ppp, name = Ppp
	global_par_Ppp=10.0;

% Reaction: id = R_1
	reaction_R_1=global_par_Fdam;

% Reaction: id = R_2
	reaction_R_2=x(3);

% Reaction: id = R_3
	reaction_R_3=global_par_Gamma_f*x(4);

% Reaction: id = R_4
	reaction_R_4=global_par_Mbp;

% Reaction: id = R_5
	reaction_R_5=global_par_Mpp*1/(global_par_Mph+x(1)^2)*x(1)^2;

% Reaction: id = R_6
	reaction_R_6=global_par_Gamma_m*x(3);

% Reaction: id = R_7
	reaction_R_7=global_par_App*1/(global_par_Aph+x(1)^2)*x(1)^2;

% Reaction: id = R_8
	reaction_R_8=global_par_Afp*1/(global_par_Afh+x(4)^2)*x(4)^2;

% Reaction: id = R_9
	reaction_R_9=x(2);

% Reaction: id = R_10
	reaction_R_10=global_par_Pbp/(1+x(2)^2);

% Reaction: id = R_11
	reaction_R_11=1/(1+x(2)^2)*global_par_Ppp/(1+x(1)^2)*x(1)^2;

% Reaction: id = R_12
	reaction_R_12=1/(1+x(2)^2)*global_par_Pfp/(1+x(4)^2)*x(4)^2;

% Reaction: id = R_13
	reaction_R_13=global_par_Gamma_p*x(1);

	xdot=zeros(4,1);
	
% Species:   id = solution0, name = solution0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_5) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_7) + ( 1.0 * reaction_R_7) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_11) + ( 2.0 * reaction_R_11) + ( 1.0 * reaction_R_12) + (-1.0 * reaction_R_13));
	
% Species:   id = solution1, name = solution1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_7) + ( 1.0 * reaction_R_8) + (-1.0 * reaction_R_9) + (-1.0 * reaction_R_10) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_11) + ( 1.0 * reaction_R_11) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_12));
	
% Species:   id = solution2, name = solution2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_2) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_4) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_6));
	
% Species:   id = solution3, name = solution3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_1) + ( 1.0 * reaction_R_2) + (-1.0 * reaction_R_3) + (-1.0 * reaction_R_8) + ( 1.0 * reaction_R_8) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_12));
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


