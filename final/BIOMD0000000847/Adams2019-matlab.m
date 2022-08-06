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
% Model name = Adams2019 - The regulatory role of shikimate in plant phenylalanine metabolism
%
% isDescribedBy http://identifiers.org/pubmed/30412698
% is http://identifiers.org/biomodels.db/MODEL1911100002
% is http://identifiers.org/biomodels.db/BIOMD0000000847
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=100.0;
% Parameter:   id =  K_1, name = K_1
	global_par_K_1=0.1;
% Parameter:   id =  b, name = b
	global_par_b=1.0;
% Parameter:   id =  a_2_plus, name = a_2_plus
	global_par_a_2_plus=2.0;
% Parameter:   id =  K_2_plus, name = K_2_plus
	global_par_K_2_plus=100.0;
% Parameter:   id =  a_2_minus, name = a_2_minus
	global_par_a_2_minus=1.5;
% Parameter:   id =  K_2_minus, name = K_2_minus
	global_par_K_2_minus=100.0;
% Parameter:   id =  a_3, name = a_3
	global_par_a_3=75.0;
% Parameter:   id =  K_3_3, name = K_3_3
	global_par_K_3_3=0.1;
% Parameter:   id =  a_4, name = a_4
	global_par_a_4=75.0;
% Parameter:   id =  K_4, name = K_4
	global_par_K_4=1.0;
% Parameter:   id =  a_5, name = a_5
	global_par_a_5=5.0;
% Parameter:   id =  K_5, name = K_5
	global_par_K_5=1.0;
% Parameter:   id =  K_3_2, name = K_3_2
	global_par_K_3_2=1.0;
% Parameter:   id =  a_0, name = a_0
	global_par_a_0=25.0;
% Parameter:   id =  b2f, name = b2f
	global_par_b2f=0.0;
% Parameter:   id =  b2r, name = b2r
	global_par_b2r=0.0;

% Reaction: id = V_1_Phenylalanine_Biosynthesis_Shikimate, name = V_1_Phenylalanine_Biosynthesis_Shikimate
	reaction_V_1_Phenylalanine_Biosynthesis_Shikimate=compartment_compartment*Function_for_Phenylalanine_Biosynthesis_Shikimate(global_par_a_1, x(1), global_par_K_1, global_par_b, x(2));

% Reaction: id = V_3_Caffeoyl_Shikimate_Biosynthesis, name = V_3_Caffeoyl_Shikimate_Biosynthesis
	reaction_V_3_Caffeoyl_Shikimate_Biosynthesis=compartment_compartment*Function_for_Caffeoyl_Shikimate_Biosynthesis(global_par_a_3, x(2), x(3), global_par_K_3_2, global_par_K_3_3);

% Reaction: id = V_4_Mass_Release_Monolignol_Pathway, name = V_4_Mass_Release_Monolignol_Pathway
	reaction_V_4_Mass_Release_Monolignol_Pathway=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(4), global_par_K_4, global_par_a_4);

% Reaction: id = V_5_Phenylalanine_To_Protein, name = V_5_Phenylalanine_To_Protein
	reaction_V_5_Phenylalanine_To_Protein=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(2), global_par_K_5, global_par_a_5);

% Reaction: id = V_2_Shikimate_Transport, name = V_2_Shikimate_Transport
	reaction_V_2_Shikimate_Transport=compartment_compartment*Function_for_V_2_Shikimate_Transport(global_par_a_2_plus, x(1), global_par_K_2_plus, global_par_b2f, x(3), global_par_a_2_minus, global_par_K_2_minus, global_par_b2r);

	xdot=zeros(4,1);
	
% Species:   id = X_1, name = X_1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_a_0_Shikimate_Biosynthesis) + (-1.0 * reaction_V_1_Phenylalanine_Biosynthesis_Shikimate) + (-1.0 * reaction_V_2_Shikimate_Transport));
	
% Species:   id = X_2, name = X_2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_V_1_Phenylalanine_Biosynthesis_Shikimate) + (-1.0 * reaction_V_3_Caffeoyl_Shikimate_Biosynthesis) + (-1.0 * reaction_V_5_Phenylalanine_To_Protein));
	
% Species:   id = X_3, name = X_3, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_V_3_Caffeoyl_Shikimate_Biosynthesis) + ( 1.0 * reaction_V_4_Mass_Release_Monolignol_Pathway) + ( 1.0 * reaction_V_2_Shikimate_Transport));
	
% Species:   id = X_4, name = X_4, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_V_3_Caffeoyl_Shikimate_Biosynthesis) + (-1.0 * reaction_V_4_Mass_Release_Monolignol_Pathway));
end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Caffeoyl_Shikimate_Biosynthesis(a_3,X_2,X_3,K_3_2,K_3_3), z=(a_3*X_2*X_3/((K_3_2+X_2)*(K_3_3+X_3)));end

function z=Function_for_Phenylalanine_Biosynthesis_Shikimate(a_1,X_1,K_1,b,X_2), z=(a_1*X_1/(K_1*(1+b*X_2)+X_1));end

function z=Function_for_V_2_Shikimate_Transport(a2f,X_1,K2f,b2f,X_3,a2r,K2r,b2r), z=(a2f*X_1/(K2f*(1+b2f*X_3)+X_1)-a2r*X_3/(K2r*(1+b2r*X_1)+X_3));end

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


