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
% Model name = Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_QSS_USEQ)
%
% is http://identifiers.org/biomodels.db/MODEL1204280036
% is http://identifiers.org/biomodels.db/BIOMD0000000432
% isDescribedBy http://identifiers.org/pubmed/22748295
% isDerivedFrom http://identifiers.org/pubmed/19897477
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 300.0;
	x0(2) = 0.0;
	x0(3) = 1199.99994221325;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1199.99994221325;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 100.0;
	x0(10) = 200.0;
	x0(11) = 20.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Compartment: id = compartment_2, name = No Name, constant
	compartment_compartment_2=1.0;
% Parameter:   id =  parameter_1, name = K1
	global_par_parameter_1=100.0;
% Parameter:   id =  parameter_2, name = K2a
	global_par_parameter_2=54.3;
% Parameter:   id =  parameter_3, name = K3
	global_par_parameter_3=50.5;
% Parameter:   id =  parameter_4, name = K4
	global_par_parameter_4=500.0;
% Parameter:   id =  parameter_5, name = K5a
	global_par_parameter_5=24.3;
% Parameter:   id =  parameter_6, name = K6a
	global_par_parameter_6=108.6;
% Parameter:   id =  parameter_7, name = K7
	global_par_parameter_7=50.5;
% Parameter:   id =  parameter_8, name = K8
	global_par_parameter_8=500.0;
% Parameter:   id =  parameter_9, name = K9b
	global_par_parameter_9=24.3;
% Parameter:   id =  parameter_10, name = K10b
	global_par_parameter_10=108.6;
% Parameter:   id =  parameter_11, name = Kse1
	global_par_parameter_11=3.0E51;
% Parameter:   id =  parameter_12, name = Kse2
	global_par_parameter_12=3.0E51;
% Parameter:   id =  parameter_13, name = K5b
	global_par_parameter_13=24.3;
% Parameter:   id =  parameter_14, name = K6b
	global_par_parameter_14=108.6;

% Reaction: id = reaction_1, name = 1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.0;

	reaction_reaction_1=compartment_compartment_1*function_1(x(1), global_par_parameter_1, reaction_reaction_1_k1, x(11));

% Reaction: id = reaction_2, name = 2	% Local Parameter:   id =  k2a, name = k2a
	reaction_reaction_2_k2a=0.086;

	reaction_reaction_2=compartment_compartment_1*function_2(x(2), x(1), x(9), x(5), x(4), x(3), global_par_parameter_11, global_par_parameter_2, global_par_parameter_5, global_par_parameter_6, reaction_reaction_2_k2a);

% Reaction: id = reaction_3, name = 3	% Local Parameter:   id =  k3, name = k3
	reaction_reaction_3_k3=0.01;

	reaction_reaction_3=compartment_compartment_1*function_3(reaction_reaction_3_k3, x(2), x(3), global_par_parameter_3, x(4), global_par_parameter_4);

% Reaction: id = reaction_4, name = 4	% Local Parameter:   id =  k4, name = k4
	reaction_reaction_4_k4=15.0;

	reaction_reaction_4=compartment_compartment_1*function_4(reaction_reaction_4_k4, x(2), x(4), global_par_parameter_4, x(3), global_par_parameter_3);

% Reaction: id = reaction_5, name = 5	% Local Parameter:   id =  k5a, name = k5a
	reaction_reaction_5_k5a=0.092;
	% Local Parameter:   id =  k5b, name = k5b
	reaction_reaction_5_k5b=0.092;

	reaction_reaction_5=compartment_compartment_1*function_5(x(5), x(4), x(7), x(8), x(9), x(3), x(6), reaction_reaction_5_k5a, global_par_parameter_5, x(1), x(2), reaction_reaction_5_k5b, x(10), global_par_parameter_13, global_par_parameter_6, global_par_parameter_11, global_par_parameter_2, global_par_parameter_14, global_par_parameter_12, global_par_parameter_10, global_par_parameter_9);

% Reaction: id = reaction_6, name = 6	% Local Parameter:   id =  k6a, name = k6a
	reaction_reaction_6_k6a=0.086;
	% Local Parameter:   id =  k6b, name = k6b
	reaction_reaction_6_k6b=0.086;

	reaction_reaction_6=compartment_compartment_1*function_6(x(9), x(4), x(5), x(7), x(8), x(3), x(6), reaction_reaction_6_k6a, global_par_parameter_6, x(1), x(2), x(10), global_par_parameter_14, global_par_parameter_2, global_par_parameter_11, global_par_parameter_5, reaction_reaction_6_k6b, global_par_parameter_13, global_par_parameter_12, global_par_parameter_10, global_par_parameter_9);

% Reaction: id = reaction_7, name = 7	% Local Parameter:   id =  k7, name = k7
	reaction_reaction_7_k7=0.01;

	reaction_reaction_7=compartment_compartment_1*function_7(reaction_reaction_7_k7, x(5), x(6), global_par_parameter_7, x(7), global_par_parameter_8);

% Reaction: id = reaction_8, name = 8	% Local Parameter:   id =  k7, name = k7
	reaction_reaction_8_k7=15.0;

	reaction_reaction_8=compartment_compartment_1*function_8(reaction_reaction_8_k7, x(5), x(7), global_par_parameter_8, x(6), global_par_parameter_7);

% Reaction: id = reaction_9, name = 9	% Local Parameter:   id =  k9b, name = k9b
	reaction_reaction_9_k9b=0.092;

	reaction_reaction_9=compartment_compartment_1*function_9(x(8), x(9), x(4), x(7), x(3), x(6), x(10), global_par_parameter_9, global_par_parameter_13, global_par_parameter_14, global_par_parameter_12, global_par_parameter_10, reaction_reaction_9_k9b);

% Reaction: id = reaction_10, name = 10	% Local Parameter:   id =  k10b, name = k10b
	reaction_reaction_10_k10b=0.086;

	reaction_reaction_10=compartment_compartment_1*function_10(x(7), x(5), x(4), x(8), x(3), x(6), x(10), global_par_parameter_10, global_par_parameter_13, global_par_parameter_14, global_par_parameter_12, global_par_parameter_9, reaction_reaction_10_k10b);

	xdot=zeros(11,1);
	
% Species:   id = species_1, name = MKKK, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = species_2, name = MKKK_P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_3, name = MKK, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_4, name = MKK_P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_5, name = MKK_PP, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_6, name = MK, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_7, name = MK_P, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_8, name = MK_PP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_9, name = P1
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = species_10, name = P2
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = species_11, name = Sig
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
end

function z=function_10(MK_P,MKK_PP,MKK_P,MK_PP,MKK,MK,P2,K10b,K5b,K6b,Kse2,K9b,k10b), z=(k10b*P2*MK_P/K10b/(1+MKK_PP/K5b+MKK_P/K6b+MKK/Kse2+MK/Kse2+MK_P/K10b+MK_PP/K9b));end

function z=function_2(MKKK_P,MKKK,P1,MKK_PP,MKK_P,MKK,Kse1,K2a,K5a,K6a,k2a), z=(k2a*MKKK_P*P1/K2a/(1+MKKK_P/K2a+MKKK/Kse1+MKK_PP/K5a+MKK_P/K6a+MKK/Kse1));end

function z=function_3(k3,MKKK_P,MKK,K3,MKK_P,K4), z=(k3*MKKK_P*MKK/K3/(1+MKK/K3+MKK_P/K4));end

function z=function_6(P1,MKK_P,MKK_PP,MK_P,MK_PP,MKK,MK,k6a,K6a,MKKK,MKKK_P,P2,K6b,K2a,Kse1,K5a,k6b,K5b,Kse2,K10b,K9b), z=(k6a*P1*MKK_P/K6a/(1+MKKK_P/K2a+MKKK/Kse1+MKK_PP/K5a+MKK_P/K6a+MKK/Kse1)+k6b*P2*MKK_P/K6b/(1+MKK_PP/K5b+MKK_P/K6b+MKK/Kse2+MK/Kse2+MK_P/K10b+MK_PP/K9b));end

function z=function_1(MKKK,K1,k1,Sig), z=(k1*Sig*MKKK/(K1+MKKK));end

function z=function_4(k4,MKKK_P,MKK_P,K4,MKK,K3), z=(k4*MKKK_P*MKK_P/K4/(1+MKK/K3+MKK_P/K4));end

function z=function_5(MKK_PP,MKK_P,MK_P,MK_PP,P1,MKK,MK,k5a,K5a,MKKK,MKKK_P,k5b,P2,K5b,K6a,Kse1,K2a,K6b,Kse2,K10b,K9b), z=(k5a*P1*MKK_PP/K5a/(1+MKKK_P/K2a+MKKK/Kse1+MKK_PP/K5a+MKK_P/K6a+MKK/Kse1)+k5b*P2*MKK_PP/K5b/(1+MKK_PP/K5b+MKK_P/K6b+MKK/Kse2+MK/Kse2+MK_P/K10b+MK_PP/K9b));end

function z=function_7(k7,MKK_PP,MK,K7,MK_P,K8), z=(k7*MKK_PP*MK/K7/(1+MK/K7+MK_P/K8));end

function z=function_9(MK_PP,MKK_PP,MKK_P,MK_P,MKK,MK,P2,K9b,K5b,K6b,Kse2,K10b,k9b), z=(k9b*P2*MK_PP/K9b/(1+MKK_PP/K5b+MKK_P/K6b+MKK/Kse2+MK/Kse2+MK_P/K10b+MK_PP/K9b));end

function z=function_8(k7,MKK_PP,MK_P,K8,MK,K7), z=(k7*MKK_PP*MK_P/K8/(1+MK/K7+MK_P/K8));end

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


