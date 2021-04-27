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
% Model name = Kholodenko2000 - Ultrasensitivity and negative feedback bring oscillations in MAPK cascade
%
% is http://identifiers.org/biomodels.db/MODEL6615119181
% is http://identifiers.org/biomodels.db/BIOMD0000000010
% isDescribedBy http://identifiers.org/pubmed/10712587
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 90.0;
	x0(2) = 10.0;
	x0(3) = 280.0;
	x0(4) = 10.0;
	x0(5) = 10.0;
	x0(6) = 280.0;
	x0(7) = 10.0;
	x0(8) = 10.0;


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

% Compartment: id = uVol, name = uVol, constant
	compartment_uVol=1.0;

% Reaction: id = J0, name = MAPKKK activation	% Local Parameter:   id =  V1, name = V1
	reaction_J0_V1=2.5;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_J0_Ki=9.0;
	% Local Parameter:   id =  n, name = n
	reaction_J0_n=1.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_J0_K1=10.0;

	reaction_J0=compartment_uVol*reaction_J0_V1*x(1)/((1+(x(8)/reaction_J0_Ki)^reaction_J0_n)*(reaction_J0_K1+x(1)));

% Reaction: id = J1, name = MAPKKK inactivation	% Local Parameter:   id =  V2, name = V2
	reaction_J1_V2=0.25;
	% Local Parameter:   id =  KK2, name = KK2
	reaction_J1_KK2=8.0;

	reaction_J1=compartment_uVol*reaction_J1_V2*x(2)/(reaction_J1_KK2+x(2));

% Reaction: id = J2, name = phosphorylation of MAPKK	% Local Parameter:   id =  k3, name = k3
	reaction_J2_k3=0.025;
	% Local Parameter:   id =  KK3, name = KK3
	reaction_J2_KK3=15.0;

	reaction_J2=compartment_uVol*reaction_J2_k3*x(2)*x(3)/(reaction_J2_KK3+x(3));

% Reaction: id = J3, name = phosphorylation of MAPKK-P	% Local Parameter:   id =  k4, name = k4
	reaction_J3_k4=0.025;
	% Local Parameter:   id =  KK4, name = KK4
	reaction_J3_KK4=15.0;

	reaction_J3=compartment_uVol*reaction_J3_k4*x(2)*x(4)/(reaction_J3_KK4+x(4));

% Reaction: id = J4, name = dephosphorylation of MAPKK-PP	% Local Parameter:   id =  V5, name = V5
	reaction_J4_V5=0.75;
	% Local Parameter:   id =  KK5, name = KK5
	reaction_J4_KK5=15.0;

	reaction_J4=compartment_uVol*reaction_J4_V5*x(5)/(reaction_J4_KK5+x(5));

% Reaction: id = J5, name = dephosphorylation of MAPKK-P	% Local Parameter:   id =  V6, name = V6
	reaction_J5_V6=0.75;
	% Local Parameter:   id =  KK6, name = KK6
	reaction_J5_KK6=15.0;

	reaction_J5=compartment_uVol*reaction_J5_V6*x(4)/(reaction_J5_KK6+x(4));

% Reaction: id = J6, name = phosphorylation of MAPK	% Local Parameter:   id =  k7, name = k7
	reaction_J6_k7=0.025;
	% Local Parameter:   id =  KK7, name = KK7
	reaction_J6_KK7=15.0;

	reaction_J6=compartment_uVol*reaction_J6_k7*x(5)*x(6)/(reaction_J6_KK7+x(6));

% Reaction: id = J7, name = phosphorylation of MAPK-P	% Local Parameter:   id =  k8, name = k8
	reaction_J7_k8=0.025;
	% Local Parameter:   id =  KK8, name = KK8
	reaction_J7_KK8=15.0;

	reaction_J7=compartment_uVol*reaction_J7_k8*x(5)*x(7)/(reaction_J7_KK8+x(7));

% Reaction: id = J8, name = dephosphorylation of MAPK-PP	% Local Parameter:   id =  V9, name = V9
	reaction_J8_V9=0.5;
	% Local Parameter:   id =  KK9, name = KK9
	reaction_J8_KK9=15.0;

	reaction_J8=compartment_uVol*reaction_J8_V9*x(8)/(reaction_J8_KK9+x(8));

% Reaction: id = J9, name = dephosphorylation of MAPK-P	% Local Parameter:   id =  V10, name = V10
	reaction_J9_V10=0.5;
	% Local Parameter:   id =  KK10, name = KK10
	reaction_J9_KK10=15.0;

	reaction_J9=compartment_uVol*reaction_J9_V10*x(7)/(reaction_J9_KK10+x(7));

	xdot=zeros(8,1);
	
% Species:   id = MKKK, name = Mos, affected by kineticLaw
	xdot(1) = (1/(compartment_uVol))*((-1.0 * reaction_J0) + ( 1.0 * reaction_J1));
	
% Species:   id = MKKK_P, name = Mos-P, affected by kineticLaw
	xdot(2) = (1/(compartment_uVol))*(( 1.0 * reaction_J0) + (-1.0 * reaction_J1));
	
% Species:   id = MKK, name = Mek1, affected by kineticLaw
	xdot(3) = (1/(compartment_uVol))*((-1.0 * reaction_J2) + ( 1.0 * reaction_J5));
	
% Species:   id = MKK_P, name = Mek1-P, affected by kineticLaw
	xdot(4) = (1/(compartment_uVol))*(( 1.0 * reaction_J2) + (-1.0 * reaction_J3) + ( 1.0 * reaction_J4) + (-1.0 * reaction_J5));
	
% Species:   id = MKK_PP, name = Mek1-PP, affected by kineticLaw
	xdot(5) = (1/(compartment_uVol))*(( 1.0 * reaction_J3) + (-1.0 * reaction_J4));
	
% Species:   id = MAPK, name = Erk2, affected by kineticLaw
	xdot(6) = (1/(compartment_uVol))*((-1.0 * reaction_J6) + ( 1.0 * reaction_J9));
	
% Species:   id = MAPK_P, name = Erk2-P, affected by kineticLaw
	xdot(7) = (1/(compartment_uVol))*(( 1.0 * reaction_J6) + (-1.0 * reaction_J7) + ( 1.0 * reaction_J8) + (-1.0 * reaction_J9));
	
% Species:   id = MAPK_PP, name = Erk2-PP, affected by kineticLaw
	xdot(8) = (1/(compartment_uVol))*(( 1.0 * reaction_J7) + (-1.0 * reaction_J8));
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


