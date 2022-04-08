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
% Model name = Aston2018 - Dynamics of Hepatitis C Infection
%
% is http://identifiers.org/biomodels.db/MODEL1808280002
% is http://identifiers.org/biomodels.db/BIOMD0000000713
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 3.3246;
	x0(2) = 417520.0;
	x0(3) = 4450000.0;


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

% Compartment: id = compartment, name = Liver, constant
	compartment_compartment=1.0;
% Parameter:   id =  s, name = s
	global_par_s=0.1178;
% Parameter:   id =  r_T_Tmax, name = r_T_Tmax
	global_par_r_T_Tmax=10645.0;
% Parameter:   id =  r_T_d, name = r_T_d
	global_par_r_T_d=0.0019927;
% Parameter:   id =  R, name = R
	global_par_R=30.078;
% Parameter:   id =  D, name = D
	global_par_D=58.954;
% Parameter:   id =  beta, name = beta*
	global_par_beta=8.3376E-9;
% Parameter:   id =  pstar, name = pstar
	global_par_pstar=203.96;
% Parameter:   id =  c, name = c
	global_par_c=17.908;

% Reaction: id = Reaction_1, name = Proliferation of hepatocytes from liver stem cells
	reaction_Reaction_1=compartment_compartment*Function_for_Reaction_1(global_par_s, x(2));

% Reaction: id = Reaction_2, name = Proliferation of hepatocytes through cell division
	reaction_Reaction_2=compartment_compartment*Function_for_Reaction_2(x(1), x(2), global_par_r_T_Tmax);

% Reaction: id = Reaction_3, name = Death of healthy hepatocytes
	reaction_Reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_r_T_d, x(1));

% Reaction: id = Reaction_4, name = Infection of healthy hepatocytes
	reaction_Reaction_4=compartment_compartment*global_par_beta*x(1)*x(3);

% Reaction: id = Reaction_5, name = Proliferation of infected hepatocytes
	reaction_Reaction_5=compartment_compartment*Function_for_Reaction_5(global_par_R, global_par_r_T_Tmax, x(2), x(1));

% Reaction: id = Reaction_6, name = Death of infected hepatocytes (1st term)
	reaction_Reaction_6=compartment_compartment*Function_for_Reaction_6(global_par_R, global_par_r_T_d, x(2));

% Reaction: id = Reaction_7, name = Death of Infected Hepatocytes (2nd term)
	reaction_Reaction_7=compartment_compartment*Function_for_Reaction_7(global_par_D, global_par_r_T_d, x(2));

% Reaction: id = Reaction_8, name = Release of the virus
	reaction_Reaction_8=compartment_compartment*Function_for_Reaction_8(global_par_pstar, x(2));

% Reaction: id = Reaction_9, name = Degradation of the virus
	reaction_Reaction_9=compartment_compartment*global_par_c*x(3);

	xdot=zeros(3,1);
	
% Species:   id = T, name = Healthy Hepatocytes (T), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_1) + ( 1.0 * reaction_Reaction_2) + (-1.0 * reaction_Reaction_3) + (-1.0 * reaction_Reaction_4));
	
% Species:   id = I, name = Infected Hepatocytes (I), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_4) + ( 1.0 * reaction_Reaction_5) + (-1.0 * reaction_Reaction_6) + (-1.0 * reaction_Reaction_7));
	
% Species:   id = V, name = Viral Load (V), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Reaction_4) + ( 1.0 * reaction_Reaction_8) + (-1.0 * reaction_Reaction_9));
end

function z=Function_for_Reaction_1(s,I), z=(s*I);end

function z=Function_for_Reaction_2(T,I,r_T_Tmax), z=(r_T_Tmax*T/(T+I));end

function z=Function_for_Reaction_3(r_T_d,T), z=(r_T_d*T);end

function z=Function_for_Reaction_5(R,r_T_Tmax,I,T), z=(1/(1+R)*r_T_Tmax*I/(T+I));end

function z=Function_for_Reaction_6(R,r_T_d,I), z=(1/(1+R)*r_T_d*I);end

function z=Function_for_Reaction_7(D,r_T_d,I), z=(D*r_T_d*I);end

function z=Function_for_Reaction_8(pstar,I), z=(pstar*I);end

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


