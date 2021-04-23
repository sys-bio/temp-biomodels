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
% Model name = Heiland2012_CircadianClock_C.reinhardtii
%
% is http://identifiers.org/biomodels.db/MODEL1201130000
% is http://identifiers.org/biomodels.db/BIOMD0000000411
% isDescribedBy http://identifiers.org/pubmed/23729908
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  T, name = T
	global_par_T=291.0;
% Parameter:   id =  T2, name = T2
% Parameter:   id =  parameter_1, name = v_phos
	global_par_parameter_1=1.0;
% Parameter:   id =  parameter_2, name = V_dephos
	global_par_parameter_2=0.5;
% Parameter:   id =  parameter_3, name = R
	global_par_parameter_3=8.31447;
% Parameter:   id =  parameter_4, name = amplitude
	global_par_parameter_4=10.0;
% Parameter:   id =  parameter_5, name = entrperiod
	global_par_parameter_5=24.0;
% Parameter:   id =  parameter_6, name = EAlow
% Parameter:   id =  parameter_7, name = EAhigh
% Parameter:   id =  parameter_8, name = vphosdegr
	global_par_parameter_8=1.0;
% Parameter:   id =  parameter_9, name = Ephos
	global_par_parameter_9=60000.0;
% Parameter:   id =  parameter_10, name = Edephos
	global_par_parameter_10=67000.0;
% assignmentRule: variable = T2
	global_par_T2=296+global_par_parameter_4/2*sin(2*pi*time/global_par_parameter_5);
% assignmentRule: variable = parameter_6
	global_par_parameter_6=50000;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=84000;

% Reaction: id = re12, name = C3_phos	% Local Parameter:   id =  v, name = v
	reaction_re12_v=0.1;

	reaction_re12=compartment_default*function_1(reaction_re12_v, global_par_parameter_6, global_par_parameter_3, global_par_T2, global_par_T, x(2));

% Reaction: id = re13, name = C3_transk	% Local Parameter:   id =  v, name = v
	reaction_re13_v=2.6;
	% Local Parameter:   id =  k, name = k
	reaction_re13_k=0.4;
	% Local Parameter:   id =  h, name = h
	reaction_re13_h=2.0;

	reaction_re13=compartment_default*function_2(reaction_re13_v, global_par_parameter_7, global_par_parameter_3, global_par_T2, global_par_T, reaction_re13_k, x(3), reaction_re13_h);

% Reaction: id = re14, name = C3_mRNADegr	% Local Parameter:   id =  v, name = v
	reaction_re14_v=3.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_re14_Km=2.0;

	reaction_re14=compartment_default*function_3(reaction_re14_v, global_par_parameter_6, global_par_parameter_3, global_par_T2, global_par_T, x(1), reaction_re14_Km);

% Reaction: id = re15, name = C3_degr	% Local Parameter:   id =  v, name = v
	reaction_re15_v=2.2;
	% Local Parameter:   id =  Km, name = Km
	reaction_re15_Km=0.2;

	reaction_re15=compartment_default*function_3(reaction_re15_v, global_par_parameter_6, global_par_parameter_3, global_par_T2, global_par_T, x(2), reaction_re15_Km);

% Reaction: id = re16, name = C3_phos_degr	% Local Parameter:   id =  v, name = v
	reaction_re16_v=1.5;
	% Local Parameter:   id =  Km, name = Km
	reaction_re16_Km=1.4;

	reaction_re16=compartment_default*function_3(reaction_re16_v, global_par_parameter_6, global_par_parameter_3, global_par_T2, global_par_T, x(3), reaction_re16_Km);

% Reaction: id = re18, name = C3_transl	% Local Parameter:   id =  v, name = v
	reaction_re18_v=5.0;

	reaction_re18=compartment_default*function_4(reaction_re18_v, global_par_parameter_7, global_par_parameter_3, global_par_T2, global_par_T, x(1));

% Reaction: id = reaction_1, name = C1_transl	% Local Parameter:   id =  v, name = v
	reaction_reaction_1_v=19.0;
	% Local Parameter:   id =  E, name = E
	reaction_reaction_1_E=67000.0;

	reaction_reaction_1=compartment_default*function_1(reaction_reaction_1_v, reaction_reaction_1_E, global_par_parameter_3, global_par_T2, global_par_T, const_species_species_2);

% Reaction: id = reaction_2, name = complexformation	% Local Parameter:   id =  v, name = v
	reaction_reaction_2_v=10.0;
	% Local Parameter:   id =  a, name = a
	reaction_reaction_2_a=2.0;

	reaction_reaction_2=compartment_default*function_5(reaction_reaction_2_v, global_par_parameter_7, global_par_parameter_3, global_par_T2, global_par_T, x(5), x(3), reaction_reaction_2_a);

% Reaction: id = reaction_3, name = C1_phos
	reaction_reaction_3=compartment_default*function_1(global_par_parameter_1, global_par_parameter_9, global_par_parameter_3, global_par_T2, global_par_T, x(4));

% Reaction: id = reaction_4, name = C1_degr	% Local Parameter:   id =  v, name = v
	reaction_reaction_4_v=30.0;
	% Local Parameter:   id =  E, name = E
	reaction_reaction_4_E=67000.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_4_Km=2.0;

	reaction_reaction_4=compartment_default*function_3(reaction_reaction_4_v, reaction_reaction_4_E, global_par_parameter_3, global_par_T2, global_par_T, x(4), reaction_reaction_4_Km);

% Reaction: id = reaction_5, name = complexdegr	% Local Parameter:   id =  v, name = v
	reaction_reaction_5_v=20.0;
	% Local Parameter:   id =  E, name = E
	reaction_reaction_5_E=67000.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_5_Km=4.0;

	reaction_reaction_5=compartment_default*function_3(reaction_reaction_5_v, reaction_reaction_5_E, global_par_parameter_3, global_par_T2, global_par_T, x(6), reaction_reaction_5_Km);

% Reaction: id = reaction_6, name = C1_dephos
	reaction_reaction_6=compartment_default*function_1(global_par_parameter_2, global_par_parameter_10, global_par_parameter_3, global_par_T2, global_par_T, x(5));

% Reaction: id = reaction_7, name = C1_phos_degr	% Local Parameter:   id =  E, name = E
	reaction_reaction_7_E=67000.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_reaction_7_Km=1.0;

	reaction_reaction_7=compartment_default*function_3(global_par_parameter_8, reaction_reaction_7_E, global_par_parameter_3, global_par_T2, global_par_T, x(5), reaction_reaction_7_Km);

% Species:   id = s2, name = C3_Gene, constant	const_species_s2=1.0;

% Species:   id = s13, name = C_3_pre, constant	const_species_s13=1.0;

% Species:   id = species_2, name = C1_mRNA, constant	const_species_species_2=1.0;

	xdot=zeros(7,1);
	
% Species:   id = s9, name = C3_mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re13) + (-1.0 * reaction_re14));
	
% Species:   id = s10, name = C_3, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re12) + (-1.0 * reaction_re15) + ( 1.0 * reaction_re18));
	
% Species:   id = s11, name = C_3_P, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re16) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_1, name = C1, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_3, name = C1_phos, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_4, name = c1c3complex, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_12, name = junk, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re14) + ( 1.0 * reaction_re15) + ( 1.0 * reaction_re16) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7));
end

function z=function_2(v,E,R,T2,T1,k,S,h), z=(v*exp(E/R*(T2-T1)/(T1*T2))/(k+S^h));end

function z=function_1(v,E,R,T2,T1,S), z=(v*exp(E/R*(T2-T1)/(T1*T2))*S);end

function z=function_4(v,E,R,T2,T1,S), z=(v*exp(E/R*(T2-T1)/(T1*T2))*S);end

function z=function_3(v,E,R,T2,T1,S,Km), z=(v*exp(E/R*(T2-T1)/(T1*T2))*S/(Km+S));end

function z=function_5(v,E,R,T2,T1,S1,S2,a), z=(v*exp(E/R*(T2-T1)/(T1*T2))*S1*S2^a);end

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


