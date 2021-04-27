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
% Model name = Sarma2012 - Oscillations in MAPK cascade (S2), inclusion of external signalling module
%
% is http://identifiers.org/biomodels.db/MODEL1112190005
% is http://identifiers.org/biomodels.db/BIOMD0000000442
% isDescribedBy http://identifiers.org/pubmed/22694947
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000441
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 999.999903688753;
	x0(2) = 0.0;
	x0(3) = 3999.99961475501;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 999.999903688753;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 99.9999903688752;
	x0(10) = 499.999951844377;
	x0(11) = 499.999951844377;
	x0(12) = 99.9999903688752;
	x0(13) = 0.0;


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

% Compartment: id = compartment_0, name = compartment, constant
	compartment_compartment_0=1.0;

% Reaction: id = reaction_0, name = 1	% Local Parameter:   id =  A, name = A
	reaction_reaction_0_A=100.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_0_K1=15.0;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_reaction_0_Ka=500.0;
	% Local Parameter:   id =  V1, name = V1
	reaction_reaction_0_V1=6.0;

	reaction_reaction_0=compartment_compartment_0*function_4_1_1(reaction_reaction_0_A, reaction_reaction_0_K1, reaction_reaction_0_Ka, reaction_reaction_0_V1, x(1), x(8));

% Reaction: id = reaction_1, name = 3	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_1_K3=20.0;
	% Local Parameter:   id =  KI, name = KI
	reaction_reaction_1_KI=9.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_reaction_1_k3=0.1;

	reaction_reaction_1=compartment_compartment_0*function_4_3_1(reaction_reaction_1_K3, reaction_reaction_1_KI, reaction_reaction_1_k3, x(2), x(3), x(4), x(8));

% Reaction: id = reaction_2, name = 4	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_2_K4=20.0;
	% Local Parameter:   id =  KI, name = KI
	reaction_reaction_2_KI=9.0;
	% Local Parameter:   id =  k4, name = k4
	reaction_reaction_2_k4=0.1;

	reaction_reaction_2=compartment_compartment_0*function_4_4_1(reaction_reaction_2_K4, reaction_reaction_2_KI, reaction_reaction_2_k4, x(2), x(3), x(4), x(8));

% Reaction: id = reaction_3, name = 7	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_3_K7=20.0;
	% Local Parameter:   id =  k7, name = k7
	reaction_reaction_3_k7=0.1;

	reaction_reaction_3=compartment_compartment_0*function_4_7_1(reaction_reaction_3_K7, reaction_reaction_3_k7, x(5), x(6), x(7));

% Reaction: id = reaction_4, name = 8	% Local Parameter:   id =  K8, name = K8
	reaction_reaction_4_K8=20.0;
	% Local Parameter:   id =  k8, name = k8
	reaction_reaction_4_k8=0.1;

	reaction_reaction_4=compartment_compartment_0*function_4_8_1(reaction_reaction_4_K8, reaction_reaction_4_k8, x(5), x(6), x(7));

% Reaction: id = reaction_5, name = 2	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_5_K2=100.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=0.1;

	reaction_reaction_5=compartment_compartment_0*function_4_2_1(reaction_reaction_5_K2, reaction_reaction_5_k2, x(2), x(9));

% Reaction: id = reaction_6, name = 5	% Local Parameter:   id =  K5, name = K5
	reaction_reaction_6_K5=20.0;
	% Local Parameter:   id =  k5, name = k5
	reaction_reaction_6_k5=0.02;

	reaction_reaction_6=compartment_compartment_0*function_4_5_1(reaction_reaction_6_K5, reaction_reaction_6_k5, x(4), x(5), x(10));

% Reaction: id = reaction_7, name = 6	% Local Parameter:   id =  K6, name = K6
	reaction_reaction_7_K6=20.0;
	% Local Parameter:   id =  k6, name = k6
	reaction_reaction_7_k6=0.02;

	reaction_reaction_7=compartment_compartment_0*function_4_6_1(reaction_reaction_7_K6, reaction_reaction_7_k6, x(4), x(5), x(10));

% Reaction: id = reaction_8, name = 9	% Local Parameter:   id =  K9, name = K9
	reaction_reaction_8_K9=20.0;
	% Local Parameter:   id =  k9, name = k9
	reaction_reaction_8_k9=0.02;

	reaction_reaction_8=compartment_compartment_0*function_4_9_1(reaction_reaction_8_K9, reaction_reaction_8_k9, x(11), x(7), x(8));

% Reaction: id = reaction_9, name = 10	% Local Parameter:   id =  K10, name = K10
	reaction_reaction_9_K10=20.0;
	% Local Parameter:   id =  k10, name = k10
	reaction_reaction_9_k10=0.02;

	reaction_reaction_9=compartment_compartment_0*function_4_10_1(reaction_reaction_9_K10, reaction_reaction_9_k10, x(11), x(7), x(8));

% Reaction: id = reaction_10, name = 11	% Local Parameter:   id =  V11, name = V11
	reaction_reaction_10_V11=0.1;
	% Local Parameter:   id =  K11, name = K11
	reaction_reaction_10_K11=50.0;
	% Local Parameter:   id =  A, name = A
	reaction_reaction_10_A=100.0;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_reaction_10_Ka=500.0;

	reaction_reaction_10=compartment_compartment_0*function_1(reaction_reaction_10_V11, x(12), reaction_reaction_10_K11, reaction_reaction_10_A, x(8), reaction_reaction_10_Ka);

% Reaction: id = reaction_11, name = 12	% Local Parameter:   id =  V12, name = V12
	reaction_reaction_11_V12=0.5;
	% Local Parameter:   id =  K12, name = K12
	reaction_reaction_11_K12=50.0;

	reaction_reaction_11=compartment_compartment_0*function_2(reaction_reaction_11_V12, x(13), reaction_reaction_11_K12);

	xdot=zeros(13,1);
	
% Species:   id = species_0, name = MKKK, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_5));
	
% Species:   id = species_1, name = MKKK_P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_2, name = MKK, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_3, name = MKK_P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_4, name = MKK_PP, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_5, name = M, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_6, name = M_P, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_7, name = M_PP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_8, name = P1
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = species_9, name = P2
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = species_10, name = P3
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = species_11, name = X, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = species_12, name = X_P, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
end

function z=function_4_1_1(A,K1,Ka,V1,species_0,species_7), z=(V1*species_0/K1/(1+species_0/K1)*(1+A*species_7/Ka)/(1+species_7/Ka));end

function z=function_4_3_1(K3,KI,k3,species_1,species_2,species_3,species_7), z=(k3*species_1*species_2/K3/((1+species_2/K3+species_3/K3)*(1+species_7/KI)));end

function z=function_4_4_1(K4,KI,k4,species_1,species_2,species_3,species_7), z=(k4*species_1*species_3/K4/((1+species_2/K4+species_3/K4)*(1+species_7/KI)));end

function z=function_4_7_1(K7,k7,species_4,species_5,species_6), z=(k7*species_4*species_5/K7/(1+species_5/K7+species_6/K7));end

function z=function_4_8_1(K8,k8,species_4,species_5,species_6), z=(k8*species_4*species_6/K8/(1+species_5/K8+species_6/K8));end

function z=function_4_2_1(K2,k2,species_1,species_8), z=(k2*species_8*species_1/K2/(1+species_1/K2));end

function z=function_4_5_1(K5,k5,species_3,species_4,species_9), z=(k5*species_9*species_4/K5/(1+species_4/K5+species_3/K5));end

function z=function_4_6_1(K6,k6,species_3,species_4,species_9), z=(k6*species_9*species_3/K6/(1+species_4/K6+species_3/K6));end

function z=function_4_9_1(K9,k9,species_10,species_6,species_7), z=(k9*species_10*species_7/K9/(1+species_7/K9+species_6/K9));end

function z=function_4_10_1(K10,k10,species_10,species_6,species_7), z=(k10*species_10*species_6/K10/(1+species_7/K10+species_6/K10));end

function z=function_1(V11,X,K11,A,species_7,Ka), z=(V11*X/K11/(1+X/K11)*(1+A*species_7/Ka)/(1+species_7/Ka));end

function z=function_2(V12,X_P,K12), z=(V12*X_P/(K12+X_P));end

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


