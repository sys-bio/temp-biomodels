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
% Model name = Fallon2000 - Interleukin-2 dynamics
%
% is http://identifiers.org/biomodels.db/MODEL1006230001
% is http://identifiers.org/biomodels.db/BIOMD0000000665
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(9) = 2.5E8;
	x0(1) = 1500.0;
	x0(2) = 1.0;
	x0(3) = 300.0;
	x0(4) = 1.0;
	x0(5) = 0.01;
	x0(6) = 1.0;
	x0(7) = 10.0;
	x0(8) = 2.5E8;


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

% Compartment: id = COMpartment, name = compartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  kr, name = kr
	global_par_kr=0.0138;
% Parameter:   id =  kf, name = kf
% Parameter:   id =  kre, name = kre
% Parameter:   id =  kfe, name = kfe
% Parameter:   id =  kt, name = kt
	global_par_kt=0.007;
% Parameter:   id =  Vs, name = Vs
	global_par_Vs=11.0;
% Parameter:   id =  ksyn, name = ksyn
	global_par_ksyn=0.0011;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.04;
% Parameter:   id =  kx, name = kx
	global_par_kx=0.15;
% Parameter:   id =  kh, name = kh
	global_par_kh=0.035;
% Parameter:   id =  Ve, name = Ve
	global_par_Ve=1.0E-14;
% Parameter:   id =  NA, name = NA
	global_par_NA=6.022E11;
% Parameter:   id =  IL2, name = IL2
	global_par_IL2=1.0;
% assignmentRule: variable = kf
	global_par_kf=piecewise(global_par_kr/11.1, global_par_IL2 == 1, global_par_kr/8.2);
% assignmentRule: variable = kre
	global_par_kre=piecewise(global_par_kr*8, global_par_IL2 == 1, global_par_kr*5);
% assignmentRule: variable = kfe
	global_par_kfe=piecewise(global_par_kre/1000, global_par_IL2 == 1, global_par_kre/3000);
% rateRule: variable = Y_0
x(8) = x(9);

% Reaction: id = Receptor_binding_to_Ligand, name = Receptor binding to Ligand
	reaction_Receptor_binding_to_Ligand=compartment_COMpartment*modifier_function_1(global_par_kf, x(7), x(1));

% Reaction: id = Receptor_Ligand_complex_dissocation, name = Receptor/Ligand complex dissocation
	reaction_Receptor_Ligand_complex_dissocation=compartment_COMpartment*global_par_kr*x(2);

% Reaction: id = Upregulation_of_Receptor_Synthesis, name = Upregulation of Receptor Synthesis
	reaction_Upregulation_of_Receptor_Synthesis=compartment_COMpartment*modifier_function_3(global_par_ksyn, x(2));

% Reaction: id = Receptor_Internalisation, name = Receptor Internalisation
	reaction_Receptor_Internalisation=compartment_COMpartment*global_par_kt*x(1);

% Reaction: id = Endocytosis_of_Receptor_Ligand_complex, name = Endocytosis of Receptor/Ligand complex
	reaction_Endocytosis_of_Receptor_Ligand_complex=compartment_COMpartment*global_par_ke*x(2);

% Reaction: id = IL_2_binding_to_free_BetaGamma_heterodimer_1, name = IL-2 binding to free BetaGamma heterodimer
	reaction_IL_2_binding_to_free_BetaGamma_heterodimer_1=compartment_COMpartment*modifier_function_1(global_par_kfe, x(5), x(3));

% Reaction: id = Dissocation_of_IL_2_Heterodimer_complex, name = Dissocation of IL-2/Heterodimer complex
	reaction_Dissocation_of_IL_2_Heterodimer_complex=compartment_COMpartment*global_par_kre*x(4);

% Reaction: id = Degradation_of_heterodimer, name = Degradation of heterodimer
	reaction_Degradation_of_heterodimer=compartment_COMpartment*global_par_kh*x(3);

% Reaction: id = Degradation_of_IL_2_heterodimer_complex, name = Degradation of IL-2/heterodimer complex
	reaction_Degradation_of_IL_2_heterodimer_complex=compartment_COMpartment*global_par_kh*x(4);

% Reaction: id = IL_2_binding_dissociating, name = IL-2 binding/dissociating
	reaction_IL_2_binding_dissociating=compartment_COMpartment*function_for_Li(global_par_kf, x(5), x(3), global_par_kre, x(4), global_par_Ve, global_par_NA);

% Reaction: id = Ligand_recycling, name = Ligand recycling
	reaction_Ligand_recycling=compartment_COMpartment*global_par_kx*x(5);

% Reaction: id = Ligand_Binding_Dissociation_Recycling, name = Ligand Binding/Dissociation/Recycling
	reaction_Ligand_Binding_Dissociation_Recycling=compartment_COMpartment*function_for_L(global_par_kf, x(7), x(1), global_par_kr, x(2), global_par_kx, x(5), global_par_Ve, global_par_NA, x(8));

	xdot=zeros(9,1);
	% rateRule: variable = Y_0
	xdot(9) = piecewise((600*x(2)/(250+x(2))-200)*1000, (600*x(2)/(250+x(2))-200) > 0, 0);
	
% Species:   id = Rs_0, name = Rs, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*((-1.0 * reaction_Receptor_binding_to_Ligand) + ( 1.0 * reaction_Receptor_Ligand_complex_dissocation) + ( 1.0 * reaction_Upregulation_of_Receptor_Synthesis) + (-1.0 * reaction_Receptor_Internalisation) + ( 1.0 * reaction_Receptor_Synthesis));
	
% Species:   id = Cs_0, name = Cs, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Receptor_binding_to_Ligand) + (-1.0 * reaction_Receptor_Ligand_complex_dissocation) + (-1.0 * reaction_Endocytosis_of_Receptor_Ligand_complex));
	
% Species:   id = Ri_0, name = Ri, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Receptor_Internalisation) + (-1.0 * reaction_IL_2_binding_to_free_BetaGamma_heterodimer_1) + ( 1.0 * reaction_Dissocation_of_IL_2_Heterodimer_complex) + (-1.0 * reaction_Degradation_of_heterodimer));
	
% Species:   id = Ci_0, name = Ci, affected by kineticLaw
	xdot(4) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Endocytosis_of_Receptor_Ligand_complex) + ( 1.0 * reaction_IL_2_binding_to_free_BetaGamma_heterodimer_1) + (-1.0 * reaction_Dissocation_of_IL_2_Heterodimer_complex) + (-1.0 * reaction_Degradation_of_IL_2_heterodimer_complex));
	
% Species:   id = Li_0, name = Li, affected by kineticLaw
	xdot(5) = (1/(compartment_COMpartment))*((-1.0 * reaction_IL_2_binding_dissociating) + (-1.0 * reaction_Ligand_recycling));
	
% Species:   id = Ld_0, name = Ld, affected by kineticLaw
	xdot(6) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Degradation_of_IL_2_heterodimer_complex));
	
% Species:   id = L_0, name = L, affected by kineticLaw
	xdot(7) = (1/(compartment_COMpartment))*((-1.0 * reaction_Ligand_Binding_Dissociation_Recycling));
	
% Species:   id = Y_0, name = Y, involved in a rule 	xdot(8) = x(8);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=modifier_function_1(parameter,modifier,substrate), z=(parameter*modifier*substrate);end

function z=function_for_Li(kf,Li,Ri,kre,Ci,Ve,Na), z=((kf*Li*Ri-kre*Ci)/(Ve*Na));end

function z=function_for_L(kf,L,Rs,kr,Cs,kx,Li,Ve,Na,Y), z=((kf*L*Rs-kr*Cs-kx*Li*Ve*Na)*Y/Na);end

function z=modifier_function_3(parameter,modifier), z=(parameter*modifier);end

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


