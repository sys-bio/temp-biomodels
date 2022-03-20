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
% Model name = Schittler2010_Osteochondroswitch
%
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 12.03;
	x0(2) = 0.14;
	x0(3) = 0.14;


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

% Compartment: id = default_compartment, name = default_compartment, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  aP, name = aP
	global_par_aP=0.2;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  bP, name = bP
	global_par_bP=0.5;
% Parameter:   id =  mP, name = mP
	global_par_mP=10.0;
% Parameter:   id =  zD, name = zD
	global_par_zD=0.0;
% Parameter:   id =  cPP, name = cPP
	global_par_cPP=0.1;
% Parameter:   id =  kP, name = kP
	global_par_kP=0.1;
% Parameter:   id =  aO, name = aO
	global_par_aO=0.1;
% Parameter:   id =  bO, name = bO
	global_par_bO=0.9;
% Parameter:   id =  zO, name = zO
	global_par_zO=0.0;
% Parameter:   id =  mO, name = mO
	global_par_mO=1.0;
% Parameter:   id =  cOC, name = cOC
	global_par_cOC=0.1;
% Parameter:   id =  cOP, name = cOP
	global_par_cOP=0.5;
% Parameter:   id =  cOO, name = cOO
	global_par_cOO=0.1;
% Parameter:   id =  kO, name = kO
	global_par_kO=0.1;
% Parameter:   id =  aC, name = aC
	global_par_aC=0.1;
% Parameter:   id =  bC, name = bC
	global_par_bC=1.0;
% Parameter:   id =  zC, name = zC
	global_par_zC=0.0;
% Parameter:   id =  mC, name = mC
	global_par_mC=1.0;
% Parameter:   id =  cCO, name = cCO
	global_par_cCO=0.1;
% Parameter:   id =  cCP, name = cCP
	global_par_cCP=0.5;
% Parameter:   id =  cCC, name = cCC
	global_par_cCC=0.1;
% Parameter:   id =  kC, name = kC
	global_par_kC=0.1;

% Reaction: id = a1
	reaction_a1=(global_par_aP*x(1)^global_par_n+global_par_bP)/(global_par_mP+global_par_zD+global_par_cPP*x(1)^global_par_n);

% Reaction: id = a2
	reaction_a2=global_par_kP*x(1);

% Reaction: id = a3
	reaction_a3=(global_par_aO*x(2)^global_par_n+global_par_bO+global_par_zO)/(global_par_mO+global_par_cOC*x(3)^global_par_n+global_par_cOP*x(1)^global_par_n+global_par_cOO*x(2)^global_par_n);

% Reaction: id = a4
	reaction_a4=global_par_kO*x(2);

% Reaction: id = a5
	reaction_a5=(global_par_aC*x(3)^global_par_n+global_par_bC+global_par_zC)/(global_par_mC+global_par_cCO*x(2)^global_par_n+global_par_cCP*x(1)^global_par_n+global_par_cCC*x(3)^global_par_n);

% Reaction: id = a6
	reaction_a6=global_par_kC*x(3);

%Event: id=_E0
	event__E0=x(1) > 12.03;

	if(event__E0) 
		global_par_zD=0.8;
	end

%Event: id=_E2
	event__E2=x(1) > 12.03;

	if(event__E2) 
		global_par_zO=1;
	end

%Event: id=_E1
	event__E1=x(1) > 12.03;

	if(event__E1) 
		global_par_zO=0;
		global_par_zD=0;
	end

	xdot=zeros(3,1);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction_a1) + (-1.0 * reaction_a2));
	
% Species:   id = O, name = O, affected by kineticLaw
	xdot(2) = (1/(compartment_default_compartment))*(( 1.0 * reaction_a3) + (-1.0 * reaction_a4));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(3) = (1/(compartment_default_compartment))*(( 1.0 * reaction_a5) + (-1.0 * reaction_a6));
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


