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
% Model name = Mager2005 - Quasi-equilibrium pharmacokinetic model for drugs exhibiting target-mediated drug disposition
%
% is http://identifiers.org/biomodels.db/MODEL1907290001
% is http://identifiers.org/biomodels.db/BIOMD0000000765
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 4000.0;
	x0(2) = 0.0;
	x0(3) = 53.0;
	x0(4) = 0.0;


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

% Compartment: id = Central, name = Central, constant
	compartment_Central=1.0;
% Compartment: id = Peripheral_Tissue, name = Peripheral Tissue, constant
	compartment_Peripheral_Tissue=1.0;
% Parameter:   id =  k_el, name = k_el
	global_par_k_el=1.0;
% Parameter:   id =  V_c, name = V_c
	global_par_V_c=10.0;
% Parameter:   id =  k_on, name = k_on
	global_par_k_on=0.1;
% Parameter:   id =  K_D, name = K_D
	global_par_K_D=1.0;
% Parameter:   id =  k_int, name = k_int
	global_par_k_int=0.0;
% Parameter:   id =  k_deg, name = k_deg
	global_par_k_deg=0.566;
% Parameter:   id =  k_syn, name = k_syn
	global_par_k_syn=0.0;
% Parameter:   id =  k_off, name = k_off
	global_par_k_off=0.1;
% Parameter:   id =  k_tp, name = k_tp
	global_par_k_tp=0.0;
% Parameter:   id =  k_pt, name = k_pt
	global_par_k_pt=0.0;
% Parameter:   id =  C_Concentration, name = C_Concentration
% Parameter:   id =  C_tot, name = C_tot
% Parameter:   id =  ModelValue_1, name = Initial for V_c
	global_par_ModelValue_1=10.0;
% assignmentRule: variable = C_Concentration
	global_par_C_Concentration=x(1)/global_par_ModelValue_1;
% assignmentRule: variable = C_tot
	global_par_C_tot=(x(1)+x(4))/global_par_ModelValue_1;

% Reaction: id = Complex_Formation, name = Complex_Formation
	reaction_Complex_Formation=compartment_Central*global_par_k_on*x(3)*x(1);

% Reaction: id = Complex_Dissociation, name = Complex_Dissociation
	reaction_Complex_Dissociation=compartment_Central*Function_for_Complex_Dissociation(global_par_k_off, x(4));

% Reaction: id = Complex_Internalisation, name = Complex_Internalisation
	reaction_Complex_Internalisation=compartment_Central*Function_for_Complex_Internalisation(global_par_k_off, global_par_k_int, x(4));

% Reaction: id = Drug_Exit_Central, name = Drug_Exit_Central
	reaction_Drug_Exit_Central=compartment_Central*Function_for_Drug_Exit_Central(global_par_k_pt, x(1), global_par_k_el);

% Reaction: id = Drug_Distribution_Tissue_to_Central, name = Drug_Distribution_Tissue_to_Central
	reaction_Drug_Distribution_Tissue_to_Central=Function_for_Drug_Distribution_Tissue_to_Central(global_par_k_tp, x(2), global_par_V_c);

% Reaction: id = Drug_Distribution_Central_to_Tissue, name = Drug_Distribution_Central_to_Tissue
	reaction_Drug_Distribution_Central_to_Tissue=Function_for_Drug_Distribution_Central_to_Tissue(global_par_k_pt, x(1), global_par_V_c);

% Reaction: id = Drug_Distribution_Tissue_to_Central_MA, name = Drug_Distribution_Tissue_to_Central_MA
	reaction_Drug_Distribution_Tissue_to_Central_MA=compartment_Peripheral_Tissue*global_par_k_tp*x(2);

% Reaction: id = Receptor_Dergradation, name = Receptor_Dergradation
	reaction_Receptor_Dergradation=compartment_Central*global_par_k_deg*x(3);

	xdot=zeros(4,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_Central))*((-1.0 * reaction_Complex_Formation) + ( 1.0 * reaction_Complex_Dissociation) + (-1.0 * reaction_Drug_Exit_Central) + ( 1.0 * reaction_Drug_Distribution_Tissue_to_Central));
	
% Species:   id = A_T, name = A_T, affected by kineticLaw
	xdot(2) = (1/(compartment_Peripheral_Tissue))*(( 1.0 * reaction_Drug_Distribution_Central_to_Tissue) + (-1.0 * reaction_Drug_Distribution_Tissue_to_Central_MA));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(3) = (1/(compartment_Central))*((-1.0 * reaction_Complex_Formation) + ( 1.0 * reaction_Complex_Dissociation) + ( 1.0 * reaction_Receptor_Synthesis) + (-1.0 * reaction_Receptor_Dergradation));
	
% Species:   id = RC, name = RC, affected by kineticLaw
	xdot(4) = (1/(compartment_Central))*(( 1.0 * reaction_Complex_Formation) + (-1.0 * reaction_Complex_Internalisation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Complex_Dissociation(k_off,RC), z=(k_off*RC);end

function z=Function_for_Drug_Distribution_Tissue_to_Central(k_tp,A_T,V_c), z=(k_tp*A_T/V_c);end

function z=Function_for_Drug_Exit_Central(k_pt,C,k_el), z=((k_el+k_pt)*C);end

function z=Function_for_Complex_Internalisation(k_off,k_int,RC), z=((k_off+k_int)*RC);end

function z=Function_for_Drug_Distribution_Central_to_Tissue(k_pt,C,V_c), z=(k_pt*C*V_c);end

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


