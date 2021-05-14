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
% Model name = Lavrentovich2008_Ca_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL9223106020
% is http://identifiers.org/biomodels.db/BIOMD0000000184
% isDescribedBy http://identifiers.org/pubmed/18275973
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.1;
	x0(2) = 1.5;
	x0(3) = 0.1;


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

% Compartment: id = compartment, name = Cytoplasm, constant
	compartment_compartment=1.0;
% Compartment: id = ER, name = Endoplasmic Reticulum, constant
	compartment_ER=1.0;
% Parameter:   id =  vin, name = vin
	global_par_vin=0.05;
% Parameter:   id =  kout, name = kout
	global_par_kout=0.5;
% Parameter:   id =  vM3, name = vM3
	global_par_vM3=40.0;
% Parameter:   id =  k_CaA, name = k_CaA
	global_par_k_CaA=0.15;
% Parameter:   id =  n, name = n
	global_par_n=2.02;
% Parameter:   id =  k_CaI, name = k_CaI
	global_par_k_CaI=0.15;
% Parameter:   id =  m, name = m
	global_par_m=2.2;
% Parameter:   id =  kip3, name = kip3
	global_par_kip3=0.1;
% Parameter:   id =  vM2, name = vM2
	global_par_vM2=15.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.1;
% Parameter:   id =  kf, name = kf
	global_par_kf=0.5;
% Parameter:   id =  vp, name = vp
	global_par_vp=0.05;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.3;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=0.08;

% Reaction: id = R1, name = vin
	reaction_R1=compartment_compartment*global_par_vin;

% Reaction: id = R2, name = Calcium export from cell
	reaction_R2=compartment_compartment*global_par_kout*x(1);

% Reaction: id = R3, name = CICR
	reaction_R3=compartment_ER*4*global_par_vM3*global_par_k_CaA^global_par_n*x(1)^global_par_n/((x(1)^global_par_n+global_par_k_CaA^global_par_n)*(x(1)^global_par_n+global_par_k_CaI^global_par_n))*x(3)^global_par_m/(x(3)^global_par_m+global_par_kip3^global_par_m)*(x(2)-x(1));

% Reaction: id = R4, name = serca
	reaction_R4=compartment_compartment*global_par_vM2*x(1)^2/(x(1)^2+global_par_k2^2);

% Reaction: id = R5, name = Leak flux
	reaction_R5=compartment_ER*global_par_kf*(x(2)-x(1));

% Reaction: id = R6, name = PLC
	reaction_R6=compartment_compartment*global_par_vp*x(1)^2/(x(1)^2+global_par_kp^2);

% Reaction: id = R7, name = IP3 degradation
	reaction_R7=compartment_compartment*global_par_kdeg*x(3);

	xdot=zeros(3,1);
	
% Species:   id = X, name = Cytoplasmic Calcium, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5));
	
% Species:   id = Y, name = Calcium in ER, affected by kineticLaw
	xdot(2) = (1/(compartment_ER))*((-1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = Z, name = IP3, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
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


