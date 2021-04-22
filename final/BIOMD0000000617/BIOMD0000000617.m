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
% Model name = Walsh2014 - Inhibition kinetics of DAPT on APP Cleavage
%
% is http://identifiers.org/biomodels.db/MODEL1609120000
% is http://identifiers.org/biomodels.db/BIOMD0000000617
% isDescribedBy http://identifiers.org/pubmed/25374788
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 1.0;


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

% Compartment: id = default_compartment, name = default_compartment, constant
	compartment_default_compartment=1.0;
% Compartment: id = Compartment_, name = Compartment_, constant
	compartment_Compartment_=1.0;
% Parameter:   id =  V1s, name = V1s
% Parameter:   id =  S, name = S
	global_par_S=61.0;
% Parameter:   id =  K1s, name = K1s
% Parameter:   id =  V2s, name = V2s
% Parameter:   id =  H1, name = H1
	global_par_H1=1.71;
% Parameter:   id =  K2s, name = K2s
% Parameter:   id =  H2, name = H2
	global_par_H2=2.69;
% Parameter:   id =  K3s, name = K3s
	global_par_K3s=605.01;
% Parameter:   id =  V2, name = V2
	global_par_V2=443.68;
% Parameter:   id =  V2i, name = V2i
	global_par_V2i=0.0;
% Parameter:   id =  Ii, name = Ii
	global_par_Ii=1000.0;
% Parameter:   id =  Hxx, name = Hxx
	global_par_Hxx=0.96;
% Parameter:   id =  Kxx1, name = Kxx1
	global_par_Kxx1=70.93;
% Parameter:   id =  K2, name = K2
	global_par_K2=225.49;
% Parameter:   id =  K2i, name = K2i
	global_par_K2i=118.41;
% Parameter:   id =  V1, name = V1
	global_par_V1=20.06;
% Parameter:   id =  V1is, name = V1is
	global_par_V1is=451.78;
% Parameter:   id =  Hx1, name = Hx1
	global_par_Hx1=1.02;
% Parameter:   id =  Kx1, name = Kx1
	global_par_Kx1=30.18;
% Parameter:   id =  Hx2, name = Hx2
	global_par_Hx2=2.69;
% Parameter:   id =  Kx2, name = Kx2
	global_par_Kx2=553.64;
% Parameter:   id =  V1ii, name = V1ii
	global_par_V1ii=0.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=177.76;
% Parameter:   id =  K1is, name = K1is
	global_par_K1is=29.52;
% Parameter:   id =  K1ii, name = K1ii
	global_par_K1ii=34.05;
% Parameter:   id =  V3, name = V3
	global_par_V3=0.0;
% assignmentRule: variable = K2s
	global_par_K2s=global_par_K2-(global_par_K2-global_par_K2i)*global_par_Ii^global_par_Hxx/(global_par_Ii^global_par_Hxx+global_par_Kxx1^global_par_Hxx);
% assignmentRule: variable = V1s
	global_par_V1s=global_par_V1-(global_par_V1-global_par_V1is)*global_par_Ii^global_par_Hx1/(global_par_Ii^global_par_Hx1+global_par_Kx1^global_par_Hx1)+(global_par_V1-global_par_V1is)*global_par_Ii^global_par_Hx2/(global_par_Ii^global_par_Hx2+global_par_Kx2^global_par_Hx2)-(global_par_V1-global_par_V1ii)*global_par_Ii^global_par_Hx2/(global_par_Ii^global_par_Hx2+global_par_Kx2^global_par_Hx2);
% assignmentRule: variable = K1s
	global_par_K1s=global_par_K1-(global_par_K1-global_par_K1is)*global_par_Ii^global_par_Hx1/(global_par_Ii^global_par_Hx1+global_par_Kx1^global_par_Hx1)+(global_par_K1-global_par_K1is)*global_par_Ii^global_par_Hx2/(global_par_Ii^global_par_Hx2+global_par_Kx2^global_par_Hx2)-(global_par_K1-global_par_K1ii)*global_par_Ii^global_par_Hx2/(global_par_Ii^global_par_Hx2+global_par_Kx2^global_par_Hx2);
% assignmentRule: variable = V2s
	global_par_V2s=global_par_V2-(global_par_V2-global_par_V2i)*global_par_Ii^global_par_Hxx/(global_par_Ii^global_par_Hxx+global_par_Kxx1^global_par_Hxx);

% Reaction: id = R1, name = R1
	reaction_R1=compartment_default_compartment*Function_for_R1(compartment_Compartment_, global_par_K1s, global_par_S, global_par_V1s);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_default_compartment*Function_for_R2(compartment_Compartment_, global_par_H1, global_par_K2s, global_par_S, global_par_V2s);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_default_compartment*Function_for_R3(compartment_Compartment_, global_par_H1, global_par_K2s, global_par_S, global_par_V1s);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_default_compartment*Function_for_R4(compartment_Compartment_, global_par_H2, global_par_K3s, global_par_S, global_par_V2s);

	xdot=zeros(1,1);
	
% Species:   id = v, name = v, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4));
end

function z=Function_for_R3(Compartment_,H1,K2s,S,V1s), z=(Compartment_*V1s*S^H1/(S^H1+K2s^H1));end

function z=Function_for_R4(Compartment_,H2,K3s,S,V2s), z=(Compartment_*V2s*S^H2/(S^H2+K3s^H2));end

function z=Function_for_R1(Compartment_,K1s,S,V1s), z=(Compartment_*V1s*S/(S+K1s));end

function z=Function_for_R2(Compartment_,H1,K2s,S,V2s), z=(Compartment_*V2s*S^H1/(S^H1+K2s^H1));end

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


