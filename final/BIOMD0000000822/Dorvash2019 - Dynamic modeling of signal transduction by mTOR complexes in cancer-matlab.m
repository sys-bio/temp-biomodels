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
% Model name = Dorvash2019 - Dynamic modeling of signal transduction by mTOR complexes in cancer
%
% is http://identifiers.org/biomodels.db/MODEL1909250002
% is http://identifiers.org/biomodels.db/BIOMD0000000822
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 3.756228E-7;
	x0(3) = 3.201594E-7;
	x0(4) = 8.834274E-8;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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
% Parameter:   id =  K_abs_Rapam, name = K_abs@Rapam
	global_par_K_abs_Rapam=2.77;
% Parameter:   id =  Rapamycin_Dose, name = Rapamycin_Dose
	global_par_Rapamycin_Dose=0.0;
% Parameter:   id =  K_el_Rapam, name = K_el@Rapam
	global_par_K_el_Rapam=0.0718632;
% Parameter:   id =  K_syn_mTOR, name = K_syn@mTOR
	global_par_K_syn_mTOR=1.6E-27;
% Parameter:   id =  K_deg_mTOR, name = K_deg@mTOR
	global_par_K_deg_mTOR=1.0E-8;
% Parameter:   id =  K_syn_Raptor, name = K_syn@Raptor
	global_par_K_syn_Raptor=2.15E-27;
% Parameter:   id =  K_deg_Raptor, name = K_deg@Raptor
	global_par_K_deg_Raptor=1.0E-8;
% Parameter:   id =  K_syn_Rictor, name = K_syn@Rictor
	global_par_K_syn_Rictor=5.9E-28;
% Parameter:   id =  K_deg_Rictor, name = K_deg@Rictor
	global_par_K_deg_Rictor=1.0E-8;
% Parameter:   id =  k_form_C1, name = k_form@C1
	global_par_k_form_C1=1.6666666E7;
% Parameter:   id =  k_diss_C1, name = k_diss@C1
	global_par_k_diss_C1=0.08333;
% Parameter:   id =  k_form_C2, name = k_form@C2
	global_par_k_form_C2=1.6666666E7;
% Parameter:   id =  k_diss_C2, name = k_diss@C2
	global_par_k_diss_C2=0.08333;
% Parameter:   id =  k_form_mTOR_Rapam, name = k_form@mTOR:Rapam
	global_par_k_form_mTOR_Rapam=1920000.0;
% Parameter:   id =  k_diss_mTOR_Rapam, name = k_diss@mTOR:Rapam
	global_par_k_diss_mTOR_Rapam=0.022;
% Parameter:   id =  k_form_C1_Rapam, name = k_form@C1:Rapam
	global_par_k_form_C1_Rapam=1920000.0;
% Parameter:   id =  k_diss_C1_Rapam, name = k_diss@C1:Rapam
	global_par_k_diss_C1_Rapam=0.022;
% Parameter:   id =  k_forward_Raptor_release, name = k_forward@Raptor release
	global_par_k_forward_Raptor_release=0.01;
% Parameter:   id =  k_reverse_Raptor_release, name = k_reverse@Raptor release
	global_par_k_reverse_Raptor_release=1.0E-5;

% Reaction: id = Absorption_of_Rapamycin, name = Absorption of Rapamycin
	reaction_Absorption_of_Rapamycin=compartment_compartment*Function_for_Absorption_of_rapamycin(global_par_K_abs_Rapam, global_par_Rapamycin_Dose);

% Reaction: id = Elimination_of_rapamycin, name = Elimination of rapamycin
	reaction_Elimination_of_rapamycin=compartment_compartment*Function_for_Elimination_of_rapamycin(global_par_K_el_Rapam, x(1));

% Reaction: id = Degradation_of_mTOR, name = Degradation of mTOR
	reaction_Degradation_of_mTOR=compartment_compartment*Function_for_Degradation_of_mTOR(global_par_K_deg_mTOR, x(2));

% Reaction: id = Degradation_of_Raptor, name = Degradation of Raptor
	reaction_Degradation_of_Raptor=compartment_compartment*Function_for_Degradation_of_Raptor(global_par_K_deg_Raptor, x(3));

% Reaction: id = Degradation_of_Rictor, name = Degradation of Rictor
	reaction_Degradation_of_Rictor=compartment_compartment*Function_for_Degradation_of_Rictor(global_par_K_deg_Rictor, x(4));

% Reaction: id = mTORC1_formation_and_dissociation, name = mTORC1 formation and dissociation
	reaction_mTORC1_formation_and_dissociation=compartment_compartment*Function_for_mTORC1_formation_and_dissociation(global_par_k_form_C1, x(2), x(3), global_par_k_diss_C1, x(5));

% Reaction: id = mTORC2_formation_and_dissociation, name = mTORC2 formation and dissociation
	reaction_mTORC2_formation_and_dissociation=compartment_compartment*Function_for_mTORC2_formation_and_dissociation(global_par_k_form_C2, x(2), x(4), global_par_k_diss_C2, x(6));

% Reaction: id = mTOR___Rapamycin_association_sequestration_and_dissociation, name = mTOR - Rapamycin association/sequestration and dissociation
	reaction_mTOR___Rapamycin_association_sequestration_and_dissociation=compartment_compartment*Function_for_mTOR___Rapamycin_association_sequestration_and_dissociation(global_par_k_form_mTOR_Rapam, x(2), x(1), global_par_k_diss_mTOR_Rapam, x(7));

% Reaction: id = mTORC1___Rapamycin_association_sequestration_and_dissociation, name = mTORC1 - Rapamycin association/sequestration and dissociation
	reaction_mTORC1___Rapamycin_association_sequestration_and_dissociation=compartment_compartment*Function_for_mTORC1___Rapamycin_association_sequestration_and_dissociation(global_par_k_form_C1_Rapam, x(5), x(1), global_par_k_diss_C1_Rapam, x(8));

% Reaction: id = Releasing_Raptor_from_mTORC1___rapamycin_complex, name = Releasing Raptor from mTORC1 - rapamycin complex
	reaction_Releasing_Raptor_from_mTORC1___rapamycin_complex=compartment_compartment*Function_for_Releasing_Raptor_from_mTORC1___rapamycin_complex(global_par_k_forward_Raptor_release, x(8), global_par_k_reverse_Raptor_release, x(7), x(3));

%Event: id=dose
	event_dose=(time >= 240) && (piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) == 0);

	if(event_dose) 
		global_par_Rapamycin_Dose=global_par_Rapamycin_Dose+8E-20;
	end

	xdot=zeros(8,1);
	
% Species:   id = Cytosolic_Rapamycin, name = Cytosolic Rapamycin, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Absorption_of_Rapamycin) + (-1.0 * reaction_Elimination_of_rapamycin) + (-1.0 * reaction_mTOR___Rapamycin_association_sequestration_and_dissociation) + (-1.0 * reaction_mTORC1___Rapamycin_association_sequestration_and_dissociation));
	
% Species:   id = mTOR, name = mTOR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Synthesis_of_mTOR) + (-1.0 * reaction_Degradation_of_mTOR) + (-1.0 * reaction_mTORC1_formation_and_dissociation) + (-1.0 * reaction_mTORC2_formation_and_dissociation) + (-1.0 * reaction_mTOR___Rapamycin_association_sequestration_and_dissociation));
	
% Species:   id = Raptor, name = Raptor, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Synthesis_of_Raptor) + (-1.0 * reaction_Degradation_of_Raptor) + (-1.0 * reaction_mTORC1_formation_and_dissociation) + ( 1.0 * reaction_Releasing_Raptor_from_mTORC1___rapamycin_complex));
	
% Species:   id = Rictor, name = Rictor, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Synthesis_of_Rictor) + (-1.0 * reaction_Degradation_of_Rictor) + (-1.0 * reaction_mTORC2_formation_and_dissociation));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_mTORC1_formation_and_dissociation) + (-1.0 * reaction_mTORC1___Rapamycin_association_sequestration_and_dissociation));
	
% Species:   id = mTORC2, name = mTORC2, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_mTORC2_formation_and_dissociation));
	
% Species:   id = mTOR_Rapamycin, name = mTOR:Rapamycin, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_mTOR___Rapamycin_association_sequestration_and_dissociation) + ( 1.0 * reaction_Releasing_Raptor_from_mTORC1___rapamycin_complex));
	
% Species:   id = mTORC1_Rapamycin, name = mTORC1:Rapamycin, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_mTORC1___Rapamycin_association_sequestration_and_dissociation) + (-1.0 * reaction_Releasing_Raptor_from_mTORC1___rapamycin_complex));
end

function z=Function_for_Absorption_of_rapamycin(_K_abs_Rapam,Rapamycin_Dose), z=(_K_abs_Rapam*Rapamycin_Dose);end

function z=Function_for_Elimination_of_rapamycin(_K_el_Rapam,_Cytosolic_Rapamycin), z=(_K_el_Rapam*_Cytosolic_Rapamycin);end

function z=Function_for_Synthesis_of_mTOR(_K_syn_mTOR), z=(_K_syn_mTOR);end

function z=Function_for_Degradation_of_mTOR(_K_deg_mTOR,mTOR), z=(_K_deg_mTOR*mTOR);end

function z=Function_for_Synthesis_of_Raptor(_K_syn_Raptor), z=(_K_syn_Raptor);end

function z=Function_for_Degradation_of_Raptor(_K_deg_Raptor,Raptor), z=(_K_deg_Raptor*Raptor);end

function z=Function_for_Synthesis_of_Rictor(_K_syn_Rictor), z=(_K_syn_Rictor);end

function z=Function_for_Degradation_of_Rictor(_K_deg_Rictor,Rictor), z=(_K_deg_Rictor*Rictor);end

function z=Function_for_mTORC1_formation_and_dissociation(_k_form_C1,mTOR,Raptor,_k_diss_C1,mTORC1), z=(_k_form_C1*mTOR*Raptor-_k_diss_C1*mTORC1);end

function z=Function_for_mTORC2_formation_and_dissociation(_k_form_C2,mTOR,Rictor,_k_diss_C2,mTORC2), z=(_k_form_C2*mTOR*Rictor-_k_diss_C2*mTORC2);end

function z=Function_for_mTOR___Rapamycin_association_sequestration_and_dissociation(_k_form_mTOR_Rapam,mTOR,_Cytosolic_Rapamycin,_k_diss_mTOR_Rapam,_mTOR_Rapamycin), z=(_k_form_mTOR_Rapam*mTOR*_Cytosolic_Rapamycin-_k_diss_mTOR_Rapam*_mTOR_Rapamycin);end

function z=Function_for_mTORC1___Rapamycin_association_sequestration_and_dissociation(_k_form_C1_Rapam,mTORC1,_Cytosolic_Rapamycin,_k_diss_C1_Rapam,_mTORC1_Rapamycin), z=(_k_form_C1_Rapam*mTORC1*_Cytosolic_Rapamycin-_k_diss_C1_Rapam*_mTORC1_Rapamycin);end

function z=Function_for_Releasing_Raptor_from_mTORC1___rapamycin_complex(_k_forward_Raptor_release,_mTORC1_Rapamycin,_k_reverse_Raptor_release,_mTOR_Rapamycin,Raptor), z=(_k_forward_Raptor_release*_mTORC1_Rapamycin-_k_reverse_Raptor_release*_mTOR_Rapamycin*Raptor);end

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


