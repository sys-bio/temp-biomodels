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
% Model name = Baker2017 - The role of cytokines, MMPs and fibronectin fragments osteoarthritis
%
% is http://identifiers.org/biomodels.db/MODEL1706070000
% is http://identifiers.org/biomodels.db/BIOMD0000000927
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.18;
	x0(2) = 5.0;
	x0(3) = 0.55;
	x0(4) = 0.75;


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

% Compartment: id = compartmentOne, name = Cartilage, constant
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

% Reaction: id = R_1, name = R_1
	reaction_R_1=compartment_compartmentOne*Function_for_R_1(global_par_Fdam, compartment_compartmentOne);

% Reaction: id = R_2, name = R_2
	reaction_R_2=compartment_compartmentOne*Function_for_R_2(compartment_compartmentOne, x(3));

% Reaction: id = R_3, name = R_3
	reaction_R_3=compartment_compartmentOne*Function_for_R_3(global_par_Gamma_f, compartment_compartmentOne, x(4));

% Reaction: id = R_4, name = R_4
	reaction_R_4=compartment_compartmentOne*Function_for_R_4(global_par_Mbp, compartment_compartmentOne);

% Reaction: id = R_5, name = R_5
	reaction_R_5=compartment_compartmentOne*Function_for_R_5(global_par_Mph, global_par_Mpp, compartment_compartmentOne, x(1));

% Reaction: id = R_6, name = R_6
	reaction_R_6=compartment_compartmentOne*Function_for_R_6(global_par_Gamma_m, compartment_compartmentOne, x(3));

% Reaction: id = R_7, name = R_7
	reaction_R_7=compartment_compartmentOne*Function_for_R_7(global_par_Aph, global_par_App, compartment_compartmentOne, x(1));

% Reaction: id = R_8, name = R_8
	reaction_R_8=compartment_compartmentOne*Function_for_R_8(global_par_Afh, global_par_Afp, compartment_compartmentOne, x(4));

% Reaction: id = R_9, name = R_9
	reaction_R_9=compartment_compartmentOne*Function_for_R_9(compartment_compartmentOne, x(2));

% Reaction: id = R_10, name = R_10
	reaction_R_10=compartment_compartmentOne*Function_for_R_10(global_par_Pbp, compartment_compartmentOne, x(2));

% Reaction: id = R_11, name = R_11
	reaction_R_11=compartment_compartmentOne*Function_for_R_11(global_par_Ppp, compartment_compartmentOne, x(1), x(2));

% Reaction: id = R_12, name = R_12
	reaction_R_12=compartment_compartmentOne*Function_for_R_12(global_par_Pfp, compartment_compartmentOne, x(2), x(4));

% Reaction: id = R_13, name = R_13
	reaction_R_13=compartment_compartmentOne*Function_for_R_13(global_par_Gamma_p, compartment_compartmentOne, x(1));

%Event: id=event
	event_event=time == 20;

	if(event_event) 
		x(1)=0.1*x(1);
	end

	xdot=zeros(4,1);
	
% Species:   id = solution0, name = p-Cytokines, affected by kineticLaw
	xdot(1) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_5) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_7) + ( 1.0 * reaction_R_7) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_11) + ( 2.0 * reaction_R_11) + ( 1.0 * reaction_R_12) + (-1.0 * reaction_R_13));
	
% Species:   id = solution1, name = a-Cytokines, affected by kineticLaw
	xdot(2) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_7) + ( 1.0 * reaction_R_8) + (-1.0 * reaction_R_9) + (-1.0 * reaction_R_10) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_11) + ( 1.0 * reaction_R_11) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_12));
	
% Species:   id = solution2, name = MMP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_2) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_4) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_6));
	
% Species:   id = solution3, name = Fragments, affected by kineticLaw
	xdot(4) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_1) + ( 1.0 * reaction_R_2) + (-1.0 * reaction_R_3) + (-1.0 * reaction_R_8) + ( 1.0 * reaction_R_8) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_12));
end

function z=Function_for_R_4(Mbp,compartmentOne), z=(Mbp/compartmentOne);end

function z=Function_for_R_1(Fdam,compartmentOne), z=(Fdam/compartmentOne);end

function z=Function_for_R_13(Gamma_p,compartmentOne,solution0), z=(Gamma_p*solution0/compartmentOne);end

function z=Function_for_R_12(Pfp,compartmentOne,solution1,solution3), z=(1/(1+solution1^2)*Pfp/(1+solution3^2)*solution3^2/compartmentOne);end

function z=Function_for_R_6(Gamma_m,compartmentOne,solution2), z=(Gamma_m*solution2/compartmentOne);end

function z=Function_for_R_3(Gamma_f,compartmentOne,solution3), z=(Gamma_f*solution3/compartmentOne);end

function z=Function_for_R_7(Aph,App,compartmentOne,solution0), z=(App*1/(Aph^2+solution0^2)*solution0^2/compartmentOne);end

function z=Function_for_R_9(compartmentOne,solution1), z=(solution1/compartmentOne);end

function z=Function_for_R_10(Pbp,compartmentOne,solution1), z=(Pbp/(1+solution1^2)/compartmentOne);end

function z=Function_for_R_8(Afh,Afp,compartmentOne,solution3), z=(Afp*1/(Afh^2+solution3^2)*solution3^2/compartmentOne);end

function z=Function_for_R_11(Ppp,compartmentOne,solution0,solution1), z=(1/(1+solution1^2)*Ppp/(1+solution0^2)*solution0^2/compartmentOne);end

function z=Function_for_R_5(Mph,Mpp,compartmentOne,solution0), z=(Mpp*1/(Mph^2+solution0^2)*solution0^2/compartmentOne);end

function z=Function_for_R_2(compartmentOne,solution2), z=(solution2/compartmentOne);end

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


